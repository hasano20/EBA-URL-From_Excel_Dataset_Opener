ECHO OFF
CLS
:MENU
COLOR A
ECHO.
ECHO ...............................................
ECHO EBA MENUSU. ALIENOZI.C1.BIZ SECIM YAPINIZ
ECHO ...............................................
ECHO.
ECHO 1 - 9.SINIFLAR
ECHO 2 - 10.SINIFLAR
ECHO 3 - 12.SINIFLAR
ECHO 4 - EXIT
ECHO.
SET /P M=1, 2, 3, ya da 4 yazip ENTER'e basin:

IF %M%==1 GOTO EBA9
IF %M%==2 GOTO EBA10
IF %M%==3 GOTO EBA12
IF %M%==4 GOTO EOF

:EBA9
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './eba9.ps1'"
GOTO MENU

:EBA10
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './eba10.ps1'"
GOTO MENU

:EBA12
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './eba12.ps1'"
GOTO MENU