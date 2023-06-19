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

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$reset_color%}in %{$fg[yellow]%}%${PWD/#$HOME/~} %{$reset_color%}%# "
RPROMPT="%{$fg[green]%}\$vcs_info_msg_0_%{$reset_color%}"

autoload -U colors && colors
