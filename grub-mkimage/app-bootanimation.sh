#!/usr/bin/env sh

boot=chain
device=
graphical=$(cat ../mod_list/graphical.txt)
shell=
storage=$(cat ../mod_list/storage.txt)
terminal=minicmd
time=$(cat ../mod_list/time.txt)
var=$(cat ../mod_list/var.txt)
../grub-mkimage \
-m app-bootanimation.xz \
-d "../x86_64-efi" \
-c grub-mkimage.cfg \
-p "(memdisk)/grub" \
-o bootanimation.efi \
-O x86_64-efi \
$boot \
$device \
$graphical \
$shell \
$storage \
$terminal \
$time \
$var
