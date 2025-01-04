-- vim.opt.shell = "/usr/bin/fish" -- Linux
vim.opt.shell = "/opt/homebrew/bin/fish" -- MacOs

vim.opt.termguicolors = true
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" }) -- background transparent
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "NONE" }) -- floating window background transparent
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "SpellBad", { sp = "green", undercurl = true, blend = 100, nocombine = true })
vim.api.nvim_set_hl(0, "SpellCap", {})
vim.api.nvim_set_hl(0, "SpellRare", {})
vim.o.showmode = false
vim.opt.cmdheight = 0 -- Maybe there's a better way to not have "Press Enter" message

vim.opt.guicursor = "n-c:block," .. "i-ci-ve:ver25," .. "v-r-cr:hor20," .. "o:hor50," .. "i:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor," .. "sm:block-blinkwait175-blinkoff150-blinkon175"

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "󰠠",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
            [vim.diagnostic.severity.HINT] = "Question",
            [vim.diagnostic.severity.INFO] = "Search",
        },
    },
})

vim.opt.updatetime = 50

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn:append({ "74", "81", "89" })

vim.opt.wrap = false
vim.opt.cursorline = true

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣", extends = "…", precedes = "…" }

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

vim.opt.spell = true
vim.opt.spellcapcheck = ""
vim.opt.spelloptions = "camel"

vim.opt.scrolloff = 0

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function()
    vim.opt.clipboard:append({ "unnamed", "unnamedplus" })
    vim.api.nvim_create_autocmd("TextYankPost", {
        callback = function()
            vim.highlight.on_yank({ higroup = "IncSearch", timeout = "200" })
        end,
    })
    if vim.fn.has("wsl") == 1 then
        vim.g.clipboard = {
            name = "win32yank-wsl",
            copy = {
                ["+"] = "win32yank.exe -i --crlf",
                ["*"] = "win32yank.exe -i --crlf",
            },
            paste = {
                ["+"] = "win32yank.exe -o --lf",
                ["*"] = "win32yank.exe -o --lf",
            },
            cache_enabled = true,
        }
    end
end)

-- Print inside of Lua tables ; useful when creating/debugging plugins
P = function(v)
    print(vim.inspect(v))
    return v
end
