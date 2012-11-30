
set hlsearch
set incsearch
set ignorecase
set smartcase
set showcmd
set nocompatible
set nobackup
"set backup
"set backupdir=~/bak
set backspace=2
set visualbell
set ruler
set laststatus=2
set statusline=%<%F\ %m%r\ %=%-14.(%l,%c%V%)\ %P
" Show filetype in statusline
"set statusline=%<%F\ %y%m%r\ %=%-14.(%l,%c%V%)\ %P
" Use mouse wheel
"set mouse=a

" wildmenu!  this makes use of the command lien to show
" possible macthes on buffernames and filenames - yay!
if version>=508
  set wildmenu
endif

"
" ===================================================================
" VIM - Editing and updating the vimrc:
" As I often make changes to this file I use these commands
" to start editing it and also update it:
" ===================================================================
"
if has("unix")
  let vimrc='~/.vimrc'
else
" ie:  if has("dos16") || has("dos32") || has("win32")
  let vimrc='$VIM\_vimrc'
endif
nmap  ,u :source <C-R>=vimrc<CR><CR>
nmap  ,v :edit   <C-R>=vimrc<CR><CR>

"
" ===================================================================
" Activate my own color scheme
" ===================================================================
"
if version>=600
  colorscheme ole
endif

" colorscheme default

"
" ===================================================================
" File type detection and settings
" ===================================================================
"
" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  if version>=600
    filetype plugin indent on
  endif

  au BufRead /tmp/mutt* normal :g/^> -- $/,/^$/-1d

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal g`\"" |
    \ endif

endif

"
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"
if &t_Co > 2 || has("gui_running")
  "let c_space_errors=1
  syntax on
  set hlsearch
endif


nnoremap <C-N> :nohls<CR>
nnoremap <silent> <F8> :Tlist<CR>

vnoremap <S-F> :!par w72 q1

map <TAB> =
map <S-TAB> vipgq<CR>

map! <C-D> <C-R>=strftime("%F")<CR>
map! <C-T> <C-R>=strftime("%F %H:%M:%S %z")<CR>

" Visualizing trailing whitespace
nmap <M-n> :set hls<CR>/\s\+$<CR>
" Visualizing tabs
nmap <M-m> :set hls<CR>/\s\t<CR>

"
" Set mapping to be able to move through windows with default keys
"
map <C-j> <C-W>j<C-W>_
map <C-k> <C-W>k<C-W>_
map <C-SPACE> zc

nnoremap <C-l> :set background=light<CR>
nnoremap <C-b> :set background=dark<CR>

set wmh=0
set tags=tags;/ 

"
" ScreenShot plugin config
"
let ScreenShot = {'Icon':0, 'Credits':0} 

set mousemodel=popup

set spelllang=en_us

"autocmd FileType c,cpp setlocal cindent cino=:0,l1,g0,c3,(0,)100,*100
autocmd FileType c,cpp setlocal cindent cino=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
autocmd FileType c,cpp setlocal expandtab shiftwidth=2 tabstop=2 textwidth=80

"
"k

"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

set ofu=syntaxcomplete#Complete

" turn on syntax coloring:
syntax on

let g:html_number_lines = 1

let g:pymode_folding = 1
let g:pymode_virtualenv = 1


"au BufRead  *.py set foldmethod=indent
"au BufRead  *.py set foldignore="#"

set foldmethod=indent
set foldlevel=99

" Function to activate a virtualenv in the embedded interpreter for
" omnicomplete and other things like that.
function LoadVirtualEnv(path)
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


