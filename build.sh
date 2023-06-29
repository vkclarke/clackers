#!/bin/sh

wine ASM68K.EXE /ps clackers.asm, clackers.srec | dos2unix
wine ASM68K.EXE /p clackers.asm, clackers.mdrv, clackers.sym, clackers.lst | dos2unix
dos2unix -f clackers.lst
md5sum original.mdrv
md5sum clackers.mdrv
