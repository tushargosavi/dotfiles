" Change leader key to SPACE
let mapleader="\<SPACE>"

"allow some crazy configuration by no supporting backward compatibility.
set nocompatible

set backspace=indent,eol,start  "Allow backspace in insert mode
set history=2000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hidden
set termguicolors

"turn on syntax highlighting
syntax on

" Searching
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" Indent
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Line numbering
set number                      "Line numbers are good
set rnu

" Splits
set splitbelow
set splitright

set nostartofline

set clipboard=unnamed

set bg=dark 
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-  of}"}

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

let g:tmux_navigator_save_on_switch = 2

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
"let g:slime_target = "neovim"

" For flutter actions
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
