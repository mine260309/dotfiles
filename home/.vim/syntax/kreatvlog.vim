" Vim syntax file
" Language:         KreaTV log file
" Maintainer:       Cheng Yao
" Latest Revision:  2009-01-20
" Changes:          N/A

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn match   KreaTVIP          '\d\+\.\d\+\.\d\+\.\d\+\:\d\+'

syn match   KreaTVURL         '\w\+://\S\+'

syn match   KreaTVError       '^.*([0-9]*) Error\:.*$'
syn match   KreaTVFatal       '^.*([0-9]*) Fatal\:.*$'
syn match   KreaTVNote       '^.*([0-9]*) Note\:.*$'
syn match   KreaTVTrace       '^.*([0-9]*) Trace\:.*$'
syn match   KreaTVWarning       '^.*([0-9]*) Warning\:.*$'

hi def link KreaTVTrace       Normal
hi def link KreaTVWarning     Constant
hi def link KreaTVError       Error
hi def link KreaTVFatal       ErrorMsg
hi def link KreaTVNote        Comment
hi def link KreaTVIP          Constant
hi def link KreaTVURL         Underlined

let b:current_syntax = "KreaTV"

let &cpo = s:cpo_save
unlet s:cpo_save
