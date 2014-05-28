" Vim syntax file
"Language: k3 log
"created 15 11 2011
"Maintainer: Dominik Guderski


if exists("b:current_syntax")
  finish
endif

if exists("g:ttcn_minlines")
  exec "syn sync minlines=" . g:ttcn_minlines
else
  syn sync fromstart
endif

syn keyword  logk3 RECEIVER name MyPlugin WRN
syn keyword  logk3a MTC LOM RROM FLASH IP ETH ADET SELFTEST RESET MTC LOG
syn keyword  logk3b cond wait tmto dtlv allv ulog fxen fxlv cofi extd ptre cplv tcst fnlv fnen cocr tcst vach cpen ptpu tmsp codo ptqu scde alen dten ptrx cost ptsd plod vrsn dtac ACC INFO CCS  
syn keyword  logk3c response request value message Response Request RESPONSE REQUEST
syn keyword  logk3d integer float charstring octetstring SACK

let b:current_syntax = "logk3"
hi def link logk3 Statement
hi def link logk3a Type
hi def link logk3b Preproc
hi def link logk3c Constant
hi def link logk3d Comment


