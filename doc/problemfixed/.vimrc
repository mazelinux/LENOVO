syntax on
set showcmd 
if version >= 603

    set helplang=cn

    set encoding=utf-8

endif



autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 

func SetTitle() 

    if &filetype == 'sh' 

        call setline(1,"\#########################################################################") 

        call append(line("."), "\# File Name: ".expand("%")) 

        call append(line(".")+1, "\# Author: maze") 

        call append(line(".")+2, "\# Email: 406732060@qq.com;maze_linux@outlook.com;maze.ma1251228@gmail.com") 

        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 

        call append(line(".")+4, "\#########################################################################") 

        call append(line(".")+5, "\#!/bin/bash") 

        call append(line(".")+6, "") 

    else 

        call setline(1, "/*************************************************************************") 

        call append(line("."), "    > File Name: ".expand("%")) 

        call append(line(".")+1, "    > Author: maze") 

        call append(line(".")+2, "    > Email: 406732060@qq.com;maze_linux@outlook.com;maze.ma1251228@gmail.com") 

        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 

        call append(line(".")+4, " ************************************************************************/") 

        call append(line(".")+5, "")

    endif
    autocmd BufNewFile * normal G

endfunc 

set syntax=on
set noeb
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set noswapfile
set ignorecase
set hlsearch
set incsearch
set gdefault
set cmdheight=2
set notextmode
