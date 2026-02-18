let mapleader = " "

nnoremap <leader>cd :Ex<CR>
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>

nnoremap <leader>tth :term<CR>
nnoremap <leader>ttv :vertical term<CR>
nnoremap <leader>ttt :tab term<CR>
tnoremap <Esc> <C-\><C-n>

nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>1 :tabp<CR>
nnoremap <leader>2 :tabn<CR>

nnoremap <leader>rc :Ex ~/.vim<CR>

nnoremap <C-W><S-Right> <C-W>L
nnoremap <C-W><S-Left> <C-W>H
nnoremap <C-W><S-Down> <C-W>J
nnoremap <C-W><S-Up> <C-W>K
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

nnoremap <leader>pl :ProjectList<CR>
nnoremap <leader>pc :Project <c-r>=expand("$PWD")<CR>
nnoremap <leader>ls :tab term npx live-server<CR><C-\><C-n>:tabp<CR>
