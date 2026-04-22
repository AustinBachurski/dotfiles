local set = vim.opt

-- [ Visuals ]
--
set.colorcolumn 	= "80"		-- Show vertical bar at line length N.
set.cursorline		= true		-- Highlight current line.
set.wrap		    = false		-- Do not wrap lines.
set.number		    = true		-- Current line number at cursor line.
set.relativenumber	= true		-- Relative line numbers.
set.scrolloff		= 8		    -- Keep N lines at the top/bottom of the screen when scrolling.
set.sidescrolloff	= 8		    -- Keep N lines at the left/right of the screen when scrolling.
set.updatetime      = 250       -- Delay after stopping input for CursorHold events to trigger, i.e. LSP info.
set.errorbells      = false     -- No beep/ding on error.
set.visualbell      = true      -- Visual "beep" instead of audible.


-- [ Indentation ]
--
set.tabstop		    = 4		    -- Tab width.
set.shiftwidth		= 4		    -- Level of auto indentation.
set.softtabstop		= 4		    -- Tab stops every N columns, pressing tab jumps to a column instead of inserting a tab.
set.expandtab		= true		-- Use spaces instead of tabs.
set.smartindent		= true		-- Automatically indent based on context.
set.autoindent		= true		-- Indent based on the current line when starting a new line.


-- [ Search ]
--
set.hlsearch 		= true		-- Highlight all search matches.
set.incsearch		= true		-- Highlight matches as text is entered.
set.ignorecase		= true		-- Case insensitive search.
set.smartcase		= true		-- Case sensitive if search string contains an uppercase letter.


-- [ Undo ]
--
set.undofile        = true      -- Keep undo history on close, NeoVim does NOT delete these files, EVER.

