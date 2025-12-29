vim.pack.add({
    "https://github.com/hrsh7th/cmp-nvim-lsp",
    "https://github.com/hrsh7th/cmp-buffer",
    "https://github.com/hrsh7th/cmp-path",
    "https://github.com/hrsh7th/cmp-cmdline",
    "https://github.com/hrsh7th/nvim-cmp",
    "https://github.com/hrsh7th/cmp-vsnip",
    "https://github.com/hrsh7th/vim-vsnip"
})

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require("cmp")

cmp.setup({
    preselect = cmp.PreselectMode.None,
    completion = {
        completeopt = "menu,menuone,noselect"
    },
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping({
            i = function(fallback)
                if cmp.visible() and cmp.get_active_entry() then
                    cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                else
                    fallback()
                end
            end,
            s = cmp.mapping.confirm({ select = true }),
            c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
        }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                if #cmp.get_entries() == 1 then
                    cmp.confirm({ select = true })
                else
                    cmp.select_next_item()
                end
                --[[ Replace with your snippet engine (see above sections on this page)
            elseif snippy.can_expand_or_advance() then
                snippy.expand_or_advance() ]]
            elseif has_words_before() then
                cmp.complete()
                if #cmp.get_entries() == 1 then
                    cmp.confirm({ select = true })
                end
            else
                fallback()
            end
        end, { "i", "s" })
    }),
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

