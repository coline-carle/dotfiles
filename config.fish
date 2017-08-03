set -x GOPATH $HOME/golang
set -x GOROOT /usr/local/opt/go/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-chalk.sh
end
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g ERL_AFLAGS "-kernel shell_history enabled"
