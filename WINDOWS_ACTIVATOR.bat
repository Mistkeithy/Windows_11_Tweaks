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
echo Language / Язык
echo.
echo [1] - English
echo [2] - Русский
echo.
echo [0] - Exit / Выйти
echo [e] - I can't to see some letters (UTF-8)
echo.
echo  HOW TO: Type digit in the square brackets and press ENTER. 
echo          Use 1 for English or 0 to exit.
echo.
echo  ЧТО ДЕЛАТЬ: Введите цифру указанные в квадратных скобках и нажмите ENTER.
echo              Цифра 2 включает Русский язык, а цифра 0 закроет это окно.
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
echo [e] - Windows 10 %Lfor_enterprise% LTSC
echo [f] - Windows 11/10 %Lfor_home%
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
if %num% == e (set key=XGVPP-NMH47-7TTHJ-W3FW7-8HV2C & goto activation)
if %num% == f (set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 & goto activation)
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
call Translations\en_us.bat
goto envdefaults
:lang_RU-ru
call Translations\ru_ru.bat
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