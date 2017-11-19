#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

##insert here path to new applications
export PATH=$PATH:/opt/Visual_Paradigm_CE_14.2/bin
export PATH=$PATH:/home/kliffom/eclipse/java-oxygen/eclipse
export PATH=$PATH:/home/kliffom/eclipse/jee-oxygen/eclipse
export PATH=$PATH:/home/kliffom/eclipse/cpp-oxygen/eclipse
##export PATH=$PATH:/home/kliffom/Android/Sdk/tools

##insert here alias to applications with the same name
alias eclipsejava='/home/kliffom/eclipse/java-oxygen/eclipse/eclipse'
alias eclipsejee='/home/kliffom/eclipse/jee-oxygen/eclipse/eclipse'
alias eclipsecpp='/home/kliffom/eclipse/cpp-oxygen/eclipse/eclipse'
#alias avdemunexus5x='/home/kliffom/Android/Skd/tools/emulator -avd Nexus_5X_API_26 -netdelay none -netspeed -full'

#monitor activation through HDMI for i3
alias hdmioff='xrandr --output HDMI2 --off'
alias hdmionl='xrandr --output HDMI2 --auto --left-of eDP1'
alias hdmionr='xrandr --output HDMI2 --auto --right-of eDP1'
alias hdmisame='xrandr --output HDMI2 --same-as eDP1'

#backlight script for shell
alias keylightup='sh .config/i3/backlight up'
alias keylightdown='sh .config/i3/backlight down'

##config for Android Studio
##export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
