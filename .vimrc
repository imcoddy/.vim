"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Global
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Platform checking
function! MySys()
	if has("win32")
    return "windows"
  else
    return "linux"
  endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\\"
let g:mapleader = "\\"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7
set number "show line number
set ignorecase "Ignore case when searching
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them
set ruler "Always show current position
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax highlight


"syntax on 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set wrap "Wrap lines
set lbr
set tw=500
set list
set listchars=tab:>-,trail:-

:nmap <F8> :tabnext<CR>


" Generate coffeescript into js
autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>

"Auto complete
let g:AutoComplPop_Behavior = { 
\ 'c': [ {'command' : "\<C-x>\<C-o>",
\ 'pattern' : ".",
\ 'repeat' : 0}
\ ] 
\}

"Vimwiki
if MySys() == 'linux'
  let g:vimwiki_list = [{'path': '/home/imcoddy/Dropbox/Wiki/',
  \ 'path_html': '/home/imcoddy/Dropbox/Wiki/html/',
  \ 'html_header': '/home/imcoddy/Dropbox/Wiki/template/header.tpl',}]
elseif MySys() == 'windows'
  let g:vimwiki_list = [{'path': 'D:/My Documents/My Dropbox/Wiki/',
  \ 'path_html': 'D:/My Documents/My Dropbox/Wiki/html/',
  \ 'html_header': 'D:/My Documents/My Dropbox/Wiki/template/header.tpl',}]
endif
let g:vimwiki_use_mouse = 1
map <F4> :VimwikiAll2HTML<cr>

