let mapleader=','
let loaded_matchparen = 1

" This is what allows you to hit the escape key and immediately
" be able to hit the leader key. Without it, you either have to
" hit escape twice, hit leader twice, or wait a full second 
" before hitting leader.
set timeoutlen=1000 ttimeoutlen=10

" This is how to run a plug install to load new plugins. run this from the
" command line
"
" nvim +PlugInstall
"

call plug#begin("~/.vim/plugged")


    " nvim_rocks is needed for your grimoire stuff
    Plug 'theHamsta/nvim_rocks', {'do': 'pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua'}

    " I think this is the one that provides the way to do comments
    Plug 'tpope/vim-commentary'

    " this is for an attempt to get mdx highlighting
    Plug 'sheerun/vim-polyglot'
   
    " Themes
    " Plug 'danilo-augusto/vim-afterglow'
    Plug 'dracula/vim'
    " Plug 'sonph/onehalf', { 'rtp': 'vim' }

    " Prettier
    Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }


    " The main coc plugin. I thought this was needed for 
    " prettier, but it doesnt' look like it. Leaving it
    " in for now.
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " The below things are out of the mix right now
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " language serve
    " Plug 'neovim/nvim-lspconfig'

    " This one is for commants
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

    " Tried to use this to show both relative and regular normal
    " numbers at the same time
    " Plug 'vim-scripts/RltvNmbr.vim'
    
call plug#end()


" Set F3 to toggle highlight search
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>


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



" Adjust min widht of number column to prevent horizontal 
" jumping when plugins add content to the column
set numberwidth=4
set signcolumn=number



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remember that doulbe quotes are comments, not `#`.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Setup so `:te` is aliased to expand to `:tabedit`
cnoreabbrev <expr> te getcmdtype() == ":" && getcmdline() == 'te' ? 'tabedit' : 'te'

" Save all files with `,s`
map <leader>s :wa<cr>

" Copy lines in visual mode to the system pasteboard
noremap <leader>y "+y

" Paste from the system pasteboard in normal mode
nnoremap <leader>p "+p

" Remove highlight:
map <leader>h :noh<cr>


" Close the current file with a hotkey
" map <leader>q :q<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" ONLY HAVE ONE OF THESE UNCOMMENTED AT A TIME

""""" Python testing - 
map <leader>m :let $RUN_THIS = expand('%:p')<cr>
map <leader>r :!if [ $RUN_THIS ]; then python3 "${RUN_THIS}"; else python3 %; fi<cr>
map <leader>R :!python3 %<cr>

""""" JavaScript runner
" map <leader>r :!/usr/bin/env node %<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
--
-- snap.register.map({'n'}, {'<Leader><Leader>'}, function ()
--   snap.run({
--     prompt = 'Grep',
--     producer = limit(10000, producer_vimgrep),
--     select = select_vimgrep.select,
--     multiselect = select_vimgrep.multiselect,
--     views = {preview_vimgrep}
--   })
-- end)
--
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
let g:prettier#quickfix_enabled=0
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" This is how you can auto switch between relative and 
" absolute line numbers depending on which mode you're in
" It does cause flashing of the line numbers though, so 
" not sure if I'm going to keep it. 
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

