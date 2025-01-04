-- alpha is a dashboard that opens when opening nvim without a file or directory
-- We can define the looks and some shortcuts

return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            "                                         AAAAAAAA                                   AAAAAAAAAAAAA   ",
            "                                         AAAAAAA                                   AAAAAAAAAAAAAAAAA",
            "                                        AAAAAAAA                                  AAAAAAAAAAAAAAAAAA",
            "     AAAAAAA AAAAAAAA     AAAAAAAA      AAAAAAAAAAAAAAA     AAAAAAA AAAAAAA AAAA            AAAAAAAA",
            "  AAAAAAAAAAAAAAAAAA   AAAAAAAAAAAAAA   AAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA AAAAAAAA",
            " AAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA AAAAAAAA",
            "AAAAAAAAA  AAAAAAAAAAAAAAAAA   AAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA  AAAAAAA ",
            "AAAAAAAA    AAAAAAA AAAAAAA     AAAAAAAAAAAAAAA    AAAAAAAAAAAAAAAA        AAAAAAAAAAAAAAA  AAAAAAA ",
            "AAAAAAA     AAAAAAA AAAAAAA     AAAAAAAAAAAAAA     AAAAAAAAAAAAAAA       AAAAAAAAAAAAAAAAA AAAAAAAA ",
            "AAAAAAAA   AAAAAAAA AAAAAAA   AAAAAAAAAAAAAAAAA   AAAAAAAAAAAAAAAA      AAAAAAAA  AAAAAAAA          ",
            "AAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAAA AAAAAAA      AAAAAAAA  AAAAAAAAA          ",
            " AAAAAAAAAAAAAAAAA   AAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAA  AAAAAAA      AAAAAAAA  AAAAAAAA           ",
            "   AAAAAAAAAAAAAAA      AAAAAAAAA     AAAAAAAAAAAAAAAA   AAAAAAAA      AAAAAAAA  AAAAAAAA           ",
            "          AAAAAAAA                                                                                  ",
            "          AAAAAAAA                                                                                  ",
            "          AAAAAAAA                                                                                  ",
        }

        dashboard.section.footer.val = "🚀 Blazingly fast"

        dashboard.section.buttons.val = {
            dashboard.button("o", "  Open current working directory", ":cd `pwd`<CR>:NvimTreeOpen<CR>"),

            dashboard.button("⠀", "", ""),

            dashboard.button("f", "󰡄  Open front-end", ":cd /Users/jarod/dev/qobra/ui<CR>:NvimTreeOpen<CR>"),
            dashboard.button("a", "  Open admin", ":cd /Users/jarod/dev/qobra/ui-admin<CR>:NvimTreeOpen<CR>"),
            dashboard.button("b", "  Open back-end", ":cd /Users/jarod/dev/qobra/api<CR>:NvimTreeOpen<CR>"),
            dashboard.button("t", "  Open tests", ":cd /Users/jarod/dev/qobra/tests<CR>:NvimTreeOpen<CR>"),

            dashboard.button("⠀", "", ""),

            dashboard.button("q", "󰅙  Quit vim", ":qa!<CR>"),
        }

        dashboard.section.header.opts.hl = "Include"
        dashboard.section.footer.opts.hl = "@type"

        alpha.setup(dashboard.opts)

        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
