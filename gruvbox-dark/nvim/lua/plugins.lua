require("gruvbox").setup({
    contrast = "", -- can be "hard", "soft" or empty string
    italic = {
	strings = true,
	emphasis = false,
	comments = true,
	operators = false,
	folds = false,
    },
})

vim.o.background = "dark"
vim.cmd.colorscheme("gruvbox")

require('lualine').setup {
    options = {
	theme = "gruvbox"
    }
}

require("nvim-autopairs").setup({})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

local lsps = {
    "rust_analyzer",
    "clangd",
    "pyright",
}

for _, lsp in ipairs(lsps) do
    vim.lsp.enable(lsp)
end

vim.diagnostic.config({
    virtual_text = {
	enabled = true
    },
    underline = false,
    signs = true,
})

require("blink.cmp").setup({
    keymap = {
	preset = "super-tab",
    },

    completion = {
	documentation = {
	    auto_show = true,
	    auto_show_delay_ms = 10,
	}
    }
})

require("tree-sitter-manager").setup({
    ensure_installed = {
	"rust",
	"c",
	"python",
	"lua",
    },
    highlight = true,
})
