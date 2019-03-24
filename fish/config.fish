eval (keychain --eval --agents ssh -Q --quiet id_rsa --nogui)

. ~/.config/fish/aliases.fish

set -gx EDITOR vim
set -x -U GOPATH $HOME/code/
set -x -U GOBIN $HOME/code/bin
set -x -U fish_user_paths $fish_user_paths $GOBIN 
