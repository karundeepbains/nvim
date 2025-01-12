-- auto completion
local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			-- If you’re using LuaSnip
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = {
		["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
		["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
		-- Add more mappings as desired
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {{ name = "buffer" },
	}),
})
