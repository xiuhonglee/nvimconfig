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

colorscheme gruvbox

" let g:gruvbox_contrast_dark='soft'
" let g:gruvbox_contrast_dark='medium'
" let g:gruvbox_contrast_light='hard'
let g:gruvbox_contrast_dark='hard'

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

iabbrev @@ hn2015likun@gmail.com
iabbrev hw hello world
iabbrev xh xiu hong
iabbrev waht what
iabbrev tiem time
iabbrev tehn then

noremap <leader>sv :source $MYVIMRC<cr>

" close current buffer
noremap <leader>x :bd<cr>

" save
noremap <leader>s :wall<cr>
noremap <leader>w :wall<cr>


" fast move up/down
noremap ∆ 9j
noremap ˚ 9k

" for multilple line move
noremap j gj
noremap k gk

" togle goyo
noremap <leader>z :Goyo<cr>
let g:goyo_width=120

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


let g:ranger_map_keys = 0
noremap <leader>b :Ranger<cr>

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

" esc
inoremap jk <esc>


" netrw delete directory with `rm -r`
let g:netrw_localrmdir='rm -r'

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
"
let g:gutentags_cache_dir = $HOME .'/.cache/guten_tags' 
"
"
"""""""""""
"  vista  "
"""""""""""
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

set laststatus=2

nnoremap vs :Vista!!<CR>


" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']


" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }


"""""""""""""""""
"  vim-snippet  "
"""""""""""""""""
let g:snips_author = "xiuhong"
let g:UltiSnipsEditSplit="vertical"


""""""""""""""""""""""
"  custom functions  "
""""""""""""""""""""""
function! s:Camelize(range) abort
  if a:range == 0
    s#\(\%(\<\l\+\)\%(_\)\@=\)\|_\(\l\)#\u\1\2#g
  else
    s#\%V\(\%(\<\l\+\)\%(_\)\@=\)\|_\(\l\)\%V#\u\1\2#g
  endif
endfunction

function! s:Snakeize(range) abort
  if a:range == 0
    s#\C\(\<\u[a-z0-9]\+\|[a-z0-9]\+\)\(\u\)#\l\1_\l\2#g
  else
    s#\%V\C\(\<\u[a-z0-9]\+\|[a-z0-9]\+\)\(\u\)\%V#\l\1_\l\2#g
  endif
endfunction

command! -range CamelCase silent! call <SID>Camelize(<range>)
command! -range SnakeCase silent! call <SID>Snakeize(<range>)

nnoremap <leader>tu :CamelCase<cr>
vnoremap <leader>tu :CamelCase<cr>
nnoremap <leader>tp :SnakeCase<cr>
vnoremap <leader>tp :SnakeCase<cr>
