# USRP_Client (pyUC)

## Introdução
O pyUC é uma aplicação para aceder a redes digitais com licença válida de Radioamador através do computador. É a aplicação front-end do pacote de software DVSwitch com ligação ao componente Analog_Bridge.
## Funções
Os utilizadores podem:

 - Seleccionar modos digitais (DMR/YSF/NXDN/P25/D-STAR)
 - Seleccionar grupos de conversação ou reflectores de uma lista
 - Transmitir e receber pelo micro/coluna do PC
 - Ver o log de estações que transmitiram na sessão
 - Ver a imagem de perfil definida pelos operadores em QRZ.com

## Instalação - Versão Portuguesa
Download e unzip https://github.com/afranco8/USRP_Client/archive/master-pt.zip

Instruções de instalação:

- Windows 10

    Fazer o download da versão Python 3.7 da Microsoft Store  
    
    ## Método 1
    Abrir a linha de comandos  
    **python -m pip install --upgrade pip**  
    Download PyAudio de https://www.lfd.uci.edu/~gohlke/pythonlibs/ para a versão no seu computador (32 or 64 bit)
 
    **pip install PyAudio-0.2.11-cp37-cp37m-win_XXX.whl   
    pip install bs4  
    pip install Pillow  
    pip install requests**  
    Editar pyUC.ini
    
    ## Método 2
    Fazer o download da versão Python 3.7 da Microsoft Store 
    
    Uitilizar o ficheiro Download.bat (Download32.bat para instalação 32bit ou Download64.bat para instalação 64bit) para fazer automaticamente o download e instalação das librarys necessárias para utilização do USRP Client. Testado em Windows 10
  
    Se ocorrer um erro relacionado com MSVCP140.DLL durante a execução do USRP Client, terá de instalar a biblioteca necessária -> MSVC C++ runtime library
    Download: https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads

 
- Linux (Testedo em Raspberry Pi a correr Buster e Linux Mint 19)

    Abrir o terminal	
    **sudo apt-get install python3-pyaudio  
    sudo apt-get install portaudio19-dev  
    sudo apt-get install python3-pil.imagetk**  
    Editar pyUC.ini

- Mac

    **ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
    brew install python  
    brew install portaudio  
    pip3 install pyaudio  
    pip3 install bs4 Pillow requests**  
    Editar pyUC.ini

## Contributing
We encourage others to submit pull request to this repository.  We only ask that you submit the pull request on the development branch.  Your pull will be reviewed and merged into the master branch.
## Related projects
DVSwitch
## Licensing
This software is for use on amateur radio networks only, it is to be used  
for educational purposes only. Its use on commercial networks is strictly   
prohibited.  Permission to use, copy, modify, and/or distribute this software   
hereby granted, provided that the above copyright notice and this permission   
notice appear in all copies.  

THE SOFTWARE IS PROVIDED "AS IS" AND DVSWITCH DISCLAIMS ALL WARRANTIES WITH  
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY  
AND FITNESS.  IN NO EVENT SHALL N4IRR BE LIABLE FOR ANY SPECIAL, DIRECT,  
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM  
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE  
OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR  
PERFORMANCE OF THIS SOFTWARE.  
