source ~/.profile

set -gx VISUAL /usr/bin/nvim
set -gx EDITOR /usr/bin/nvim

set -x fish_greeting "🐟"

alias vim "nvim"
alias vi "nvim"

set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/go/bin" $fish_user_paths
set -gx GOPATH "/Users/samgiles/go"
set -g fish_user_paths "~/go/bin" $fish_user_paths
set -g fish_user_paths "~/.cargo/bin" $fish_user_paths

set -g PATH "/Users/samgiles/dotfiles/bin" $PATH
set -g PATH "/Users/samgiles/go/bin" $PATH
set -g fish_user_paths "/home/samgiles/dotfiles/bin" $fish_user_paths
