@echo off
setlocal enabledelayedexpansion

echo Identificando los procesos que están consumiendo más recursos...

rem Crear un archivo temporal para los resultados
set "output=%temp%\result.txt"
echo Procesos que consumen más recursos: > "%output%"

rem Definir umbrales para considerar un proceso como de alto consumo (ajusta estos valores según tus necesidades)
set "memory_threshold=50000"  rem En KB, 50000 KB son aproximadamente 50 MB

rem Utilizar tasklist para obtener información sobre los procesos y guardarla en un archivo CSV temporal
tasklist /fo csv /nh > "%temp%\processlist.csv"

rem Leer el archivo CSV y analizar los datos
for /f "usebackq tokens=1,2,5 delims=," %%a in ("%temp%\processlist.csv") do (
    set "process_name=%%~a"
    set "pid=%%~b"
    set "memory_usage=%%~c"

    rem Eliminar comillas dobles de los valores CSV
    set "process_name=!process_name:"=!"
    set "pid=!pid:"=!"
    set "memory_usage=!memory_usage:"=!"

    rem Eliminar los caracteres no numéricos del uso de memoria (como 'K' y comas)
    set "memory_usage=!memory_usage: K=!"
    set "memory_usage=!memory_usage:,=!"

    rem Verificar si el valor de memoria no es vacío antes de compararlo
    if not "!memory_usage!"=="" (
        rem Verificar si el proceso supera los umbrales establecidos
        if !memory_usage! GTR %memory_threshold% (
            echo [Memoria] Proceso: !process_name! - PID: !pid! - Uso Memoria: !memory_usage! KB >> "%output%"
        )
    )
)

rem Mostrar los resultados
type "%output%"

rem Eliminar archivos temporales
del "%temp%\processlist.csv"
del "%output%"

endlocal
pause
