set -x GOPATH $HOME/golang
set -x GOROOT /usr/local/opt/go/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH
eval (python -m virtualfish compat_aliases)
