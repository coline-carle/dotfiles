# homebrew path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH="/usr/local/opt/node@8/bin:$PATH"

# go lang
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# proxy
# export ALL_PROXY=localhost:8080


# erlang history
export ERL_AFLAGS="-kernel shell_history enabled"

# pure shell
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# autoenv
zplug Tarrasch/zsh-autoenv

# fzf - z
zplug "plugins/z",   from:oh-my-zsh
zplug andrewferrier/fzf-z

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/ssh-agent", from:oh-my-zsh
zplug "plugins/dotenv", from:oh-my-zsh
zplug "johnhamelink/env-zsh", as:plugin


# Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

# Then, source plugins and add commands to $PATH
zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"

[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"


# my bash scripts
export PATH=$HOME/.dotfiles/bash/bin:$PATH
# welder
export PATH=$HOME/coding/welder/bin:$PATH
# custom apps
export PATH=$HOME/bin:$PATH

. $HOME/.secrets


alias go-postgres="docker run -p 5432:5432 --name postgres -e POSTGRES_PASSWORD=password -d postgres:10.1-alpine"

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# added by travis gem
[ -f /Users/sweetlie/.travis/travis.sh ] && source /Users/sweetlie/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sweetlie/Apps/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/sweetlie/Apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sweetlie/Apps/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/sweetlie/Apps/google-cloud-sdk/completion.zsh.inc'; fi
