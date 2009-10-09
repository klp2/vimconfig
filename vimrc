" Kevin Phair's (kevin@kevin.nyi.net) vimrc, as inspired by various other sources
" Last updated 6/25/2007
" globals
let g:email="kevin@nyi.net"
let g:author="Kevin Phair"
let g:company="The New York Internet Company"
" use visual bell instead of beeping
set vb

" incremental search
set incsearch

" syntax highlighting
set bg=dark
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set smartindent
" autoindent
"autocmd FileType perl set autoindent|set smartindent

" 4 space tabs
"autocmd FileType perl set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

" show matching brackets
autocmd FileType perl set showmatch
	
" show line numbers
autocmd FileType perl set number

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

" dont use Q for Ex mode
map Q :q

" make tab in v mode indent code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode indent code
nmap <tab> I<tab><esc>
" the following does not work correctly
nmap <s-tab> i<bs><esc>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
set pastetoggle=<F11>

" my perl includes pod
let perl_include_pod = 1

" folding
let perl_fold=1
let perl_fold_blocks=1

set foldmethod=marker
nmap <F2> /{<CR>%zf

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" macro for useful Data::Dumper debugging line
" just type @myarraydumper
:imap dumper <ESC>^iwarn Data::Dumper->Dump([\<ESC>llyw$a], ['<ESC>pa']);<ESC>

" Tidy selected lines (or entire file) with _t
nnoremap <silent> _t :%!perltidy -lp -cti=1<Enter>
vnoremap <silent> _t :!perltidy -lp -cti=1<Enter>

" Display a status-bar.
set laststatus=2
if has("statusline")
	set statusline=%5*%{GetID()}%0*#%{winnr()}\ %<%f\ %3*%m%1*%r%0*%{CurrSubName()}%0*\ %2*%y%4*%w%0*%=[%b\ 0x%B]\ \ %8l,%10([%c%V/%{strlen(getline(line('.')))}]%)\ %P
endif

" Function GetID() {{{
" - used in statusline.
" If you are root, function return "# " string --> it is showed at begin of
"                                                  statusline
" If you aren't root, function return empty string --> nothing is visible
" Check for your name ID
let g:get_id = $USER
" If you are root, set to '#', else set to ''
if g:get_id == "root"
	let g:get_id = "# "
else
	let g:get_id = ""
endif
function! GetID()
	return g:get_id
endfunction
" GetID() }}}

" function for displaying current sub on status line
function! CurrSubName()
    let g:subname = ""
    let g:subrecurssion = 0

    " See if this is a Perl file
    let l:firstline = getline(1)

    if ( l:firstline =~ '#!.*perl' || l:firstline =~ '^package ' )
      call GetSubName(line("."))
    endif

    return g:subname
  endfunction

  function! GetSubName(line)
    let l:str = getline(a:line)

    if l:str =~ '^sub'
      let l:str = substitute( l:str, " *{.*", "", "" )
      let l:str = substitute( l:str, "sub *", ": ", "" )
      let g:subname = l:str
      return 1
    elseif ( l:str =~ '^}' || l:str =~ '^} *#' ) && g:subrecurssion == 1
      return -1
    elseif a:line > 2
      let g:subrecurssion = g:subrecurssion + 1
      if g:subrecurssion < 190
        call GetSubName(a:line - 1)
      else
        let g:subname = ': <too deep>'
        return -1
      endif
    else
      return -1
    endif
  endfunction

" stolen from here: http://feeds.feedburner.com/~r/PlanetPerl/~3/262526066/36030
" type ,cv in a perl file to see what tests cover it, and ,cv in a test file to see
" what it covers

function! PerlMappings()
    noremap  ,cv :call Coverage()
    noremap K :!perldoc   perldoc -f 
endfunction
 
function! PerlTestMappings()
    noremap  ,t :!prove -vl --norc %
endfunction
 
function! Coverage()
    let filename = bufname('%')
    if match(filename, '\.t$') > -1
        execute '!covered by --test_file="'. filename .'"'
    else
        execute '!covered covering --source_file="'. filename .'"'
    end
endfunction
 
au! FileType perl          :call PerlMappings()
au! BufRead,BufNewFile *.t :call PerlTestMappings()
