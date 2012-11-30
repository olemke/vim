" ==================================================================
" File:         $HOME/.gvimrc
" Last update:  Thu May 10 10:10:10 MEST 2001
" Purpose:      *Personal* Setup file for GVim -
"               the GUI version of the editor Vim (Vi IMproved)
" Author:       Sven Guckes guckes@vim.org (guckes@math.fu-berlin.de)
"               <URL:http://www.math.fu-berlin.de/~guckes/sven/>
" Availability:      http://www.math.fu-berlin.de/~guckes/vim/gvimrc
" Enjoy!  Feedback is very welcome!  :-)
" ==================================================================

" ==================================================================
" SETTINGS!
" ==================================================================
" Set some nice settings - recommended!
" set background=dark backspace=2 cindent esckeys hidden
" set ruler showmatch smarttab shiftwidth=4 tabstop=8
" Or shorter:
" set bg=dark
" What these settings do?  Well - RTFM!  ;-)

" Allow use of mouse for all modes
" (normal, insert, visual, command line):
" set mouse=a

" Set a specific font:
"set guifont=-Adobe-Courier-Medium-R-Normal-*-12-120-75-75-M-70-ISO8859-1
"set guifont=-*-Lucidatypewriter-*-R-Normal-*-12-120-75-75-M-70-ISO8859-1
set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"set guifont=-*-Bitstream Vera Sans Mono-medium-r-normal-*-18-120-100-100-c-90-iso10646-1
"set guifontwide=-misc-fixed-medium-r-normal-*-18-120-100-100-c-180-iso10646-1

" Set windows size by columns and lines directly:
set columns=80 lines=40

" ==================================================================
" COLORS!
" ==================================================================
" set the color of normal text:
hi Normal guibg=#EEEEEE guifg=black


" ==================================================================
" AUTOCOMMANDS!
" ==================================================================
" au BufRead  *.java set cindent

" Show the current filename in the title:
"  au BufEnter * let &titlestring=expand("%:p:~")

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R

" EOF!
