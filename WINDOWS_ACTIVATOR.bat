@echo off 
color f0
net session >nul 2>&1
if not %errorlevel% == 0 goto noadmin
mode con lines=30 cols=120
set typeerr=0
:language
title Windows Activaton
set num=
color f0
if defined lang goto langskip
cls
echo Language / §ëª
echo.
echo [1] - English
echo [2] - ãááª¨©
echo.
echo [0] - Exit / ë©â¨
echo [e] - I can't to see some letters (UTF-8)
echo.
echo  HOW TO: Type digit in the square brackets and press ENTER. 
echo          Use 1 for English or 0 to exit.
echo.
echo   : ¢¥¤¨â¥ æ¨äàã ãª § ­­ë¥ ¢ ª¢ ¤à â­ëå áª®¡ª å ¨ ­ ¦¬¨â¥ ENTER.
echo              ¨äà  2 ¢ª«îç ¥â ãááª¨© ï§ëª,   æ¨äà  0 § ªà®¥â íâ® ®ª­®.
echo.
if %typeerr% == 1 echo ] Command error. Type again. & echo.
set typeerr=0
set /P num=ENTER: 
if not defined num goto language
if %num% == 0 goto exit
if %num% == 1 (set lang="EN-us" & goto langskip)
if %num% == 2 (set lang="RU-ru" & goto langskip)
if %num% == e (chcp 65001 & goto language)
set typeerr=1
color 40
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
color f0
pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
color 40
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
goto language
:langskip
if %lang% == "EN-us" (set langerr=0 & goto lang_EN-us)
if %lang% == "RU-ru" (set langerr=0 & goto lang_RU-ru)
goto lang_EN-us
:home
title %Thome%
set num=
color f0
cls
echo %Lwindows_activation%
echo.
echo [1] - %Lselect_windows_edition%
echo [2] - %Lselect_kms_server%
echo [3] - %Lcontributors%
echo.
echo [0] - %Lexit%
echo.
if %typeerr% == 1 echo %Ltype_error% & echo.
set typeerr=0
set /P num=%Lselect%
if not defined num goto home
if %num% == 0 goto exit
if %num% == 1 goto version
if %num% == 2 goto kms
if %num% == 3 goto contributors
set typeerr=1
color 40
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
color f0
pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
color 40
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
goto home
:version 
mode con lines=30 cols=120
title %Tversion%
set num=
color f0
cls
echo %Lselect_windows_edition%
echo.
echo  %Lkey%%key%
echo.
echo [1] - Windows 11/10 Pro
echo [2] - Windows 11/10 Pro %LN_version%
echo [3] - Windows 11/10 Pro %Lfor_workstations%
echo [4] - Windows 11/10 Pro %Lfor_workstations% %LN_version%
echo [5] - Windows 11/10 Pro %Lfor_education%
echo [6] - Windows 11/10 Pro %Lfor_education% %LN_version%
echo [7] - Windows 11/10 %Lfor_education%
echo [8] - Windows 11/10 %Lfor_education% %LN_version%
echo [9] - Windows 11/10 %Lfor_enterprise% 
echo [a] - Windows 11/10 %Lfor_enterprise% %LN_version%
echo [b] - Windows 11/10 %Lfor_enterprise% G
echo [c] - Windows 11/10 %Lfor_enterprise% G %LN_version%
echo [d] - Windows Server 2019 Standard
echo.
echo [0] - %Lback%
echo [q] - %Lwhat_my_windows%
echo [w] - %Lenter_key_manually%
echo.
if %typeerr% == 1 echo %Ltype_error% & echo.
set typeerr=0
color f0
set /P num=%Lselect%
if not defined num goto version
if %num% == 0 goto home
if %num% == 1 (set key=W269N-WFGWX-YVC9B-4J6C9-T83GX & goto activation)
if %num% == 2 (set key=MH37W-N47XK-V7XM9-C7227-GCQG9 & goto activation)
if %num% == 3 (set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J & goto activation)
if %num% == 4 (set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF & goto activation)
if %num% == 5 (set key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y & goto activation)
if %num% == 6 (set key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC & goto activation)
if %num% == 7 (set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 & goto activation)
if %num% == 8 (set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ & goto activation)
if %num% == 9 (set key=NPPR9-FWDCX-D2C8J-H872K-2YT43 & goto activation)
if %num% == a (set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 & goto activation)
if %num% == b (set key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B & goto activation)
if %num% == c (set key=44RPN-FTY23-9VTTB-MP9BX-T84FV & goto activation)
if %num% == d (set key=N69G4-B89J2-4G8F4-WWYCC-J464C & goto activation)
if %num% == q goto whatmywindows
if %num% == w goto manual
set typeerr=1
color 40
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
color f0
pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
color 40
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
goto version
:whatmywindows
mode con lines=60 cols=120
title %Twait%
cls
set num=
color f0
echo %Tmy_version%
echo.
systeminfo
title %Tmy_version%
echo.
echo [0] - %Lback%
echo.
echo %Lpress_any_key%
pause>nul
goto version
:activation
title %Tactivation%
color f0
cls
echo %Lin_progress%
echo %Lprogress_kms_server%
slmgr /skms %kms%
echo %Lprogress_installation_key%
slmgr /ipk %key%
echo %Lprogress_try_to_activate%
slmgr /ato
color 0F
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
color f0
pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
color 0F
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
color f0
pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
cls
echo %Lprogress_pls_check%
echo.
echo %Lpress_any_key%
pause>nul
goto version
:manual
title %Tmanual%
cls
set num=
color f0
echo %Tmanual%
echo.
echo [0] - %Lback%
echo.
if %typeerr% == 1 echo %Ltype_error% & echo.
set typeerr=0
set /P num=%Ltype_here%
if not defined num goto manual
if %num% == 0 goto version
set key=%num%
color A0
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
color f0
pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
color A0
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
goto activation
:kms
title %Tkms%
cls
set num=
color f0
echo %Tkms%
echo.
echo  %Lserver%%kms%
echo.
echo [1] - 127.0.0.1 (localhost)
echo [2] - kms.digiboy.ir
echo [3] - kms.mistkeith.com
echo [4] - kms.isu.edu.tw
echo [5] - kms.crackmywpa.com
echo [6] - kms8.msguides.com
echo.
echo [0] - %Lback%
echo [w] - %Tkms_manual%
echo.
if %kmsinstallnotify% == 1 (
	echo %Lkms_installed% & echo.
	color A0
	pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
	color f0
	pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
)
set kmsinstallnotify=0
if %typeerr% == 1 echo %Ltype_error% & echo.
set typeerr=0
set /P num=%Lselect%
if not defined num goto kms
if %num% == 0 goto home
if %num% == 1 (set kms=127.0.0.1 & set kmsinstallnotify=1 & goto kms)
if %num% == 2 (set kms=kms.digiboy.ir & set kmsinstallnotify=1 & goto kms )
if %num% == 3 (set kms=kms.mistkeithy.com & set kmsinstallnotify=1 & goto kms )
if %num% == 4 (set kms=kms.isu.edu.tw & set kmsinstallnotify=1 & goto kms )
if %num% == 5 (set kms=kms.crackmywpa.com & set kmsinstallnotify=1 & goto kms )
if %num% == 6 (set kms=kms8.msguides.com & set kmsinstallnotify=1 & goto kms )
if %num% == w goto kms_manual
set typeerr=1
color 40
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
color f0
pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
color 40
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
goto kms
:kms_manual
title %Tkms_manual%
cls
set num=
color f0
echo %Tkms_manual%
echo.
echo  %Lserver%%kms%
echo.
echo [0] - %Lback%
echo.
set /P num=%Ltype_here%
if not defined num goto kms_manual
if %num% == 0 goto kms
set kmsinstallnotify=1
set kms=%num%
color A0
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
color f0
pathping -h 1 -p 20 -q 1 -w 1 127.0.0.1>nul
color A0
pathping -h 1 -p 50 -q 1 -w 1 127.0.0.1>nul
goto kms
:contributors
title %Tcontributors%
cls
set num=
color f0
echo %Lcontributors_line1%
echo %Lcontributors_line2%
echo %Lcontributors_line3%
echo.
echo %Lcontributors_line4%
echo   %Lcontributors_line5%
echo   %Lcontributors_line6%
echo.
echo %Lcontributors_line7%
echo.
echo %Lcontributors_line8%
echo.
echo %Lpress_any_key%
pause>nul
goto home
:lang_EN-us
set Thome=Main page
set Tversion=Windows Edition Select
set Tactivation=Activation...
set Tcontributors=Contributors
set Twait=Wait...
set Tkms=Select KMS server
set Tkms_manual=Enter KMS server manually
set Tmanual=Enter key manually and activate
set Tmy_version=My Windows Edition
set Lwindows_activation=Windows Activaton
set Lselect_windows_edition=Select Windows edition
set Lenter_key_manually=Enter key manually and activate
set Lselect_kms_server=Select the KMS server
set Lcontributors=Contributors
set Lin_progress=Activaton in progress...
set Lprogress_kms_server=Setting KMS server...
set Lprogress_installation_key=Installation product key...
set Lprogress_try_to_activate=One moment...
set Lprogress_pls_check=Open the dialog window and check activation status. Try again if error occured.
set Lcontributors_line1=Windows Tweaks - Windows Activation Tool. Copyright (c) 2022 mistkeithy. 
set Lcontributors_line2=All rights reserved. MIT License.
set Lcontributors_line3=Modification, distribution and commersial use are allowed.
set Lcontributors_line4=Contibutors:
set Lcontributors_line5=mistkeithy - General contributor; translations: Russian, English
set Lcontributors_line6=WhyNotov - contributor
set Lcontributors_line7=THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
set Lcontributors_line8="Microsoft (R) Windows (R)" is a registered trademark of Microsoft Corporation in the United States and other countries. We are not affiliated with Microsoft Corporation or their partner.
set Lfor_workstations=For Workstations
set Lfor_education=Education
set Lfor_enterprise=Enterprise
set LN_version=N (for EU without media applications)
set Lwhat_my_windows=What my Windows Edition
set Lwaiting_application_close=Window opened. Close it to continue.
set Lback=Return
set Lexit=Exit
set Lselect=Select: 
set Lserver=Server: 
set not_defined=not defined
set Lkey=Key: 
set Lkms_installed=] KMS server installed.
set Ltype_error=] Unknown command. Make sure for correct enter.
set Ltype_here=TYPE HERE or select (RClick paste): 
set Lpress_any_key=Press any key to continue...
goto envdefaults
:lang_RU-ru
set Thome=« ¢­ ï
set Tversion=ë¡®à à¥¤ ªæ¨¨ Windows
set Tactivation=ªâ¨¢ æ¨ï...
set Tcontributors=« £®¤ à­®áâ¨  ¢â®à ¬
set Twait=¦¨¤ ­¨¥...
set Tkms=ë¡à âì KMS-á¥à¢¥à
set Tkms_manual=¢¥áâ¨ á¥à¢¥à KMS ¢àãç­ãî
set Tmanual=¢¥áâ¨ ª«îç ¢àãç­ãî ¨ ­ ç âì  ªâ¨¢ æ¨î
set Tmy_version=®ï à¥¤ ªæ¨ï Windows
set Lwindows_activation=ªâ¨¢ æ¨ï Windows
set Lselect_windows_edition=ë¡à âì à¥¤ ªæ¨î Windows
set Lenter_key_manually=¢¥áâ¨ ª«îç ¢àãç­ãî ¨ ­ ç âì  ªâ¨¢ æ¨î
set Lselect_kms_server=ë¡à âì KMS-á¥à¢¥à
set Lcontributors=« £®¤ à­®áâ¨
set Lin_progress=¤¥â  ªâ¨¢ æ¨ï...
set Lprogress_kms_server=áâ ­®¢ª  KMS-á¥à¢¥à ...
set Lprogress_installation_key=áâ ­®¢ª  ª«îç  ¯à®¤ãªâ ...
set Lprogress_try_to_activate=ªâ¨¢ æ¨ï...
set Lprogress_pls_check=à®¢¥àìâ¥ áâ âãá  ªâ¨¢ æ¨¨ ¢ ¢á¯«ë¢ îé¥¬ ®ª­¥. ®¯à®¡ã©â¥ á­®¢ , ¥á«¨ ¯à®¨§®è«  ®è¨¡ª .
set Lcontributors_line1=Windows Tweaks - Windows Activation Tool. Copyright (c) 2022 mistkeithy. 
set Lcontributors_line2=á¥ ¯à ¢  § é¨é¥­ë.  á¯à®áâà ­ï¥âáï ¯® «¨æ¥­§¨¨ MIT.
set Lcontributors_line3= §à¥è¥­ë ¬®¤¨ä¨ª æ¨ï, à á¯à®áâà ­¥­¨¥ ¨ ª®¬¬¥àç¥áª®¥ ¨á¯®«ì§®¢ ­¨¥.
set Lcontributors_line4=á®¡ë¥ ¡« £®¤ à­®áâ¨:
set Lcontributors_line5=mistkeithy - « ¢­ë© à §à ¡®âç¨ª; ¯¥à¥¢®¤ë: ãááª¨©, ­£«¨©áª¨©
set Lcontributors_line6=WhyNotov -  §à ¡®âç¨ª
set Lcontributors_line7=    " ",  - ,    ,    ,        ,    .            - ,      ,   ,   ,    ,  -         .
set Lcontributors_line8="Microsoft (R) Windows (R)" - § à¥£¨áâ¨à®¢ ­­ë© â®¢ à­ë© §­ ª ®à¯®à æ¨¨ Microsoft ¢ ®¥¤¨­¥­ëå â â å ¬¥à¨ª¨ ¨ ¤àã£¨å áâà ­ å. ë ­¥ ï¢«ï¥¬áï  ää¨«¨à®¢ ­­ë¬ «¨æ®¬ ®à¯®à æ¨¨  ©ªà®á®äâ ¨«¨ ¨å ¯ àâ­¥à®¬.
set Lfor_workstations=¤«ï à ¡®ç¨å áâ ­æ¨©
set Lfor_education=¤«ï ®¡à §®¢ â¥«ì­ëå ãçà¥¦¤¥­¨©
set Lfor_enterprise=ª®à¯®à â¨¢­ ï
set LN_version=N (¤«ï  ¡¥§ ¬¥¤¨ -¯à¨«®¦¥­¨©)
set Lwhat_my_windows=§­ âì ¬®î à¥¤ ªæ¨î Windows
set Lwaiting_application_close=âªàëâ® ®ª­®, çâ®¡ë ¯à®¤®«¦¨âì à ¡®âã, § ªà®©â¥ ¥£®.
set Lback=¥à­ãâìáï
set Lexit=ë©â¨
set Lselect=ë¡®à: 
set Lserver=¥à¢¥à: 
set not_defined=­¥ § ¤ ­
set Lkey=«îç: 
set Lkms_installed=] KMS-á¥à¢¥à ãáâ ­®¢«¥­.
set Ltype_error=] ¥¨§¢¥áâ­ ï ª®¬ ­¤ . ¡¥¤¨â¥áì, çâ® ¢ë ­¥ ¤®¯ãáâ¨«¨ ®è¨¡®ª ¯à¨ ¢¢®¤¥.
set Ltype_here=  ¨«¨ ¢ë¡¥à¨â¥ ¯ã­ªâ ( ¢áâ ¢¨âì): 
set Lpress_any_key= ¦¬¨â¥ «î¡ãî ª« ¢¨èã çâ®¡ë ¯à®¤®«¦¨âì...
goto envdefaults
:envdefaults
set key=%not_defined%
set kmsinstallnotify=0
set kms=kms.digiboy.ir
goto home
exit /b
:noadmin
powershell -command "start-process \"%cd%\%~n0\" -verb runas"
goto exit
:exit
title %SystemRoot%\System32\cmd.exe
cls
color