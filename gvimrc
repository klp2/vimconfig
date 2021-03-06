"
" vimconfig - project of powerful ViM 6.3 configuration files
" 
" gvimrc - GUI configuration file
" ____________________________________________________________
"
" Developed by Lubomir Host 'rajo' <rajo AT platon.sk>
" Copyright (c) 2000-2005 Platon SDG, http://platon.sk/
" All rights reserved.
"
" See README file for more information about this software.
" See COPYING file for license information.
"
" Download the latest version from
" http://platon.sk/projects/vimconfig/
"

" Please don't hesitate to correct my english :)
" Send corrections to
"
"        Lubomir Host 'rajo' <rajo AT platon.sk>

" Version: $Platon: vimconfig/gvimrc,v 1.11 2005/03/09 19:50:06 rajo Exp $

function! Source(File)
	silent! execute "source " . a:File
endfunction

let VIMRC_EXTRA="~/.vim/local/vimrc"
let GVIMRC_EXTRA="~/.vim/local/gvimrc"
if executable("uname") && executable("awk")
	let machine = system("uname -n | awk 'BEGIN {ORS=\"\"} {print; }'")
else
	let machine = ""
endif
if executable("awk")
	let user = system("echo $USER | awk 'BEGIN {ORS=\"\"} {print; }'")
else
	let user = $USER
endif

call Source(GVIMRC_EXTRA.".pre")
call Source(GVIMRC_EXTRA."-".user.".pre")
call Source(GVIMRC_EXTRA."-".machine.".pre")
call Source(GVIMRC_EXTRA."-".machine."-".user.".pre")
call Source(GVIMRC_EXTRA."")
call Source(GVIMRC_EXTRA."-".user)
call Source(GVIMRC_EXTRA."-".machine)
call Source(GVIMRC_EXTRA."-".machine."-".user)


" When the GUI starts, 't_vb' is reset to its default value.
" We will restore it.
set visualbell
set t_vb=

" Color settings
if &t_Co > 2 || has("gui_running")
	hi Comment                  guifg=#80a0ff
	hi StatusLine   guibg=White guifg=Black     gui=bold 
	hi StatusLineNC guibg=Black guifg=White     gui=bold,reverse 
	hi User1        guibg=Red   guifg=White     gui=bold 
	hi User2        guibg=Black guifg=Yellow    gui=bold 
	hi User3        guibg=White guifg=Blue      gui=bold 
	hi User4        guibg=White guifg=LightBlue gui=bold 
	hi User5        guibg=Red   guifg=Green     gui=bold 
	hi Folded       guibg=Black guifg=Blue      gui=bold 
	hi FoldColumn   guibg=Black guifg=Blue
	hi Normal       guibg=Black guifg=LightGray 
	hi Cursor       guibg=Green guifg=NONE
	hi NonText      guibg=Black
	hi Constant                                 gui=NONE 
	hi Special                                  gui=NONE
endif

if has("gui_running")
	amenu 300 &Keyboard.Input\ &mapping.&none 			:call ChooseInputMethod(1)
	amenu 300 &Keyboard.Input\ &mapping.&Tex-universal 	:call ChooseInputMethod(2)
	amenu 300 &Keyboard.Input\ &mapping.&tex-iso8859-2 	:call ChooseInputMethod(3)
	amenu 300 &Keyboard.Input\ &mapping.&iso8859-2 		:call ChooseInputMethod(4)
	amenu 300 &Keyboard.Input\ &mapping.&windows-1250 	:call ChooseInputMethod(5)
	amenu 300 &Keyboard.Input\ &mapping.unicode-&Html 	:call ChooseInputMethod(6)
endif

call Source(GVIMRC_EXTRA.".post")
call Source(GVIMRC_EXTRA."-".user.".post")
call Source(GVIMRC_EXTRA."-".machine.".post")
call Source(GVIMRC_EXTRA."-".machine."-".user.".post")

" Modeline {{{
" vim:set ts=4:
" vim600:fdm=marker fdl=0 fdc=3
" }}}
