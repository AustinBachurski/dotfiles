-- [ Editor Settings ]
--
require("austinbachurski.options")
require("austinbachurski.keymap")


-- [ Plugin Sources ]
--
local color_scheme          = "https://github.com/EdenEast/nightfox.nvim.git"
local fzf                   = "https://github.com/ibhagwan/fzf-lua"
local treesitter_manager    = "https://github.com/romus204/tree-sitter-manager.nvim"


-- [ Select Plugins ]
--
local pack_plugins = {
	color_scheme,
    fzf,
    treesitter_manager,
}

-- [ Add Plugins ]
--
vim.pack.add(pack_plugins)


-- [ Plugin Settings ]
--
require("austinbachurski.plugins.theme")
require("austinbachurski.plugins.fzf")
require("austinbachurski.plugins.treesitter_manager")

