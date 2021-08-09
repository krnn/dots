
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'itchyny/lightline.vim' " Conflicts with syntastic
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'jiangmiao/auto-pairs'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'mattn/emmet-vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'vifm/vifm.vim'
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'vim-syntastic/syntastic'

call plug#end()

" :PlugInstall to install

"  ///////\\\\\\\
" (|PLUGIN SETUP|)
"  \\\\\\\///////

" Rust
syntax enable
filetype plugin indent on

" CoC extensions
" install with> :CocInstall coc-json coc-css
let g:coc_global_extensions = [
\    'coc-tsserver',
\    'coc-git',
\    'coc-emmet',
\    'coc-go',
\    'coc-css',
\    'coc-svelte',
\    'coc-rls',
\]
"    'coc-rust-analyzer',
"    'coc-snippets',

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" Remap emmet trigger key
let g:user_emmet_leader_key='<C-,>'
