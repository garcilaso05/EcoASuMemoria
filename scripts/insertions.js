function setupInsertionsTab() {
    const container = document.getElementById('inserciones');
    container.innerHTML = '<h2>Inserciones de Datos</h2>';

    // Crear una sección para cada tabla
    for (const tableName in schema.tables) {
        if (!schema.tables[tableName].isEnum) {
            const tableSection = createTableSection(tableName);
            container.appendChild(tableSection);
        }
    }

    // Reaplicar layouts personalizados si existen
    if (window.customInsertLayouts) {
        for (const tableName in window.customInsertLayouts) {
            if (window.customInsertLayouts.hasOwnProperty(tableName)) {
                processEsqlContent(window.customInsertLayouts[tableName]);
            }
        }
    }
}

function createTableSection(tableName) {
    const section = document.createElement('div');
    section.className = 'table-section';
    
    const header = document.createElement('div');
    header.className = 'table-header';
    header.innerHTML = `
        <h3>${tableName}</h3>
        <button onclick="toggleInsertForm('${tableName}')">Insertar Datos</button>
    `;

    const form = document.createElement('div');
    form.id = `insert-form-${tableName}`;
    form.className = 'insert-form';
    form.style.display = 'none';
    
    const fields = schema.tables[tableName].columns.map(col => createInputField(col));
    form.innerHTML = `
        <div class="insert-fields">
            ${fields.join('')}
        </div>
        <div class="insert-buttons">
            <button onclick="insertData('${tableName}', true)">Insertar y Continuar</button>
            <button onclick="insertData('${tableName}', false)">Insertar y Cerrar</button>
        </div>
    `;

    section.appendChild(header);
    section.appendChild(form);
    return section;
}

function createInputField(column) {
    const label = `<label>${column.name}:</label>`;
    let input = '';

    if (schema.tables[column.type]?.isEnum) {
        // Campo ENUM
        const options = schema.tables[column.type].values
            .map(value => `<option value="${value}">${value}</option>`)
            .join('');
        input = `<select name="${column.name}" ${column.pk ? 'required' : ''}>
                    <option value="">Seleccione...</option>
                    ${options}
                </select>`;
    } else {
        // Otros tipos de campo
        switch (column.type) {
            case 'DATE':
                input = `<input type="date" name="${column.name}" ${column.pk ? 'required' : ''}>`;
                break;
            case 'INT':
                input = `<input type="number" name="${column.name}" step="1" ${column.pk ? 'required' : ''}>`;
                break;
            case 'FLOAT':
                input = `<input type="number" name="${column.name}" step="0.01" ${column.pk ? 'required' : ''}>`;
                break;
            case 'BOOLEAN':
                input = `<input type="checkbox" name="${column.name}" ${column.pk ? 'required' : ''}>`;
                break;
            default:
                input = `<input type="text" name="${column.name}" ${column.pk ? 'required' : ''}>`;
        }
    }

    return `<div class="input-field">${label}${input}</div>`;
}

function toggleInsertForm(tableName) {
    const form = document.getElementById(`insert-form-${tableName}`);
    const isVisible = form.style.display === 'block';

    if (!isVisible) {
        // Al mostrar el formulario, comprobar si hay un layout personalizado y aplicarlo
        if (window.customInsertLayouts && window.customInsertLayouts[tableName]) {
            // Primero, regeneramos el contenido original del formulario
            const fields = schema.tables[tableName].columns.map(col => createInputField(col));
            const insertFieldsContainer = form.querySelector('.insert-fields');
            insertFieldsContainer.innerHTML = fields.join('');
            
            // Luego, aplicamos la personalización
            processEsqlContent(window.customInsertLayouts[tableName]);
        }
    }

    form.style.display = isVisible ? 'none' : 'block';
}

function insertData(tableName, continueInserting) {
    try {
        const form = document.getElementById(`insert-form-${tableName}`);
        const fields = form.querySelectorAll('input, select');
        const values = {};
        const columns = schema.tables[tableName].columns;
        
        // Encontrar la columna PK
        const pkColumn = columns.find(col => col.pk);
        
        // Validar y recoger valores
        fields.forEach(field => {
            const column = columns.find(col => col.name === field.name);
            if (!column) return;

            let value;
            if (column.type === 'BOOLEAN') {
                value = field.checked;
            } else {
                value = field.value.trim();
            }
            
            // Validación especial para PK
            if (column.pk) {
                if (!value) {
                    throw new Error('La clave primaria es obligatoria');
                }
                
                // Verificar si la PK ya existe
                const existingRecords = alasql(`SELECT * FROM ${tableName} WHERE ${column.name} = ?`, [value]);
                if (existingRecords.length > 0) {
                    throw new Error(`Ya existe un registro con la clave primaria '${value}'`);
                }
                
                values[field.name] = validateAndFormatValue(value, column.type);
            } else {
                // Para campos no-PK, permitir NULL o el valor correspondiente
                if (column.type === 'BOOLEAN') {
                    values[field.name] = value;
                } else {
                    values[field.name] = value === '' ? null : validateAndFormatValue(value, column.type);
                }
            }
        });

        // Construir y ejecutar la consulta SQL
        const columnNames = Object.keys(values).join(', ');
        const columnValues = Object.values(values).map(v => 
            v === null ? 'NULL' : typeof v === 'string' ? `'${v.replace(/'/g, "''")}'` : v
        ).join(', ');
        const query = `INSERT INTO ${tableName} (${columnNames}) VALUES (${columnValues})`;

        alasql(query);
        
        if (continueInserting) {
            // Limpiar todos los campos del formulario
            fields.forEach(field => {
                if (field.type === 'checkbox') {
                    field.checked = false;
                } else {
                    field.value = '';
                }
                // Para los select, seleccionar la primera opción (vacía)
                if (field.tagName === 'SELECT') {
                    field.selectedIndex = 0;
                }
            });
            // Mantener el foco en el campo PK para la siguiente inserción
            form.querySelector(`[name="${pkColumn.name}"]`).focus();
        } else {
            // Cerrar el formulario
            form.style.display = 'none';
            // Limpiar los campos antes de cerrar
            fields.forEach(field => {
                if (field.type === 'checkbox') {
                    field.checked = false;
                } else {
                    field.value = '';
                }
                if (field.tagName === 'SELECT') {
                    field.selectedIndex = 0;
                }
            });
        }

        alert('Datos insertados correctamente');
    } catch (error) {
        alert('Error al insertar datos: ' + error.message);
    }
}

function submitInsertForm(tableName) {
    const form = document.getElementById(`insert-form-${tableName}`);
    const inputs = form.querySelectorAll('input, select');
    const values = {};
    let error = false;

    try {
        inputs.forEach(input => {
            if (input.name) {
                const column = schema.tables[tableName].columns.find(col => col.name === input.name);
                if (column) {
                    let value;
                    if (column.type === 'BOOLEAN') {
                        value = input.checked;
                    } else {
                        value = validateAndFormatValue(input.value, column.type);
                    }
                    
                    if (column.pk && (value === null || value === '')) {
                        throw new Error(`La clave primaria "${column.name}" no puede estar vacía.`);
                    }
                    values[input.name] = value;
                }
            }
        });

        const columns = Object.keys(values).join(', ');
        const valuePlaceholders = Object.values(values).map(() => '?').join(', ');
        const query = `INSERT INTO ${tableName} (${columns}) VALUES (${valuePlaceholders})`;
        
        alasql(query, [Object.values(values)]);
        
        showNotification(`Registro insertado en ${tableName} correctamente.`, 'success');
        cargarTablaOAVD();
        form.reset();
    } catch (e) {
        showNotification('Error al insertar: ' + e.message, 'error');
        error = true;
    }
}

function validateAndFormatValue(value, type) {
    // Si el valor está vacío, retornar null
    if (value === '') {
        return null;
    }

    switch (type) {
        case 'INT':
            if (isNaN(parseInt(value))) {
                throw new Error('El valor debe ser un número entero');
            }
            return parseInt(value);
        case 'FLOAT':
            if (isNaN(parseFloat(value))) {
                throw new Error('El valor debe ser un número');
            }
            return parseFloat(value);
        case 'BOOLEAN':
            return value === 'true';
        case 'DATE':
            if (value && !/^\d{4}-\d{2}-\d{2}$/.test(value)) {
                throw new Error('Formato de fecha inválido. Use AAAA-MM-DD');
            }
            return value;
        default:
            return value;
    }
}
