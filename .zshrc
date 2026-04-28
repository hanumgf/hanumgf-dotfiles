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

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"


[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

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
alias gen-newmirrorlist='sudo reflector --country Japan --exclude 'mirror.rain.ne.jp' --protocol https --age 24 --latest 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias setdiscord='discord --ozone-platform=wayland --enable-wayland-ime --enable-features=WebRTCPipeWireCapturer,WaylandWindowDecorations,VaapiVideoDecoder,VaapiVideoEncoder,CanvasOopRasterization --disable-features=UseChromeOSDirectVideoDecoder,WaylandFractionalScaleV1 --enable-gpu-rasterization --enable-zero-copy --ignore-gpu-blocklist --use-gl=angle --use-angle=gl --force-color-profile=srgb --disable-renderer-backgrounding --disable-background-timer-throttling --disable-gpu-vsync --max-active-video-decoders=16 --js-flags="--max-old-space-size=512"'

