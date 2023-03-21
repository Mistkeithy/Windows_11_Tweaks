@echo off 
color f0
net session >nul 2>&1
if not %errorlevel% == 0 goto noadmin
mode con lines=30 cols=120
set typeerr=0
:language
title Windows Tweaker
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
echo [1] - %Lcontributors%
echo [2] - %Lsomething%
echo [0] - %Lexit%
echo.
if %typeerr% == 1 echo %Ltype_error% & echo.
set typeerr=0
set /P num=%Lselect%
if not defined num goto home
if %num% == 0 goto exit
if %num% == 1 goto toggle_reg
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
:lang_EN-us
call Translations\en_us.bat
goto envdefaults
:lang_RU-ru
call Translations\ru_ru.bat
goto envdefaults
:envdefaults
goto home
exit /b
:noadmin
powershell -command "start-process \"%cd%\%~n0\" -verb runas"
goto exit
:exit
title %SystemRoot%\System32\cmd.exe
cls
color