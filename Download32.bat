@echo off
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Seleccione a pasta do USRP Client',0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

rem Download library:
SET "FILE_URL=https://files.pythonhosted.org/packages/ba/65/ec3042de9a96e8c2eadf9bb88ddbcda434d5c679360f851a2562dd8b9942/PyAudio-0.2.11-cp27-cp27m-win32.whl"
SET "SAVING_TO=!folder!"\PyAudio-0.2.11-cp27-cp27m-win32.whl"
CALL :DOWNLOAD_FILE "%FILE_URL%" "%SAVING_TO%"
:DOWNLOAD_FILE
    rem Download command:
    bitsadmin /transfer Download /download /priority normal %1 %2

cd !folder!
python -m pip install --upgrade pip
pip install PyAudio-0.2.11-cp27-cp27m-win32.whl
pip install bs4
pip install Pillow
pip install requests
echo ""
echo "----------------------------------------------------------------------------------"
echo "Instalação completa. Deve agora editar o ficheiro pyUC.ini com as suas credencias. A abrir o ficheiro pyUC.ini..."
Timeout /t 2
Start notepad "pyUC.ini"
Timeout /t 5
exit
