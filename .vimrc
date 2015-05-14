execute pathogen#infect()
" Begin Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" End Syntastic Settings

" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin on
filetype plugin indent off   " enables filetype specific plugins
set nowrap
"set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set laststatus=2
nnoremap <space> za
vnoremap <space> zf
highlight Folded ctermbg=0
syn match tab display "\t"
hi link tab Error
let python_highlight_all=1

" down
map <c-j> <c-w>j
" up
map <c-k> <c-w>k
" left
map <c-l> <c-w>l
" right
map <c-h> <c-w>h

set shortmess+=I

"Highlight 80 char lines
match Error /\%81v.\+/
