require("loyalpotato.telescope")
require("loyalpotato.nvim-tree")
require("loyalpotato.treesitter")

if pcall(require, "plenary") then
	RELOAD = require("plenary.reload").reload_module

	R = function(name)
		RELOAD(name)
		return require(name)
	end
end
