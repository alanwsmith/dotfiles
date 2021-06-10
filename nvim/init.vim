call plug#begin("~/.vim/plugged")
    Plug 'dracula/vim'
    Plug 'tpope/vim-commentary'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'vimwiki/vimwiki'
    Plug 'sharkdp/bat'
    Plug 'sharkdp/fd'
    Plug 'BurntSushi/ripgrep'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'code-biscuits/nvim-biscuits'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-lua/completion-nvim'
    Plug 'fannheyward/telescope-coc.nvim'
    Plug 'alanwsmith/neovim-grimoire'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Config
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula


set nu
set rnu
set nocompatible
set autowrite
set autoread
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
" set autoindent
" set smartindent
set copyindent
set shiftround
set smartcase
set incsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remember that doulbe quotes are comments, not `#`.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable

let mapleader=','
let loaded_matchparen = 1

" Setup so `:te` is aliased to expand to `:tabedit`
cnoreabbrev <expr> te getcmdtype() == ":" && getcmdline() == 'te' ? 'tabedit' : 'te'

" Save all files with `,s`
map <leader>s :wa<cr>

" Close the current file with a hotkey
map <leader>q :q<cr>

""""""""""""""""""""
" Telescope
""""""""""""""""""""""

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


lua << EOF
-- require('telescope').load_extension('coc')
require('plugins')
EOF


