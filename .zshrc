# asdfのパス設定
export PATH="$HOME/.asdf/shims:$HOME/.asdf/bin:$PATH"

# カスタムプロンプト
PS1=$'\n%F{green}%n%f@%F{blue}%m%f %F{yellow}%~%f\n'

# Added by Windsurf
export PATH="/Users/iwakiaoiyou/.codeium/windsurf/bin:$PATH"

# ~/usr/binのパスを追加
export PATH="$HOME/usr/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# claude
alias claude='npx claude'

# cdls
cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"
