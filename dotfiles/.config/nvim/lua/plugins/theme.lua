-- This is where I install my current Nvim theme
return {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("vscode")
        vim.cmd([[highlight EndOfBuffer guifg=#ffffff]])
    end,
}
