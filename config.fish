set -x GOPATH $HOME/golang
set -x GOROOT /usr/local/opt/go/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-chalk.sh
end
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -gx ERL_AFLAGS "-kernel shell_history enabled"
set -gx WORKON_HOME "$HOME/.envs"

eval (/usr/local/bin/python2 -m virtualfish auto_activation global_requirements)

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/sweetlie/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/sweetlie/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/sweetlie/.config/yarn/global/node_modules/tabtab/.completions/sls.fish ]; and . /Users/sweetlie/.config/yarn/global/node_modules/tabtab/.completions/sls.fish
