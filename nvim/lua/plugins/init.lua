vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/folke/tokyonight.nvim",

    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        version = "main"
    },

    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
})

require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>")

require("plugins.lualine")
require("plugins.treesitter")
require("plugins.telescope")

require("mason").setup()
