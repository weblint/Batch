@echo off 
M: 
cd \07_CPQ_Alle\CQM-CM\01_TR\Wirksamkeit+Review\0099_Datenbank\Backup\
for /f %i in ('dir /ad /o-d /b M:\07_CPQ_Alle\CQM-CM\01_TR\Wirksamkeit+Review\0099_Datenbank\Backup\01???????? ^|more +30') do @echo rd /s /q "M:\07_CPQ_Alle\CQM-CM\01_TR\Wirksamkeit+Review\0099_Datenbank\Backup\%i"
