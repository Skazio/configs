return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = { "TabEnter" },
    opts = {
        options = {
            mode = "tabs",

            themable = true,

            always_show_bufferline = false,
            show_close_icon = false,
            show_buffer_close_icons = false,
            show_duplicate_prefix = false,
            show_buffer_icons = false,
            show_tab_indicators = false,

            indicator = {
                icon = "",
                style = "icon",
            },
            separator_style = { "", "" },
            modified_icon = "",

            close_command = nil,
            right_mouse_command = nil,

            name_formatter = function(buf)
                return "Tab n°" .. tostring(vim.api.nvim_tabpage_get_number(buf.tabnr))
            end,
        },
    },
}
