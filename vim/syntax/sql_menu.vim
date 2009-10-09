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
syntax match sqlComment	  '^"[^"]\+$'
syntax match sqlStatement '^[+-].*$'   " inactive connections - yellow
syntax match sqlType      '^\*.*$'     " active connection    - green
syntax match sqlKeyword   '^  \S.*$'   " database names       - red
syntax match Title        '^    \S.*$' " table names          - magenta


let b:current_syntax = "sql_menu"

