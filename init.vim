set termguicolors
set clipboard=unnamedplus
set confirm
set spell
set nowrap
set encoding=utf-8
set colorcolumn=80,120
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set showtabline=2
set signcolumn=yes
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set expandtab
set mouse=a
set nowrap
set number
set incsearch
set updatetime=50

"remove red line
set colorcolumn=0

set list
set listchars=tab:▸\ ,trail:·

set backupdir=~/.config/nvim/data//
set directory=~/.config/nvim/data//
set undodir=~/.config/nvim/data//
set undofile
set undolevels=1000
set undoreload=10000

let mapleader=" "

"auto complete menu
set showmode shortmess+=filmnrxoOtT
set shortmess+=c
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum


let g:floaterm_width = 100
let g:floaterm_height = 25

"Plugins!
call plug#begin('C:/Users/danir/AppData/Local/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'nvim-tree/nvim-tree.lua'
" Plug 'Valloric/YouCompleteMe'
Plug 'theprimeagen/harpoon'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'sbdchd/neoformat'
Plug 'gelguy/wilder.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'http://github.com/tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/popup.nvim'
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" themes
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'lewis6991/gitsigns.nvim'

" Plug 'aurieh/discord.nvim'
" Plug 'vimsence/vimsence'
" Plug 'andweeb/presence.nvim'
" Plug 'nvim-treesitter/nvim-treesitter'
Plug 'mbbill/undotree/'


" LSP Support
Plug 'neovim/nvim-lspconfig'             " Required
Plug 'williamboman/mason.nvim'           " Optional
Plug 'williamboman/mason-lspconfig.nvim' " Optional

" Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'         " Required
Plug 'hrsh7th/cmp-nvim-lsp'     " Required
Plug 'hrsh7th/cmp-buffer'       " Optional
Plug 'hrsh7th/cmp-path'         " Optional
Plug 'saadparwaiz1/cmp_luasnip' " Optional
Plug 'hrsh7th/cmp-nvim-lua'     " Optional
Plug 'folke/trouble.nvim'

"  Snippets
Plug 'L3MON4D3/LuaSnip'             " Required
Plug 'rafamadriz/friendly-snippets' " Optional

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}
call plug#end()

" theme
let g:material_theme_style = 'ocean-community'
colorscheme material

" Wilder setup
call wilder#setup({'modes': [':', '/', '?'],'next_key': '<Tab>','previous_key': '<S-Tab>','accept_key': '<Down>','reject_key': '<Up>',})
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      \ 'highlights': {
      \   'border': 'Normal',
      \ },
      \ 'border': 'rounded',
      \ 
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'left': [
      \   ' ', wilder#popupmenu_devicons(),
      \ ],
      \ 'right': [
      \   ' ', wilder#popupmenu_scrollbar(),
      \ ],})))

" Air Line
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" testing rounded separators (extra-powerline-symbols):
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"

" key bindings

nnoremap + <C-w>+
nnoremap - <C-w><
nnoremap _ <C-w>-
nnoremap = <C-w>>
nnoremap <Space>t <C-w>w
nnoremap <Space>r <C-w>W
nnoremap <Space>v <C-w>v
nnoremap <Space>s <C-w>s

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope git_files<cr>


vnoremap J :m<Space>'>+1<Cr>gv=gv
vnoremap K :m<Space>'<-2<Cr>gv=gv

nnoremap J mzJ`z



" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
highlight Statement        ctermfg=2    ctermbg=none    cterm=none
highlight Directory        ctermfg=4    ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
highlight NERDTreeClosable ctermfg=2
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4    ctermbg=none    cterm=italic
highlight Constant         ctermfg=12   ctermbg=none    cterm=none
highlight Special          ctermfg=4    ctermbg=none    cterm=none
highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
highlight String           ctermfg=12   ctermbg=none    cterm=none
highlight Number           ctermfg=1    ctermbg=none    cterm=none
highlight Function         ctermfg=1    ctermbg=none    cterm=none




" Configuration example
let g:floaterm_keymap_new    = '<LEADER>tn'
let g:floaterm_keymap_prev   = '<LEADER>tb'
let g:floaterm_keymap_next   = '<LEADER>tf'
let g:floaterm_keymap_toggle = '<LEADER>tt'



" use <tab> for trigger completion and navigate to next complete item
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

"     inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"     inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
"     " remap for complete to use tab and <cr>
"     inoremap <silent><expr> <TAB>
"         \ coc#pum#visible() ? coc#pum#next(1):
"         \ <SID>check_back_space() ? "\<Tab>" :
"         \ coc#refresh()
"     inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"     inoremap <silent><expr> <c-space> coc#refresh()

"     hi CocSearch ctermfg=12 guifg=#18A3FF
"     hi CocMenuSel ctermbg=109 guibg=#13354A


set signcolumn=yes

set updatetime=300


lua vim.api.nvim_set_hl(0, 'Normal', {bg='none'})
lua vim.api.nvim_set_hl(0, 'NormalFloat', {bg='none'})

nmap <silent> <LEADER>ne :tabedit C:\Users\danir\AppData\Local\nvim\init.vim<CR>
" nmap <silent> <LEADER>pe :Explore <CR>


" lua << EOF
" require'nvim-treesitter.configs'.setup {
"   -- A list of parser names, or "all" (the four listed parsers should always be installed)
"   ensure_installed = {  "python","javascript","typescript","rust","c", "lua", "vim", "help" },

"   -- Install parsers synchronously (only applied to `ensure_installed`)
"   sync_install = false,

"   -- Automatically install missing parsers when entering buffer
"   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
"   auto_install = true,

"   -- List of parsers to ignore installing (for "all")

"   ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
"   -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

"   highlight = {
"     -- `false` will disable the whole extension
"     enable = true,

"     -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
"     -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
"     -- the name of the parser)
"     -- list of language that will be disabled
"     -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
"     disable = function(lang, buf)
"         local max_filesize = 100 * 1024 -- 100 KB
"         local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
"         if ok and stats and stats.size > max_filesize then
"             return true
"         end
"     end,

"     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"     -- Using this option may slow down your editor, and you may see some duplicate highlights.
"     -- Instead of true it can also be a list of languages
"     additional_vim_regex_highlighting = false,
"   },
" }
" EOF





lua <<EOF
-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()
EOF

augroup fmt
  autocmd!
  autocmd BufWritePre *   silent Neoformat
augroup END

" nnoremap <silent> <LEADER>w :Neoformat<Cr>:w<Cr>

" let g:netrw_banner=0
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
set shortmess=I

lua<<EOF

-- OR setup with some options
require("nvim-tree").setup({
sort_by = "case_sensitive",
view = {
    width = 30,
    mappings = {
        list = {
            { key = "u", action = "dir_up" },
            },
        },
    },

    renderer = {
        group_empty = true,
        },
    filters = {
        dotfiles = true,
        },
})

EOF

nmap <silent> <LEADER>pe :NvimTreeToggle <CR>

let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 1
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}
let g:presence_show_time           = 1

let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"
let g:presence_main_image = "file"

let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In Nvim Tree'
let g:vimsence_file_explorer_details = 'Looking for files'

lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF



lua << EOF



-- Mappings.
local opts = { noremap=true, silent=true }

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
end

vim.diagnostic.config({
  virtual_text = true
})

-- Show line diagnostics automatically in hover window
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]


EOF

 nnoremap <silent> <LEADER>e :lua vim.diagnostic.open_float()<Cr>
