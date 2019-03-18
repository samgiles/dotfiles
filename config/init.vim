" Shell
set shell=bash
" Plugins
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tyok/nerdtree-ack'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'iCyMind/NeoSolarized'

Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'rust-lang/rust.vim'
Plugin 'dag/vim-fish'
Plugin 'fatih/vim-go'
Plugin 'Shougo/deoplete.nvim'
Plugin 'sebastianmarkow/deoplete-rust'

call vundle#end()
filetype plugin on

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#rust_source_path='/usr/local/bin/racer'

" Go
let g:go_version_warning = 0

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Colors
syntax enable
set t_Co=256
let g:enable_bold_font=1
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:jellybeans_use_term_italics = 1
let g:airline_theme='base16'
let base16colorspace=256
colorscheme NeoSolarized
set background=dark
hi Normal guibg=NONE ctermbg=NONE
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"Highlighting
set number
set cursorline
set showcmd
set showmatch
au BufNewFile,BufRead *.pv set filetype=ocaml
au BufNewFile,BufRead *.fst set filetype=ocaml
au BufNewFile,BufRead *.fsti set filetype=ocaml

"Formatting
set smarttab
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set wrap
set ffs=unix,dos,mac
set encoding=utf8


"GUI
set guioptions-=m
set guioptions-=T
set guifont=PragmataPro

"Reading
set autoread

"Disable .swp backups
set nobackup
set nowritebackup
set noswapfile

"Search
set magic
set incsearch
set hlsearch
set ignorecase
set smartcase

" Silver Searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"Surrounding UX
set nofoldenable
set lazyredraw
set clipboard=unnamedplus
set backspace=indent,eol,start
set ttyfast
set nostartofline
set noshowmode
set wildmenu
set ruler
set laststatus=2
let g:airline_powerline_fonts=1
au FileChangedShell * echo "Warning: File changed on disk"

"Mappings
noremap <Space> <Return>
noremap ' :
noremap ; l
noremap l k
noremap k j
noremap j h
nmap ! :!
" Ctrl+K to repeat last colon command
noremap <C-K> @:<CR>
" Tab key to switch splits
nmap <Tab> <C-w>w
" Number keys to switch tabs
nmap 1 1gt
nmap 2 2gt
nmap 3 3gt
nmap 4 4gt
nmap 5 5gt
nmap 6 6gt
nmap 7 7gt
nmap 8 8gt
nmap 9 9gt
" Move through wrapped lines
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
" Toggle NERDTree
map <F2> :NERDTreeToggle<CR>
