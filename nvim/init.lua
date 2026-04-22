-- [ Plugins ]
--
local color_scheme = "https://github.com/EdenEast/nightfox.nvim.git"


-- [ Select Plugins ]
--
local plugins = {
	color_scheme,
}


-- [ Set Pack Options ]
--
local options = {}


-- [ Add Plugins ]
--
vim.pack.add(plugins, options)


-- [ User Settings ]
--
require("austinbachurski.options")
require("austinbachurski.keymap")

