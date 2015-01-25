" pathogen to autoload bundles
let g:pathogen_disabled = ['pathogen']    " don't load self
call pathogen#infect()                      " load everything else
call pathogen#helptags()                    " load plugin help files
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1

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

autocmd! BufNewFile * silent! 0r ~/.vim/tmpl/tmpl.%:e
autocmd BufNewFile,BufRead *.tw set filetype=python
autocmd BufNewFile,BufRead *.cconf set filetype=python
autocmd BufNewFile,BufRead *.cinc set filetype=python
autocmd BufNewFile,BufRead *.ctest set filetype=python
autocmd BufNewFile,BufRead *.thrift set filetype=c
autocmd BufNewFile,BufRead *.thrift-cvalidator set filetype=python
