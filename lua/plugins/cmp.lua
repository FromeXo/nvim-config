vim.pack.add({
    "https://github.com/hrsh7th/cmp-nvim-lsp",
    "https://github.com/hrsh7th/cmp-buffer",
    "https://github.com/hrsh7th/cmp-path",
    "https://github.com/hrsh7th/cmp-cmdline",
    "https://github.com/hrsh7th/nvim-cmp",
    "https://github.com/hrsh7th/cmp-vsnip",
    "https://github.com/hrsh7th/vim-vsnip"
})

local cmp = require("cmp")

cmp.setup({
    preselect = cmp.PreselectMode.None,
    completion = {
        completeopt = "menu,menuone,noselect"
    },
    mapping = {
        ["<Esc>"] = cmp.mapping({
            i = function(fallback)
                if cmp.visible and cmp.get_selected_index() then
                    cmp.mapping.aborat()
                else
                    fallback()
                end
            end
        }),
        ["§"] = cmp.mapping.select_next_item(),

        ["<CR>"] = cmp.mapping({
            i = function(fallback)
                if cmp.visible and cmp.get_selected_entry() then
                    cmp.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = false
                    })
                else
                    fallback()
                end
            end
        }),
        ["<Tab>"] = cmp.mapping({
            i = function(fallback)
                if cmp.visible and cmp.get_selected_index() then
                    if #cmp.get_entries() == 1 then
                        cmp.confirm()
                    else
                        cmp.select_prev_item()
                    end
                else
                    fallback()
                end
            end
        })
    },
    snippet = {
        expand = function(args) vim.fn["vsnip#anonymous"](args.body) end
    },
    window = {
        completion = cmp.config.window.bordered()
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "path" }
    }, {
      { name = 'buffer' },
    })
})

