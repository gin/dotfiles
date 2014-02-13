"==============================================================================
" Vundle (plugin manager)
"==============================================================================
"More info: https://github.com/gmarik/vundle/blob/master/doc/vundle.txt

set nocompatible    "Disable vi-compatibility; and should be first in .vimrc
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"= Usage
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

"------------------------------------------------------------------------------
" Fancy Vim statusline
"------------------------------------------------------------------------------
Bundle 'Lokaltog/vim-powerline' 
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
" Requires font download for Powerline_symbols.
"     e.g. 'Menlo for power line'
" More info: https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
"
"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"" NEW Fancy Vim statusline
"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
""     waiting for Vundle support and no "filetype off" requirement
"Bundle 'Lokaltog/powerline'         
"filetype off
"set laststatus=2
"" requires font download for Powerline_symbols. e.g. 'Menlo for power line'
""More info: https://github.com/Lokaltog/powerline-fonts
"
"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"" Airline (a Powerline derivative)
"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
""       Usage: ":help airline"
"Bundle 'bling/vim-airline'
"set laststatus=2                                "Enable if statusbar don't show
""set t_Co=256                                   "Enable if color is off
"let g:airline_powerline_fonts = 1               "Enable if fonts don't show

"------------------------------------------------------------------------------
" Shows syntax errors
"------------------------------------------------------------------------------
Bundle 'scrooloose/syntastic'

"------------------------------------------------------------------------------
" Shell within VIM (like the shell feature in Emacs)
"------------------------------------------------------------------------------
Bundle 'ervandew/screen'

"------------------------------------------------------------------------------
" File explorer
"------------------------------------------------------------------------------
Bundle 'scrooloose/nerdtree'

"------------------------------------------------------------------------------
" HTML5 omnicomplete & syntax
"------------------------------------------------------------------------------
Bundle 'othree/html5.vim'

"------------------------------------------------------------------------------
" Preview hex colors (hex-color-code highlighted in its color)
"------------------------------------------------------------------------------
Bundle 'skammer/vim-css-color'



"==============================================================================
" Preferences
"==============================================================================
" Use .vim/indent/ruby.vim instead for '2-space indent'
" or `setlocal sw=2 sts=2`
set tabstop=4           "Indentation level by # columns
set shiftwidth=4        "Indent/outdent by #
set expandtab           "Convert hard-tabs to spaces

set textwidth=0         "Disable auto wrapping
set wrapmargin=0        "Disable auto wrapping
set wrap                "Wrap line visually
set linebreak
set nolist              "list disables linebreak

set encoding=utf-8
set list listchars=tab:→\ ,trail:·          "Show tabs and trailing whitespace
syntax on
set background=dark
filetype on
filetype indent on
filetype plugin on
au FileType * setlocal formatoptions-=cro   "Disables auto-commenting
set number
set history=1000
set undolevels=1000
set ruler
set showcmd	      "Show incomplete cmds down at the bottom
"set autoindent   "Copy indentation level from previous line
set smartindent   "Based on context in previous line
"set cindent      "Strict smartindent; #-comment below method indents correctly
set visualbell	  "No sounds
set smarttab
set hlsearch      "Highlight all search matches
set incsearch     "Show search match as you type
set backspace=indent,eol,start
set showmatch     "Show matching parenthesis
set confirm       "Ask for confirmation when :q, :qa, :w show overwrite errors


"------------------------------------------------------------------------------
" Enable mouse scrolling (in xterm/X11)
"------------------------------------------------------------------------------
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

"------------------------------------------------------------------------------
" Turn off swap files
"------------------------------------------------------------------------------
set noswapfile
set nobackup
set nowb

"------------------------------------------------------------------------------
" MacVim vs terminal style
"------------------------------------------------------------------------------
if has("gui_running")
  colorscheme tomorrow-eighties
  set guifont=Menlo:h13
  set colorcolumn=80
else
  colorscheme tomorrow-eighties
"  highlight LineNr ctermfg=Black ctermbg=none      "Line number colors
  set colorcolumn=80
endif

"------------------------------------------------------------------------------
" Screen splits
"------------------------------------------------------------------------------
"=       Usage: "ctrl+j" instead of navigating with "ctrl+w, ctrl+j"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Natural split panes (invert default)
set splitbelow
set splitright

"------------------------------------------------------------------------------
" Pasting large amounts of text without autoformatting
"------------------------------------------------------------------------------
"=       Usage: press <F2> -> paste text -> press <F2>
set pastetoggle=<F2>

"------------------------------------------------------------------------------
" Switch buffer and tabs
"------------------------------------------------------------------------------
"=       Usage: "alt+j/k" for next/previous buffer, "alt+h/l" for prev/next tab
map <M-J> :bnext<CR>
map <M-K> :bprev<CR>
map <M-L> :tabn<CR>
map <M-H> :tabp<CR>

"------------------------------------------------------------------------------
" Useful custom functions
"-----------------------------------------------------------------------------
"Remove white spaces in inappropriate places like at the end of line char, etc
"  (especially on n00bz and other people's files)
"=       Usage: ":call TrimWhiteSpace()"
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction



"==============================================================================
" Clunky quick fix
"==============================================================================
"-----------------------------------------------------------------------------
" HTML auto indent incorrectly (overrides some previous settings)
"-----------------------------------------------------------------------------
"filetype plugin indent off

