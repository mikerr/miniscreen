#!/bin/bash
export DISPLAY=:0
youtube-dl -q -f 17 -o- $1 | mplayer -fs -zoom -
