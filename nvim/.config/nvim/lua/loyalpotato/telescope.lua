require("telescope").setup({
    defaults = {
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
})

require("telescope").load_extension("fzy_native")
