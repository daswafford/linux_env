syntax on

filetype on                 " enables filetype detection
filetype plugin on
filetype plugin indent off   " enables filetype specific plugins

set showmatch
set nowrap
"set number

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set laststatus=2

set incsearch
set hlsearch

" move to beginning/end of line
nnoremap B ^
nnoremap E $

highlight Folded ctermbg=0
syn match tab display "\t"
hi link tab Error
let python_highlight_all=1

set shortmess+=I

"Highlight 120 char lines
match Error /\%120v.\+/
