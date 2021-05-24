" .config/nvim/lua/sandiscope/sandi.lua
lua require("sandiscope.sandi")
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>vrc :lua require('sandiscope.sandi').search_dotfiles()<CR>
nnoremap <leader>m :lua require('telescope.builtin').marks()<CR>
nnoremap <leader>gc :lua require('telescope.builtin').git_branches()<CR>
nnoremap <leader>gx :lua require('telescope.builtin').git_status()<CR>
nnoremap <leader>mp :lua require('telescope.builtin').man_pages()<CR>


