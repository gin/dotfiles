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

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Code to execute when the plugin is loaded on demand
Plug 'Valloric/YouCompleteMe', { 'for': 'cpp' }
autocmd! User YouCompleteMe call youcompleteme#Enable()

" UI
Plug 'Lokaltog/powerline'
set laststatus=2

" Snippets in ~/.vim/snippets/NAME.snippet
Plug 'msanders/snipmate.vim'

" Fuzzy finder
Plug 'kien/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
Plug 'corntrace/bufexplorer'

" Faster ack
Plug 'rking/ag.vim'
"start search from project root instead of cwd
let g:ag_working_path_mode="r"

" Add plugins to &runtimepath
call plug#end()

"==============================================================================
""==============================================================================
"" Vim Plugins (Vundle)
""==============================================================================
"set nocompatible              " required, vim not vi
"filetype off                  " required
"
"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"
"" Git plugin not hosted on GitHub
""   `Go to File` feature from TextMate for file navigation
"Plugin 'git://git.wincent.com/command-t.git'
"
"" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
"
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
""   Parser for a condensed HTML format (similar to Jade) to write HTML faster
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
"" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}
"
""------------------------------------------------------------------------------
"" Others Plugins
""------------------------------------------------------------------------------
"" Show syntax errors
"Plugin 'scrooloose/syntastic'
"" File explorer
"Plugin 'scrooloose/nerdtree'
"" HTML5 omnicomplete and syntax
"Plugin 'othree/html5.vim'
"" Preview hex colors (hex-color-code highlighted in its color)
"Plugin 'skammer/vim-css-color'
"" Fancy statusline
"Plugin 'Lokaltog/powerline'
"set laststatus=2
"
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
""filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line



"==============================================================================
" Preferences
"==============================================================================
set nocompatible        "Behave as VIM not VI
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
"if has("gui_running")
"  colorscheme Tomorrow-Night-Eighties
"  set guifont=Menlo:h11
"  set colorcolumn=80
"else
"  colorscheme Tomorrow-Night-Eighties
""  highlight LineNr ctermfg=Black ctermbg=none      "Line number colors
"  set colorcolumn=80
"endif

set colorcolumn=80

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

imap jj <esc>


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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minimal .vimrc from banyek
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set number                                          " Line numbering
"autocmd BufWritePre *.pp :%s/\s\+$//e               " Remove whitespaes from the end of puppet file lines
"autocmd BufNewFile,BufRead *.pp set filetype=ruby   " Deal *.pp files with Ruby syntax
"syntax enable                                       " Have syntax highlighted
"set background=dark                                 " Use light backgroud
"colorscheme solarized                               " Solarized color scheme
"set nocompatible                                    " Behave as VIM not VI
"filetype indent plugin on                           " Indent files
"set hidden
"set showcmd
"set showmatch
"set hlsearch
"set backspace=indent,eol,start
"set autoindent
"set nostartofline
"set ruler
"set laststatus=2
"set confirm
"set cmdheight=2
"set shiftwidth=4
"set softtabstop=4
"set expandtab
"set cursorline
"set wildmenu
"set foldenable
"set foldlevelstart=10
"set foldnestmax=10
"set paste
"

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

" terryma/vim-expand-region
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)

""===============================================================================
"" thoughtbot's vimrc
""===============================================================================
"" Leader
"let mapleader = " "
"
"set backspace=2   " Backspace deletes like most programs in insert mode
"set nobackup
"set nowritebackup
"set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
"set history=50
"set ruler         " show the cursor position all the time
"set showcmd       " display incomplete commands
"set incsearch     " do incremental searching
"set laststatus=2  " Always display the status line
"set autowrite     " Automatically :write before running commands
"
"" Switch syntax highlighting on, when the terminal has colors
"" Also switch on highlighting the last used search pattern.
"if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
"  syntax on
"endif
"
"if filereadable(expand("~/.vimrc.bundles"))
"  source ~/.vimrc.bundles
"endif
"
"" Load matchit.vim, but only if the user hasn't installed a newer version.
"if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
"  runtime! macros/matchit.vim
"endif
"
"filetype plugin indent on
"
"augroup vimrcEx
"  autocmd!
"
"  " When editing a file, always jump to the last known cursor position.
"  " Don't do it for commit messages, when the position is invalid, or when
"  " inside an event handler (happens when dropping a file on gvim).
"  autocmd BufReadPost *
"    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
"    \   exe "normal g`\"" |
"    \ endif
"
"  " Set syntax highlighting for specific file types
"  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
"  autocmd BufRead,BufNewFile *.md set filetype=markdown
"  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
"
"  " Enable spellchecking for Markdown
"  autocmd FileType markdown setlocal spell
"
"  " Automatically wrap at 80 characters for Markdown
"  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
"
"  " Automatically wrap at 72 characters and spell check git commit messages
"  autocmd FileType gitcommit setlocal textwidth=72
"  autocmd FileType gitcommit setlocal spell
"
"  " Allow stylesheets to autocomplete hyphenated words
"  autocmd FileType css,scss,sass setlocal iskeyword+=-
"augroup END
"
"" Softtabs, 2 spaces
"set tabstop=2
"set shiftwidth=2
"set shiftround
"set expandtab
"
"" Display extra whitespace
"set list listchars=tab:»·,trail:·,nbsp:·
"
"" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
"if executable('ag')
"  " Use Ag over Grep
"  set grepprg=ag\ --nogroup\ --nocolor
"
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"endif
"
"" Make it obvious where 80 characters is
"set textwidth=80
"set colorcolumn=+1
"
"" Numbers
"set number
"set numberwidth=5
"
"" Tab completion
"" will insert tab at beginning of line,
"" will use completion if not at beginning
"set wildmode=list:longest,list:full
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction
"inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
"inoremap <S-Tab> <c-n>
"
"" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
"let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
"
"" Index ctags from any project, including those outside Rails
"map <Leader>ct :!ctags -R .<CR>
"
"" Switch between the last two files
"nnoremap <leader><leader> <c-^>
"
"" Get off my lawn
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>
"
"" vim-rspec mappings
"nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
"nnoremap <Leader>s :call RunNearestSpec()<CR>
"nnoremap <Leader>l :call RunLastSpec()<CR>
"
"" Run commands that require an interactive shell
"nnoremap <Leader>r :RunInInteractiveShell<space>
"
"" Treat <li> and <p> tags like the block tags they are
"let g:html_indent_tags = 'li\|p'
"
"" Open new split panes to right and bottom, which feels more natural
"set splitbelow
"set splitright
"
"" Quicker window movement
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l
"
"" configure syntastic syntax checking to check on open as well as save
"let g:syntastic_check_on_open=1
"let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
"let g:syntastic_eruby_ruby_quiet_messages =
"    \ {"regex": "possibly useless use of a variable in void context"}
"
"" Set spellfile to location that is guaranteed to exist, can be symlinked to
"" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
"set spellfile=$HOME/.vim-spell-en.utf-8.add
"
"" Autocomplete with dictionary words when spell check is on
"set complete+=kspell
"
"" Always use vertical diffs
"set diffopt+=vertical
"
"" Local config
"if filereadable($HOME . "/.vimrc.local")
"  source ~/.vimrc.local
"endif
