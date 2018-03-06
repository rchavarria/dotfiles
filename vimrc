syntax on
filetype plugin indent on

" codificación a utf-8
set encoding=utf8

" fuente a utilizar para que vim-devicons plugin funcione correctamente
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 2.
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" set colorscheme
colorscheme desert

" Establece el numero de columnas y lineas
" (útil en windows, no lo he visto útil en Linux)
"
" set columns=200
" set lines=50

" muestra numero de lineas
"
set number

" mostrar números de línea relativos (sí|no)
" set norelativenumber
set relativenumber

" muestra una línea en la columna XX para controlar líneas largas
"
set colorcolumn=120

" activa búsqueda incremental, realiza búsquedas inteligentes y las resalta
"
set incsearch ignorecase smartcase hlsearch
" para quitar el resaltado, pulsar backspace/delete
nmap <silent> <BS> :nohlsearch<CR>

" muestra parejas de paréntesis
"
set showmatch

" Configurar la barra de estado
"
set laststatus=2 " always show status bar
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %p%%\ %P

" Ejemplo de statusline (https://github.com/sk1418/myConf/blob/master/common/.vimrc#L506)
" set statusline =%7*[%n]%*
" set statusline +=%1*%F\ %*%8*%m%r%*%1*%h%w%* "filename
" set statusline +=%7*\|%*
" set statusline +=%2*\ %Y: "filetype
" set statusline +=%{&ff}: "dos/unix
" set statusline +=%{&fenc!=''?&fenc:&enc}\ %* "encoding
" set statusline +=%7*\|%*
" set statusline +=%2*\ ASCII:%b\ %* " ascii
" set statusline +=%7*\|%*
" set statusline +=%2*\ row:%l/%*%1*%L%*%2*\ %*%1*%p%%%*%2*\ \ col:%v\ %*
" set statusline +=%7*\|%*

" Ejemplos tomados de la ayuda
" set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %p\ %P
" set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
"

" Ficheros temporales y de backup
" 
set dir=~/.vim/tmp
set backupdir=~/.vim/tmp

" habilitar guardado automático de los cambios
" habilitar 'deshacer' incluso con cambios guardados
"
set autowrite
if has('persistent_undo')
  set undolevels=5000
  set undodir=C:\\Users\\rchavarria\\vimfiles\\undo
  set undofile
endif

" Visualizar carácteres invisibles
"
set list
set listchars=tab:>-,trail:·,eol:¬,nbsp:·
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Habilita el resaltado de sintaxis de ficheros YAML
"
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" Abreviaturas
"
:au FileType javascript :iabbrev desc describe(' ', function () {<CR><CR>it(' ', function () {<CR>}<CR><CR>}

"
" Mapeos
"

" Mapeos de búsquedas, para centrar en pantalla al movernos a la siguiente
" ocurrencia de una búsqueda
nnoremap n nzzzv
nnoremap N Nzzzv

" remapea <leader>
let mapleader=" "

" Activar/Desactivar visualización de carácteres invisibles
nmap <leader>l :set list!<CR>

"
" Mapeos en modo visual
"

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"
" Plugins
"

" pathogen
execute pathogen#infect()

