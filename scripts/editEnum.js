async function openEditEnumModal() {
    const enumName = document.getElementById('enumDropdown').value;
    if (!enumName) {
        showNotification('Por favor, selecciona un enum para editar.', 'warning');
        return;
    }

    // Verificar si el enum está siendo usado en alguna tabla
    let enumUsage = [];
    for (const tableName in schema.tables) {
        if (!schema.tables[tableName].isEnum) {
            const table = schema.tables[tableName];
            table.columns.forEach(column => {
                if (column.type === enumName) {
                    enumUsage.push(tableName);
                }
            });
        }
    }

    if (enumUsage.length > 0) {
        const message = 
            `⚠️ ADVERTENCIA IMPORTANTE ⚠️\n\n` +
            `Este enum está siendo utilizado en las siguientes tablas:\n${enumUsage.join(', ')}\n\n` +
            'La modificación de valores puede causar:\n' +
            '- Inconsistencias en los datos existentes\n' +
            '- Errores en las restricciones CHECK\n' +
            '- Problemas con las inserciones existentes\n\n' +
            '🚨 ELIMINACIÓN DE VALORES:\n' +
            'Si elimina un valor del enum, se BORRARÁN AUTOMÁTICAMENTE\n' +
            'TODOS los registros que contengan ese valor en cualquier tabla.\n' +
            'Esta acción NO SE PUEDE DESHACER.\n\n' +
            '✅ AÑADIR VALORES: Es seguro y no afecta datos existentes.\n\n' +
            '¿Está COMPLETAMENTE SEGURO de que desea continuar con la edición?';

        const shouldContinue = await showCriticalWarning(message);
        if (!shouldContinue) return;
    }

    const enumData = schema.tables[enumName];
    if (!enumData || !enumData.isEnum) {
        showNotification('El elemento seleccionado no es un enum válido.', 'error');
        return;
    }

    const container = document.getElementById('editEnumValuesContainer');
    container.innerHTML = ''; // Reiniciar el contenedor

    enumData.values.forEach(value => {
        const valueInput = document.createElement('div');
        valueInput.className = 'enum-value-input';
        valueInput.innerHTML = `
            <input type="text" value="${value}" class="enum-value">
            <button onclick="removeEnumValueInput(this)">Eliminar</button>
        `;
        container.appendChild(valueInput);
    });

    // Hacer el contenedor desplazable
    container.style.maxHeight = '300px';
    container.style.overflowY = 'auto';

    document.getElementById('editEnumName').value = enumName;
    document.getElementById('editEnumModal').style.display = 'block';
}

function addEnumValueInput() {
    const container = document.getElementById('editEnumValuesContainer');
    const valueInput = document.createElement('div');
    valueInput.className = 'enum-value-input';
    valueInput.innerHTML = `
        <input type="text" placeholder="Nuevo valor del Enum" class="enum-value">
        <button onclick="removeEnumValueInput(this)">Eliminar</button>
    `;
    container.appendChild(valueInput);
}

function removeEnumValueInput(button) {
    const container = document.getElementById('editEnumValuesContainer');
    container.removeChild(button.parentElement);
}

function saveEnumChanges() {
    const enumName = document.getElementById('editEnumName').value.trim();
    const newValues = [];
    const valueInputs = document.querySelectorAll('#editEnumValuesContainer .enum-value-input .enum-value');
    valueInputs.forEach(input => {
        const value = input.value.trim();
        if (value) newValues.push(value);
    });

    if (newValues.length === 0) {
        alert('Por favor, añade al menos un valor.');
        return;
    }

    try {
        const currentValues = schema.tables[enumName].values;
        const removedValues = currentValues.filter(value => !newValues.includes(value));
        
        let deletedRecordsInfo = '';
        let totalDeletedRecords = 0;

        // Si hay valores eliminados, limpiar los datos que los usan
        if (removedValues.length > 0) {
            for (const tableName in schema.tables) {
                if (!schema.tables[tableName].isEnum) {
                    const table = schema.tables[tableName];
                    const enumColumns = table.columns.filter(col => col.type === enumName);
                    
                    if (enumColumns.length > 0) {
                        for (const removedValue of removedValues) {
                            for (const column of enumColumns) {
                                try {
                                    // Contar registros que se van a eliminar
                                    const countQuery = `SELECT COUNT(*) as count FROM ${tableName} WHERE ${column.name} = ?`;
                                    const countResult = alasql(countQuery, [removedValue]);
                                    const recordCount = countResult[0].count;
                                    
                                    if (recordCount > 0) {
                                        totalDeletedRecords += recordCount;
                                        deletedRecordsInfo += `- Tabla "${tableName}", columna "${column.name}": ${recordCount} registros con valor "${removedValue}"\n`;
                                        
                                        // Eliminar los registros
                                        const deleteQuery = `DELETE FROM ${tableName} WHERE ${column.name} = ?`;
                                        alasql(deleteQuery, [removedValue]);
                                    }
                                } catch (error) {
                                    console.error(`Error al limpiar datos en tabla ${tableName}, columna ${column.name}:`, error);
                                }
                            }
                        }
                    }
                }
            }
        }

        // Actualizar los valores del enum
        schema.tables[enumName].values = newValues;
        populateEnumDropdown();
        updateClassMap();
        closeEditEnumModal();
        
        // Mostrar mensaje de éxito con información de registros eliminados
        let successMessage = `Enum "${enumName}" actualizado exitosamente.`;
        if (totalDeletedRecords > 0) {
            successMessage += `\n\nRegistros eliminados (${totalDeletedRecords} en total):\n${deletedRecordsInfo}`;
            showNotification(successMessage, 'warning');
        } else {
            showNotification(successMessage, 'success');
        }
        
        // Actualizar la vista de datos si está visible
        if (document.getElementById('datos').style.display !== 'none') {
            showAllData();
        }
        
    } catch (error) {
        showNotification('Error al actualizar el enum: ' + error.message, 'error');
        console.error('Error updating enum:', error);
    }
}

function closeEditEnumModal() {
    document.getElementById('editEnumModal').style.display = 'none';
}

function openDeleteEnumModal(enumName) {
    if (!enumName) {
        alert('Por favor, selecciona un enum para borrar.');
        return;
    }

    // Verificar si el enum está siendo usado en alguna tabla
    let enumUsage = [];
    for (const tableName in schema.tables) {
        if (!schema.tables[tableName].isEnum) {
            const table = schema.tables[tableName];
            table.columns.forEach(column => {
                if (column.type === enumName) {
                    enumUsage.push(tableName);
                }
            });
        }
    }

    if (enumUsage.length > 0) {
        alert(`No se puede eliminar el enum "${enumName}" porque está siendo utilizado en las siguientes tablas:\n\n${enumUsage.join('\n')}`);
        return;
    }

    if (confirm(`¿Estás seguro de que deseas eliminar completamente el enum "${enumName}"?`)) {
        delete schema.tables[enumName];
        updateClassMap();
        populateEnumDropdown();
        alert(`Enum "${enumName}" eliminado correctamente.`);
    }
}
