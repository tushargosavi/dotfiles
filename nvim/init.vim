"allow some crazy configuration by no supporting backward compatibility.
set nocompatible

" All plugins are defined in this file.
source ~/.config/nvim/plugins.vim

" Common vim editting settings
source ~/.config/nvim/common.vim

let g:deoplete#enable_at_startup = 1

let vimsettings = '~/.config/nvim/languages'

for fpath in split(globpath(vimsettings, '\*.vim'), '\n')
  exe 'source' fpath
endfor

