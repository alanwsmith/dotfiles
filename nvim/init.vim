call plug#begin("~/.vim/plugged")

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'theHamsta/nvim_rocks', {'do': 'pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua'}

    " language serve
    "Plug 'neovim/nvim-lspconfig'

    "  This one is for commants
    " Plug 'tpope/vim-commentary'
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
    " Plug 'godlygeek/tabular'
    " Plug 'nvim-lua/completion-nvim'
    " Plug 'norcalli/nvim-colorizer.lua'
    " Plug 'plasticboy/vim-markdown'

    " Themes
    " Plug 'danilo-augusto/vim-afterglow'
    " Plug 'dracula/vim'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }

    " Prettier
    Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()

" Disable plasticboy/vim-markdown folding
" let g:vim_markdown_folding_disabled = 1


" For colors in terminal 
" lua require('terminal').setup()

" Config
" if (has('termguicolors'))
"    set termguicolors
" endif

" for colorizer
" lua require'colorizer'.setup()

"
" let g:afterglow_inherit_background=1 

""" Theme Stuff
" syntax enable
" set t_Co=256
" set cursorline
" colorscheme onehalfdark 


"""

" Uncomment this is if you want nvim copy past to 
" go to the system clip/pasteboar
" set clipboard=unnamed


set nu
set rnu
set nocompatible
set autowrite
set autoread
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set autoindent
set smartindent
set copyindent
set shiftround
set smartcase
set incsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remember that doulbe quotes are comments, not `#`.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=','
" let loaded_matchparen = 1

" Setup so `:te` is aliased to expand to `:tabedit`
cnoreabbrev <expr> te getcmdtype() == ":" && getcmdline() == 'te' ? 'tabedit' : 'te'

" Save all files with `,s`
map <leader>s :wa<cr>

" Close the current file with a hotkey
" map <leader>q :q<cr>

""""" Python testing
" map <leader>m :let $RUN_THIS = expand('%:p')<cr>
" map <leader>r :!clear; if [ $RUN_THIS ]; then python3 "${RUN_THIS}"; else python3 %; fi<cr>
" map <leader>R :!clear; python3 %<cr>

""""""""""""""""""""
" Telescope
""""""""""""""""""""""



lua << EOF
-- THIS IS THE STUFF TO PUT BACK IN WHEN
-- YOU FINISH FIGURING OUT WHY THE LEADER
-- KEY DOESN'T FIRE
-- require('plugins')
-- local nvim_rocks = require'nvim_rocks'
-- nvim_rocks.ensure_installed('lua-cjson')
-- END OF STUFF TO PUT BACK IN



-- THIS IS TESTING STUFF THAT IS CURRENTLY 
-- OUT OF THE MIX
-- require'lspconfig'.pyright.setup{}
-- require('telescope').load_extension('coc')
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

-- END TESTING STUFF THAT'S NOT CURRENTLY IN THE MIX


EOF


" nmap <leader>t :wa<cr><Plug>PlenaryTestFile


" Make background transparent
hi Normal guibg=NONE 
hi Normal ctermbg=NONE

" Let prettier autoformat on save
" Looks like you need both of these to make it work
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
command! -nargs=0 Prettier :CocCommand prettier.formatFile


