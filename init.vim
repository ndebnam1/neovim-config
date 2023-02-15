:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
let g:neovide_fullscreen = v:true

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/lambdalisue/suda.vim/' " Sudo
Plug 'https://github.com/bfrg/vim-cpp-modern' "c++ syntax highlighting
Plug 'voldikss/vim-floaterm'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'LinArcX/telescope-command-palette.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'rebelot/kanagawa.nvim'
Plug 'codota/tabnine-nvim', {'do': './dl_binaries.sh'}

set encoding=UTF-8

call plug#end()
"floaterm kaymaps

:set completeopt-=preview " For No Previews

:colorscheme kanagawa

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

augroup fish_syntax
	au!
	autocmd BufNewFile,BufRead *.fish set syntax=sh
augroup end

let mapleader = "\<Space>"

" Find files using Telescope command-line sugar.
nnoremap <Space> <cmd>Telescope current_buffer_fuzzy_find<cr>
vnoremap <Space> <cmd> Telescope current_buffer_fuzzy_find<cr>
nnoremap <Space><Space> <cmd>Telescope find_files<cr>
vnoremap <Space><Space> <cmd>Telescope find_files<cr>
imap <C-Space> <Esc>
nmap <C-Space> <Esc>
tmap <C-Space> <Esc>
vmap <C-Space> <Esc>
nmap <BS> :wall<CR>
vmap <BS> :wall<CR>
nmap <BS><BS> :wqall!<CR>
vmap <BS><BS> :wqall!<CR>
vmap <CR><CR> :FloatermToggle<CR>
nmap <CR><CR> :FloatermToggle<CR>
tmap <C-Space> <C-\><C-n>:FloatermToggle<CR>
" Lua file config
luafile $HOME/.config/nvim/lua/treesitter.lua


