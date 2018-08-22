#!/bin/bash

#Sexy emojis
sexy_emojis=(/usr/share/xcowsay/sexy/*.png) # Use your own glob expression

s=1 # number of files per ccommand line; adjust to taste

for ((i=0; i < ${#sexy_emojis[@]}; i+=s)); do
	#"${sexy_emojis[@]:in}" output-"$i".sh
	 xcowsay -t 2 -d "${sexy_emojis[@]:i:s}" output-"$i".png
done
############################################################################

#Sexy Betty
sexy_betty=(/usr/share/xcowsay/betty/*.png)
b=1
for ((i=0; i < ${#sexy_betty[@]}; i+=b)); do
	#"${sexy_betty[@]:in}" output-"$i".sh
	 xcowsay -t 2 -d "${sexy_betty[@]:i:b}" output-"$i".png
 done
############################################################################

#Cmatrix
cmatrix | lolcat
############################################################################

#SL
sl [-alc] | lolcat
############################################################################

#Screensaver
xterm -fullscreen -bg black -e asciiquarium & alock -cursor none -bg none; xdotool key --clearmodifiers q
fortune | xcowsay
############################################################################

#Random cowsay with lolcat
 while true; do fortune | cowsay -f $(ls -d1 /usr/share/cows/* | shuf | head -n1) "$([ $[$RANDOM%10] == 0 ] || echo "-"$(echo -e "b\nd\ng\np\ns\nt\nw\ny"|shuf|tail -n1))" && sleep 3; done | lolcat
############################################################################

#XCowsay shutdown
fortune | xcowsay "Until next time grasshopper!"

