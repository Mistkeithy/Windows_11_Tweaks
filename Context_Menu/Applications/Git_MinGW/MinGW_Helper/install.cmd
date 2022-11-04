rem Установщик помощника C/C++ для MinGW
@echo off
rem Создание папки для иконок
mkdir "%AppData%\MinGW Helper"
rem Копирование содержимого папки res
cd resources
copy * "%AppData%\MinGW Helper"
cd ..
rem Применение твика на русском языке
ON.reg