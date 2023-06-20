export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
eval "$(rbenv init - zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Created by `pipx` on 2023-06-12 08:39:32
export PATH="$PATH:/Users/kerem.aksoy/.local/bin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

alias rubymine="open -na \"RubyMine.app\" --args \"$@\""

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'

autoload -U colors && colors

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PS1="%F{green}%n%f@%F{blue}%m%f %F{yellow}%~%f %# "
RPROMPT="%{$fg[green]%}\$vcs_info_msg_0_%{$reset_color%}"

