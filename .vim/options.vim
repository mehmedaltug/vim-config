filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
set relativenumber
set smartindent
set showmatch
set backspace=indent,eol,start
syntax on

set ttimeoutlen=10

" &t_SI = Start Insert Mode (Send cursor shape: Bar)
let &t_SI = "\e[6 q"

" &t_SR = Start Replace Mode (Send cursor shape: Underline)
let &t_SR = "\e[4 q"

" &t_EI = End Insert / Return to Normal Mode (Send cursor shape: Block)
let &t_EI = "\e[2 q"
