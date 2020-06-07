""my plugins
call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

" " plugins to autocomplete
  "Plug 'ncm2/ncm2'
  "Plug 'roxma/nvim-yarp'
  "" enable ncm2 for all buffers
  "autocmd BufEnter * call ncm2#enable_for_buffer()
  "" IMPORTANT: :help Ncm2PopupOpen for more information
  "set completeopt=noinsert,menuone,noselect
  "" NOTE: you need to install completion sources to get completions. Check
  "" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
  "Plug 'ncm2/ncm2-bufword'
  "Plug 'ncm2/ncm2-path'
  
  ""end of autocomplete
  Plug 'dense-analysis/ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'preservim/nerdtree'

  Plug 'dart-lang/dart-vim-plugin'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  ""Plug 'natebosch/vim-lsc'
  ""Plug 'natebosch/vim-lsc-dart'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  """Plug 'vim-airline/vim-airline-themes'
call plug#end()


" Coc config
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"" autocomplete with natebosh"
""llet g:lsc_auto_map = v:trueet g:lsc_auto_map = v:true

colorscheme gruvbox
set background=dark

set hidden

set rnu

set inccommand=split

nnoremap <c-p> :Files<cr> 
nnoremap <c-f> :Ag<space> 


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nmap <F6> :NERDTreeToggle<CR>

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set encoding=utf-8

set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

let python_highlight_all=1
syntax on

au BufNewFile *.py
    \ set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

set clipboard+=unnamedplus

let mapleader="\<space>"

"utils vim shortcuts
nnoremap <leader>; A;<esc>
nnoremap <leader>f :CocList --input=flutter commands<cr>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <C-S> :w<cr>
inoremap <C-S> <esc>:w<cr>

" Sweet Sweemt FuGITive
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gd :G diff<CR>
nmap <leader>gs :G<CR>

""alt + arows from sublime
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" copy and past shortcuts
vnoremap <leader>y :!xclip -f -sel clip<CR>
map <leader>p mz:-lr !xclip -o -sel clip<CR>`z 

"" Resize window
nnoremap <silent> <Leader>k :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>j :exe "resize " . (winheight(0) * 2/3)<CR>

nnoremap <silent> <Leader>l :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>h :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
