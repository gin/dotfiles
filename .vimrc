"==============================================================================
" Vim Plugins (plugin manager: vim-plug)
"   :PlugInstall [name ...] [#threads]
"   :PlugUpdate [name ...] [#threads]
"   :PlugClean[!]
"   :PlugUpgrade
"   :PlugStatus
"   :PlugDiff   // See updated changes from the previous PlugUpdate
"==============================================================================
call plug#begin('~/.vim/plugged')


" Dependency
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" Branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Snippets in ~/.vim/snippets/NAME.snippet
"Plug 'msanders/snipmate.vim'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/seoul256.vim'

Plug 'junegunn/vim-easy-align'
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

Plug 'corntrace/bufexplorer'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

set tags=./tags;
"Plug 'Valloric/YouCompleteMe', { 'for': ['go', 'js', 'cpp'] }
"autocmd! User YouCompleteMe call youcompleteme#Enable()

" Fuzzy finder
Plug 'kien/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

Plug 'terryma/vim-expand-region'
"map K <Plug>(expand_region_expand)
"map J <Plug>(expand_region_shrink)
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


Plug 'othree/html5.vim'
Plug 'skammer/vim-css-color'

Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS file

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'tomlion/vim-solidity'

Plug 'dart-lang/dart-vim-plugin'
let dart_html_in_string=v:true
let dart_style_guide = 2
let dart_format_on_save = 1

Plug 'scrooloose/syntastic'
" JSX files
let g:syntastic_javascript_checkers = ['eslint']


call plug#end()

"==============================================================================
" Preferences
"==============================================================================
set nocompatible        "Behave as VIM not VI
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
set list listchars=tab:→\ ,trail:·,nbsp:·  "Show tabs, trailing/whitespaces
"set list listchars=tab:\│\ ,trail:·,nbsp:·  "Show tabs, trailing/whitespaces
"set list listchars=tab:»·,trail:·,nbsp:·  "Show tabs, trailing/whitespaces
syntax on
set background=dark
"filetype on
"filetype indent on
"filetype plugin on
au FileType * setlocal formatoptions-=cro   "Disables auto-commenting
"set number
set relativenumber
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
set autowrite     " Automatically :write before running commands

imap jj <esc>

let mapleader = "\ "
nnoremap <leader>w :w<CR>
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>

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
  colorscheme seoul256
  "colorscheme Tomorrow-Night-Eighties
  set guifont=Menlo:h11
  set colorcolumn=80
else
  let g:seoul256_background=233
  colorscheme seoul256
  "colorscheme Tomorrow-Night-Eighties
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

"------------------------------------------------------------------------------
" Spelling, style
"------------------------------------------------------------------------------
" Enable spellchecking for Markdown
autocmd FileType markdown setlocal spell

" Automatically wrap at 80 characters for Markdown
autocmd BufRead,BufNewFile *.md setlocal textwidth=80

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell

" Allow stylesheets to autocomplete hyphenated words
autocmd FileType css,scss,sass setlocal iskeyword+=-

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

"==============================================================================
" Quick fixes
"==============================================================================
"-----------------------------------------------------------------------------
" HTML auto indent incorrectly (overrides some previous settings)
"-----------------------------------------------------------------------------
"filetype plugin indent off

"-----------------------------------------------------------------------------
" Experiment
"-----------------------------------------------------------------------------
"set cursorline
"set wildmenu
"set foldenable
"set foldlevelstart=10
"set foldnestmax=10
