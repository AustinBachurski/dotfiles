local signs = require("gitsigns")

signs.setup({
    on_attach = function(bufnr)
        vim.keymap.set({ NORMAL_MODE, VISUAL_MODE }, "<leader>gsh", signs.stage_hunk,     { buffer = bufnr, desc = "Stage Hunk" })
        vim.keymap.set({ NORMAL_MODE, VISUAL_MODE }, "<leader>gph", signs.preview_hunk,   { buffer = bufnr, desc = "Preview Hunk" })
    end
})

