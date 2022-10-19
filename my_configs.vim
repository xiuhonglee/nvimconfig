set number 
set relativenumber 
set cursorline
set nocompatible
set diffopt+=vertical
set conceallevel=0
set termencoding=utf-8
set splitbelow
set splitright

" Colorscheme
set t_ut=
set encoding=UTF-8
let g:airline_theme = 'codedark'
let g:airline#extensions#tabline#enabled = 1

""""""""""""""""""""""
"  color theme  "
""""""""""""""""""""""

" Important!!
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark

" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'

" For better performance
let g:gruvbox_material_better_performance = 1

"colorscheme gruvbox-material

colorscheme gruvbox

" let g:gruvbox_contrast_dark='soft'
" let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_dark='hard'

let g:gruvbox_contrast_light='hard'

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

iabbrev @@ hn_likun@zju.edu.cn
iabbrev hw hello world
iabbrev xh xiu hong
iabbrev waht what
iabbrev tiem time
iabbrev tehn then
iabbrev xhem -- <cr>xiuhong<cr>hz_likun@zju.edu.cn

noremap <leader>sv :source $MYVIMRC<cr>

" close current buffer
noremap <leader>x :bd<cr>

" save
noremap <leader>s :wall<cr>
noremap <leader>w :wall<cr>


" fast move up/down
noremap ∆ 9j
noremap ˚ 9k
noremap 3 4j
noremap 4 4k

" for multilple line move
noremap j gj
noremap k gk

" togle goyo
noremap <leader>z :Goyo<cr>
let g:goyo_width=100

" Faster in-line navigation
noremap ˙ 3b
noremap ¬ 3e

" move page up/down fase
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>

noremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
noremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
noremap <leader>< viw<esc>a><esc>hbi<<esc>lel
noremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
noremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel

" close all in normal
noremap Q :wqall<cr>

noremap <leader>b :Explore<cr>

" Open the vimrc file anytime
noremap <leader>e :vsplit ~/.config/nvim/my_configs.vim<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader><cr> :nohl<cr>

noremap <leader>o :BufExplorer<cr>

" Resize splits with arrow keys
noremap <up> :res -5<CR>
noremap <down> :res +5<CR>
noremap <left> :vertical resize+5<CR>
noremap <right> :vertical resize-5<CR>

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

" choose current world
noremap Y viw

" close all buffers except current
nnoremap <leader>sa :w <bar> %bd <bar> e# <bar> bd# <CR>

" copy to clipboard
vnoremap Y "+y
" vnoremap <leader>'

" delete
inoremap jk <esc>

" add icons
let g:webdevicons_enable_nerdtree = 1
" set guifont=Fira\ Code:h12
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

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
" => Ack
""""""""""""""""""""""""""""""
" map <leader>g :Ag --ignore 'node_modules' ''<left>
" noremap <leader>g :Ag ''<left>
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
noremap <leader>g :Ack ''<left>


""""""""""""""""""""""""""""""
" => fzf
""""""""""""""""""""""""""""""
noremap <C-p> :Files<cr>


""""""""""""""""""""""""""""""
" => prettier
""""""""""""""""""""""""""""""
noremap <leader>F :CocCommand prettier.forceFormatDocument<cr>


let g:vim_json_conceal=2
let g:vim_json_syntax_conceal=0


"""""""""""""""""""
"  nerdcommenter  "
"""""""""""""""""""
" [count]<leader>cs | NERDCommenterSexy
" [count]<leader>cu | NERDCommenterUncomment
" [count]<leader>cy |NERDCommenterYank
"
""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1 

" Enable trimming of trailing whitespace when uncommenting
" let g:NERDTrimTrailingWhitespace = 1

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_javascript = 1

""""""""""""""
"  snippets  "
""""""""""""""
"let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
"let g:UltiSnipsListSnippets="<c-l>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/mysnippets', 'UltiSnips']
"let g:UltiSnipsSnippetDirectories=['UltiSnips']
""""""""""""""""""""""""""""""

""""""""""""""
"  undotree  "
""""""""""""""
if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 4
endif

""""""""""""""""""""""
"  vim easy align  "
""""""""""""""""""""""
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" this is required for mark names to persist between editor sessions
if has('nvim')
    set shada+=!
else
    set viminfo+=!
endif


"""""""""""""
"  ctags  "
"""""""""""""
let g:gutentags_project_root = ['package.json', '.git']
let g:gutentags_ctags_exclude = ['tags', 'node_modules', 'example', 'bin', 'build', 'dist', '*.json', '*.md', '.lock', '*.map', '*.min.*', '*.max.*', '*.css', '*.less', '*.scss', '*.bmp', '*.swap', '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2', '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx']


""""""""""""""""""""""
"  word count  "
""""""""""""""""""""""
" let g:word_count=wordcount().words
" function WordCount()
"     if has_key(wordcount(),'visual_words')
"         let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
"     else
"         let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
"     endif
"     return g:word_count
" endfunction

" set statusline+=\ w:%{WordCount()},
" set laststatus=2 " show the statusline

