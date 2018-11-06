"This file setup vim to use plugin manager (vim-plug) and also
"define few plugins to use.

if empty(glob("~/.config/nvim/autoload/plug.vim"))
  execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.config/nvim/plugged')

" Add ctrl-p fuzzy search to vim.
Plug 'kien/ctrlp.vim'

" airline is a better status line and a tab-bar for nvim.
Plug 'bling/vim-airline'

" gruvbox colorscheme. Seems to work the best for me.
Plug 'morhetz/gruvbox'

" neomake is a code linting tool that runs in the background.
Plug 'neomake/neomake'

Plug 'w0rp/ale'

Plug 'Shougo/deoplete.nvim'

"Plug 'zchee/deoplete-clang'

Plug 'Shougo/deoplete-clangx'

Plug 'ervandew/supertab'

Plug 'vimwiki/vimwiki'

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Rust language support.
Plug 'rust-lang/rust.vim'

Plug 'sebastianmarkow/deoplete-rust'

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

"Plugins for haskell
Plug 'neovimhaskell/haskell-vim'

Plug 'parsonsmatt/intero-neovim'

Plug 'honza/vim-snippets'

Plug 'Townk/vim-autoclose'

Plug 'tomtom/tcomment_vim'

Plug 'tobyS/vmustache'

Plug 'janko-m/vim-test'

Plug 'maksimr/vim-jsbeautify'

Plug 'vim-syntastic/syntastic'

Plug 'neomake/neomake'

Plug 'tpope/vim-dispatch'

" Markdown / Writting
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'

" Git relate plugins
Plug 'kablamo/vim-git-log'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" TODO try ncm2 to completion

call plug#end()

