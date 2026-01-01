vim.keymap.set("n", "<F5>", ":!python3 %<CR>", {})
vim.keymap.set("n", "<F6>", ":!python3 % ", {})
local root_markers = vim.lsp.config["pyright"].root_markers

root_markers[#root_markers+1] = ".venv"


vim.lsp.config('pyright', {
    root_markers = root_markers
})
