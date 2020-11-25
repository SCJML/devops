@echo off
set robocp="C:\Espelho\robocopy.exe"
set ori_bkp="E:\Project-Planning\02_Projetos\000_Estruturas_Padroes\FINAME\"
set dest_bkp="E:\Project-Planning\02_Projetos\02_PFS\Fiat\BR12-2963701_Transportador_Laterais_X1P"
set "myDate=%date:~6,4%%date:~3,2%%date:~0,2%"

GOTO NEXT

:NEXT
echo.
echo Please wait until the operation is completed!
%robocp% %ori_bkp% %dest_bkp% /B /MIR /E /copyall
rem %robocp% %ori_bkp% %dest_bkp% /MIR /MT:10 /R:2 /W:2 /log:"E:\Log\Library_%myDate%.log"

GOTO end

:end
