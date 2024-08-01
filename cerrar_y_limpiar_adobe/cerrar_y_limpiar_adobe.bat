@echo off
echo Cerrando todos los procesos de Adobe...

REM Cerrar procesos de Adobe
taskkill /f /im "AfterFX.exe" /im "Illustrator.exe" /im "Photoshop.exe" /im "Premiere.exe" /im "AcroRd32.exe" /im "Bridge.exe" /im "Lightroom.exe" /im "Creative Cloud.exe" /im "InDesign.exe" /im "Adobe Media Encoder.exe"

echo Todos los procesos de Adobe han sido cerrados.

REM Esperar unos segundos para asegurarse de que los procesos se cierren
ping -n 3 127.0.0.1 > nul

echo.
echo Limpiando la caché y archivos temporales de Adobe...

REM Rutas a las carpetas de caché y archivos temporales de Adobe para el usuario csarmiento
set "userProfile=C:\Users\csarmiento"
set "adobeCachePaths=%userProfile%\AppData\Roaming\Adobe\Common\Media Cache" ^
                     "%userProfile%\AppData\Roaming\Adobe\Common\Media Cache Files" ^
                     "%userProfile%\AppData\Roaming\Adobe\After Effects\Disk Cache" ^
                     "%userProfile%\AppData\Roaming\Adobe\Adobe Media Encoder" ^
                     "%userProfile%\AppData\Local\Adobe\Common\Media Cache" ^
                     "%userProfile%\AppData\Local\Adobe\Common\Media Cache Files" ^
                     "%userProfile%\AppData\Local\Adobe\After Effects\Cache" ^
                     "%userProfile%\AppData\Local\Adobe\Adobe Media Encoder" ^
                     "%userProfile%\AppData\Local\Temp\Adobe" ^
                     "%userProfile%\AppData\Local\Adobe\Acrobat\DC\Cache" ^
                     "%userProfile%\AppData\Local\Adobe\Lightroom\Caches" ^
                     "%userProfile%\AppData\Roaming\Adobe\Bridge\Cache" ^
                     "%userProfile%\AppData\Roaming\Adobe\Bridge\Temp" ^
                     "%userProfile%\AppData\Roaming\Adobe\InDesign\Version 16.0\en_US\InDesign Recovery" ^
                     "%userProfile%\AppData\Local\Temp\indesign" ^
                     "%userProfile%\AppData\Roaming\Adobe\InDesign\Version 16.0\en_US\PrivateCaches" ^
                     "%userProfile%\AppData\Local\Adobe\InDesign\Version 16.0\en_US\InDesign Recovery" ^
                     "%userProfile%\AppData\Local\Adobe\InDesign\Version 16.0\en_US\PrivateCaches"

REM Eliminar las carpetas de caché y archivos temporales de Adobe
for %%I in (%adobeCachePaths%) do (
    if exist "%%~I" (
        echo Eliminando: "%%~I"
        rd /s /q "%%~I"
    ) else (
        echo No se encontró la carpeta: "%%~I"
    )
)

echo.
echo Limpieza de caché y archivos temporales de Adobe completada.

echo Presiona cualquier tecla para salir.
pause > nul
