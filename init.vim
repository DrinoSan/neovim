let mapleader =" "

source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/plug-config/gitgutter.vim
source ~/.config/nvim/plug-config/telescope.vim
source ~/.config/nvim/plug-config/lsp.vim

syntax on
syntax enable


" highlight ColorColumn ctermbg=0 guibg=lightgrey
nnoremap <leader>u :UndotreeShow<CR>

set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set smartcase
set noswapfile
set nobackup
set ic
set undodir=~/.var/app/io.neovim.nvim
set undofile
set scrolloff=8
set updatetime=30


"let g:gruvbox_contrast_dark = 'hard'
set background=dark
"colorscheme gruvbox


" highlight Normal guibg=none
" set go=a
set mouse=a
set clipboard+=unnamedplus
set title

 highlight Pmenu ctermbg=gray guibg=gray

""""""""""""""""""""""""""""""""""""""""""
set termguicolors
" set highlight Comment guifg=green


nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>


" Nice Remap
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG"


" Opening Explorer
" with d new folder
" with % new file
nnoremap <leader>pv :Ex!<CR>

" in VISUAL mode durch die zeilen gehen
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright


" " Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

nnoremap <C-k> :cprev<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <leader>q :call ToggleQFList(0)<CR>
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

let g:the_primeagen_qf_l = 0
let g:the_primeagen_qf_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:the_primeagen_qf_g == 1
            let g:the_primeagen_qf_g = 0
            cclose
        else
            let g:the_primeagen_qf_g = 1
            copen
        end
    else
        if g:the_primeagen_qf_l == 1
            let g:the_primeagen_qf_l = 0
            lclose
        else
            let g:the_primeagen_qf_l = 1
            lopen
        end
    endif
endfun

    """"""""""""""""""""""""""""""""""""""""



" Search and delete
nnoremap <expr> <leader>ds ":%s/" . input("Delete: ") . "//g\<CR>"

" Search and rename
nnoremap <expr> <leader>rn ":%s/" . input("Rename: ") . "/" . input("New name: ") . "/g\<CR>"


lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "go",
      "python",
      "cpp",
      "c"
      },
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
