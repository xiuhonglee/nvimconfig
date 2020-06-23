
set number 
set relativenumber 
set cursorline
set nocompatible

" save
nmap <leader>w :w!<cr>

" fast move up/down
noremap ∆ 9j
noremap ˚ 9k

" Faster in-line navigation
noremap ˙ 5b
noremap ¬ 5e

" copy to clipboard
vmap Y "+y


" move page up/down fase
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>

" close all in normal
noremap Q :wqall<cr>


" Open the vimrc file anytime
noremap <LEADER>e :e ~/.config/nvim/init.vim<CR>
noremap <leader><cr> :nohl<cr>

" add icons
let g:webdevicons_enable_nerdtree = 1
set guifont=Fira\ Code:h12
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
" let g:webdevicons_conceal_nerdtree_brackets = 1

" Colorscheme
set t_ut=
let g:airline_theme = 'codedark'
set background=dark
colorscheme codedark


" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>O :only<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" find and replace
noremap \s :%s//g<left><left>
