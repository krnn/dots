" ESC with jj
:imap jj <Esc>

" Move lines around with SHIFT
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '<+1<CR>gv=gv

let mapleader = " "

" Open Tabs
nnoremap <leader>tt :tabnew<bar> :Vifm<CR>
" Split windows
set splitbelow splitright
nnoremap <leader>wl :wincmd v<bar> :Vifm<CR>
nnoremap <leader>wj :wincmd h<bar> :Vifm<CR>
" Navigate vim window splits
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" Resize splits
nnoremap <silent> <C-_> :vertical resize -5<CR>
nnoremap <silent> <C-+> :vertical resize +5<CR>
nnoremap <silent> <C-K> :resize +5<CR>
nnoremap <silent> <C-J> :resize -5<CR>

