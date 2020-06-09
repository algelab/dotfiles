alias config='/usr/local/bin/git --git-dir=/Users/algelab/.cfg/ --work-tree=/Users/algelab'
alias c4dhome='/Users/algelab/Library/Preferences/MAXON/'

# source /usr/share/fzf/key-bindings.bash
# source /usr/share/fzf/completion.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
'

source ~/.bash_completion/alacritty

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# Git auto-completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
