" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" auto reload config
if !exists('*ReloadVimrc')
   fun! ReloadVimrc()
       let save_cursor = getcurpos()
       source $MYVIMRC
       call setpos('.', save_cursor)
   endfun
endif
autocmd! BufWritePost $MYVIMRC call ReloadVimrc()

let g:mapleader = ' '
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 1
let g:indentLine_setConceal = 1
"let g:ruby_host_prog = '~/.rbenv/versions/3.0.0/bin/neovim-ruby-host'
let g:ruby_host_prog = 'rvm system do neovim-ruby-host'


source ~/.config/nvim/plugin/list.vim
source ~/.config/nvim/plugin/coc.vim
source ~/.config/nvim/base.vim
source ~/.config/nvim/my_configs.vim

