if bufname("%") =~ ".*\.log"  
  if getline(1) =~ '\_^\x\x\ [0-9A-Za-z\._-]\{6,30}\ <\(\(\d\d\)[\.\ :]\)\{5}\d\{6}> \x\{1,3}\ '
    set ft=k3btslog
  endif
endif 