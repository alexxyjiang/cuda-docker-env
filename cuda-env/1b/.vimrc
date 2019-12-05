" vim only mode
set nocompatible

" line number
set number

" only linebreak letters break a line
set linebreak

" tab related
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent

" backspace enable
set backspace=indent,eol,start

" set encoding inside vim to utf-8 (support all languages)
set encoding=utf-8

" set file encodings for load file (support utf-8, chinese gb-codec  & general latin languages like Deutsch, Italiano)
set fileencodings=utf-8,gb18030,latin1

" set terminal encoding to utf-8
set tenc=utf-8

" set double width for non-latin-char
set ambiwidth=double

" enable syntax
syntax on

" highlight search
set hlsearch

" set status line
set statusline=
set statusline+=%-3.3n\                         " buffer number
set statusline+=%f\                             " file name
set statusline+=%h%m%r%w                        " file flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}]    " file type
set statusline+=%=                              " right-align
set statusline+=0x%-8B                          " character value
set statusline+=%-14(%l,%c%V%)                  " line & character
set statusline+=%<%P                            " file position
set laststatus=2                                " always show statusline

" colorscheme
set term=xterm-256color
colorscheme wombat256
