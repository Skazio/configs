return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = {
        'nvim-lua/plenary.nvim'},
        config = function ()
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<C-p>', builtin.find_files, {})

            vim.keymap.set('n', '<M-r>', builtin.live_grep, {})
            vim.keymap.set('n', '<C-f>', function() builtin.grep_string({ search="", only_sort_text=true }) end)
        end
    }

