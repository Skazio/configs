-- Mason provides a interface to easily install LSP, DAP, Formatter, Linter
-- servers in Neovim special paths to have the executables ready
return {
    "williamboman/mason.nvim",
    opts = {
        ui = {
            keymaps = {
                uninstall_package = "x",
            },
        },
    },
}
