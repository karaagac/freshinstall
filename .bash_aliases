
# File Shortcuts
alias d="cd ~/Desktop"
alias h="cd ~"
alias v="cd ~/Videos/"
alias sc="cd ~/scripts/"
alias m="cd ~/Music/"
alias p="cd ~/Pictures/"
alias dn="cd ~/Downloads/"
alias doc="cd ~/Documents"
alias idea="/opt/idea/bin/idea.sh"
alias edit-bookmarks="vim ~/.config/surfraw/bookmarks"
alias cfg-i3="vim ~/.config/i3/config"
alias jw="vim ~/Desktop/vimwiki/index.md"
alias defaults="vim ~/.config/mimeapps.list"

# Program shortcuts
alias r="ranger"

# commands
alias i3config="vim .config/i3/config"
alias rld-Xresources="xrdb -load ~/.Xresources"
 
# Diger

#{{{ ffmpeg screen record**********************

# Record screen without sound
alias screenrecord-nosound="ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0.0 -c:v libx264 -qp 0 -preset ultrafast screenrecord-nosound.mp4"
alias recordscreen-nosound="ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0.0 -c:v libx264 -qp 0 -preset ultrafast screenrecord-nosound.mp4"

# Record screen with sound
alias recordscreen="ffmpeg -f x11grab -s 1920x1080 -i :0.0 -f alsa -i default screenrecord.mp4"
alias screenrecord="ffmpeg -f x11grab -s 1920x1080 -i :0.0 -f alsa -i default screenrecord.mp4"

# ffmpeg audio record
alias recordaudio="ffmpeg -f alsa -i default audiorecord.mp3"

# ffmpeg web cam kayit
alias recordwebcam="ffmpeg -i /dev/video0 -f alsa -i default webcamrecord.mp4"
alias webcam-record="ffmpeg -i /dev/video0 -f alsa -i default webcamrecord.mp4"

# List webcam
webcam-list() { v4l2-ctl --list-formats-ext && v4l2-ctl --list-devices ;}

# Open webcam
webcam-mplayer-open-SD() { mplayer tv:// -tv driver=v4l2:width=640:height=360:device=/dev/video0 -fps 30 -vf screenshot -ontop -geometry "99%:95%" ;}
webcam-mplayer-open-HD() { mplayer tv:// -tv driver=v4l2:width=1280:height=720:device=/dev/video0 -fps 30 -vf screenshot -ontop -geometry "99%:95%" ;}
#*********************************************}}}
#{{{ video files search and open files with mpv
vs() {
mpv "$( locate -i .mkv .mp4 .webm .m4v |fzf )"
}
#**********************************************}}}
#{{{ mp3 files search and open files with mpv
mp3ara() {
mpv "$( locate -i .mp3 |fzf )"
}
#}}}
#**************************************************
#{{{ Translate Turkce Alias
#English
alias entr="trans en:tr" #English to Turkish
alias tren="trans tr:en" #Turkish to English
#French
alias trfr="trans tr:fr" #Turkish to French
alias frtr="trans fr:tr" #French to Turkish
#Spanich
alias estr="trans es:tr" #Spanish to Turkish
alias tres="trans tr:es" #Turkish to Spanish
#*****************************************
#************************************************************
#{{{ keyboard layout
alias trklavye="setxkbmap 'tr(intl)'"
alias engklavye="setxkbmap us"
#}}}
#**************************************************************
alias muziklistesi="mpv --no-video" #play youtube links in m3u files
#**************************************************************
