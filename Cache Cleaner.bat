@echo off
color b
setlocal enabledelayedexpansion

:: Inicializar la variable de resumen
set summary=

:: Enumerar todas las unidades disponibles y guardarlas en una lista
for /f "delims=" %%d in ('wmic logicaldisk get name ^| findstr ":"') do (
    call :clean_disk %%d
)

cls
echo Limpieza completada.
echo.
echo Los registros y la cache han sido eliminados con exito!
echo.
echo Se limpiaron las siguientes Unidades:
echo ===============================
echo Unidades procesadas: !summary!
echo ===============================
echo Presiona cualquier tecla para salir...
pause > nul
exit

:clean_disk
set disk=%1

cls
echo Procesando la unidad %disk%
timeout /t 5 > nul
set summary=!summary! %disk%

cls
echo Eliminando archivos de registro en %disk%...
del /s /q /f %disk%\*.log
timeout /t 5 > nul

if "%disk%"=="C:" (
    cls
    echo Deteniendo servicios...
    net stop wuauserv
    net stop UsoSvc
    timeout /t 5 > nul

    cls
    echo Eliminando carpeta SoftwareDistribution...
    rd /s /q %disk%\Windows\SoftwareDistribution
    md %disk%\Windows\SoftwareDistribution
    timeout /t 5 > nul

    cls
    echo Eliminando historial y cookies...
    rd /s /q %disk%\windows\history
    rd /s /q %disk%\windows\cookies
    timeout /t 5 > nul

    cls
    echo Limpiando impresoras...
    del /q /f /s %disk%\windows\spool\printers\*.*
    timeout /t 5 > nul

    cls
    echo Tomando posesion de las carpetas temporales...
    takeown /f "%temp%" /r /d y >nul 2>&1
    takeown /f "%disk%\Windows\Temp" /r /d y >nul 2>&1
    timeout /t 5 > nul

    cls
    echo Eliminando carpeta Temp...
    rd /s /q %disk%\Windows\Temp
    md %disk%\Windows\Temp
    timeout /t 5 > nul

    cls
    echo Limpiando archivos temporales adicionales...
    takeown /f "%disk%\Windows\Temp" /r /d y >nul 2>&1
    takeown /f %temp% /r /d y >nul 2>&1
    timeout /t 5 > nul

    cls
    echo Eliminando archivo de paginacion...
    del %disk%\WIN386.SWP
    timeout /t 5 > nul

    cls
    echo Limpiando registros de eventos...
    FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
    IF "%adminTest%"=="Acceso" goto noAdmin
    for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
    timeout /t 5 > nul

    cls
    echo Limpiando archivos temporales de usuario...
    rd /s /q "%userprofile%\AppData\Local\Temp"
    md "%userprofile%\AppData\Local\Temp"
    timeout /t 5 > nul
)

cls
echo Limpiando la papelera de reciclaje en %disk%...
rd /s /q %disk%\$Recycle.Bin
timeout /t 5 > nul

goto :eof

:do_clear
echo Limpiando %1
wevtutil.exe cl %1
goto :eof

:noAdmin
echo ¡Debes ejecutar este script como administrador!
echo Presiona cualquier tecla para salir...
pause > nul
exit