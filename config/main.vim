"
" A (not so) minimal vimrc.
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set scrolloff   =3         " keep margin in the bottom

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
let g:vim_cache =$HOME . '/.cache/vim/'
" create directory if needed
if !isdirectory(g:vim_cache) && exists('*mkdir')
  call mkdir(g:vim_cache)
endif
" backup files
if !isdirectory(g:vim_cache . 'backup') && exists('*mkdir')
  call mkdir(g:vim_cache . 'backup')
endif
set backup
let &backupdir  =g:vim_cache . 'backup/'
set backupext   =.bak
set backupskip  =
" swap files
let &directory  =g:vim_cache . 'swap/'
set updatecount =100
" undo files
set undofile
let &undodir    =g:vim_cache . 'undo/'
" netrw files
let g:netrw_home=g:vim_cache . 'netrw/'


" statusline
set statusline  =
set statusline +=%1*\ %n%*              "buffer number
set statusline +=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}%*      "encoding
set statusline +=%5*\ %{&ff}%*          "file format
set statusline +=%3*\ %y%*              "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%r%w%*            "modified flag
set statusline +=%1*%5l%*               "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*(%p%%)%*            "position percent
set statusline +=%1*%3v%*               "virtual column number
set statusline +=%1*%=%*                "spacer
set statusline +=%2*0x%04B\ %*          "character under cursor

"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline  =%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v]\ [%p%%]
