require("mason").setup()
require("austinbachurski.plugins.lsp_specific_config.clangd")
require("austinbachurski.plugins.lsp_specific_config.lua_ls")
require("austinbachurski.plugins.lsp_specific_config.python")
require("austinbachurski.plugins.lsp_specific_config.rust")

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
  ensure_installed = {
    "bashls",        -- Bash
    "clangd",        -- C++
    "cmake",         -- CMake
    "csharp_ls",     -- C#
    "cssls",         -- CSS
    "eslint",        -- JavaScript
    "html",          -- HTML
    "jdtls",         -- Java
    "intelephense",  -- PHP
    "jsonls",        -- Json
    "lua_ls",        -- Lua
    "marksman",      -- Markdown
    "pyright",       -- Python LSP
    "ruff",          -- Python Formatter/Linter
    "rust_analyzer", -- Rust
    "taplo",         -- TOML
    "tsgo",          -- TypeScript
    "sqlls",         -- SQL
    "yamlls",        -- YAML
    "zls",           -- Zig
  }
})
