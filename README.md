### Descripción

`Cache Cleaner.bat` es un script por lotes de Windows diseñado para limpiar archivos de registro y caché en todas las unidades lógicas disponibles en el sistema. Además, realiza tareas adicionales de limpieza en la unidad C:, como detener servicios específicos y eliminar la carpeta [`SoftwareDistribution`](command:_github.copilot.openSymbolFromReferences?%5B%22SoftwareDistribution%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A46%2C%22character%22%3A28%7D%7D%5D%5D "Go to definition").

### Funcionalidades

1. **Limpieza de Archivos de Registro**:

   - Elimina todos los archivos de registro (`*.log`) en todas las unidades lógicas disponibles.

2. **Detención de Servicios**:

   - Detiene los servicios [`wuauserv`](command:_github.copilot.openSymbolFromReferences?%5B%22wuauserv%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A41%2C%22character%22%3A13%7D%7D%5D%5D "Go to definition") y [`UsoSvc`](command:_github.copilot.openSymbolFromReferences?%5B%22UsoSvc%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A42%2C%22character%22%3A13%7D%7D%5D%5D "Go to definition") en la unidad C: para permitir la eliminación de archivos protegidos.

3. **Eliminación de Carpetas Específicas**:

   - Elimina la carpeta [`SoftwareDistribution`](command:_github.copilot.openSymbolFromReferences?%5B%22SoftwareDistribution%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A46%2C%22character%22%3A28%7D%7D%5D%5D "Go to definition") en la unidad C: para liberar espacio y resolver posibles problemas de actualización de Windows.

4. **Enumeración de Unidades**:

   - Utiliza [`wmic`](command:_github.copilot.openSymbolFromReferences?%5B%22wmic%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A8%2C%22character%22%3A26%7D%7D%5D%5D "Go to definition") para obtener una lista de todas las unidades lógicas disponibles en el sistema y las procesa una por una.

5. **Resumen de Unidades Procesadas**:
   - Al finalizar, muestra un resumen de las unidades que han sido limpiadas.

### Funcionamiento

El script realiza las siguientes acciones:

1. **Inicialización**:

   - Desactiva la visualización de comandos (`@echo off`).
   - Cambia el color de la consola a azul ([`color b`](command:_github.copilot.openSymbolFromReferences?%5B%22color%20b%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A1%2C%22character%22%3A6%7D%7D%5D%5D "Go to definition")).
   - Habilita la expansión retardada de variables ([`setlocal enabledelayedexpansion`](command:_github.copilot.openSymbolFromReferences?%5B%22setlocal%20enabledelayedexpansion%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A2%2C%22character%22%3A9%7D%7D%5D%5D "Go to definition")).
   - Inicializa una variable [`summary`](command:_github.copilot.openSymbolFromReferences?%5B%22summary%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A4%7D%7D%5D%5D "Go to definition") para almacenar las unidades procesadas.

2. **Enumeración de Unidades**:

   - Utiliza [`wmic`](command:_github.copilot.openSymbolFromReferences?%5B%22wmic%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A8%2C%22character%22%3A26%7D%7D%5D%5D "Go to definition") para obtener una lista de todas las unidades lógicas disponibles.
   - Para cada unidad encontrada, llama a la función `:clean_disk`.

3. **Limpieza de Unidades**:

   - La función `:clean_disk` realiza las siguientes tareas:
     - Muestra un mensaje indicando la unidad que se está procesando.
     - Elimina todos los archivos de registro (`*.log`) en la unidad.
     - Si la unidad es [`C:`](command:_github.copilot.openSymbolFromReferences?%5B%22C%3A%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A38%2C%22character%22%3A14%7D%7D%5D%5D "Go to definition"), detiene los servicios [`wuauserv`](command:_github.copilot.openSymbolFromReferences?%5B%22wuauserv%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A41%2C%22character%22%3A13%7D%7D%5D%5D "Go to definition") y [`UsoSvc`](command:_github.copilot.openSymbolFromReferences?%5B%22UsoSvc%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A42%2C%22character%22%3A13%7D%7D%5D%5D "Go to definition"), y elimina la carpeta [`SoftwareDistribution`](command:_github.copilot.openSymbolFromReferences?%5B%22SoftwareDistribution%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A46%2C%22character%22%3A28%7D%7D%5D%5D "Go to definition").

4. **Resumen y Finalización**:
   - Después de procesar todas las unidades, muestra un resumen de las unidades limpiadas.
   - Espera a que el usuario presione una tecla para salir.

### Uso

1. **Ejecutar el Script**:

   - Haga doble clic en el archivo `Cache Cleaner.bat` para ejecutarlo.
   - El script se ejecutará en una ventana de consola y mostrará mensajes de progreso.

2. **Requisitos**:
   - Debe ejecutarse con privilegios de administrador para detener servicios y eliminar archivos protegidos en la unidad [`C:`](command:_github.copilot.openSymbolFromReferences?%5B%22C%3A%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A38%2C%22character%22%3A14%7D%7D%5D%5D "Go to definition").

### Advertencias

- **Pérdida de Datos**: Este script elimina archivos de registro y carpetas específicas. Asegúrese de que no necesita estos archivos antes de ejecutar el script.
- **Servicios del Sistema**: Detener servicios del sistema puede afectar el funcionamiento de Windows. Úselo con precaución.

### Personalización

Puede personalizar el script para adaptarlo a sus necesidades:

- **Agregar/Eliminar Unidades**: Modifique la sección de enumeración de unidades para incluir o excluir unidades específicas.
- **Archivos a Eliminar**: Cambie el patrón de archivos en el comando [`del`](command:_github.copilot.openSymbolFromReferences?%5B%22del%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22c%3A%5C%5CUsers%5C%5Cilike%5C%5CDocuments%5C%5COptimizacion%5C%5CProgramas%5C%5CCache%20Cleaner.bat%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fc%253A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%2520Cleaner.bat%22%2C%22path%22%3A%22%2FC%3A%2FUsers%2Filike%2FDocuments%2FOptimizacion%2FProgramas%2FCache%20Cleaner.bat%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A35%2C%22character%22%3A0%7D%7D%5D%5D "Go to definition") para eliminar diferentes tipos de archivos.
- **Servicios a Detener**: Agregue o elimine servicios en la sección correspondiente para detener otros servicios según sea necesario.

### Licencia

Este proyecto está bajo la Licencia MIT. Consulte el archivo `LICENSE` para obtener más detalles.
