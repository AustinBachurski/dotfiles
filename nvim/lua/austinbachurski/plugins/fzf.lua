local fzf = require("fzf-lua")

fzf.setup({})


-- [ Keybinds ]
--
local normal_mode = 'n'

vim.keymap.set(normal_mode, "<leader>ff", fzf.files)        -- Fuzzy file finder.
vim.keymap.set(normal_mode, "<leader>fg", fzf.live_grep)    -- Grep file finedr.
vim.keymap.set(normal_mode, "<leader>fb", fzf.buffers)      -- Fuzzy buffer finder.
vim.keymap.set(normal_mode, "<leader>fh", fzf.help_tags)    -- Fuzzy find in NeoVim help.

