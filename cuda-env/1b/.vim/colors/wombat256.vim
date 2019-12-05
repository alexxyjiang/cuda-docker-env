" Vim color file
" Original Maintainer:  Lars H. Nielsen (dengmao@gmail.com)
" Modify Author:        Alex. Jiang (alexxyjiang at gmail.com)
" Last Change:          2015-09-25
" Converting for 256-color terminals by
" Danila Bespalov (danila.bespalov@gmail.com)
" with great help of tool by Wolfgang Frisch (xororand@frexx.de)
" inspired by David Liang's version (bmdavll@gmail.com)

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat256"

" General colors
hi Normal       ctermfg=254   ctermbg=234   cterm=NONE  guifg=#f6f3e8 guibg=#242424 gui=NONE
hi Cursor       ctermfg=NONE  ctermbg=241   cterm=NONE  guifg=NONE    guibg=#656565 gui=NONE
hi Visual       ctermfg=7     ctermbg=238   cterm=NONE  guifg=#f6f3e8 guibg=#444444 gui=NONE
" hi VisualNOS
hi Search       ctermfg=235   ctermbg=111   cterm=NONE  guifg=#262626 guibg=#87afff gui=NONE
hi Folded       ctermfg=103   ctermbg=238   cterm=NONE  guifg=#a0a8b0 guibg=#384048 gui=NONE
hi Title        ctermfg=119   ctermbg=238   cterm=BOLD  guifg=#87ff5f guibg=#444444 gui=BOLD
hi StatusLine   ctermfg=7     ctermbg=238   cterm=NONE  guifg=#f6f3e8 guibg=#444444 gui=NONE
hi VertSplit    ctermfg=238   ctermbg=238   cterm=NONE  guifg=#444444 guibg=#444444 gui=NONE
hi StatusLineNC ctermfg=243   ctermbg=238   cterm=NONE  guifg=#857b6f guibg=#444444 gui=NONE
hi LineNr       ctermfg=206   ctermbg=234   cterm=NONE  guifg=#ff5fd7 guibg=#242424 gui=NONE
hi SpecialKey   ctermfg=244   ctermbg=236   cterm=NONE  guifg=#808080 guibg=#343434 gui=NONE
hi NonText      ctermfg=244   ctermbg=236   cterm=NONE  guifg=#808080 guibg=#303030 gui=NONE

" Vim >= 7.0 specific colors
if version >= 700
hi CursorLine                 ctermbg=236   cterm=NONE                guibg=#2d2d2d gui=NONE
hi MatchParen   ctermfg=7     ctermbg=243   cterm=BOLD  guifg=#f6f3e8 guibg=#857b6f gui=BOLD
hi Pmenu        ctermfg=7     ctermbg=238               guifg=#f6f3e8 guibg=#444444
hi PmenuSel     ctermfg=0     ctermbg=192               guifg=#000000 guibg=#cae682
endif

" Syntax highlighting
hi Keyword      ctermfg=111   cterm=NONE  guifg=#8ac6f2 gui=NONE
hi Statement    ctermfg=111   cterm=NONE  guifg=#8ac6f2 gui=NONE
hi Constant     ctermfg=173   cterm=NONE  guifg=#e5786d gui=NONE
hi Number       ctermfg=202   cterm=NONE  guifg=#ff5f00 gui=NONE
hi PreProc      ctermfg=111   cterm=NONE  guifg=#8ac6f2 gui=NONE
hi Function     ctermfg=135   cterm=NONE  guifg=#af5fff gui=NONE
hi Identifier   ctermfg=192   cterm=NONE  guifg=#cae682 gui=NONE
hi Type         ctermfg=185   cterm=NONE  guifg=#d7d75f gui=NONE
hi Special      ctermfg=202   cterm=NONE  guifg=#ff5f00 gui=NONE
hi String       ctermfg=46    cterm=NONE  guifg=#00ff00 gui=NONE
hi Comment      ctermfg=246   cterm=NONE  guifg=#99968b gui=NONE
hi Todo         ctermfg=245   cterm=NONE  guifg=#8f8f8f gui=NONE

" Diff highlighting
hi DiffText     ctermfg=234  ctermbg=254    cterm=NONE  guifg=#242424 guibg=#f6f3e8 gui=NONE
hi DiffAdd      ctermfg=254  ctermbg=94     cterm=NONE  guifg=#f6f3e8 guibg=#875f00 gui=NONE
hi DiffDelete   ctermfg=254  ctermbg=201    cterm=NONE  guifg=#f6f3e8 guibg=#ff00ff gui=NONE
hi DiffDelete   ctermfg=254  ctermbg=35     cterm=NONE  guifg=#f6f3e8 guibg=#00af5f gui=NONE

" Links
hi! link FoldColumn       Folded
hi! link CursorColumn     CursorLine
hi! link Class            Type
hi! link DefinedName      Constant
hi! link EnumerationValue Special
hi! link EnumeratorName   Type
hi! link Member           Normal
hi! link Structure        Type
hi! link Union            Type
hi! link GlobalConstant   Constant
hi! link GlobalVariable   Normal
hi! link LocalVariable    Normal

" vim:set ts=2 sw=2 et:
