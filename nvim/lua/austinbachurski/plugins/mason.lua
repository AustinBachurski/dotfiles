require("mason").setup()
require("austinbachurski.plugins.lsp_specific_config.lua_ls")

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
    ensure_installed = {
        "bashls", 				-- Bash
        "clangd", 				-- C++
        "cmake", 				-- CMake
        "csharp_ls",            -- C#
        "cssls", 				-- CSS
        "eslint", 				-- JavaScript
        "html", 				-- HTML
        "jdtls", 				-- Java
        "intelephense",         -- PHP
        "jsonls", 				-- Json
        "lua_ls", 				-- Lua
        "marksman", 			-- Markdown
        "pyright", 				-- Python
        "rust_analyzer", 		-- Rust
        "taplo", 				-- TOML
        "tsgo", 			    -- TypeScript
        "sqlls", 				-- SQL
        "yamlls", 				-- YAML
        "zls", 				    -- Zig
    }
})

