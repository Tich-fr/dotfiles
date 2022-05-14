[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
eval `ssh-agent -s`
ssh-add /home/timothee/.ssh/id_ed25519

