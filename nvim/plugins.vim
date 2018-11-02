"This file setup vim to use plugin manager (vim-plug) and also
"define few plugins to use.

if empty(glob("~/.config/nvim/autoload/plug.vim"))
  execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

let vimsettings = '~/.config/nvim/languages'

for fpath in split(globpath(vimsettings, '\*.vim'), '\n')
  exe 'source' fpath
endfor

call plug#begin('~/.config/nvim/plugged')

" Add ctrl-p fuzzy search to vim.
Plug 'kien/ctrlp.vim'

" airline is a better status line and a tab-bar for nvim.
Plug 'bling/vim-airline'

" gruvbox colorscheme. Seems to work the best for me.
Plug 'morhetz/gruvbox'

" neomake is a code linting tool that runs in the background.
Plug 'neomake/neomake'

Plug 'Shougo/deoplete.nvim'

Plug 'zchee/deoplete-clang'

Plug 'vimwiki/vimwiki'

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'rust-lang/rust.vim'

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

"Plugins for haskell
Plug 'neovimhaskell/haskell-vim'

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

call plug#end()

