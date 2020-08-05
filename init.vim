set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

set laststatus=2
set noshowmode
set bg=dark

call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'

" IDE
" Plugin para ver el arbol de archivos del directorio
Plug 'scrooloose/nerdtree'
" Plugin para moverte entre ventanas de vim
Plug 'christoomey/vim-tmux-navigator'
" Plugin para soporte de Vuejs
" Plug 'posva/vim-vue'
" Buscador de archivos
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Colores para JavaScript
Plug 'pangloss/vim-javascript'
" Autocompletado
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Ayudas visuales para nerdtree
" Ver cambios en git
Plug 'Xuyuanp/nerdtree-git-plugin'
" ---
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Para comentar en modo visual
Plug 'scrooloose/nerdcommenter'
" Plugin para mejorar la barra inferior de vim
Plug 'vim-airline/vim-airline'
" Autocompletado de corchetes, paréntesis, etc
Plug 'raimondi/delimitmate'
" Mejora de indentado
Plug 'yggdroot/indentline'
" Test en vim (falta por saber como traer el archivo de configuración y
" ejecutar con el binario de mocha)
"Plug 'geekjuice/vim-mocha'
" Ayuda en git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Plugins para Vuejs
Plug 'leafOfTree/vim-vue-plugin'

" Ayuda para búsquedas (prueba)
Plug 'cloudhead/neovim-fuzzy'

" JsDocs
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}
" Plugin para mantener la sesión de los archivos modificados
Plug 'thaerkh/vim-workspace'

" Reabre los archivos en el punto donde los dejaste
Plug 'farmergreg/vim-lastplace'

" Pone el código bonito
Plug 'zeekay/vim-beautify'

" Pug
Plug 'digitaltoad/vim-pug'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>p :Files<CR>
nmap <Leader>ff :FuzzyOpen<CR>
nmap <Leader>fa :FuzzyGrep<CR>

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>gg :GitGutterLineNrHighlightsToggle<CR>

vmap ++ <Plug>NERDCommenterToggle

" NERDTree tabs comfig
nmap <Leader>tt :tabs<CR>
nmap <Leader>tf :tabfirst<CR>
nmap <Leader>tl :tablast<CR>
nmap <Leader>tn :tabn<CR>
nmap <Leader>tp :tabp<CR>

" NERDTreee highlight config
" Sincronizar archivo abierto con NERDTree
"function! IsNERDTreeOpen()
  "return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"endfunction

"function! SyncTree()
  "if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    "NERDTreeFind
    "wincmd
  "endif
"endfunction

"autocmd BufEnter * call SyncTree()

" coc config
"
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json'
  \ ]

" Test config
"let g:mocha_js_command = "!PORT=8999 NODE_ENV=test mocha {spec}"
"let test#javascript#mocha#file_pattern = '.*\.js'

" Workspace config
nnoremap <leader>s :ToggleWorkspace<CR>


