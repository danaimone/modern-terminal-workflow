autoload colors zsh/terminfo
colors
# Path to oh-my-zsh
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME"avit"

# Auto start tmux
if [ "$TMUX" = "" ]; then tmux; fi

# Auto CD
setopt auto_cd

# Typo Correction
setopt correctall
alias git status='nocorrect git status'

# Plugins
if [[ ! -f ~/.antigen.zsh ]]; then
  curl https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen.zsh
fi
source ~/.antigen.zsh
source /usr/local/share/antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen apply
. `brew --prefix`/etc/profile.d/z.sh
