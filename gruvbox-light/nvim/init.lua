vim.g.mapleader = " "

-- plugins installation
vim.pack.add({"https://github.com/Kopihue/nord", })
vim.pack.add({"https://github.com/Kopihue/after-dark", })
vim.pack.add({"https://github.com/maxmx03/solarized.nvim"})
vim.pack.add({"https://github.com/ellisonleao/gruvbox.nvim"})
vim.pack.add({"https://github.com/nvim-lualine/lualine.nvim"})
vim.pack.add({"https://github.com/rose-pine/neovim", })
vim.pack.add({"https://github.com/sphamba/smear-cursor.nvim", })
vim.pack.add({"https://github.com/windwp/nvim-autopairs", })
vim.pack.add({"https://github.com/nvim-telescope/telescope.nvim", })	
vim.pack.add({"https://github.com/nvim-lua/plenary.nvim", })
vim.pack.add({"https://github.com/neovim/nvim-lspconfig", })
vim.pack.add({"https://github.com/saghen/blink.lib", })
vim.pack.add({"https://github.com/saghen/blink.cmp", })
vim.pack.add({"https://github.com/romus204/tree-sitter-manager.nvim", })

require("options")
require("plugins")

-- disable lsp syntax highlighting
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
	local client = vim.lsp.get_client_by_id(args.data.client_id)
	if client then
	    client.server_capabilities.semanticTokensProvider = nil
	end
    end,
})
