" --- Keep arrow keys working (default vimcomplete behavior) ---

" --- Disable Enter completion ---
inoremap <expr> <CR> pumvisible() ? "\<C-e>\<CR>" : "\<CR>"
inoremap <expr> <Up> pumvisible() ? "\<C-e>\<Up>" : "\<Up>"
inoremap <expr> <Down> pumvisible() ? "\<C-e>\<Down>" : "\<Down>"

" --- Vim-style manual completion ---
set completeopt=menu,menuone,noselect
 
" Navigation
inoremap <expr> <Tab> pumvisible() ? "<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "\<S-Tab>"

" Accept selected item
" inoremap <C-y> <C-y>
