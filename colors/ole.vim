"
" Author: Oliver Lemke <olemke@core-dump.net>
"
" Created: 2001-12-05
" Last Change: 2004-04-05 19:54:23 +0200
"

hi clear
if exists( "syntax_on" )
    syntax reset
endif
let g:colors_name="ole"

if &background == "dark"
"  hi normal      guifg=grey       gui=none      guibg=#191919
  hi normal      guifg=grey       gui=none      guibg=#161616
  hi Comment     guifg=#88FF66    gui=none
  hi Type        guifg=#6688FF    gui=bold
  hi Statement   guifg=#EEEEEE    gui=bold
  hi PreProc     guifg=#88FF66    gui=bold
  hi Constant    guifg=#6688FF    gui=none
  hi String      guifg=#FF8866    gui=none
  hi Identifier  guifg=#FF8866    gui=bold
  hi Keyword     guifg=#FF8866    gui=none
  hi Function    guifg=#FF8866    gui=bold
  hi Title       guifg=grey       gui=bold
  hi Underlined  guifg=lightblue  gui=underline
  hi Error       guifg=yellow     gui=bold      guibg=red
  hi Marking     guifg=yellow     gui=bold      guibg=white
  hi TODO        guifg=red        gui=bold      guibg=yellow
  hi Special     guifg=lightblue  gui=bold
  hi SpecialChar guifg=lightblue  gui=bold 
  hi Visual      guifg=black      gui=bold      guibg=grey
  hi Cursor      guifg=black      gui=bold      guibg=white
else
  hi normal      guifg=black      gui=none      guibg=#EEEEEE
  hi Comment     guifg=darkgreen  gui=none
  hi Type        guifg=darkblue   gui=bold
  hi Statement   guifg=black      gui=bold
  hi PreProc     guifg=darkgreen  gui=bold
  hi Constant    guifg=darkblue   gui=none
  hi String      guifg=darkred    gui=none
  hi Identifier  guifg=darkred    gui=bold
  hi Keyword     guifg=darkred    gui=none
  hi Function    guifg=darkred    gui=bold
  hi Title       guifg=black      gui=bold
  hi Underlined  guifg=darkblue   gui=underline
  hi Error       guifg=yellow     gui=bold      guibg=red
  hi Marking     guifg=black      gui=bold      guibg=grey
  hi TODO        guifg=yellow     gui=bold      guibg=red
  hi Special     guifg=darkblue   gui=bold
  hi SpecialChar guifg=darkblue   gui=bold 
endif


