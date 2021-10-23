#!/bin/bash
#             _   _     _      _
#  __ _  ___ | |_| |__ | | ___| |_ _   _
# / _` |/ _ \| __| '_ \| |/ _ \ __| | | |
#| (_| | (_) | |_| |_) | |  __/ |_| |_| |
# \__, |\___/ \__|_.__/|_|\___|\__|\__,_|
# |___/
#       https://www.youtube.com/user/gotbletu
#       https://twitter.com/gotbletu
#       https://plus.google.com/+gotbletu
#       https://github.com/gotbletu
#       gotbleu@gmail.com

# info: rofi-locate is a script to search local files and folders on your computer using the locate command and the updatedb database
# requirements: rofi mlocate
# playlist: rofi      https://www.youtube.com/playlist?list=PLqv94xWU9zZ0LVP1SEFQsLEYjZC_SUB3m

# this is with locate command works but shows hidden files.
# xdg-open "$(locate home media | rofi -threads 0 -width 100 -dmenu -i -p "locate:")"

# This doesnt show hidden files. So much better
xdg-open "$(find /home/xalil/ -not -path '*/\.*' \( ! -iname ".*" \) | rofi -threads 0 -width 100 -dmenu -i -p "find:")"

