
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect
let g:completion_matching_stragtegy_list = ['exact', 'substring', 'fuzzy']



nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :lua vim.lsp.diagnostic.set_loclist()<CR>




" Use LSP omni-completion in Rust files
autocmd Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc
"
"
" rustfmt on write using autoformat
" autocmd BufWrite * :Autoformat


" Loads lua config
lua << EOF
local on_attach = require'completion'.on_attach
require'lspconfig'.pyright.setup{ on_attach=on_attach }

require'lspconfig'.clangd.setup {
    on_attach = on_attach, 
    root_dir = function() return vim.loop.cwd() end 
}
require'lspconfig'.tsserver.setup{ on_attach=on_attach }
require'lspconfig'.vimls.setup{ on_attach=on_attach }
require'lspconfig'.rust_analyzer.setup{ on_attach=on_attach }
require'lspconfig'.bashls.setup{ on_attach=on_attach }
require'lspconfig'.gopls.setup{ 
    on_attach=on_attach,
    root_dir = function() return vim.loop.cwd() end
    }




local system_name
  system_name = "macOS"
local sumneko_root_path = '/Users/sandi/Documents/Git/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    },
  },
  on_attach = on_attach
}

EOF

fun! LspLocationList()
    lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
endfun


augroup THE_PRIMEAGEN_LSP
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
augroup END

