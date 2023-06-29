#!/bin/sh

wine ASM68K.EXE /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- SONCRA.ASM, clackers.mdrv, clackers.sym, clackers.lst | dos2unix
dos2unix -f clackers.lst
md5sum original.mdrv
md5sum clackers.mdrv
