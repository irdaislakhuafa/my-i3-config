set number
runtime! archlinux.vim
set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=phpcomplete#CompletePHP
setlocal omnifunc=javacomplete#Complete
helptags ~/.config/nvim/doc
setlocal completefunc=javacomplete#CompleteParamsInfo
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>

" enable mouse
set mouse=a

" enable syntax
"syntax on

" disable swapfile
"set noswapfile


