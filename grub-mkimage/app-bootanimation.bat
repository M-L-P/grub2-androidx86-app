@echo off
cd /d "%~dp0"

set /p boot=chain
set /p device=
set /p graphical= < ..\mod_list\graphical.txt
set /p shell=
set /p storage= < ..\mod_list\storage.txt
set /p terminal=minicmd
set /p time= < ..\mod_list\time.txt
set /p var= < ..\mod_list\var.txt
..\grub-mkimage.exe ^
-m app-bootanimation.xz ^
-d ..\x86_64-efi ^
-c grub-mkimage.cfg ^
-p "(memdisk)/grub" ^
-o bootanimation.efi ^
-O x86_64-efi ^
%boot% ^
%device% ^
%graphical% ^
%shell% ^
%storage% ^
%terminal% ^
%time% ^
%var%
