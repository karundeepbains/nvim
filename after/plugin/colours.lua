function ColourTerm(colour)
    colour = colour or 'catppuccin'
	vim.cmd.colorscheme(colour)
end

ColourTerm()
