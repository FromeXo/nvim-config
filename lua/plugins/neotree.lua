vim.pack.add({
    {
        src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
        version = vim.version.range('3')
    },
    -- dependencies
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
})

require("neo-tree").setup({
    window = {
        mappings = {
            ["w"] = "open_vsplit",
            ["-"] = "toggle_node",
            ["#"] = "set_root",
            ["h"] = "toggle_hidden",
            ["p"] = { "toggle_preview", config = { use_float = true } },
            ["l"] = "focus_preview",
            ["s"] = "show_help",
            ["sc"] = "order_by_created",
            ["sd"] = "order_by_diagnostics",
            ["sg"] = "order_by_git_status",
            ["sm"] = "order_by_modified",
            ["sn"] = "order_by_name",
            ["ss"] = "order_by_size",
            ["st"] = "order_by_type",

        }
    },
    source_selector = {
        truncation_character = "…",
        winbar = false,
        statusline = true,

    },
    event_handlers = {
        { event = "file_open_requested",
          handler = function()
              vim.cmd("Neotree close")
          end},

    }
})
