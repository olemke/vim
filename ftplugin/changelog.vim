setlocal noexpandtab
setlocal tabstop=8
setlocal textwidth=78
setlocal autoindent

set background=dark

"
" <CTRL-H> for adding a new ChangeLog entry
"
map <C-H> ggO<C-R>=strftime("%Y-%m-%d")<CR>  Oliver Lemke  <olemke@core-dump.info><CR><CR>	* 
