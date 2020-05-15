"============================
"GUI init file
"============================

"set guifont     =Consolas:h14
GuiFont! Consolas:h15
"suppress warning(bad fixed pitch metrics)
""GuiFont! SauceCodePro Nerd Font Mono:h15

"set cmdheight   =2

set title
set titlestring=\ %F\ @\ %{hostname()}

" theme
colorscheme dracula

" statusline color
" highlight User1 guifg=#eea040 guibg=#222222
" highlight User2 guifg=#dd3333 guibg=#222222
" highlight User3 guifg=#ff66ff guibg=#222222
" highlight User4 guifg=#a0ee40 guibg=#222222
" highlight User5 guifg=#eeee40 guibg=#222222

"change working directory to home
if has('win16') || has('win32') || has('win64')
  cd $HOME
endif
