source ~/.profile

set -gx VISUAL /usr/bin/nvim
set -gx EDITOR /usr/bin/nvim

set -x fish_greeting "🐟"

alias vim "nvim"
alias vi "nvim"

set -g theme_nerd_fonts yes
set -g theme_color_scheme solarized-dark 
set -g theme_show_exit_status yes
set -g theme_powerline_fonts yes

set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/go/bin" $fish_user_paths
set -gx GOPATH "/Users/samgiles/go"
set -g fish_user_paths "~/go/bin" $fish_user_paths
set -g fish_user_paths "~/.cargo/bin" $fish_user_paths

set -g PATH "/Users/samgiles/dotfiles/bin" $PATH
set -g PATH "/Users/samgiles/go/bin" $PATH
set -g fish_user_paths "/home/samgiles/dotfiles/bin" $fish_user_paths
set -gx PATH $PATH /Users/samgiles/code/gitlab.com/medicspot/ms-server/.k8splatform/bin/
