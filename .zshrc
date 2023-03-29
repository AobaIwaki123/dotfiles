export PATH=/opt/homebrew/bin:$PATH


source $(brew --prefix)/opt/zsh-git-prompt/zshrc.sh
autoload -Uz colors && colors
PROMPT='%F{220}%n%f %F{047}($(arch))%f:%F{213}%~%f $(git_super_status)'
PROMPT+=""$'\n'"%# "
typeset -U path PATH
path=(
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /Library/Apple/usr/bin
)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit && compinit
fi
#zstyle ":completion:*:commands" rehash 1
#plugins=(... docker docker-compose)
## Git補完
fpath=(
  ${HOME}/.zsh/completions
 # ~/.zsh/completion $fpath
  ${fpath}
)
#autoload -Uz compinit && compinit -i
autoload -Uz compinit
compinit

#exa(lsのリッチver.)
alias ls='exa'
alias ll='exa -ahl --git'

#cdしたらls
cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"

#Homebrew
alias b='brew'
alias bi='brew install'
alias bui='brew uninstall'
alias bu='brew upgrade'
alias bl='brew list'
alias bs='brew search'
alias bd='brew doctor'

alias bc='brew cask'
alias bci='brew cask install'
alias bcui='brew cask uninstall'
alias bcu='brew upgrade --cask'
alias bcl='brew list --cask'
alias bcs='brew search --cask'
alias memo='code ~/Google\ Drive/マイドライブ/Memo'
alias zenn='code ~/Documents/Zenn-article/'
alias aoba-memo='code ~/aoba-memo'
#python
alias python="python3"
alias venv="python -m venv"
alias activate="source venv/bin/activate"

add_newline() {
  if [[ -z $PS1_NEWLINE_LOGIN ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
precmd() {
  add_newline
}
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
