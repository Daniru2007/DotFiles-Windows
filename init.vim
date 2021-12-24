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

set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set signcolumn=no
set relativenumber
set number
set termguicolors
set undofile
set spell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set nowrap
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

set termguicolors
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

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"{{ The Basics }}
    Plug 'gmarik/Vundle.vim'                           " Vundle
"    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'suan/vim-instant-markdown', {'rtp': 'after'} " Markdown Preview
    Plug 'frazrepo/vim-rainbow'
"{{ File management }}
    Plug 'vifm/vifm.vim'                               " Vifm
    Plug 'scrooloose/nerdtree'                         " Nerdtree
"    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
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
nnoremap <C-m> n
noremap <C-b> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>
nmap <C-t> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans
":colorscheme onedark
":colorscheme palenight
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

nmap ff :Telescope<CR>
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


"let NERDTreeShowLineNumbers=1
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
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


" own commands 
:command -nargs=0 Code cd E:/code

" selecting and brackets
vnoremap " c""<Esc>P
vnoremap ' c''<Esc>P
vnoremap f c''''''<Esc>hhP
vnoremap F c""""""<Esc>hhP
vnoremap ( c()<Esc>P
vnoremap [ c[]<Esc>P
vnoremap { c{}<Esc>P
" Default value is clap
let g:dashboard_default_executive ='telescope'
let g:dashboard_custom_header = [
\'███╗░░██╗██╗░░░██╗██╗███╗░░░███╗',
\'████╗░██║██║░░░██║██║████╗░████║',
\'██╔██╗██║╚██╗░██╔╝██║██╔████╔██║',
\'██║╚████║░╚████╔╝░██║██║╚██╔╝██║',
\'██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║',
\'╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝',
      \ ]
nnoremap + <C-w>+
nnoremap - <C-w><
nnoremap _ <C-w>-
nnoremap = <C-w>>
nnoremap <Space>t <C-w>w
nnoremap <Space>r <C-w>W
