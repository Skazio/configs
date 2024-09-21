return {
    'Mofiqul/vscode.nvim',
    config = function ()
        vim.cmd.colorscheme('vscode')
        vim.cmd([[highlight EndOfBuffer guifg=#ffffff]])
    end
}

