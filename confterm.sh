#! /bin/bash

PATH=$PATH:/yuste/bin
PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\033[01;33m\u\033[1;31m@\033[1;33m\h\033[00m:\033[01;34m\w\033[00m$ "

alias l='ls -laF'
alias ver='uname -a | cut -d " " -f1,3,13,15'
alias cls='clear'
alias cd..='cd ..'
alias ..='cd ..'
alias chkdsk='e2fsck'

[[ -f /usr/bin/cowsay ]] &&  /usr/bin/cowsay "¡¡¡ Hola, $USER !!!" && echo -e "\n" || echo -e "\n!!! Hola, $USER !!!\n"

for i in /dev/ttyS[0-9]
do
    setfont -C $i sun12x22.psf.gz 2> /dev/null
done