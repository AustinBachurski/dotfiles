-- [ Colorscheme ]
--
function set_color_scheme(scheme)
    if not pcall(vim.cmd.colorscheme, scheme) then
        vim.cmd.colorscheme("habamax")
        vim.notify("Color scheme '" .. scheme .."' not found!")
    end
end

set_color_scheme("terafox")

