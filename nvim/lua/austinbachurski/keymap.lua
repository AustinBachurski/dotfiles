-- [ Leader Key ]
--
vim.g.mapleader = " "


-- [ General Keymaps ]
--
local normal_mode = 'n'
local visual_mode = 'v'

local bind = vim.keymap.set

bind(normal_mode,   "<leader>ft",   vim.cmd.Ex)                 -- Open netrw.
bind(visual_mode,   "J",            ":m '>+1<CR>gv=gvzz")       -- Move selected lines up.
bind(visual_mode,   "K",            ":m '<-2<CR>gv=gvzz")       -- Move selected lines down.
bind(visual_mode,   "<",            "<gv")                      -- Move selected content left.
bind(visual_mode,   ">",            ">gv")                      -- Move selected content right.
bind(normal_mode,   "<C-y>",        "gg\"+yG")                  -- Yank the entire buffer into the system clipboard.
bind(visual_mode,   "<leader>d",    "\"_d")                     -- Delete highlighted text without yanking.
bind(visual_mode,   "<leader>p",    "\"_dP")                    -- Paste over highlighted text without yanking.
bind(normal_mode,   "n",            "nzz")                      -- Go to next search entry and center screen on said entry.
bind(normal_mode,   "N",            "Nzz")                      -- Go to previous search entry and center screen on said entry.
bind(normal_mode,   "<C-d>",        "<C-d>zz")                  -- Jump down and center screen.
bind(normal_mode,   "<C-u>",        "<C-u>zz")                  -- Jump up and center screen.
bind(normal_mode,   "<leader>/",    vim.cmd.nohl)               -- Clear highlight from searching.


-- [ LSP Keymaps ]
--
vim.api.nvim_create_autocmd("LspAttach", {
    desc = "LSP Keybinds",
    callback = function(event)
        local lsp_keybind = function(keys, action, description)
            vim.keymap.set(
                normal_mode,
                keys,
                action,
                { buffer = event.buf, desc = "LSP: " .. description }
            )
        end

        lsp_keybind("gd",           vim.lsp.buf.definition,         "goto definition")
        lsp_keybind("gD",           vim.lsp.buf.declaration,        "goto declaration")
        lsp_keybind("K",            vim.lsp.buf.hover,              "hover documentation")
        lsp_keybind("dn",           vim.diagnostic.open_float,      "open diagnostics")
        lsp_keybind("<leader>rn",   vim.lsp.buf.rename,             "project level rename")
        lsp_keybind("<leader>ca",   vim.lsp.buf.code_action,        "code action")
    end,
})

