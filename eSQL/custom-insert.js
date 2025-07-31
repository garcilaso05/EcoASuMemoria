// Lista de archivos .esql a cargar automáticamente.
// Añade aquí los nombres de tus archivos de personalización.
const esqlFilesToLoad = [
    "PERSONA.esql"
];

document.addEventListener('DOMContentLoaded', () => {
    // Carga automática de archivos .esql al inicio
    loadCustomLayouts();

    // Mantener la funcionalidad de carga manual por si se necesita
    const esqlUpload = document.getElementById('esql-upload');
    if (esqlUpload) {
        esqlUpload.addEventListener('change', handleEsqlUpload);
    }
});

async function loadCustomLayouts() {
    if (!window.customInsertLayouts) {
        window.customInsertLayouts = {};
    }

    for (const fileName of esqlFilesToLoad) {
        try {
            // Usamos fetch, que funcionará correctamente si se sirve desde un servidor local.
            // Si se abre como archivo local, esto puede fallar, pero es la forma estándar.
            const response = await fetch(`eSQL/${fileName}`);
            if (!response.ok) {
                console.warn(`No se pudo cargar el archivo de layout: ${fileName}`);
                continue;
            }
            const content = await response.text();
            
            // Guardar el layout para poder reaplicarlo si se regenera el formulario
            const tableName = content.split('\n')[0].substring(1).trim();
            if (tableName) {
                window.customInsertLayouts[tableName] = content;
            }

            // Procesar y aplicar el layout
            processEsqlContent(content);

        } catch (error) {
            console.error(`Error cargando o procesando ${fileName}:`, error);
            // Si fetch falla por CORS, se mostrará una advertencia en la consola del navegador.
            // La solución recomendada es usar un servidor de desarrollo local.
        }
    }
}

function handleEsqlUpload(event) {
    const file = event.target.files[0];
    if (!file) {
        return;
    }

    const reader = new FileReader();
    reader.onload = (e) => {
        const content = e.target.result;
        try {
            // Guardar el layout para reaplicarlo después
            if (!window.customInsertLayouts) {
                window.customInsertLayouts = {};
            }
            const tableName = content.split('\n')[0].substring(1).trim();
            if (tableName) {
                window.customInsertLayouts[tableName] = content;
            }

            processEsqlContent(content);
        } catch (error) {
            console.error("Error procesando el archivo .esql:", error);
            alert("Error al procesar el archivo .esql: " + error.message);
        }
    };
    reader.readAsText(file);
    event.target.value = ''; // Reset file input
}

function processEsqlContent(content) {
    const lines = content.split('\n').map(line => line.trim()).filter(line => line);

    if (!lines[0].startsWith('$') || lines[lines.length - 1] !== '###') {
        throw new Error("Formato de archivo .esql inválido.");
    }

    const tableName = lines[0].substring(1).trim();
    const insertForm = document.getElementById(`insert-form-${tableName}`);
    if (!insertForm) {
        console.warn(`No se encontró el formulario de inserción para la tabla: ${tableName}`);
        return;
    }
    const insertFieldsContainer = insertForm.querySelector('.insert-fields');

    if (!insertFieldsContainer) {
        console.warn(`No se encontró el contenedor de inserción para la tabla: ${tableName}`);
        return;
    }

    const fieldsOrder = [];
    const subtitles = {};

    for (let i = 1; i < lines.length - 1; i++) {
        const line = lines[i];
        if (line.startsWith('+')) {
            const subtitleText = line.substring(1).trim();
            const nextFieldLine = lines[i + 1];
            if (nextFieldLine && nextFieldLine.startsWith('-')) {
                const fieldName = nextFieldLine.substring(1).trim();
                subtitles[fieldName] = subtitleText;
            }
        } else if (line.startsWith('-')) {
            fieldsOrder.push(line.substring(1).trim());
        }
    }

    const existingFields = new Map();
    insertFieldsContainer.querySelectorAll('.input-field').forEach(fieldDiv => {
        const input = fieldDiv.querySelector('input, select, textarea');
        if (input && input.name) {
            existingFields.set(input.name, fieldDiv);
        }
    });
    
    const newContent = document.createDocumentFragment();

    fieldsOrder.forEach(fieldName => {
        if (subtitles[fieldName]) {
            const subtitleDiv = document.createElement('div');
            subtitleDiv.className = 'insertion-subtitle';
            const label = document.createElement('label');
            label.textContent = subtitles[fieldName];
            subtitleDiv.appendChild(label);
            newContent.appendChild(subtitleDiv);
        }

        const fieldDiv = existingFields.get(fieldName);
        if (fieldDiv) {
            newContent.appendChild(fieldDiv);
        }
    });

    insertFieldsContainer.innerHTML = '';
    insertFieldsContainer.appendChild(newContent);
}
