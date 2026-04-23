-- [ Editor Settings ]
--
require("austinbachurski.keymap")
require("austinbachurski.options")
require("austinbachurski.diagnostic_options")


-- [ Plugin Sources ]
--
local color_scheme          = "https://github.com/EdenEast/nightfox.nvim.git"
local fzf                   = "https://github.com/ibhagwan/fzf-lua"
local gitsigns              = "https://github.com/lewis6991/gitsigns.nvim"
local treesitter_manager    = "https://github.com/romus204/tree-sitter-manager.nvim"
local neovim_lspconfig      = "https://github.com/neovim/nvim-lspconfig"
local mason                 = "https://github.com/mason-org/mason.nvim"
local mason_lspconfig       = "https://github.com/mason-org/mason-lspconfig.nvim"


-- [ Select Plugins ]
--
local pack_plugins = {
	color_scheme,
    fzf,
    gitsigns,
    treesitter_manager,
    neovim_lspconfig,
    mason,
    mason_lspconfig,
}


-- [ Add Plugins ]
--
vim.pack.add(pack_plugins)


-- [ Plugin Settings ]
--
require("austinbachurski.plugins.theme")
require("austinbachurski.plugins.fzf")
require("austinbachurski.plugins.gitsigns")
require("austinbachurski.plugins.treesitter_manager")
require("austinbachurski.plugins.mason")

