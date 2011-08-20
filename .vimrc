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
let g:vimwiki_list = [{'path': '/home/imcoddy/Dropbox/Public/Wiki/',
\ 'path_html': '/home/imcoddy/Dropbox/Public/Wiki/html/',
\ 'html_header': '/home/imcoddy/Dropbox/Public/Wiki/template/header.tpl',}]

