# Script de Limpieza para Aplicaciones Adobe

Este script en Batch está diseñado para cerrar todos los procesos de aplicaciones Adobe y limpiar las cachés y archivos temporales asociados con ellas. 

## Descripción

1. **Cierre de procesos**: El script cierra todos los procesos de las aplicaciones Adobe listadas.
2. **Esperar**: Introduce un breve retraso para asegurar que los procesos se cierren completamente.
3. **Limpieza de caché**: Elimina las carpetas de caché y archivos temporales de las aplicaciones Adobe especificadas.

## Instrucciones de Uso

1. **Modificar el perfil del usuario**: Asegúrate de que la variable `userProfile` en el script apunte a la ubicación correcta del perfil del usuario en tu sistema.
2. **Guardar el script**: Guarda el código en un archivo con extensión `.bat`, por ejemplo, `limpieza_adobe.bat`.
3. **Ejecutar el script**: Ejecuta el archivo `.bat` haciendo doble clic en él o desde la línea de comandos.

## Advertencias

- Este script eliminará las carpetas y archivos especificados sin confirmación adicional. Asegúrate de que estos directorios contengan solo cachés y archivos temporales antes de ejecutar el script.

## Licencia

Este script se proporciona sin garantía. Utilízalo bajo tu propio riesgo.
