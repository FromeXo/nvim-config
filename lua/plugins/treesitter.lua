vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter"
})

require("nvim-treesitter").setup({
    install_dir = vim.fn.stdpath("data") .. "/site",
    auto_install = true,
    ensure_installed = {"c", "vim", "vimdoc", "query", "php", "rust"},
    highlight = {
        enable = true
    }
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = { '<filetype>' },
    callback = function() vim.treesitter.start() end,
})
