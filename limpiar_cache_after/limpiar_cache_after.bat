@echo off
setlocal

echo Limpiando la caché de Adobe After Effects...

REM Ruta a la carpeta de caché de After Effects - Media Cache Files
set mediaCacheFilesPath=C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files

REM Ruta a la carpeta de caché de After Effects - Disk Cache
set diskCachePath=C:\Users\%username%\AppData\Roaming\Adobe\After Effects\Disk Cache

REM Verificar si las carpetas existen antes de intentar eliminarlas
if exist "%mediaCacheFilesPath%" (
    echo Eliminando Media Cache Files...
    rmdir /s /q "%mediaCacheFilesPath%"
) else (
    echo No se encontró la carpeta Media Cache Files en %mediaCacheFilesPath%
)

if exist "%diskCachePath%" (
    echo Eliminando Disk Cache...
    rmdir /s /q "%diskCachePath%"
) else (
    echo No se encontró la carpeta Disk Cache en %diskCachePath%
)

echo Caché de After Effects limpiada.
pause

endlocal
