local format_group = vim.api.nvim_create_augroup("RustFormatOnSave", { clear = true })

vim.lsp.config("rust_analyzer", {
   settings = {
      ["rust-analyzer"] = {
         check = {
            command = "clippy",
         },
      },
   },
})

vim.api.nvim_create_autocmd("BufWritePre", {
   pattern = "*.rs",
   group = format_group,
   callback = function()
      vim.lsp.buf.format({ async = false })
      vim.cmd("normal! zH")
   end,
})
