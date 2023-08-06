@echo off
title Aux N00b - Administración avanzada
:main
color 0F
cd %windir%
cls
echo Computername: %COMPUTERNAME% 
echo Username: %USERNAME%
echo.
echo Ingrese una obcion
echo -------------------------------------------------------
rem administrador de tareas
echo [A] Administrador de tareas
echo. - Aplicaciones al inicio
rem administrador de equipos
echo [B] Servicios y aplicaciones
echo. - Administrador de dispositivos (Drivers)
echo. - Administración de discos (Particionar)
echo. - Visor de eventos (Control)
echo. - Ususarios y grupos locales
echo [C] Firewall con seguridad avanzada (Abrir puertos) 
echo [D] Desfragmentador de discos
echo. - Liberar espacio en disco
echo [E] Desactivar inicio rapido y comportamiento de la tapa
echo [F] Más herramientas administrativas
echo [G] Explorador de archivos (Oculto, extensiones y ruta completa)
echo [H] Registro
echo [I] Generar indice de archivos del equipo
echo [J] Información del sistema (Cabeceras de memoria)
echo.
echo [Z] COMPROBAR SUMA DE VERIFICIÓN



echo.
set /p obcion=^>^>^>
goto %obcion%

:J
rem cabeceras de memoria
start msinfo32.exe
goto main

:A
rem Administrador de tareas
start taskmgr.exe
goto main

:B
rem Administrador de tareas
start mmc.exe
goto main

:C
rem FWSeguridadAvnazada
start WF.msc
goto main

:D
rem Desfragmentador de discos
start cleanmgr.exe
start dfrgui.exe
goto main

:E
rem Inicio rapido
echo "Panel de control\Hardware y sonido\Opciones de energía\Configuración del sistema"
pause
goto main

:F
rem Otras herramientas
echo "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools"
pause
goto main


:G
rem Opciones del Explorador de archivos (Oculto, extensiones y ruta completa)
start SystemSettings.exe
goto main

:H
rem Registro
start regedit.exe
goto main

:I
cls
echo.
echo. Generando indice, espere...
cd C:\
tree > C:\Users\%username%\Desktop\index_%username%.txt
goto main




:Z

echo.
ECHO noCHECKSUMs Avariable: MD2, MD4, MD5, SHA1, SHA256, SHA384, SHA512.
ECHO. DRAG AND DROP ANY FILE HERE
SET /P RUTA=RUTA:
CLS
echo GENERANDO SUMA DE VERIFICACIÓN... ESPERE.
ECHO.
CertUtil -hashfile %RUTA% MD2
ECHO.
CertUtil -hashfile %RUTA% MD4
ECHO.
CertUtil -hashfile %RUTA% MD5
ECHO.
CertUtil -hashfile %RUTA% SHA1
ECHO.
CertUtil -hashfile %RUTA% SHA256
ECHO.
CertUtil -hashfile %RUTA% SHA384
ECHO.
CertUtil -hashfile %RUTA% SHA512
ECHO.
ECHO.
ECHO. NEW CHECKSUM? Press any key...
PAUSE>NUL
goto main