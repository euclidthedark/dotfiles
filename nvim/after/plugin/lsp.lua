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
    "ts_ls",
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
  ['<Ctr-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Ctr-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Ctr-y>'] = cmp.mapping.confirm({ select = true }),
  ["<Ctr-Space>"] = cmp.mapping.complete(),
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

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.skip_server_setup({'rust_analyzer'})

lsp.setup()

local rust_tools = require('rust-tools')

rust_tools.setup({
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, {buffer = bufnr})
    end
  }
})

vim.diagnostic.config({
    virtual_text = true
})
