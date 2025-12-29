--[[#########################
             Misc
--#########################]]

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Clipboard integration
vim.g.clipboard = "wl-copy"

-- Virtualedit means that the cursor can go there it's no characters
-- Allow virual editing in visual block mode
vim.opt.virtualedit = "block"

--[[#########################
            Editor
--#########################]]

-- I-Beam cursor
vim.opt.guicursor = "n-v-c-i-ci-ve:ver25"

-- Indentation
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Word-wrap
vim.opt.wrap = false

-- Min num of rows to keep above/below the cursor
vim.opt.scrolloff = 8

--[[#########################
             UI
--#########################]]

-- Enable 24-bit RGB color
vim.opt.termguicolors = true

-- Show line numbers
vim.opt.number = true

-- On vertical split, put the new window to the right
vim.opt.splitright = true

-- On horozontal split, put the new window below
vim.opt.splitbelow = true

-- Preview "search & replace" in seperat split window
vim.opt.inccommand = "split"

--[[#########################
          Diagnostic
--#########################]]
vim.diagnostic.config({
    virtual_lines = true
})
