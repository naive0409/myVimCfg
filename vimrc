colorscheme industry

set cursorline
set number
set relativenumber
syntax on
set wrap
set wildmenu
set hlsearch
set tabstop=4
set ignorecase

set updatetime=100
set signcolumn=number

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'connorholyday/vim-snazzy'
Plug 'itchyny/vim-cursorword'
Plug 'preservim/nerdtree'
" Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.nvim' 
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

map <F2> <ESC>:NERDTree<CR>
map <F3> <ESC>:colorscheme 

let mapleader = "\<space>"

filetype plugin on

"colorscheme 1989
let g:SnazzyTransparent = 1

" coc extensions
let g:coc_global_extensions = [
\'coc-json',
\'coc-python',
\'coc-css',
\'coc-html',
\'coc-java',
\'coc-tsserver',
\'coc-clangd',
\'coc-tabnine',
\'coc-flutter',
\'coc-vimlsp']
"\'coc-marketplace',

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)



