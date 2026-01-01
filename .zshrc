# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="refined"

plugins=( 
    git
    copypath
    aliases
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    you-should-use
)

source $ZSH/oh-my-zsh.sh

# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
# export INPUT_METHOD=fcitx
# export SDL_IM_MODULE=fcitx
# export GLFW_IM_MODULE=fcitx

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ff='fastfetch'
alias nf='neofetch'
alias sreboot='systemctl reboot'
alias shutdown='systemctl poweroff'
alias ssleep='systemctl suspend'
alias ~data='cd /data'
