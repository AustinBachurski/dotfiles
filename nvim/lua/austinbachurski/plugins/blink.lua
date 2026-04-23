local blink = require("blink.cmp")

blink.setup({
    completion = {
        -- Auto show the documentation window in the completion menu.
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        },
    },

    fuzzy = {
        implementation = "prefer_rust",
        prebuilt_binaries = { download = true },
    },

    -- Auto show the documentation window after completion when entering args.
    signature = { enabled = true, },

})

vim.lsp.config['*'] = {
    capabilities = blink.get_lsp_capabilities(),
}

