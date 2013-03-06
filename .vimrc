"===== Pathogen
"execute pathogen#infect()

"===== Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

"Fancy Vim statusline
Bundle 'Lokaltog/vim-powerline'
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
"Shows syntax errors
"Bundle 'scrooloose/syntastic'
"Preview colors
Bundle 'skammer/vim-css-color'
"File explorer
Bundle 'scrooloose/nerdtree'
"Shell
Bundle 'ervandew/screen'

"===== Config tab space
set tabstop=2
set shiftwidth=2
set expandtab

"===== Prevent auto insert comment symbol
set formatoptions-=cro

"===== UI Settings
syntax on
set background=dark
filetype on
filetype indent on
filetype plugin on
set nocompatible
set number
set history=1000
set ruler
set showcmd	"Show incomplete cmds down the bottom
"set ai		"Auto indent
set si		"Smart indent
set visualbell	"No sounds
set smarttab
set hlsearch
set mouse=a "Enable mouse scrolling
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

"===== Turn off swap files
set noswapfile
set nobackup
set nowb

"===== MacVim vs terminal
if has("gui_running")
  colorscheme tomorrow-eighties 
  set guifont=Menlo:h13
  set colorcolumn=80
else
  colorscheme default
  "  let g:solarized_termcolors=256
  "  let g:solarized_visibility = "high"
  "  let g:solarized_contrast = "high"
  highlight LineNr ctermfg=Black ctermbg=none   "Line number colors
endif
