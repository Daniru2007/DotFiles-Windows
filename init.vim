" changing the directory in neovide
if split(fnamemodify("install.json", ":p"), "install.json")[0]=="C:\\Users\\danir\\scoop\\apps\\neovide\\current\\"
	cd E:\code
endif

set ts=2 sw=2 sts=2
set smartindent
set hidden
set nu   " line number
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

set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set signcolumn=yes
set relativenumber
set number
set termguicolors
set undofile
set spell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard=unnamedplus
set confirm
set exrc
set backup
set updatetime=300 " Reduce time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files

" %s/\s\+$//e
" silent! %s/\s\+$// 

"remove red line
set colorcolumn=0

"use capslock instead esc
"xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

"set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"Disable background erase
set t_ut=
"fold
"fold toggle on enter in normal mode
au BufEnter * nmap <leader><CR> za
set foldmethod=syntax
set foldnestmax=1
set foldenable
set foldlevel=9
set foldcolumn=0

set viewoptions=folds,options,cursor,unix,slash

" Time between subkeys, esc and InsertLeave in this case
set ttimeout ttimeoutlen=50

set backupdir=~/.config/nvim/data//
set directory=~/.config/nvim/data//
set undodir=~/.config/nvim/data//

set undofile
set undolevels=1000
set undoreload=10000

set incsearch
set hlsearch

set list
"set listchars=tab: ,trail:•,extends:#,nbsp:.
set listchars=tab:\ \ ,trail:•,extends:#,nbsp:.

set pastetoggle=<F12>
set clipboard=unnamed


" Mouse support
set mouse=a
set ruler
set cursorline
" command complete
set wildmenu
set wildmode=list:longest,full

"map leader key to space
let mapleader=" "

"auto complete menu
set showmode shortmess+=filmnrxoOtT
set shortmess+=c

set completeopt-=preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
set completeopt+=menu,menuone,noinsert,noselect		

set fillchars=

" Setup Vundle
set runtimepath+=~/.config/nvim/autoload
set nocompatible
filetype off

"Plugins!
call plug#begin('C:/Users/danir/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
" Plug 'wfxr/minimap.vim'


Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'



Plug 'tami5/lspsaga.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'kyazdani42/nvim-web-devicons'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple 
Plug 'drewtempelmeyer/palenight.vim' " Soothing color scheme for your favorite [best]cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'psliwka/vim-smoothie'
"{{ The Basics }}
    Plug 'gmarik/Vundle.vim'                           " Vundle
"    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'suan/vim-instant-markdown', {'rtp': 'after'} " Markdown Preview
    Plug 'frazrepo/vim-rainbow'
"{{ File management }}
    Plug 'vifm/vifm.vim'                               " Vifm
    Plug 'scrooloose/nerdtree'                         " Nerdtree
   Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
"{{ Productivity }}
    Plug 'vimwiki/vimwiki'                             " VimWiki 
    Plug 'jreybert/vimagit'                            " Magit-like plugin for vim
"{{ Tim Pope Plugins }}
    Plug 'tpope/vim-surround'                          " Change surrounding marks
"{{ Syntax Highlighting and Colors }}
    Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
    Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
    Plug 'vim-python/python-syntax'                    " Python highlighting
    Plug 'ap/vim-css-color'                            " Color previews for CSS
"{{ Junegunn Choi Plugins }}
    Plug 'junegunn/goyo.vim'                           " Distraction-free viewing
    Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
    Plug 'junegunn/vim-emoji'                          " Vim needs emojis!
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'glepnir/dashboard-nvim'
call plug#end()

"autocmd VimEnter * NERDTree

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



" nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-s> :%s/
nnoremap <C-m> n
nnoremap M N
" noremap <C-b> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>
nmap <C-t> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

" :colorscheme jellybeans
":colorscheme onedark
" :colorscheme palenight
" :colorscheme OceanicNext

let g:material_theme_style = 'ocean-community'
colorscheme material
":colorscheme dracula

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


inoremap ii <Esc>

set guifont=FiraCode\ NF:h16
let NERDTreeMinimalUI=1
nnoremap nr :NERDTree<CR> 
nnoremap nn :NERDTreeToggle<CR>
nnoremap nf :NERDTreeFocus<CR>

" Configuration example
let g:floaterm_keymap_new    = 'tn'
let g:floaterm_keymap_prev   = 'tb'
let g:floaterm_keymap_next   = 'tf'
let g:floaterm_keymap_toggle = 'tt'

" nmap ff :Telescope<CR>
nmap ne :tabedit C:\Users\danir\AppData\Local\nvim\init.vim<CR>
nmap tk :FloatermKill<CR>
"let g:neovide_transparency=0.8
let g:neovide_cursor_vfx_mode = "sonicboom"
"let g:neovide_cursor_vfx_mode = "railgun
let g:neovide_cursor_animation_length=0.2
let g:neovide_cursor_vfx_particle_lifetime=1.0
let g:neovide_cursor_vfx_particle_density=15.0
let g:neovide_cursor_vfx_particle_speed=1.0
let g:neovide_cursor_vfx_particle_phase=1.5
let g:neovide_cursor_vfx_particle_curl=1.0
let g:neovide_no_idle=v:true


" let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
"let g:NERDTreeWinSize=38


" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


" own commands 
:command -nargs=0 Code cd E:/code

let g:dashboard_default_executive ='telescope'
" let g:dashboard_custom_header = [
" \'███╗░░██╗██╗░░░██╗██╗███╗░░░███╗',
" \'████╗░██║██║░░░██║██║████╗░████║',
" \'██╔██╗██║╚██╗░██╔╝██║██╔████╔██║',
" \'██║╚████║░╚████╔╝░██║██║╚██╔╝██║',
" \'██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║',
" \'╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝',
"       \ ]
nnoremap + <C-w>+
nnoremap - <C-w><
nnoremap _ <C-w>-
nnoremap = <C-w>>
nnoremap <Space>t <C-w>w
nnoremap <Space>r <C-w>W
nnoremap <Space>v <C-w>v
nnoremap <Space>s <C-w>s

" testing rounded separators (extra-powerline-symbols):
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"

" Rounded airline theme
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

" set the transparent look in windows terminal
" autocmd vimenter * ++nested highlight normal ctermbg=none guibg=none
" highlight Normal guibg=NONE
" highlight NonText guibg=NONE
" highlight SignColumn guibg=NONE
" :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.5}})
nnoremap ff <cmd>Telescope file_browser<cr>
nnoremap ft <cmd>Telescope <cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap <Space>a :tabedit <cr>
let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

set path+=**
nnoremap <C-[> :pop <cr>
" let g:minimap_width = 10
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1
let g:floaterm_width = 100
let g:floaterm_height = 25
" lua << EOF

" require('telescope').setup{
"   defaults = {
"     vimgrep_arguments = {
"       'rg',
"       '--color=never',
"       '--no-heading',
"       '--with-filename',
"       '--line-number',
"       '--column',
"       '--smart-case'
"     },
"     prompt_prefix = "> ",
"     selection_caret = "> ",
"     entry_prefix = "  ",
"     initial_mode = "insert",
"     selection_strategy = "reset",
"     sorting_strategy = "descending",
"     layout_strategy = "horizontal",
"     layout_config = {
"       horizontal = {
"         mirror = false,
"       },
"       vertical = {
"         mirror = false,
"       },
"     },
"     file_sorter =  require'telescope.sorters'.get_fuzzy_file,
"     file_ignore_patterns = {},
"     generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
"     winblend = 0,
"     border = {},
"     borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
"     color_devicons = true,
"     use_less = true,
"     path_display = {},
"     set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
"     file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
"     grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
"     qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

"     -- Developer configurations: Not meant for general override
"     buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
"   }
" }
" EOF
lua << EOF
require'lspconfig'.pyright.setup{}
EOF
lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
EOF
lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'rust_analyzer', 'tsserver' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
EOF

lua << EOF
local use = require('packer').use
require('packer').startup(function()
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
EOF

lua << EOF
require'lspconfig'.pyright.setup{}
  --Commands:
  --PyrightOrganizeImports: Organize Imports

  --Default Values:
    cmd = { "pyright-langserver", "--stdio" }
    filetypes = { "python" }
    root_dir = function(startpath)
        return M.search_ancestors(startpath, matcher)
      end
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "workspace",
          useLibraryCodeForTypes = true
        }
      }
    }
    single_file_support = true
EOF

