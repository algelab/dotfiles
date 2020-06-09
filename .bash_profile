PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH

# Old Shell color method...New one below
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad

export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'


###########################################
# Fill with minuses
# (this is recalculated every time the prompt is shown in function prompt_command):

fill="--- "
reset_style='\[\033[00m\]'
status_style=$reset_style'\[\033[0;90m\]' # gray color; use 0;37m for lighter color

prompt_style=$reset_style
command_style=$reset_style'\[\033[1;29m\]' # bold black

# Prompt variable:
PS1="$status_style"'$fill \t\n'"$prompt_style"'${debian_chroot:+($debian_chroot)}\[\033[36m\]\u \[\033[m\]at \[\033[32m\]\h \[\033[m\]in \[\033[33;1m\]\W\[\033[m\]\$'"$command_style "

# Reset color for command output
# (this one is invoked every time before a command is executed):
trap 'echo -ne "\033[00m"' DEBUG

function prompt_command {
# create a $fill of all screen width minus the time string and a space:
let fillsize=${COLUMNS}-9

fill=""
while [ "$fillsize" -gt "0" ]
do
	fill="-${fill}" # fill with underscores to work on
	let fillsize=${fillsize}-1
done

# If this is an xterm set the title to user@host:dir
case "$TERM" in
	xterm*|rxvt*)
		bname=`basename "${PWD/$HOME/~}"`
		echo -ne "\033]0;${bname}: ${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"
		;;
	*)
		;;
esac
}

PROMPT_COMMAND=prompt_command


#Ruby Path
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
# export FZF_DEFAULT_OPS="--extended"
# export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# Enable a better reverse search experience.
#   Requires: https://github.com/junegunn/fzf (to use fzf in general)
#   Requires: https://github.com/BurntSushi/ripgrep (for using rg below)
# export FZF_DEFAULT_COMMAND="rg --type f --files --hidden --follow --glob '!.git'"
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

export PATH="$HOME/.cargo/bin:$PATH"
