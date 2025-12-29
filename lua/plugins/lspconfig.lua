vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason-lspconfig.nvim"
})

require("mason-lspconfig").setup({
    automatic_enable = true,
    ensure_installed = {
        "lua_ls"
    }
})
