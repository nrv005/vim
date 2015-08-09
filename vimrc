"Vim configuratin - Herve Menguy - 01

"Annule la comptatibilite avec l'ancetre vi
set nocompatible

"Mise en place de pathogen pour gerer les plugins de vim
"call pathogen#infect()
"call pathogen#helptags()

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

"Gestion des caracteres/fonts
set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

"Changement touche "Echap" (Esc) par l'appui dur ; deux fois
:map ;; <Esc>
:imap ;; <Esc>
"Changement touche "leader" par l'appui sur ,
let mapleader = ","

"Affiche une ligne verticale à la 80 colonne
if (exists('+colorcolumn'))
	"set colorcolumn=80
	"highlight ColorColumn ctermbg=235
	highlight ColorColumn ctermbg=23
	call matchadd('ColorColumn', '\%80v', 100)
endif
