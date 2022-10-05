-- LSP Config

-- Python
require'lspconfig'.pyright.setup{on_attach=require'cmp'.on_attach}
require'lspconfig'.pylsp.setup{on_attach=require'cmp'.on_attach}

-- Lua
require'lspconfig'.sumneko_lua.setup{on_attach=require'cmp'.on_attach}


-- TypeScript
require'lspconfig'.tsserver.setup{on_attach=require'cmp'.on_attach}

-- Rust
require'lspconfig'.rust_analyzer.setup{on_attach=require'cmp'.on_attach}

-- Golang
require'lspconfig'.gopls.setup{on_attach=require'cmp'.on_attach}
