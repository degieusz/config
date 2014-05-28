if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufNewFile,BufRead *.ttcn3  setf ttcn  
    au! BufNewFile,BufRead *.ttcn  setf ttcn  
    au  BufNewFile,BufRead BM_SCT.k3.txt,SWIM_SCT.k3.txt setfiletype k3log
augroup END 
