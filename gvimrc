
if !has("gui_gtk2") && !has("gui_gtk3")
  set guifont=Inconsolata:h14
endif

" Set windows size by columns and lines directly:
set columns=80 lines=40

" ==================================================================
" COLORS!
" ==================================================================
" set the color of normal text:
"hi Normal guibg=#EEEEEE guifg=black

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R

if &background == "dark"
  let g:solarized_contrast = "normal"
else
  let g:solarized_contrast = "high"
endif
"let g:solarized_contrast = "normal"
"colorscheme solarized
colorscheme darcula-ole

