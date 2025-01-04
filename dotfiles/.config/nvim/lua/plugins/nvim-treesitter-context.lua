-- When scrolling, shows the context (ie. function definition, if/for statemet etc.)
return {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPre", "BufNewFile" },
}
