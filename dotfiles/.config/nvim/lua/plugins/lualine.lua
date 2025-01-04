-- lualine adds a bottom info status bar
return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "bwpge/lualine-pretty-path",
    },
    config = function()
        local colors = {
            blue = "#80a0ff",
            cyan = "#79dac8",
            black = "#080808",
            white = "#c6c6c6",
            red = "#ff5189",
            violet = "#d183e8",
            grey = "#303030",
        }

        local bubbles_theme = {
            normal = {
                a = { fg = colors.black, bg = colors.violet },
                b = { fg = colors.white, bg = colors.grey },
                c = { fg = colors.white },
            },

            insert = { a = { fg = colors.black, bg = colors.blue } },
            visual = { a = { fg = colors.black, bg = colors.cyan } },
            replace = { a = { fg = colors.black, bg = colors.red } },

            inactive = {
                a = { fg = colors.white, bg = colors.black },
                b = { fg = colors.white, bg = colors.black },
                c = { fg = colors.white },
            },
        }

        require("lualine").setup({
            options = {
                theme = bubbles_theme,
                component_separators = "",
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
                lualine_b = { "branch", "filename" },
                lualine_c = {
                    "%=", --[[ add your center compoentnts here in place of this comment ]]
                    "searchcount",
                },
                lualine_x = {},
                lualine_y = { "filetype" },
                lualine_z = {
                    {
                        "location",
                        separator = { right = "" },
                        left_padding = 2,
                    },
                },
            },
            inactive_sections = {
                lualine_a = {
                    {
                        "pretty_path",
                        icon_show = true,
                        icon_show_inactive = true,
                        directories = {
                            enable = true, -- show directory in component
                            shorten = false, -- whether or not to shorten directories, see max_depth
                            exclude_filetypes = { "help", "NvimTree" }, -- do not show directory for these filetypes
                        },
                    },
                },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = {},
        })
    end,
}
