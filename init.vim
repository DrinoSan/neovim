let mapleader =" "

source ~/.config/nvim/vim-plug/plugins.vim
 " source ~/.config/nvim/plug-config/coc.vim
" source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/plug-config/gitgutter.vim
source ~/.config/nvim/plug-config/telescope.vim
source ~/.config/nvim/plug-config/lsp.vim
" source ~/.config/nvim/plug-config/sneak.vim

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
set signcolumn
set colorcolumn=80
" hi ColorColumn ctermbg=red guibg=lightgrey
" set updatetime=50


let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox
" lua require'lspconfig'.jedi_language_server.setup{  }


" highlight Normal guibg=none
let g:airline_theme="deus"
" set go=a
set mouse=a
set clipboard+=unnamedplus
set title

" highlight Pmenu ctermbg=gray guibg=gray

""""""""""""""""""""""""""""""""""""""""""
set termguicolors
" set highlight Comment guifg=green


" Für VIMINSPECTOR
" let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector


"Bujo
" vim TODO
nmap <leader>tu <Plug>BujoChecknormal
nmap <leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"
let g:bujo#window_width = 60


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

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    if has('nvim')
        let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
    else
        let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
    endif

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!




    """"""""""""""""""""""""""""""""""""""""
