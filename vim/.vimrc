"-----------------------------------------
" 1. GENERIC SETTINGS
"-----------------------------------------

set nocompatible " disable vi compatibility mode
set history=1000 " increase history size

"-----------------------------------------
" 2. FILE SETTINGS
"-----------------------------------------

" Stop creating backup files

set nobackup
set nowritebackup
set noswapfile
set backspace=indent,eol,start

" Modify some other settings about files

set encoding=utf-8 " always use unicode
set hidden
set ignorecase
set foldmethod=manual " To avoid performance issues, I never fold anything so..

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on
colorscheme onedark
set laststatus=2

" Habilitar mouse
" Para copiar y pegar en GNOME usar Shift + Click Dcho
set mouse=a
"-----------------------------------------
" 3. CONFIGURACION DE INTERFAZ ETC
"-----------------------------------------

" Mostrar números de línea
set relativenumber
set number
set cursorline

" Configurar tabs con 4 espacios
set tabstop=4        " Número de espacios que representa un tab
set shiftwidth=4     " Número de espacios utilizados para la indentación
set noexpandtab      " Usa tabs reales en lugar de espacios (cambia a expandtab si prefieres espacios)
set softtabstop=4    " Controla la inserción de tabs al presionar Tab
set autoindent       " Copia el indentado de la línea previa
set smartindent      " Añade indentado automático en estructuras de código

" Dejar líneas por encima y debajo del cursor
set scrolloff=10


"-----------------------------------------
" 4. KEYMAPS
"-----------------------------------------
" Configuración del líder
let mapleader = " "
let maplocalleader = "\\"

" Movimiento en modo inserción con Ctrl
let keys = ['h', 'j', 'k', 'l', 'w', 'b', 'e', '0', '$', 'gg', 'G']
for key in keys
    execute "inoremap <silent> <C-" . key . "> <C-o>" . key
endfor
inoremap <silent> <C-d> <Del>

" Mapear Ctrl + z para deshacer
inoremap <silent> <C-z> <C-o>u
nnoremap <silent> <C-z> u
vnoremap <silent> <C-z> u

" Guardar archivo
nnoremap <silent> <C-s> :w<CR>
inoremap <silent> <C-s> <Esc>:w<CR>a
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>wa :wa<CR>

" Cerrar archivo
nnoremap <silent> <C-d> :q<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>qa :qa<CR>

" Guardar y cerrar todo
nnoremap <silent> <leader>wq :wqa<CR>

" Navegar entre ventanas
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" Mover ventanas
nnoremap <silent> <S-H> <C-w>H
nnoremap <silent> <S-J> <C-w>J
nnoremap <silent> <S-K> <C-w>K
nnoremap <silent> <S-L> <C-w>L

" Gestión de pestañas
nnoremap <silent> <leader>tn :tabnew<CR>
nnoremap <silent> <leader>tc :tabclose<CR>
nnoremap <silent> <leader>tl :tabnext<CR>
nnoremap <silent> <leader>th :tabprevious<CR>
nnoremap <silent> <leader>t1 1gt
nnoremap <silent> <leader>t2 2gt
nnoremap <silent> <leader>t3 3gt
nnoremap <silent> <leader>t4 4gt
nnoremap <silent> <leader>t5 5gt

