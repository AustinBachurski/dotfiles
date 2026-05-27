local format_group = vim.api.nvim_create_augroup("RustFormatOnSave", { clear = true })

vim.lsp.config('jdtls', {
  cmd = { 'jdtls' },
  root_markers = { '.git', 'mvnw', 'gradlew', 'build.xml' },
  settings = {
    java = {
      format = {
        settings = {
          -- Optional: Point to an Eclipse formatter XML file.
          -- url = vim.fn.stdpath('config') .. "/eclipse-formatter.xml",
        }
      },
      compiler = {
        pb = {
          deadCode = "error",
          unusedLocal = "error",
          nullReference = "error",
        }
      }
    }
  }
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.java",
  group = format_group,
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
