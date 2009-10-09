" Vim filetype plugin file
" File:			diacritics.vim
" Maintainer:	Lubomir Host 'rajo' <rajo AT platon.sk>
" License:		GNU GPL
" Version:		$Platon: vimconfig/vim/modules/diacritics.vim,v 1.7 2005/04/20 22:47:41 rajo Exp $
"
" This file is sourced if some ftplugin require diacritics (IMAP() mappings)

" This plugin is (must be) sourced by ~/.vimrc, because 
" many ftplugins are using function IMAP()


if exists("b:input_method")
	if b:input_method == "tex-universal"
		" universal TeX mappings {{{
		call IMAP ('=a', "\\\'{a}", &filetype)
		call IMAP ('+a', "\\v{a}",  &filetype)
		call IMAP ('+}', "\\\"{a}", &filetype)
		call IMAP ('=b', "\\'{b}", &filetype)
		call IMAP ('+b', "\\v{b}", &filetype)
		call IMAP ('=c', "\\'{c}", &filetype)
		call IMAP ('+c', "\\v{c}", &filetype)
		call IMAP ('=d', "\\'{d}", &filetype)
		call IMAP ('+d', "\\v{d}", &filetype)
		call IMAP ('=e', "\\'{e}", &filetype)
		call IMAP ('+e', "\\v{e}", &filetype)
		call IMAP ('=f', "\\'{f}", &filetype)
		call IMAP ('+f', "\\v{f}", &filetype)
		call IMAP ('=g', "\\'{g}", &filetype)
		call IMAP ('+g', "\\v{g}", &filetype)
		call IMAP ('=h', "\\'{h}", &filetype)
		call IMAP ('+h', "\\v{h}", &filetype)
		call IMAP ('=i', "\\'{\\i}", &filetype)
		call IMAP ('+i', "\\v{\\i}", &filetype)
		"call IMAP ('=j', "\\'{\\j}", &filetype)
		"call IMAP ('+j', "\\v{\\j}", &filetype)
		"call IMAP ('=k', "\\'{k}", &filetype)
		"call IMAP ('+k', "\\v{k}", &filetype)
		call IMAP ('=l', "\\'{l}", &filetype)
		call IMAP ('+l', "\\q l",  &filetype)
		call IMAP ('=m', "\\'{m}", &filetype)
		call IMAP ('+m', "\\v{m}", &filetype)
		call IMAP ('=n', "\\'{n}", &filetype)
		call IMAP ('+n', "\\v{n}", &filetype)
		call IMAP ('=o', "\\'{o}", &filetype)
		call IMAP ('+o', "\\v{o}", &filetype)
		call IMAP ('+:', "\\^{o}", &filetype)
		call IMAP ('=p', "\\'{p}", &filetype)
		call IMAP ('+p', "\\v{p}", &filetype)
		call IMAP ('=q', "\\'{q}", &filetype)
		call IMAP ('+q', "\\v{q}", &filetype)
		call IMAP ('=r', "\\'{r}", &filetype)
		call IMAP ('+r', "\\v{r}", &filetype)
		call IMAP ('=s', "\\'{s}", &filetype)
		call IMAP ('+s', "\\v{s}", &filetype)
		call IMAP ('=t', "\\'{t}", &filetype)
		call IMAP ('+t', "\\q t",  &filetype)
		call IMAP ('=u', "\\'{u}", &filetype)
		call IMAP ('+u', "\\v{u}", &filetype)
		call IMAP ('=v', "\\'{v}", &filetype)
		call IMAP ('+v', "\\v{v}", &filetype)
		call IMAP ('=w', "\\'{w}", &filetype)
		call IMAP ('+w', "\\v{w}", &filetype)
		call IMAP ('=x', "\\'{x}", &filetype)
		call IMAP ('+x', "\\v{x}", &filetype)
		call IMAP ('=y', "\\'{y}", &filetype)
		call IMAP ('+y', "\\v{y}", &filetype)
		call IMAP ('=z', "\\'{z}", &filetype)
		call IMAP ('+z', "\\v{z}", &filetype)
		call IMAP ('=A', "\\'{A}", &filetype)
		call IMAP ('+A', "\\v{A}", &filetype)
		call IMAP ('=B', "\\'{B}", &filetype)
		call IMAP ('+B', "\\v{B}", &filetype)
		call IMAP ('=C', "\\'{C}", &filetype)
		call IMAP ('+C', "\\v{C}", &filetype)
		call IMAP ('=D', "\\'{D}", &filetype)
		call IMAP ('+D', "\\v{D}", &filetype)
		call IMAP ('=E', "\\'{E}", &filetype)
		call IMAP ('+E', "\\v{E}", &filetype)
		call IMAP ('=F', "\\'{F}", &filetype)
		call IMAP ('+F', "\\v{F}", &filetype)
		call IMAP ('=G', "\\'{G}", &filetype)
		call IMAP ('+G', "\\v{G}", &filetype)
		call IMAP ('=H', "\\'{H}", &filetype)
		call IMAP ('+H', "\\v{H}", &filetype)
		call IMAP ('=I', "\\'{I}", &filetype)
		call IMAP ('+I', "\\v{I}", &filetype)
		"call IMAP ('=J', "\\'{J}", &filetype)
		"call IMAP ('+J', "\\v{J}", &filetype)
		call IMAP ('=K', "\\'{K}", &filetype)
		call IMAP ('+K', "\\v{K}", &filetype)
		call IMAP ('=L', "\\'{L}", &filetype)
		call IMAP ('+L', "\\v{L}", &filetype)
		call IMAP ('=M', "\\'{M}", &filetype)
		call IMAP ('+M', "\\v{M}", &filetype)
		call IMAP ('=N', "\\'{N}", &filetype)
		call IMAP ('+N', "\\v{N}", &filetype)
		call IMAP ('=O', "\\'{O}", &filetype)
		call IMAP ('+O', "\\v{O}", &filetype)
		call IMAP ('=P', "\\'{P}", &filetype)
		call IMAP ('+P', "\\v{P}", &filetype)
		call IMAP ('=Q', "\\'{Q}", &filetype)
		call IMAP ('+Q', "\\v{Q}", &filetype)
		call IMAP ('=R', "\\'{R}", &filetype)
		call IMAP ('+R', "\\v{R}", &filetype)
		call IMAP ('=S', "\\'{S}", &filetype)
		call IMAP ('+S', "\\v{S}", &filetype)
		call IMAP ('=T', "\\'{T}", &filetype)
		call IMAP ('+T', "\\v{T}", &filetype)
		call IMAP ('=U', "\\'{U}", &filetype)
		call IMAP ('+U', "\\v{U}", &filetype)
		call IMAP ('=V', "\\'{V}", &filetype)
		call IMAP ('+V', "\\v{V}", &filetype)
		call IMAP ('=W', "\\'{W}", &filetype)
		call IMAP ('+W', "\\v{W}", &filetype)
		call IMAP ('=X', "\\'{X}", &filetype)
		call IMAP ('+X', "\\v{X}", &filetype)
		call IMAP ('=Y', "\\'{Y}", &filetype)
		call IMAP ('+Y', "\\v{Y}", &filetype)
		call IMAP ('=Z', "\\'{Z}", &filetype)
		call IMAP ('+Z', "\\v{Z}", &filetype)
		" end universal TeX mappings }}}
	elseif b:input_method == "tex-iso8859-2" ||
				\ b:input_method == "tex-latin2"
		" iso8859-2(latin2) TeX mappings {{{
		call IMAP ('=a', "�",      &filetype)
		call IMAP ('+a', "\\v{a}", &filetype)
		call IMAP ('+}', "�",      &filetype)
		call IMAP ('=b', "\\'{b}", &filetype)
		call IMAP ('+b', "\\v{b}", &filetype)
		call IMAP ('=c', "�",      &filetype)
		call IMAP ('+c', "�",      &filetype)
		call IMAP ('=d', "\\'{d}", &filetype)
		call IMAP ('+d', "�",      &filetype)
		call IMAP ('=e', "�",      &filetype)
		call IMAP ('+e', "�",      &filetype)
		call IMAP ('=f', "\\'{f}", &filetype)
		call IMAP ('+f', "\\v{f}", &filetype)
		call IMAP ('=g', "\\'{g}", &filetype)
		call IMAP ('+g', "\\v{g}", &filetype)
		call IMAP ('=h', "\\'{h}", &filetype)
		call IMAP ('+h', "\\v{h}", &filetype)
		call IMAP ('=i', "�",      &filetype)
		call IMAP ('+i', "\\v{\\i}",  &filetype)
		"call IMAP ('=j', "\\'{\\j}", &filetype)
		"call IMAP ('+j', "\\v{\\j}", &filetype)
		"call IMAP ('=k', "\\'{k}",   &filetype)
		"call IMAP ('+k', "\\v{k}",   &filetype)
		call IMAP ('=l', "�",      &filetype)
		call IMAP ('+l', "�",      &filetype)
		call IMAP ('=m', "\\'{m}", &filetype)
		call IMAP ('+m', "\\v{m}", &filetype)
		call IMAP ('=n', "�",      &filetype)
		call IMAP ('+n', "�",      &filetype)
		call IMAP ('=o', "�",      &filetype)
		call IMAP ('+o', "�",      &filetype)
		call IMAP ('+:', "�",      &filetype)
		call IMAP ('=p', "\\'{p}", &filetype)
		call IMAP ('+p', "\\v{p}", &filetype)
		call IMAP ('=q', "\\'{q}", &filetype)
		call IMAP ('+q', "\\v{q}", &filetype)
		call IMAP ('=r', "�",      &filetype)
		call IMAP ('+r', "�",      &filetype)
		call IMAP ('=s', "�",      &filetype)
		call IMAP ('+s', "�",      &filetype)
		call IMAP ('=t', "\\'{t}", &filetype)
		call IMAP ('+t', "�",      &filetype)
		call IMAP ('=u', "�",      &filetype)
		call IMAP ('+u', "�",      &filetype)
		call IMAP ('=v', "\\'{v}", &filetype)
		call IMAP ('+v', "\\v{v}", &filetype)
		call IMAP ('=w', "\\'{w}", &filetype)
		call IMAP ('+w', "\\v{w}", &filetype)
		call IMAP ('=x', "\\'{x}", &filetype)
		call IMAP ('+x', "\\v{x}", &filetype)
		call IMAP ('=y', "�",      &filetype)
		call IMAP ('+y', "\\v{y}", &filetype)
		call IMAP ('=z', "�",      &filetype)
		call IMAP ('+z', "�",      &filetype)
		call IMAP ('=A', "�",      &filetype)
		call IMAP ('+A', "�",      &filetype)
		call IMAP ('=B', "\\'{B}", &filetype)
		call IMAP ('+B', "\\v{B}", &filetype)
		call IMAP ('=C', "�",      &filetype)
		call IMAP ('+C', "�",      &filetype)
		call IMAP ('=D', "\\'{D}", &filetype)
		call IMAP ('+D', "�",      &filetype)
		call IMAP ('=E', "�",      &filetype)
		call IMAP ('+E', "�",      &filetype)
		call IMAP ('=F', "\\'{F}", &filetype)
		call IMAP ('+F', "\\v{F}", &filetype)
		call IMAP ('=G', "\\'{G}", &filetype)
		call IMAP ('+G', "\\v{G}", &filetype)
		call IMAP ('=H', "\\'{H}", &filetype)
		call IMAP ('+H', "\\v{H}", &filetype)
		call IMAP ('=I', "�",      &filetype)
		call IMAP ('+I', "\\v{I}", &filetype)
		"call IMAP ('=J', "\\'{J}", &filetype)
		"call IMAP ('+J', "\\v{J}", &filetype)
		call IMAP ('=K', "\\'{K}", &filetype)
		call IMAP ('+K', "\\v{K}", &filetype)
		call IMAP ('=L', "�",      &filetype)
		call IMAP ('+L', "�",      &filetype)
		call IMAP ('=M', "\\'{M}", &filetype)
		call IMAP ('+M', "\\v{M}", &filetype)
		call IMAP ('=N', "�",      &filetype)
		call IMAP ('+N', "�",      &filetype)
		call IMAP ('=O', "�",      &filetype)
		call IMAP ('+O', "�",      &filetype)
		call IMAP ('=P', "\\'{P}", &filetype)
		call IMAP ('+P', "\\v{P}", &filetype)
		call IMAP ('=Q', "\\'{Q}", &filetype)
		call IMAP ('+Q', "\\v{Q}", &filetype)
		call IMAP ('=R', "�",      &filetype)
		call IMAP ('+R', "�",      &filetype)
		call IMAP ('=S', "�",      &filetype)
		call IMAP ('+S', "�",      &filetype)
		call IMAP ('=T', "\\'{T}", &filetype)
		call IMAP ('+T', "�",      &filetype)
		call IMAP ('=U', "�",      &filetype)
		call IMAP ('+U', "�",      &filetype)
		call IMAP ('=V', "\\'{V}", &filetype)
		call IMAP ('+V', "\\v{V}", &filetype)
		call IMAP ('=W', "\\'{W}", &filetype)
		call IMAP ('+W', "\\v{W}", &filetype)
		call IMAP ('=X', "\\'{X}", &filetype)
		call IMAP ('+X', "\\v{X}", &filetype)
		call IMAP ('=Y', "�",      &filetype)
		call IMAP ('+Y', "\\v{Y}", &filetype)
		call IMAP ('=Z', "�",      &filetype)
		call IMAP ('+Z', "�",      &filetype)
		" end iso8859-2(latin2) TeX mappings }}}
	elseif b:input_method == "iso-8859-2" ||
				\ b:input_method == "iso8859-2" ||
				\ b:input_method == "latin2"
		call Source("~/.vim/modules/diacritics-iso8859-2.vim")
	elseif b:input_method == "windows-1250" ||
				\ b:input_method == "cp1250"
		call Source("~/.vim/modules/diacritics-windows-1250.vim")
	elseif b:input_method == "unicode-html" ||
				\ b:input_method == "iso10464-html"
		" WML mappings {{{
		call IMAP ('=a', "&#x00E1;",      &filetype)
		""call IMAP ('+a', "\\v{a}", &filetype)
		call IMAP ('+}', "&#x00E4;",      &filetype)
		""call IMAP ('=b', "\\'{b}", &filetype)
		""call IMAP ('+b', "\\v{b}", &filetype)
		call IMAP ('=c', "&#x0107;",      &filetype)
		call IMAP ('+c', "&#x010D;",      &filetype)
		""call IMAP ('=d', "\\'{d}", &filetype)
		call IMAP ('+d', "&#x010F;",      &filetype)
		call IMAP ('=e', "&#x00E9;",      &filetype)
		call IMAP ('+e', "&#x011B;",      &filetype)
		""call IMAP ('=f', "\\'{f}", &filetype)
		""call IMAP ('+f', "\\v{f}", &filetype)
		""call IMAP ('=g', "&#x01F5;", &filetype)
		call IMAP ('+g', "&#x01E7;", &filetype)
		""call IMAP ('=h', "\\'{h}", &filetype)
		""call IMAP ('+h', "\\v{h}", &filetype)
		call IMAP ('=i', "&#x0ED;",      &filetype)
		""call IMAP ('+i', "\\v{\\i}", &filetype)
		""call IMAP ('=j', "\\'{\\j}", &filetype)
		""call IMAP ('+j', "\\v{\\j}", &filetype)
		""call IMAP ('=k', "\\'{k}",   &filetype)
		""call IMAP ('+k', "\\v{k}",   &filetype)
		call IMAP ('=l', "&#x013A;",      &filetype)
		call IMAP ('+l', "&#x013E;",      &filetype)
		""call IMAP ('=m', "\\'{m}", &filetype)
		""call IMAP ('+m', "\\v{m}", &filetype)
		call IMAP ('=n', "&#x0144;",      &filetype)
		call IMAP ('+n', "&#x0148;",      &filetype)
		call IMAP ('=o', "&#x00F3;",      &filetype)
		call IMAP ('+o', "&#x00F6;",      &filetype)
		call IMAP ('+:', "&#x00F4;",      &filetype)
		""call IMAP ('=p', "\\'{p}", &filetype)
		""call IMAP ('+p', "\\v{p}", &filetype)
		""call IMAP ('=q', "\\'{q}", &filetype)
		""call IMAP ('+q', "\\v{q}", &filetype)
		call IMAP ('=r', "&#x0155;",      &filetype)
		call IMAP ('+r', "&#x0159;",      &filetype)
		call IMAP ('=s', "&#x015B;",      &filetype)
		call IMAP ('+s', "&#x0161;",      &filetype)
		""call IMAP ('=t', "\\'{t}", &filetype)
		call IMAP ('+t', "&#x0165;",      &filetype)
		call IMAP ('=u', "&#x00FA;",      &filetype)
		call IMAP ('+u', "&#x00FC;",      &filetype)
		""call IMAP ('=v', "\\'{v}", &filetype)
		""call IMAP ('+v', "\\v{v}", &filetype)
		""call IMAP ('=w', "\\'{w}", &filetype)
		""call IMAP ('+w', "\\v{w}", &filetype)
		""call IMAP ('=x', "\\'{x}", &filetype)
		""call IMAP ('+x', "\\v{x}", &filetype)
		call IMAP ('=y', "&#xFD;",      &filetype)
		""call IMAP ('+y', "\\v{y}", &filetype)
		call IMAP ('=z', "&#x017A;",      &filetype)
		call IMAP ('+z', "&#x017E;",      &filetype)
		call IMAP ('=A', "&#x00C1;",      &filetype)
		call IMAP ('+A', "&#x00C4;",      &filetype)
		""call IMAP ('=B', "\\'{B}", &filetype)
		""call IMAP ('+B', "\\v{B}", &filetype)
		call IMAP ('=C', "&#x01C6;",      &filetype)
		call IMAP ('+C', "&#x010C;",      &filetype)
		""call IMAP ('=D', "\\'{D}", &filetype)
		call IMAP ('+D', "&#x010E;",      &filetype)
		call IMAP ('=E', "&#x0C9;",      &filetype)
		call IMAP ('+E', "&#x011A;",      &filetype)
		""call IMAP ('=F', "\\'{F}", &filetype)
		""call IMAP ('+F', "\\v{F}", &filetype)
		call IMAP ('=G', "&#x01F4;", &filetype)
		call IMAP ('+G', "&#x01E6", &filetype)
		""call IMAP ('=H', "\\'{H}", &filetype)
		""call IMAP ('+H', "\\v{H}", &filetype)
		call IMAP ('=I', "&#x0CD;",      &filetype)
		""call IMAP ('+I', "\\v{I}", &filetype)
		""call IMAP ('=J', "\\'{J}", &filetype)
		""call IMAP ('+J', "\\v{J}", &filetype)
		""call IMAP ('=K', "\\'{K}", &filetype)
		""call IMAP ('+K', "\\v{K}", &filetype)
		call IMAP ('=L', "&#x0C5;",      &filetype)
		call IMAP ('+L', "&#x013D;",      &filetype)
		""call IMAP ('=M', "\\'{M}", &filetype)
		""call IMAP ('+M', "\\v{M}", &filetype)
		call IMAP ('=N', "&#x0D1;",      &filetype)
		call IMAP ('+N', "&#x0D2;",      &filetype)
		call IMAP ('=O', "&#x0D3;",      &filetype)
		call IMAP ('+O', "&#x0D4;",      &filetype)
		""call IMAP ('=P', "\\'{P}", &filetype)
		""call IMAP ('+P', "\\v{P}", &filetype)
		""call IMAP ('=Q', "\\'{Q}", &filetype)
		""call IMAP ('+Q', "\\v{Q}", &filetype)
		call IMAP ('=R', "&#x0C0;",      &filetype)
		call IMAP ('+R', "&#x0D8;",      &filetype)
		call IMAP ('=S', "&#x015A;",      &filetype)
		call IMAP ('+S', "&#x0160;",      &filetype)
		""call IMAP ('=T', "\\'{T}", &filetype)
		call IMAP ('+T', "&#x0164;",      &filetype)
		call IMAP ('=U', "&#x0DA;",      &filetype)
		call IMAP ('+U', "&#x01D3;",      &filetype)
		""call IMAP ('=V', "\\'{V}", &filetype)
		""call IMAP ('+V', "\\v{V}", &filetype)
		""call IMAP ('=W', "\\'{W}", &filetype)
		""call IMAP ('+W', "\\v{W}", &filetype)
		""call IMAP ('=X', "\\'{X}", &filetype)
		""call IMAP ('+X', "\\v{X}", &filetype)
		call IMAP ('=Y', "&#x0DD;",      &filetype)
		""call IMAP ('+Y', "\\v{Y}", &filetype)
		call IMAP ('=Z', "&#x0179;",      &filetype)
		call IMAP ('+Z', "&#x017D;",      &filetype)
		" end WML mappings }}}
	elseif b:input_method == "utf-8" ||
				\ b:input_method == "UTF-8" ||
				\ b:input_method == "utf8" ||
				\ b:input_method == "UTF8"
		call Source("~/.vim/modules/diacritics-utf8.vim")
	endif
endif

" Modeline {{{
" vim:set ts=4:
" vim600:fdm=marker fdl=0 fdc=3
" }}}

