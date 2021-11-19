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

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'ervandew/supertab'

Plug 'vimwiki/vimwiki'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Rust language support.
Plug 'rust-lang/rust.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'universal-ctags/ctags'

Plug 'maksimr/vim-jsbeautify'

Plug 'neomake/neomake'

Plug 'christoomey/vim-tmux-navigator'

" Markdown / Writting
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'

" Git relate plugins
Plug 'kablamo/vim-git-log'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Plug 'elmcast/elm-vim'
Plug 'derekwyatt/vim-scala'

Plug 'jpalardy/vim-slime'

Plug 'liuchengxu/vim-which-key'

call plug#end()

