local format_group = vim.api.nvim_create_augroup("LuaFormatOnSave", { clear = true })

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" }, }, -- Silences the 'vim' global warning.
            workspace   = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file('*', true),
            },
        },
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.lua",
    group = format_group,
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})
