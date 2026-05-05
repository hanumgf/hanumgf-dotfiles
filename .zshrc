export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"

typeset -U path
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:$PATH

plugins=( 
    git copypath aliases archlinux
    zsh-autosuggestions zsh-syntax-highlighting you-should-use
)

source $ZSH/oh-my-zsh.sh

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS SHARE_HISTORY
setopt AUTO_LIST AUTO_MENU LIST_PACKED
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ff='fastfetch'
alias nf='neofetch'
alias gen-newmirrorlist='sudo reflector --country Japan --exclude 'mirror.rain.ne.jp' --protocol https --age 24 --latest 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias fuckingdiscord='discord --ozone-platform=wayland --enable-wayland-ime --enable-features=WebRTCPipeWireCapturer,WaylandWindowDecorations,VaapiVideoDecoder,VaapiVideoEncoder,CanvasOopRasterization --disable-features=UseChromeOSDirectVideoDecoder,WaylandFractionalScaleV1 --enable-gpu-rasterization --enable-zero-copy --ignore-gpu-blocklist --use-gl=angle --use-angle=gl --force-color-profile=srgb --disable-renderer-backgrounding --disable-background-timer-throttling --disable-gpu-vsync --max-active-video-decoders=16 --js-flags="--max-old-space-size=512"'

