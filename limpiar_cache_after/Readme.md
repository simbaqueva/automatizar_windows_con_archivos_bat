# Script de Limpieza de Caché para Adobe After Effects

Este script en Batch está diseñado para limpiar las cachés de Adobe After Effects, incluyendo las carpetas de archivos de caché de medios y de disco.

## Descripción

1. **Limpieza de cachés**: El script elimina las carpetas de caché de After Effects especificadas.
   - **Media Cache Files**: Ubicada en `AppData\Roaming\Adobe\Common\Media Cache Files`.
   - **Disk Cache**: Ubicada en `AppData\Roaming\Adobe\After Effects\Disk Cache`.

2. **Verificación de existencia**: Antes de intentar eliminar las carpetas, el script verifica si existen para evitar errores.

## Instrucciones de Uso

1. **Guardar el script**: Guarda el código en un archivo con extensión `.bat`, por ejemplo, `limpieza_after_effects.bat`.
2. **Ejecutar el script**: Ejecuta el archivo `.bat` haciendo doble clic en él o desde la línea de comandos.

## Advertencias

- Este script eliminará las carpetas de caché especificadas sin confirmación adicional. Asegúrate de que estas carpetas contengan solo cachés y archivos temporales antes de ejecutar el script.

## Licencia

Este script se proporciona sin garantía. Utilízalo bajo tu propio riesgo.
