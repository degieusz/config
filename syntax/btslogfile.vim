" Vim syntax file
" Language:	MT Tester logs
" Quit when a (custom) syntax file was already loaded

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" MOST important - else most of the keywords wont work!
if version < 600
  set isk=@,48-57,-
else
  setlocal isk=@,48-57,-
endif
runtime! syntax/xSubsystemsName.vim
runtime! syntax/xEventsNames.vim 


syn match  xPCTSEnd       contained />/
syn match  xTimeStamp1    contained /\(\d\{1,2}[:. ]\?\)\{5}\d\{1,6}/ nextgroup=xPCTEnd
syn match  xPCTSStart     contained /</ nextgroup=xTimeStamp1
syn match  xBTSCompName   contained /\w\{3,4}-\w\{3,4}\(-\w\{3,7}\)\=\s/ nextgroup=xPCTSStart
syn match  xVal           contained /\s\<\x\{-1,2}\>\s/ nextgroup=xBTSCompName
syn match  xHostIpEnd     contained /\]/ nextgroup=xVal
syn match  xHostIp        contained /\(\d\{1,3}\.\)\{3}\d\{1,3}/ nextgroup=xHostIpEnd
syn match  xHostIpStart   contained /\[/ nextgroup=xHostIp
syn match  xTimeStamp2    contained /\(\d\d[:. ]\?\)\{5}\d\{2,3}/ nextgroup=xHostIpStart
syn match  xLineNr        contained /\_^\d\{6}\ / nextgroup=xTimeStamp2

syn region xLogData start="\_^" end=">\s\x\{1,3}\s" contained contains=xLineNr,xTimestamp,xHostIpStart,xHostIp,xHostIpEnd,xVal,xBTSCompName,xPCTSStart,xPCTSEnd keepend

syn region xEntryDbg start="DBG/" end="$" contained contains=xSubsystemsName,xEventsNames
syn region xEntryInf start="\(\(INF\)\|\(I\)\)/" end="$" contained contains=xSubsystemsName,xEventsNames
syn region xEntryErr start="\(\(ERR\)\|\(ERROR\)\)/" end="$" contained contains=xSubsystemsName,xEventsNames
syn region xEntryWrn start="\(\(WRN\)\|\(WARN\)\|\(WARNING\)\)/" end="$" contained contains=xSubsystemsName,xEventsNames

syn region xLogLineEntry start="\_^" end="$" contains=xLogData,xEntryDbg,xEntryInf,xEntryErr,xEntryWrn


  hi def link xLineNr		    Special
  hi def link xLogData      Directory
  hi def link xLogText      NonText
  hi def link xTimeStamp1   PreProc
  hi def link xTimeStamp2   PreProc
  hi def link xHostIp       Underlined
  hi def link xHostIpStart  ModeMsg
  hi def link xHostIpEnd    ModeMsg
  hi def link xPCTSStart    ModeMsg
  hi def link xPCTSEnd      ModeMsg
  hi def link xVal          ModeMsg
  hi def link xVal2         Underlined 
  hi def link xBTSCompName  Type
""
  hi def link xEntryInf       Comment
  hi def link xEntryDbg       Special
  hi def link xEntryWrn       TabLineFill
  hi def link xEntryErr       DiffText
  hi def link xSubsystemsName LineNr
  hi def link xEventsNames    Question 
  
