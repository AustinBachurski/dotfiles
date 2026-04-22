local fzf = require("fzf-lua")

fzf.setup({})

vim.keymap.set("n", "<leader>ff", fzf.files)        -- Fuzzy file finder.
vim.keymap.set("n", "<leader>fg", fzf.live_grep)    -- Grep file finedr.
vim.keymap.set("n", "<leader>fb", fzf.buffers)      -- Fuzzy buffer finder.
vim.keymap.set("n", "<leader>fh", fzf.help_tags)    -- Fuzzy find in NeoVim help.

