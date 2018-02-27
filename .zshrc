HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#Enabling oh-my-zsh
export ZSH=$HOME/.oh-my-zsh


#using Prompt rather than oh-my-zsh's themes
ZSH_THEME=""

export PATH=/usr/local/bin:~/.local/bin:$PYTHONPATH:$PATH
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -v

zstyle :compinstall filename '/Users/eben/.zshrc'
PURE_PROMPT_SYMBOL=λ

#python path when I'm on Mac OS - Something needed this explicitly
if [[ $(uname) = Darwin ]]; then
  PYTHONPATH=/Users/eben/Library/Python/3.6/bin
fi

autoload -Uz compinit
compinit

plugins=(
  stack
  git
)


source $ZSH/oh-my-zsh.sh

#Prompt has to come after the oh-my-zsh sourcing
autoload -U promptinit
promptinit
prompt pure

