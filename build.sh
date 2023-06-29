#!/bin/sh

wine ASM68K.EXE /o op+ /o ow+ /ps SONCRA.ASM, clackers.srec | dos2unix
wine ASM68K.EXE /o op+ /o ow+ /p SONCRA.ASM, clackers.mdrv, clackers.sym, clackers.lst | dos2unix
dos2unix -f clackers.lst
md5sum original.mdrv
md5sum clackers.mdrv
