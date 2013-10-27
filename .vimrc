"==============================================================================
" Plugin manager
"==============================================================================

"===== Pathogen (plugin and runtime files helper)
"=====   using Vundle instead
"execute pathogen#infect()


"===== Vundle (plugin manager)
"More info: https://github.com/gmarik/vundle/blob/master/doc/vundle.txt
set nocompatible    "Disable vi-compatibility; and should be first in .vimrc
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"=== Usage
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles


"=== Fancy Vim statusline
Bundle 'Lokaltog/vim-powerline' 
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
"=== requires font download for Powerline_symbols. e.g. 'Menlo for power line'
"More info: https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher

""=== NEW Fancy Vim statusline
""===   waiting for Vundle support and no "filetype off" requirement
"Bundle 'Lokaltog/powerline'         
"filetype off
"set laststatus=2
""=== requires font download for Powerline_symbols. e.g. 'Menlo for power line'
""More info: https://github.com/Lokaltog/powerline-fonts

"=== Shows syntax errors
"Bundle 'scrooloose/syntastic'

"=== Shell within VIM (just like Emacs!)
Bundle 'ervandew/screen'

"=== File explorer
Bundle 'scrooloose/nerdtree'

"=== HTML5 omnicomplete & syntax
Bundle 'othree/html5'

"=== Preview hex colors in css
Bundle 'skammer/vim-css-color'



"==============================================================================
" Preferences
"==============================================================================

"===== Config tab space
"=====   (Using .vim/indent/python.vim instead of `setlocal sw=4 sts=4` for .py)
set tabstop=2     "Indentation level by # columns
set shiftwidth=2  "Indent/outdent by #
set expandtab     "Convert hard-tabs to spaces

"===== Prevent auto insert comment symbol
set formatoptions-=cro

"===== UI & Behavior Settings
syntax on
set background=dark
filetype on
filetype indent on
filetype plugin on
set number
set history=1000
set undolevels=1000
set ruler
set showcmd	      "Show incomplete cmds down at the bottom
"set autoindent   "Copy indentation level from previous line
set smartindent  "Based on context in previous line
"set cindent       "Strict smartindent; #-comment below method indents correctly
set visualbell	  "No sounds
set smarttab
set hlsearch
set incsearch     "Show search match as you type
set backspace=indent,eol,start
set showmatch     "Show matching parenthesis
set confirm       "Ask for confirmation when :q, :qa, :w show overwrite errors

"=== Enable mouse scrolling (in xterm/X11)
set mouse=a
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
  highlight LineNr ctermfg=Black ctermbg=none   "Line number colors
endif

"===== Screen splits
"=====   Usage: "ctrl+j" instead of navigating with "ctrl+w, ctrl+j"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"=== Natural split panes
set splitbelow
set splitright

"===== Pasting large amounts of text without autoformatting
"=====   Usage: press <F2> -> paste text -> press <F2>
set pastetoggle=<F2>

"===== Switch buffer and tabs
"===     Usage: "alt+j/k" for next/previous buffer, "alt+h/l" for prev/next tab
map <M-J> :bnext<CR>
map <M-K> :bprev<CR>
map <M-L> :tabn<CR>
map <M-H> :tabp<CR>

"===== Other functions
"===     Usage: ":call TrimWhiteSpace()"
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

"==============================================================================
" Clunky quick fix
"==============================================================================
"===== HTML auto indent incorrectly (overrides some previous settings)
"filetype plugin indent off

