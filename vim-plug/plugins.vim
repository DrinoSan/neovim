" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'bling/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
"Plug 'airblade/vim-rooter'
Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-fugitive'
Plug 'gruvbox-community/gruvbox'
Plug 'mbbill/undotree'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
"Plug 'nvim-lua/lsp-status.nvim'
"Plug 'nvim-lua/diagnostic-nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }
call plug#end()


