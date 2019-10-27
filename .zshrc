# PATH
(cat ~/.cache/wal/sequences &)
source ~/.zplug/init.zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rainy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Let zplug manage itself like other packages
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Oh-My-Zsh core
zplug "lib/*", from:oh-my-zsh

# Oh-My-Zsh plugins
zplug "plugins/history-substring-search", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
#zplug "plugins/ssh-agent", from:oh-my-zsh
#zplug "plugins/gpg-agent", from:oh-my-zsh

# Zsh improvements
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "hlissner/zsh-autopair", defer:2

# Extra
zplug "lukechilds/zsh-better-npm-completion", defer:2
zplug "denysdovhan/gitio-zsh", as:command, use:"gitio.zsh", rename-to:"gitio"
zplug "rauchg/wifi-password", as:command, use:"wifi-password.sh", rename-to:"wifi-password"

# Spaceship ZSH
if [[ -d "$HOME/Projects/Repos/spaceship-prompt" ]]; then
  zplug "$HOME/Projects/Repos/spaceship-prompt", from:local, as:theme, use:"spaceship.zsh"
else
  zplug "denysdovhan/spaceship-prompt", as:theme, use:"spaceship.zsh"
fi

# Dotfiles
# zplug "$DOTFILES/lib", from:local

# Custom local overridings
# zplug "$DOTFILES/custom", from:local

SPACESHIP_TIME_SHOW="false"
# ALIAS
alias uwal='~/tools/uwal'
alias sgrab='~/tools/sgrab'
alias zzzfoo='~/tools/zzzfoo'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.drops --work-tree=$HOME'

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  zplug install
fi

# Then, source plugins and add commands to $PATH
export PATH="${PATH}:/home/rainy/.local/bin"
zplug load
