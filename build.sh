#!/bin/bash

fontmake -m sources/V-love.designspace -o variable
rm sources/ttx/V-love-VF.ttx 
ttx -d  sources/ttx/ variable_ttf/V-love-VF.ttf
echo "merge CPAL COLR and V-love-VF.ttx manually"
code sources/ttx/*.ttx
ttx -d fonts/variable_ttf ttx/V-love-VF.ttx
ttx -d fonts/variable_ttf sources/ttx/V-love-VF.ttx
ttx -d fonts/webfonts --flavor woff2 sources/ttx/V-love-VF.ttx