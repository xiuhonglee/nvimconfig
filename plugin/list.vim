" >>>>>>>>>>>>>>>>> plugins start <<<<<<<<<<<<<<<<<<<
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tomasiser/vim-code-dark'
Plug 'junegunn/goyo.vim'
Plug 'vim-scripts/bufexplorer.zip'
" Git
Plug 'tpope/vim-fugitive'
" Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
"Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'Chiel92/vim-autoformat'

" Taglist
Plug 'liuchengxu/vista.vim'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree'

Plug 'mileszs/ack.vim'
Plug 'yegappan/mru'


Plug 'junegunn/vim-easy-align'

Plug 'kshenoy/vim-signature'

" CSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'jaxbot/browserlink.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'

Plug 'ryanoasis/vim-devicons'
Plug 'mg979/vim-xtabline'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'lfv89/vim-interestingwords'
Plug 'Yggdroot/indentLine'
Plug 'w0ng/vim-hybrid'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'elzr/vim-json'

Plug 'junegunn/vim-peekaboo'

Plug 'ludovicchabant/vim-gutentags'

call plug#end()
