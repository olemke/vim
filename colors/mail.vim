"
" Author: Oliver Lemke <olemke@core-dump.net>
"
" Born: 2001-12-05
" Last Change: 2003-06-02
"

hi clear
if exists( "syntax_on" )
    syntax reset
endif
let g:colors_name="ole"

"
" Set normal text color and background according to background mode
"
if &background == "dark"
hi! normal       guifg=black guibg=#EEEEEE gui=none
else
hi! normal       guifg=black guibg=#EEEEEE gui=none
endif

hi! Comment     ctermfg=darkgreen                 guifg=darkgreen gui=none
hi! Type        ctermfg=darkcyan                  guifg=darkblue  gui=bold
hi! PreProc     ctermfg=darkgreen cterm=underline guifg=darkgreen gui=bold
hi! Constant    ctermfg=darkgreen                 guifg=darkblue gui=none
hi! String      ctermfg=darkyellow                guifg=darkred  gui=none
hi! Identifier  ctermfg=darkyellow                guifg=darkred gui=none
hi! Statement   ctermfg=darkred                   guifg=black   gui=bold
hi! Keyword     ctermfg=darkred                   guifg=darkred   gui=none
hi! Function    ctermfg=darkyellow cterm=none     guifg=darkred   gui=none
hi! Title       ctermfg=darkred                   guifg=black     gui=bold
hi! Underlined  ctermfg=darkcyan cterm=underline  guifg=darkblue  gui=underline
hi! Error       ctermfg=black   ctermbg=red  guifg=yellow guibg=red  gui=bold
hi! Marking     ctermfg=black   ctermbg=grey guifg=black  guibg=grey gui=bold
hi! TODO        ctermfg=yellow  ctermbg=red  guifg=yellow guibg=red  gui=bold
hi! Special     ctermfg=darkcyan                   guifg=darkorange gui=none
hi! SpecialChar ctermfg=darkyellow                 guifg=darkorange gui=none 

