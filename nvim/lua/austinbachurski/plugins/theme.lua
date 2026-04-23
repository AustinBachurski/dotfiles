local function set_color_scheme(scheme)
    if not pcall(vim.cmd.colorscheme, scheme) then
        vim.cmd.colorscheme("habamax")
        vim.notify("Color scheme '" .. scheme .."' was not found.")
    end
end

set_color_scheme("carbonfox")

local function set_transparent() -- set UI components to transparent
	local groups = {
		"Normal",
		"NormalNC",
		"EndOfBuffer",
		"NormalFloat",
		--"FloatBorder",
		"SignColumn",
		"StatusLine",
		"StatusLineNC",
		"TabLine",
		"TabLineFill",
		"TabLineSel",
		"ColorColumn",
	}
	for _, g in ipairs(groups) do
		vim.api.nvim_set_hl(0, g, { bg = "none" })
	end
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none", fg = "#000000" })
end

set_transparent()

