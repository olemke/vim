" Automatically reload .vimrc
autocmd! bufwritepost .vimrc source %

set hlsearch
set incsearch
set ignorecase
set smartcase

set showcmd
set nocompatible

set nobackup
set nowritebackup
"set noswapfile

"set backup
"set backupdir=~/bak
"set clipboard=unnamed
set backspace=2
set visualbell
set ruler
set laststatus=2

" Add leader for more shortcuts
let mapleader = ","

" Toggle paste mode
nmap <Leader>p :set invpaste<CR>

" Show/hide line numbers
nmap <Leader>n :set invnumber<CR>

set textwidth=79
set nowrap
set fo-=t  " Don't wrap while typing
if version>=730
  set colorcolumn=80
endif

"set statusline=%<%F\ %m%r\ %=%-14.(%l,%c%V%)\ %P
set statusline=%<%F\ %y%m%r\ %=%-14.(%l,%c%V%)\ %P

" Show trailing whitespace
au InsertLeave * match ExtraWhitespace /\s\+$/

" Visualizing trailing whitespace
nmap <M-n> :set hls<CR>/\s\+$<CR>
" Visualizing tabs
nmap <M-m> :set hls<CR>/\s\t<CR>

set mouse=a
"set mousemodel=popup

vnoremap <Leader>s :sort<CR>

" keep selection when indenting blocks
vnoremap < <gv
vnoremap > >gv



" wildmenu!  this makes use of the command lien to show
" possible macthes on buffernames and filenames - yay!
if version>=508
  set wildmenu
endif

" Activate my own color scheme
if version>=600
  set t_Co=256
"  colorscheme solarized
  colorscheme ole
" colorscheme default
endif


"
" ===================================================================
" File type detection and settings
" ===================================================================
"
filetype off
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on


" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

nnoremap <C-N> :nohls<CR>
nnoremap <silent> <F8> :Tlist<CR>

vnoremap <S-F> :!par w72 q1

map <TAB> =
map <S-TAB> vipgq<CR>

map! <C-D> <C-R>=strftime("%F")<CR>
map! <C-T> <C-R>=strftime("%F %H:%M:%S %z")<CR>

"
" Set mapping to be able to move through windows with default keys
"
map <C-j> <C-W>j<C-W>_
map <C-k> <C-W>k<C-W>_
map <C-SPACE> zc

call togglebg#map("<C-l>")

set winminheight=0
set tags=tags;/

"
" ScreenShot plugin config
"
let ScreenShot = {'Icon':0, 'Credits':0}


set spelllang=en_us

"
" Use filetype sh for arts controlfiles
"
au BufRead,BufNewFile *.arts setfiletype sh

"autocmd FileType c,cpp setlocal cindent cino=:0,l1,g0,c3,(0,)100,*100
autocmd FileType c,cpp setlocal cindent cino=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
autocmd FileType c,cpp setlocal expandtab shiftwidth=2 tabstop=2 textwidth=80

"
"k

"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

set omnifunc=syntaxcomplete#Complete

" turn on syntax coloring:
syntax on

let g:html_number_lines = 1

" Settings for python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_guess_project = 0
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
let g:pymode_lint_checker = "pyflakes,pep8"

let g:pymode_folding = 1
let g:pymode_virtualenv = 1

" Omnicomplete list navigation with j+k
set completeopt=longest,menuone
function! OmniPopup(action)
  if pumvisible()
    if a:action == 'j'
      return "\<C-N>"
    elseif a:action == 'k'
      return "\<C-P>"
    endif
  endif
  return a:action
endfunction

inoremap <silent>j <C-R>=OmniPopup('j')<CR>
inoremap <silent>k <C-R>=OmniPopup('k')<CR>

"au BufRead  *.py set foldmethod=indent
"au BufRead  *.py set foldignore="#"

"set foldmethod=indent
"set foldlevel=99
set nofoldenable

" Function to activate a virtualenv in the embedded interpreter for
" omnicomplete and other things like that.
function! LoadVirtualEnv(path)
    let activate_this = a:path . '/bin/activate_this.py'
    if getftype(a:path) == "dir" && filereadable(activate_this)
        python << EOF
import vim
activate_this = vim.eval('l:activate_this')
execfile(activate_this, dict(__file__=activate_this))
EOF
    endif
endfunction

" Load up a 'stable' virtualenv if one exists in ~/.virtualenv
let defaultvirtualenv = $HOME . "/Python2"

" Only attempt to load this virtualenv if the defaultvirtualenv
" actually exists, and we aren't running with a virtualenv active.
if has("python")
    if empty($VIRTUAL_ENV) && getftype(defaultvirtualenv) == "dir"
        call LoadVirtualEnv(defaultvirtualenv)
    endif
endif

