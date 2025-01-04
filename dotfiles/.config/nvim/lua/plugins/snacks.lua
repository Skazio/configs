-- Snacks is a collection of small plugin
-- quickfile renders a file as fast as possible when doing `vim someFile.txt`
-- For instance, it loads the content of the file without waiting for LSP
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        quickfile = { enabled = true },
    },
}
