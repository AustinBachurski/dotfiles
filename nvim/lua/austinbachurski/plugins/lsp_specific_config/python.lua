local format_group = vim.api.nvim_create_augroup("PythonFormatOnSave", { clear = true })
local python_root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" }

vim.lsp.config("ruff", {
   cmd = { "ruff", "server" },
   filetypes = { "python" },
   root_markers = python_root_markers,
   init_options = {
      settings = {
         logLevel = "error",
      },
   },
})

vim.lsp.config("pyright", {
   cmd = { "pyright-langserver", "--stdio" },
   filetypes = { "python" },
   root_markers = python_root_markers,
   settings = {
      pyright = {
         -- Turn this off so it doesn't conflict with Ruff's import management.
         disableOrganizeImports = true,
      },
      python = {
         analysis = {
            -- Let Ruff handle lint diagnostics; Pyright will focus on types
            ignore = { '*' },
         },
      },
   },
})

vim.api.nvim_create_autocmd("BufWritePre", {
   pattern = "*.py",
   group = format_group,
   callback = function()
      vim.lsp.buf.format({ async = false })
      vim.cmd("normal! zH")
   end,
})
