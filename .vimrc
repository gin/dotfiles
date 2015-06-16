"==============================================================================
" Vim Plugins (Vundle)
"==============================================================================
set nocompatible              " required, vim not vi
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
"   `Go to File` feature from TextMate for file navigation
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"   Parser for a condensed HTML format (similar to Jade) to write HTML faster
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"------------------------------------------------------------------------------
" Others Plugins
"------------------------------------------------------------------------------
" Show syntax errors
Plugin 'scrooloose/syntastic'
" File explorer
Plugin 'scrooloose/nerdtree'
" HTML5 omnicomplete and syntax
Plugin 'othree/html5.vim'
" Preview hex colors (hex-color-code highlighted in its color)
Plugin 'skammer/vim-css-color'
" Fancy statusline
Plugin 'Lokaltog/powerline'
set laststatus=2

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"==============================================================================
" Preferences
"==============================================================================
" Use .vim/indent/ruby.vim instead for '2-space indent'
" or `setlocal sw=2 sts=2`
set tabstop=2           "Indentation level by # columns
set shiftwidth=2        "Indent/outdent by #
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
"filetype on
"filetype indent on
"filetype plugin on
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
  colorscheme Tomorrow-Night-Eighties
  set guifont=Menlo:h11
  set colorcolumn=80
else
  colorscheme Tomorrow-Night-Eighties
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
"  (especially other people's files)
"=       Usage: ":call TrimWhiteSpace()"
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction



"==============================================================================
" Quick fixes
"==============================================================================
"-----------------------------------------------------------------------------
" HTML auto indent incorrectly (overrides some previous settings)
"-----------------------------------------------------------------------------
"filetype plugin indent off

""==============================================================================
"" diracdeltas's VIM config
""==============================================================================
"filetype off
"filetype plugin indent off
"set runtimepath+=/usr/local/Cellar/go/1.3.3/libexec/misc/vim
"filetype plugin indent on
"syntax on
"
"set nocompatible
"set t_Co=16
"call pathogen#infect()
"call pathogen#helptags()
"set modelines=0
"
"set number
"set ignorecase
"set smartcase
"set hlsearch
"set incsearch
"set autoindent
"set showmode
"set hidden
"set wildmenu
"set wildmode=list:longest
"set visualbell
"set encoding=utf8
"set scrolloff=3
"set nobackup
"set nowb
"set noswapfile
"set ttyfast
"set ruler
"set backspace=indent,eol,start
"set laststatus=2
"
"set expandtab
"set smarttab
"set tabstop=4
"set shiftwidth=4
"
"let mapleader = ","
"set gdefault
"set showmatch
"nnoremap / /\v
"vnoremap / /\v
"nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %
"
"vnoremap <leader>1 :s#^#> #<cr>
"vnoremap <leader>3 :s#^#\##<cr>
"vnoremap <leader>2 :s#^\###<cr>
"
"set wrap
"set textwidth=79
"set formatoptions=qrn1
"
"" nnoremap <up> <nop>
"" nnoremap <down> <nop>
"" nnoremap <left> <nop>
"" nnoremap <right> <nop>
"" inoremap <up> <nop>
"" inoremap <down> <nop>
"" nnoremap j gj
"" nnoremap k gk
"
"nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
"nnoremap <leader>q gqip
"nnoremap <leader>v V`]
"
"set modeline
"au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
"au FileType javascript setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
"au FileType sh setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
"au BufNewFile,BufRead *.ejs set filetype=html
"
"set background=dark
"if has("gui_running")
"  set guifont=Inconsolata\ 13
"endif
"
"let g:pymode_rope = 0
"let g:pymode_rope_complete_on_dot = 0
"let g:pymode_rope_lookcup_project = 0
"
"" Documentation
"" let g:pymode_doc = 1
"" let g:pymode_doc_key = 'K'
"
""Linting
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
"
"" DON'T Auto check on save
"let g:pymode_lint_write = 1
"
"" Support virtualenv
"let g:pymode_virtualenv = 1
"
"" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_key = '<leader>b'
"
"" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
"" Don't autofold code
"let g:pymode_folding = 0
"let g:molokai_original = 1
"
"" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:hybrid_use_Xresources = 1
"colorscheme hybrid
"set shell=/bin/sh
"
"" Highlight trailing whitespace
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/
"
"set cursorline
"set colorcolumn=80
"
"" JSX files
"let g:syntastic_javascript_checkers = ['eslint']
"
"hi CursorLine cterm=NONE ctermbg=darkgrey
"
"set omnifunc=syntaxcomplete#Complete
"let g:NERDTreeWinSize = 29
"
"nmap <f8> :TagbarToggle<CR>
"set tags=./tags,tags;~/
"autocmd FileType go autocmd BufWritePre <buffer> Fmt
