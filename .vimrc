set nocompatible " not compatible with vi

filetype plugin on
" Fast saving
nmap <leader>w :w<cr>
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set pastetoggle=<F9>		" no automatic indentation on past
" change the mapleader from \ to ,
let mapleader=","
set undolevels=1000      " use many muchos levels of undo

"show whitespace characters: tabs, spaces
set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
set listchars=tab:▸\ ,trail:.,extends:#,nbsp:.

" Remember info about open buffers on close
set viminfo^=%

" Jump to matching pairs easily, with Tab
nnoremap <Tab> %
vnoremap <Tab> %

" ack installed
nnoremap <leader>a :Ack

" Use the same symbols as TextMate for tabstops and EOLs
"set listchars=tab:▸\ ,eol:¬
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" vsplit
nmap <silent> <leader>vs :vs<CR>
" close buffers
map <silent> <leader>bd :bp\|bd #<CR>

"Last opened files
nmap <silent> <leader>o :MRU<CR>

" search also selected in visusal mode
vnoremap	*		y/<C-R>"<CR>
vnoremap	#		y?<C-R>"<CR>

" Make shift-insert work like in Xterm:
map		<S-Insert>	<MiddleMouse>
map!		<S-Insert>	<MiddleMouse>

" VIM bookmarks
"close bookmarks split when jumping to a bookmark
let g:bookmark_auto_close = 1
"enables line highlighting for bookmarks
let g:bookmark_highlight_lines = 1
"enables line center when go to bookmark
let g:bookmark_center = 1

"If you like long lines with line wrapping enabled, this solves the problem that pressing down jumpes your cursor “over” the current line to the next line. It changes behaviour so that it jumps to the next row in the editor
nnoremap j gj
nnoremap k gk

"share clipboard with windows
set clipboard=unnamed

" colorscheme setting
if has('gui_running')
	   " Remove Toolbar
  "set guioptions-=T
   set t_Co=256
	colorscheme eclipse
else
	colorscheme default
endif

set incsearch		" Incremental search
set ignorecase		" Do case insensitive matching
set statusline=%<%f\ (%{&encoding})\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2 " always show status line

"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplModSelTarget = 1
" single click opens buffer from buffexpl
let g:miniBufExplUseSingleClick = 1
"single click switch buffers

set number " show line numbers
set selection=exclusive " visual selection not whole line
set shortmess=atToOI
set showbreak=\| " if line break show | on new line
set showcmd " show command in the last line of the screen
set showmatch " when bracket is inserted briefly jump to the matching one
set showmode " if in insert replace or visual mode put a message
set smartindent " autoindenting?
set swapfile
set t_vb= " visual bell instead of beep
set vb t_vb= "set expandtab " in insert mode use the appropriate number of spaces to insert a
tab
set textwidth=89 " maximum width of text that is being inserted, longer line will be broken after whitespace to get this width.
set updatecount=200 " after n chars swap file written to disk
set viminfo='20,\"50
"set wildchar=<TAB>
" Show available commands when tab is pressed
set wildmenu " command-line completion operates in an enhanced mode
set wrapmargin=1 " eol inserted automaticly when text hits window border
set formatoptions=roq21
"set novb " no visual bell
set noeb " no errorbells
set nocp " no compatible with vi

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2

syntax on

map <A-left> :bp<cr>
map <A-right> :bn<cr>

" move through windows
"nmap <silent> <leader>h :wincmd h<cr>
"nmap <silent> <leader>l :wincmd l<cr>
map <C-TAB> :A<cr>
map <C-a> :NERDTreeToggle<cr>
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
set guifont=Monospace\ 11

"close buffer without loosing split
nnoremap <C-q> :bp\|bd #<CR>

"*****************************************************************
"* Commands
"*****************************************************************

nmap <C-s> :TagbarToggle<CR> " show outline based on ctags
" configure tags - add additional tags here or comment out not-used ones
set tags+=/work/guderski/BTS_SC_BM/.bm.tags
set tags+=/work/guderski/BTS_SC_BM/.swim.tags
set tags+=/work/guderski/BTS_SC_BM/.libimi.tags
set tags+=/work/guderski/BTS_SC_BM/.global.tags
set tags+=/work/guderski/BTS_SC_BM/.platform.tags
" build tags of your own project with CTRL+F12

" Enable mouse support in console
set mouse=a

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

" Highlight current line
set cul

" Use ; instead of : for commands
nore ; :

" Remove trailing whitespace after bufwrite
autocmd BufWrite * silent! %s/\s\+$//ge

" Restore cursor position upon reopening files {{{
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" }}}
