@echo off

:barrido
 cls
 echo Escaneando 192.25.0.%F%
 FOR  /L  %%F IN (2, 1, 254) DO ping -n 3 192.25.0.%%F 
 goto Mostrar

:Mostrar
 cls
 arp -a
 more "%CD%"\IPSCANRESULTS.txt
 echo ------------------------------------------------------------
 pause
 goto init

:Salir
 cls
 exit

:pal
 cls
 echo.
 set /P A=Introduze el valor del primer bloque:
 set /P B=Introduze el valor del segundo bloque:
 set /P C=Introduze el valor del Tercer bloque:
 set /P TT=Introduze el valor de espra del ping (ms):
 set /P R=Introduze el numero de repeticiones por cada direccion:
goto init