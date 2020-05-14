"============================
"GUI init file
"============================

"set guifont     =Consolas:h14
GuiFont! Consolas:h14
"suppress warning(bad fixed pitch metrics)

"set cmdheight   =2

set title
set titlestring=\ %F\ @\ %{hostname()}


" theme
colorscheme desert

" statusline color
hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222

"change working directory to home
cd $HOME
