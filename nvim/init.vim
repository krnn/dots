" lua require 'init'

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/keymaps.vim
source $HOME/.config/nvim/plugins.vim

set laststatus=2

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme spaceduck

let g:lightline = { 'colorscheme': 'spaceduck' }

" Make background transparent
"hi Normal guibg=NONE ctermbg=NONE
