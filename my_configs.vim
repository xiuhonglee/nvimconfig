set number 
set relativenumber 
set cursorline
set nocompatible
set diffopt+=vertical

set conceallevel=0

iabbrev @@ xiuhong.lk@alibaba-inc.com

" source vimrc
noremap <leader>sv :source $MYVIMRC<cr>

" delete
inoremap <c-d> <esc>ddi

" save
noremap <leader>s :w<cr>
noremap <leader>w :w<cr>

" fast move up/down
noremap ∆ 9j
noremap ˚ 9k

" for multilple line move
noremap j gj
noremap k gk

" togle goyo
noremap <leader>z :Goyo<cr>

" Faster in-line navigation
noremap ˙ 5b
noremap ¬ 5e

" copy to clipboard
vnoremap Y "+y

" move page up/down fase
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>

noremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
noremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

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

" Colorscheme
set t_ut=
set encoding=UTF-8
let g:airline_theme = 'codedark'
colorscheme hybrid
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8

noremap <leader>o :BufExplorer<cr>

" Resize splits with arrow keys
noremap <up> :res -5<CR>
noremap <down> :res +5<CR>
noremap <left> :vertical resize+5<CR>
noremap <right> :vertical resize-5CR>

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


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<C-f>'
noremap <leader>j :CtrlP<cr>
noremap <C-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => Act
""""""""""""""""""""""""""""""
" map <leader>g :Ag --ignore 'node_modules' ''<left>
noremap <leader>g :Ag ''<left>


""""""""""""""""""""""""""""""
" => fzf
""""""""""""""""""""""""""""""
noremap <C-p> :Files<cr>


""""""""""""""""""""""""""""""
" => prettier
""""""""""""""""""""""""""""""
noremap <leader>p :PrettierAsync<cr>


let g:vim_json_conceal=2
let g:vim_json_syntax_conceal=0


""""""""""""""""""""""""""""""
" => comment
""""""""""""""""""""""""""""""
noremap <leader>/ :<leader>c<leader><cr>
