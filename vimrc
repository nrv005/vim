"Vim configuratin - Herve Menguy 

"Annule la comptatibilite avec l'ancetre vi
set nocompatible

"Gestion des plugins par Vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Sorcerer'
Plugin 'Solarized'
Plugin 'romainl/Apprentice'
Plugin 'LustyExplorer'
Plugin 'fugitive.vim'
Plugin 'ack.vim'
Plugin 'ctrlp.vim'
Plugin 'surround.vim'
"Plugin 'ctags.vim'
Plugin 'taglist.vim'
Plugin 'Python-mode-klen'
Plugin 'Powerline'

" All of your Plugins must be added before the following line
call vundle#end()   

"--Affichage
set title		"Met a jour le titre des fenetres ou du terminale
set number		"Affiche les numeros de lignes
set ruler		"Affiche la position actuelle du curseur
set wrap		"Affiche les lignes trop longues sur plusieurs lignes

set scrolloff=3		"Affiche un minimum 3 lignes autour du curseur 
			"pour le scroll

"--Recherche
set ignorecase		"Ignorer la casse lors d'une recherche
set smartcase		"Si la recherche contient une majuscule, re-active
			"la sensibilite a la casse
set incsearch		"Surligne les resultats de la recherche pendant 
			"la frappe
set hlsearch		"Surligne le resultat de la recherche

"--Beep
set visualbell		"Empeche vim de Beeper
set noerrorbells	"Empeche vim de Beeper

"Active le comportement habituel de la touche retoure en arriere
set backspace=indent,eol,start

"Cacher les fichiers lors de l'ouverture d'autres fichiers
set hidden

syntax enable
"Active les comportements specifiques aux types de fichiers comme 
"la syntaxe et l'indentation
filetype on
filetype plugin on
filetype indent on

"Active la coloration syntaxique pour un terminal avec 256 color
set t_Co=256
""Scheme Solarized fond sombre
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"Gestion des caracteres/fonts
set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

"Changement touche "Echap" (Esc) par l'appui dur ; deux fois
:map ;; <Esc>
:imap ;; <Esc>
"Changement touche "leader" par l'appui sur ,
let mapleader = ","
"Gestion des bracket (parenthese)
:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
"<Ctrl-j>quitte l'interieur du bracket et repasse en mode Insertion
:inoremap <C-j> <Esc>/[)}\]"'>]<CR>:nohl<CR>a

"Affiche une ligne verticale à la 80 colonne
if (exists('+colorcolumn'))
	"set colorcolumn=80
	"highlight ColorColumn ctermbg=235
	highlight ColorColumn ctermbg=23
	call matchadd('ColorColumn', '\%80v', 100)
endif

"Parametrage par default pour ack
let g:ackprg="ack -H --nocolor --nogroup --column"
"Place un marqueur et cherche
nmap <leader>j mA:Ack<space>
"Place un marqueur et cherche le mot sous le curseur
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

"Parametrage pour ctrlp
let g:ctrlp_map = '<leader>c'

"Parametrage pour ctags et python
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
"Fait apparaitre un split avec les class et fonctions
map <F4> :TlistToggle <cr><c-w>w
"Reinitialise le fichier des tag
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

"Gestion de python-mode
"Rope
"Turn on the rope script
let g:pymode_rope = 1
"Affiche la documentation pour l'element sous le curseur
let g:pymode_rope_show_doc_bind = '<C-c>d'
"Valide la completion du code par rope		A retester / Ne fonctionne pas
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space'
"Validation du refactoring
let g:pymode_rope_rename_bind = '<C-c>rr'
