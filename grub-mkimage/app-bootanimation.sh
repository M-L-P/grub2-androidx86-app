#!/usr/bin/env sh

boot=chain
#device=$(cat ../mod_list/device.txt)
graphical=$(cat ../mod_list/graphical.txt)
#grubfm=$(cat ../mod_list/grubfm.txt)
#shell=$(cat ../mod_list/shell.txt)
storage=$(cat ../mod_list/storage.txt)
terminal=minicmd
#time=$(cat ../mod_list/time.txt)
var=$(cat ../mod_list/var.txt)
../grub-mkimage \
-m app-bootanimation.xz \
-d "../x86_64-efi" \
-c grub-mkimage.cfg \
-p "(memdisk)/grub" \
-o bootanimation.efi \
-O x86_64-efi \
$boot \
$graphical \
$storage \
$terminal \
$var \
configfile play