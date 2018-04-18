@echo off
rem ### Pfad, unter dem alle leeren Ordner gloescht werden sollen wird gesetzt ###

@echo off
set gotodir="%M:\07_CPQ_Alle\CQM-CM\01_TR\Wirksamkeit+Review\0099_Datenbank\Backup\%"  
FOR /F "tokens=* delims=" %%i in ('dir /AD /B /S %gotodir% ^| sort /R' ) do (  
  RD "%%i" 2>nul && echo DELETE %%i  
)
