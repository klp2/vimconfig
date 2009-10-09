" File: csyntax.vim
" Maintainer:	Lubomir Host 'rajo' <rajo AT platon.sk>
" Last Change: 2003/02/28
" Version: $Platon: vimconfig/vim/csyntax.vim,v 1.3 2003/01/16 12:16:50 rajo Exp $
"
" Description: Source this file while editing C source code
"              for better formating.

:silent! execute "%s/} else/}
:silent! execute "%s/\([ 	]\+\)if(/\1if (/gc"
:silent! execute "%s/\([ 	]\+\)for(/\1for (/gc"
:silent! execute "%s/\([ 	]\+\)switch(/\1switch (/gc"
:silent! execute "%s/\([ 	]\+\)while(/\1while (/gc"
:silent! execute "%s/[ 	]\+$//gc"
:silent! execute "%s/[^ 	]==[^ 	]/ == /gc"