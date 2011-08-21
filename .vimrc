set nocompatible 
filetype plugin on 
syntax on 

set ts=2
set expandtab
set autoindent
set smartindent
autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>
let g:AutoComplPop_Behavior = { 
\ 'c': [ {'command' : "\<C-x>\<C-o>",
\ 'pattern' : ".",
\ 'repeat' : 0}
\ ] 
\}

let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': '/home/imcoddy/Dropbox/Wiki/',
\ 'path_html': '/home/imcoddy/Dropbox/Wiki/html/',
\ 'html_header': '/home/imcoddy/Dropbox/Wiki/template/header.tpl',}]

map <F4> :VimwikiAll2HTML<cr>
