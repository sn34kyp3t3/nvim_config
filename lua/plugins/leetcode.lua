return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html markdown", -- Ensures parsers for problem buffers (add lua if filetype errors persist)
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-telescope/telescope.nvim", -- LazyVim includes this; forces picker priority
    },
    opts = {
        lang = "python", -- Default language
        picker = { provider = "telescope" }, -- Explicitly use Telescope over fzf-lua to bypass shell errors
        plugins = {
            non_standalone = true, -- Allows :Leet with open buffers, reducing filetype conflicts
        },
        -- cn = { enabled = false },  -- Uncomment if using leetcode.cn
        -- Add keymaps or paths as needed, e.g., keymaps = { ... }
    },
}
