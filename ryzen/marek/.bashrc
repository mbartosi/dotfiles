# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export NVBLAS_CONFIG_FILE=/home/marek/nvblas.conf

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	export XSESSION="i3wm"
	export XCURSOR_SIZE=48
	export TERMINAL="alacritty"
	exec startx; exit
fi
