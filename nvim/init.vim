call plug#begin("~/.vim/plugged")
    Plug 'dracula/vim'
    Plug 'tpope/vim-commentary'
    " Plug 'nvim-lua/popup.nvim'
    " Plug 'nvim-lua/plenary.nvim'
    " Plug 'norcalli/nvim-terminal.lua'
    " Plug 'nvim-telescope/telescope.nvim'
    " Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    " Plug 'vimwiki/vimwiki'
    " Plug 'sharkdp/bat'
    " Plug 'sharkdp/fd'
    " Plug 'BurntSushi/ripgrep'
    " Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'kyazdani42/nvim-web-devicons'
    " Plug 'code-biscuits/nvim-biscuits'
    " Plug 'nvim-lua/completion-nvim'
    " Plug 'fannheyward/telescope-coc.nvim'
    " Plug 'alanwsmith/neovim-grimoire'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'godlygeek/tabular'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'plasticboy/vim-markdown'
    Plug 'theHamsta/nvim_rocks', {'do': 'pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua'}

    " Themes
    Plug 'danilo-augusto/vim-afterglow'

call plug#end()

" Disable plasticboy/vim-markdown folding
let g:vim_markdown_folding_disabled = 1


" For colors in terminal 
" lua require('terminal').setup()

" Config
if (has('termguicolors'))
    set termguicolors
endif

" for colorizer
lua require'colorizer'.setup()

" let g:afterglow_inherit_background=1 

syntax enable
" colorscheme dracula
" colorscheme afterglow



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

""""" Python testing
map <leader>m :let $RUN_THIS = expand('%:p')<cr>
map <leader>r :!clear; if [ $RUN_THIS ]; then python "${RUN_THIS}"; else python %; fi<cr>
map <leader>R :!clear; python %<cr>

""""""""""""""""""""
" Telescope
""""""""""""""""""""""



lua << EOF
-- require('telescope').load_extension('coc')
require('plugins')

local nvim_rocks = require'nvim_rocks'
nvim_rocks.ensure_installed('lua-cjson')
-- nvim_rocks.ensure_installed('busted')
-- nvim_rocks.ensure_installed('lua-term')



-- nvim_rocks.remove('lua-cjson')


--local snap = require'snap'
--
--local limit = snap.get'consumer.limit'
--local producer_file = snap.get'producer.ripgrep.file'
--local producer_vimgrep = snap.get'producer.ripgrep.vimgrep'
--local producer_buffer = snap.get'producer.vim.buffer'
--local producer_oldfile = snap.get'producer.vim.oldfile'
--local select_file = snap.get'select.file'
--local select_vimgrep = snap.get'select.vimgrep'
--local preview_file = snap.get'preview.file'
--local preview_vimgrep = snap.get'preview.vimgrep'

-- snap.register.map({'n'}, {'<Leader><Leader>'}, function ()
--   snap.run({
--     prompt = 'Grep',
--     producer = limit(10000, producer_vimgrep),
--     select = select_vimgrep.select,
--     multiselect = select_vimgrep.multiselect,
--     views = {preview_vimgrep}
--   })
-- end)
EOF


nmap <leader>t :wa<cr><Plug>PlenaryTestFile


