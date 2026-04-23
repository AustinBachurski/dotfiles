-- [ Leader Key ]
--
vim.g.mapleader = " "


-- [ General Keymaps ]
--
NORMAL_MODE = 'n'
VISUAL_MODE = 'v'

local bind = vim.keymap.set

bind(NORMAL_MODE,   "<leader>ft",   vim.cmd.Ex)                 -- Open netrw.
bind(VISUAL_MODE,   "J",            ":m '>+1<CR>gv=gvzz")       -- Move selected lines up.
bind(VISUAL_MODE,   "K",            ":m '<-2<CR>gv=gvzz")       -- Move selected lines down.
bind(VISUAL_MODE,   "<",            "<gv")                      -- Move selected content left.
bind(VISUAL_MODE,   ">",            ">gv")                      -- Move selected content right.
bind(NORMAL_MODE,   "<C-y>",        "gg\"+yG")                  -- Yank the entire buffer into the system clipboard.
bind(VISUAL_MODE,   "<leader>d",    "\"_d")                     -- Delete highlighted text without yanking.
bind(VISUAL_MODE,   "<leader>p",    "\"_dP")                    -- Paste over highlighted text without yanking.
bind(NORMAL_MODE,   "n",            "nzz")                      -- Go to next search entry and center screen on said entry.
bind(NORMAL_MODE,   "N",            "Nzz")                      -- Go to previous search entry and center screen on said entry.
bind(NORMAL_MODE,   "<C-d>",        "<C-d>zz")                  -- Jump down and center screen.
bind(NORMAL_MODE,   "<C-u>",        "<C-u>zz")                  -- Jump up and center screen.
bind(NORMAL_MODE,   "<leader>/",    vim.cmd.nohl)               -- Clear highlight from searching.


-- [ LSP Keymaps ]
--
vim.api.nvim_create_autocmd("LspAttach", {
    desc = "LSP Keybinds",
    callback = function(event)
        local lsp_keybind = function(keys, action, description)
            vim.keymap.set(
                NORMAL_MODE,
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

