# Script para Identificar Procesos de Alto Consumo de Recursos

Este script en Batch está diseñado para identificar y listar los procesos que están consumiendo más recursos de memoria en tu sistema. Los resultados se guardan en un archivo temporal y se muestran al usuario.

## Descripción

1. **Identificación de Procesos**: El script analiza los procesos en ejecución y los filtra según el umbral de consumo de memoria especificado.
2. **Resultados**: Los procesos que superan el umbral de consumo de memoria se registran en un archivo temporal y se muestran al usuario.
3. **Umbrales**: El umbral de memoria está configurado a 50 MB por defecto, pero puede ajustarse según tus necesidades.

## Instrucciones de Uso

1. **Guardar el script**: Guarda el código en un archivo con extensión `.bat`, por ejemplo, `identificar_procesos.bat`.
2. **Ejecutar el script**: Ejecuta el archivo `.bat` haciendo doble clic en él o desde la línea de comandos.

## Advertencias

- Asegúrate de ajustar el umbral de memoria (`memory_threshold`) según tus necesidades específicas.
- El script eliminará archivos temporales creados durante su ejecución.

## Licencia

Este script se proporciona sin garantía. Utilízalo bajo tu propio riesgo.
