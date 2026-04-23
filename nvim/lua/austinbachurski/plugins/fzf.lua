local fzf = require("fzf-lua")

fzf.setup({})


-- [ Keybinds ]
--
vim.keymap.set(NORMAL_MODE, "<leader>ff", fzf.files)        -- Fuzzy file finder.
vim.keymap.set(NORMAL_MODE, "<leader>fg", fzf.live_grep)    -- Grep file finedr.
vim.keymap.set(NORMAL_MODE, "<leader>fb", fzf.buffers)      -- Fuzzy buffer finder.
vim.keymap.set(NORMAL_MODE, "<leader>fh", fzf.help_tags)    -- Fuzzy find in NeoVim help.

