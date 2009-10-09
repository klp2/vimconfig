" Vim syntax file
" Language:		SQL with some syntax highlighting addons
" Maintainer:	Lubomir Host 'rajo' <rajo AT platon.sk>
" License:		GNU GPL
" Version:		$Platon: $


if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'sql_data'
endif

if version < 600
  so <sfile>:p:h/sql.vim
else
  runtime syntax/sql.vim
  unlet b:current_syntax
endif

" Comments:
syn match sqlComment	'^"[^"]\+$'


let b:current_syntax = "sql_data"

