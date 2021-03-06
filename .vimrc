if $SHELL =~ 'bin/fish'
    set shell=/bin/sh
endif

set nocompatible

set backspace=indent,eol,start

set nobackup		
set history=50		
set ruler		
set showcmd		
set incsearch		
"match ErrorMsg '\%>80v.+'
":inoremap ` <Esc>

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

map Q gq

set cc=80

inoremap <C-U> <C-G>u<C-U>

set mouse=a

syntax on
set hlsearch

filetype indent on
filetype plugin on

set background=light

let g:solarized_termcolors=16
colorscheme solarized
"let g:solarized_style="dark"
"set guicursor+=a:blinkon0

set et
set sw=2
set smarttab
set lbr

set t_Co=16

set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

set relativenumber
set number

set virtualedit=all

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

function! ToggleBackground()
    if (g:solarized_style=="dark")
        let g:solarized_style="light"
        colorscheme solarized
    else
        let g:solarized_style="dark"
        colorscheme solarized
    endif
endfunction
command! Togbg call ToggleBackground()
nnoremap <F5> :call ToggleBackground()<CR>
inoremap <F5> <ESC>:call ToggleBackground()<CR>a
vnoremap <F5> <ESC>:call ToggleBackground()<CR>

let g:vimwiki_list = [{'path':'~/.viki/benedict/', 'template_path':'~/.viki/web/', 'template_default':'default', 'template_ext':'.html'}, {'path':'~/.viki/personal/'}, {'path': '~/.viki/travelytix'}, {'path':'~/.viki/sailthru/'}, {'path':'~/.viki/public/', 'template_path':'~/.viki/web/', 'template_default':'default', 'template_ext':'.html'}]
"autocmd BufEnter * if &filetype == "" | setlocal ft=vimwiki | setlocal syntax=vimwiki | endif
set encoding=utf-8
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()
