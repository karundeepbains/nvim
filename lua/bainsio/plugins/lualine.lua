return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    -- pull Catppuccin’s palette and pass it straight in
    require("lualine").setup({
      options = {
        theme = "catppuccin", -- the *only* thing you MUST set&#8203;:contentReference[oaicite:0]{index=0}
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = { -- tweak to taste
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "diagnostics" },
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
