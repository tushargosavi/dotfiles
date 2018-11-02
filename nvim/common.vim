" Change leader key to SPACE
let mapleader="\<SPACE>"

" Map ; to :
nnoremap ; :

" TODO Autosave on window change
set hidden

filetype plugin on
syntax on

set noautoindent        " I indent my code myself.
set nocindent           " I indent my code myself.
"set smartindent        " Or I let the smartindent take care of it.
set breakindent         " Indent line-breaks at the same level as code.
set ttimeoutlen=100

set termguicolors

" Formatting {
set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.
" }

" Remove trailing spaces.
function! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfunction

" FIXME: Do not call this on makefile and sv files.
" autocmd BufWritePre * call TrimWhitespace()
nnoremap <leader>W :call TrimWhitespace()<CR>

" Diff options
set diffopt+=iwhite

"Enter to go to EOF and backspace to go to start
nnoremap <CR> G
nnoremap <BS> gg
" Stop cursor from jumping over wrapped lines
nnoremap j gj
nnoremap k gk
" Make HOME and END behave like shell
inoremap <C-E> <End>
inoremap <C-A> <Home>

" UI Options {
" Colorscheme options.
set bg=dark
colorscheme gruvbox

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" Relative numbering
function! NumberToggle()
if(&relativenumber == 1)
  set nornu
  set number
else
  set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>
" }

" Keybindings {
" Save file
nnoremap <Leader>w :w<CR>

" Copy and paste from system clipboard (Might require xsel/xclip install)
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Move between buffers
nmap <Leader>l :bnext<CR>
nmap <Leader>h :bprevious<CR>
" }

let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-6.0/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/include/clang/6.0.0/include'

