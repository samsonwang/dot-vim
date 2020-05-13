"GUI init file

"set guifont     =Consolas:h14
GuiFont! Consolas:h14
"suppress warning(bad fixed pitch metrics)

"set cmdheight   =2

set title
set titlestring=\ %F\ @\ %{hostname()}

"change working directory to home
cd $HOME