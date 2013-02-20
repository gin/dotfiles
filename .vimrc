execute pathogen#infect()

"===== Config tab space
set tabstop=2
set shiftwidth=2
set expandtab

"===== Prevent auto insert comment symbol
set formatoptions-=cro

"===== UI Settings
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

syntax on
set background=dark
filetype on
filetype indent on
filetype plugin on

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
