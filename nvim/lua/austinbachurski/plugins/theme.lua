local function set_color_scheme(scheme)
  if not pcall(vim.cmd.colorscheme, scheme) then
    vim.cmd.colorscheme("habamax")
    vim.notify("Color scheme '" .. scheme .. "' was not found.")
  end
end

--set_color_scheme("carbonfox")
set_color_scheme("terafox")

local function set_transparecy()
  local highlight_groups = {
    "Normal",
    "NormalNC",
    "EndOfBuffer",
    "NormalFloat",
    "SignColumn",
    "StatusLine",
    "StatusLineNC",
    "TabLine",
    "TabLineSel",
  }

  for _, group in ipairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end

  vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none", fg = "#000000" })
end

set_transparecy()
