" Vim syntax file
" Language:	Arts control file
" Written By:	Oliver Lemke <olemke@core-dump.net>
" Born:		2003-05-27

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn match	artsComment	'#.*$'
syn match	artsString      '".*"'
" Standard numbers
syn match	artsNumber          "\(-\|\)\<\d\+[ij]\=\>"
" floating point number, with dot, optional exponent
syn match	artsFloat "\(-\|\)\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"
" floating point number, starting with a dot, optional exponent
syn match       artsFloat           "\(-\|\)\.\d\+\([edED][-+]\=\d\+\)\=[ij]\=\>"


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_changelog_syntax_inits")
  if version < 508
    let did_changelog_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

"  HiLink changelogFiles		Keyword
"  if version >= 600
"    HiLink changelogFuncs	Function
"  endif
  HiLink artsComment		Comment
  HiLink artsString		String
  HiLink artsNumber		Number
  HiLink artsFloat		Float

  delcommand HiLink
endif

let b:current_syntax = "arts"

" vim: ts=8
