" Vim filetype plugin file
" File:			diacritics-iso8859-2.vim
" Maintainer:	Lubomir Host 'rajo' <rajo AT platon.sk>
" License:		GNU GPL
" Version:		$Platon: vimconfig/vim/modules/diacritics.vim,v 1.6 2005/01/13 11:34:29 rajo Exp $
"
" This file is sourced by ~/.vim/modules/diacritics.vim

call IMAP ('=a', "�",      &filetype)
"call IMAP ('+a', "\\v{a}", &filetype)
call IMAP ('+}', "�",      &filetype)
"call IMAP ('=b', "\\'{b}", &filetype)
"call IMAP ('+b', "\\v{b}", &filetype)
call IMAP ('=c', "�",      &filetype)
call IMAP ('+c', "�",      &filetype)
"call IMAP ('=d', "\\'{d}", &filetype)
call IMAP ('+d', "�",      &filetype)
call IMAP ('=e', "�",      &filetype)
call IMAP ('+e', "�",      &filetype)
"call IMAP ('=f', "\\'{f}", &filetype)
"call IMAP ('+f', "\\v{f}", &filetype)
"call IMAP ('=g', "\\'{g}", &filetype)
"call IMAP ('+g', "\\v{g}", &filetype)
"call IMAP ('=h', "\\'{h}", &filetype)
"call IMAP ('+h', "\\v{h}", &filetype)
call IMAP ('=i', "�",      &filetype)
"call IMAP ('+i', "\\v{\\i}", &filetype)
"call IMAP ('=j', "\\'{\\j}", &filetype)
"call IMAP ('+j', "\\v{\\j}", &filetype)
"call IMAP ('=k', "\\'{k}",   &filetype)
"call IMAP ('+k', "\\v{k}",   &filetype)
call IMAP ('=l', "�",      &filetype)
call IMAP ('+l', "�",      &filetype)
"call IMAP ('=m', "\\'{m}", &filetype)
"call IMAP ('+m', "\\v{m}", &filetype)
call IMAP ('=n', "�",      &filetype)
call IMAP ('+n', "�",      &filetype)
call IMAP ('=o', "�",      &filetype)
call IMAP ('+o', "�",      &filetype)
call IMAP ('+:', "�",      &filetype)
"call IMAP ('=p', "\\'{p}", &filetype)
"call IMAP ('+p', "\\v{p}", &filetype)
"call IMAP ('=q', "\\'{q}", &filetype)
"call IMAP ('+q', "\\v{q}", &filetype)
call IMAP ('=r', "�",      &filetype)
call IMAP ('+r', "�",      &filetype)
call IMAP ('=s', "�",      &filetype)
call IMAP ('+s', "�",      &filetype)
"call IMAP ('=t', "\\'{t}", &filetype)
call IMAP ('+t', "�",      &filetype)
call IMAP ('=u', "�",      &filetype)
call IMAP ('+u', "�",      &filetype)
"call IMAP ('=v', "\\'{v}", &filetype)
"call IMAP ('+v', "\\v{v}", &filetype)
"call IMAP ('=w', "\\'{w}", &filetype)
"call IMAP ('+w', "\\v{w}", &filetype)
"call IMAP ('=x', "\\'{x}", &filetype)
"call IMAP ('+x', "\\v{x}", &filetype)
call IMAP ('=y', "�",      &filetype)
"call IMAP ('+y', "\\v{y}", &filetype)
call IMAP ('=z', "�",      &filetype)
call IMAP ('+z', "�",      &filetype)
call IMAP ('=A', "�",      &filetype)
call IMAP ('+A', "�",      &filetype)
"call IMAP ('=B', "\\'{B}", &filetype)
"call IMAP ('+B', "\\v{B}", &filetype)
call IMAP ('=C', "�",      &filetype)
call IMAP ('+C', "�",      &filetype)
"call IMAP ('=D', "\\'{D}", &filetype)
call IMAP ('+D', "�",      &filetype)
call IMAP ('=E', "�",      &filetype)
call IMAP ('+E', "�",      &filetype)
"call IMAP ('=F', "\\'{F}", &filetype)
"call IMAP ('+F', "\\v{F}", &filetype)
"call IMAP ('=G', "\\'{G}", &filetype)
"call IMAP ('+G', "\\v{G}", &filetype)
"call IMAP ('=H', "\\'{H}", &filetype)
"call IMAP ('+H', "\\v{H}", &filetype)
call IMAP ('=I', "�",      &filetype)
"call IMAP ('+I', "\\v{I}", &filetype)
"call IMAP ('=J', "\\'{J}", &filetype)
"call IMAP ('+J', "\\v{J}", &filetype)
"call IMAP ('=K', "\\'{K}", &filetype)
"call IMAP ('+K', "\\v{K}", &filetype)
call IMAP ('=L', "�",      &filetype)
call IMAP ('+L', "�",      &filetype)
"call IMAP ('=M', "\\'{M}", &filetype)
"call IMAP ('+M', "\\v{M}", &filetype)
call IMAP ('=N', "�",      &filetype)
call IMAP ('+N', "�",      &filetype)
call IMAP ('=O', "�",      &filetype)
call IMAP ('+O', "�",      &filetype)
"call IMAP ('=P', "\\'{P}", &filetype)
"call IMAP ('+P', "\\v{P}", &filetype)
"call IMAP ('=Q', "\\'{Q}", &filetype)
"call IMAP ('+Q', "\\v{Q}", &filetype)
call IMAP ('=R', "�",      &filetype)
call IMAP ('+R', "�",      &filetype)
call IMAP ('=S', "�",      &filetype)
call IMAP ('+S', "�",      &filetype)
"call IMAP ('=T', "\\'{T}", &filetype)
call IMAP ('+T', "�",      &filetype)
call IMAP ('=U', "�",      &filetype)
call IMAP ('+U', "�",      &filetype)
"call IMAP ('=V', "\\'{V}", &filetype)
"call IMAP ('+V', "\\v{V}", &filetype)
"call IMAP ('=W', "\\'{W}", &filetype)
"call IMAP ('+W', "\\v{W}", &filetype)
"call IMAP ('=X', "\\'{X}", &filetype)
"call IMAP ('+X', "\\v{X}", &filetype)
call IMAP ('=Y', "�",      &filetype)
"call IMAP ('+Y', "\\v{Y}", &filetype)
call IMAP ('=Z', "�",      &filetype)
call IMAP ('+Z', "�",      &filetype)

" Modeline {{{
" vim:set ts=4:
" vim600:fdm=marker fdl=0 fdc=3
" }}}

