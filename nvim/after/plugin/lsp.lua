local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    -- nvim
	"lua_ls",
    "marksman",
	-- bash
	"bashls",
	-- C Lang
	"clangd",
	"cmake",
    -- golang
    "gopls",
    -- docker
    "dockerls",
    --- WEB
    "eslint",
    "cssls",
    "html",
    "tsserver",
    "ltex",
    -- Python
    "jedi_language_server",
    -- Rust
    "rust_analyzer",
})

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<S-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<S-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<S-y>'] = cmp.mapping.confirm({ select = true }),
  ["<S-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
