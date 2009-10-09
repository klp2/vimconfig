"=============================================================================
" File: explorer.vim
" Author: M A Aziz Ahmed (aziz@acorn-networks.com - doesn't work)
" Last Change:2004 May 13
" Version: 2.5 + changes
" Additions by Mark Waggoner (waggoner@aracnet.com) et al.
"-----------------------------------------------------------------------------
" This file implements a file explorer.
"-----------------------------------------------------------------------------
" Normally, this file will reside in the plugins directory and be
" automatically sourced.  If not, you must manually source this file
" using :source explorer.vim
"
" To use it, just edit a directory (vi dirname) or type :Explore to
" launch the file explorer in the current window, or :Sexplore to split
" the current window and launch explorer there.
"
" If the current buffer is modified, the window is always split.
"
" It is also possible to delete files and rename files within explorer.
" See :help file-explorer for more details
"
"-----------------------------------------------------------------------------
" Update history removed, it's not very interesting.
" Contributors were: Doug Potts, Bram Moolenaar, Thomas Köhler
"=============================================================================

" Has this already been loaded?
if exists("loaded_explorer")
  finish
endif
let loaded_explorer=1

" Line continuation used here
let s:cpo_save = &cpo
set cpo&vim

"---
" Default settings for global configuration variables

" Split vertically instead of horizontally?
if !exists("g:explVertical")
  let g:explVertical=0
endif

" How big to make the window? Set to "" to avoid resizing
if !exists("g:explWinSize")
  let g:explWinSize=15
endif

" When opening a new file/directory, split below current window (or
" above)?  1 = below, 0 = to above
if !exists("g:explSplitBelow")
  let g:explSplitBelow = &splitbelow
endif

" Split to right of current window (or to left)?
" 1 = to right, 0 = to left
if !exists("g:explSplitRight")
  let g:explSplitRight = &splitright
endif
