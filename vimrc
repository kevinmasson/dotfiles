" Use Vim settings, rather than Vi settings (much better!).
set nocompatible 	" Must be first
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
   finish
endif


execute pathogen#infect()

" LANGUAGE

let $LANG = 'en'
set langmenu=en_US.UTF-8

" BACKUP/UNDO

if has("vms")
   set nobackup		" do not keep a backup file, use versions instead
else
   set backup		" keep a backup file (restore to previous version)
   set undofile		" keep an undo file (undo changes after closing)
endif

" swap files (.swp) in a common location
" // means use the file's full path
set dir=~/.vim_swap//
" backup files (~) in a common location if possible
" set backup
set backupdir=~/.vim_backup/,~/tmp,.
" turn on undo files, put them in a common location
" set undofile
set undodir=~/.vim_undo/

" COLORS

if filereadable(expand("~/.vimrc_background")) " base16-shell term
  let base16colorspace=256
  source ~/.vimrc_background
endif
syntax enable
filetype plugin on 	" Enable plugins, for netwr
filetype plugin indent on

" COMMANDS

set history=50		" keep 50 lines of command line history

" CODING

set autoindent		" always set autoindenting on

" EDITING 

set backspace=indent,eol,start 		" allow backspacing over everything in insert mode
set incsearch		" do incremental searching
set expandtab
set shiftwidth=2
set tabstop=2

" INTERFACE

set scrolloff=8		" Offset lines from top when scrolling
set showcmd		" display incomplete commands
set ruler		" show the cursor position all the time
set number
set numberwidth=4

" STATUSLINE

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

" FILES

set path+=**		" search into subfolders
set wildmenu		" display all matching when tab 

" FILE BROWSING

let g:netrw_banner=0	" disable the banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1	" open in split mode on the right
let g:netrw_liststyle=3	" tree view


" HARD MODE
" Prevent me from using the arrow keys

let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = "Don't use this!"
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR> 	" The leader is a defined key, \ by default


