-- setup options
vim.g.mapleader=" "
vim.g.maplocalleader=" "

vim.opt.autoindent=true
vim.opt.cursorline=true
vim.opt.number=true
vim.opt.shiftwidth=4
vim.opt.tabstop=4
vim.opt.expandtab=true
vim.opt.shiftround=true

vim.cmd("TransparentEnable")

-- setup keymaps
vim.keymap.set("n", "<leader>h", ":noh<CR>") -- remove hilight

vim.keymap.set("n", "<leader>ff", function()
    require("telescope.builtin").find_files()
end) -- find files

vim.keymap.set("n", "<leader>cs", function()
    require("telescope.builtin").colorscheme()
end) -- change colorscheme

vim.keymap.set("n", "<leader>lf", function()
    require("telescope.builtin").current_buffer_fuzzy_find()
end) -- local find

vim.keymap.set("n", "<leader>gf", function()
    require("telescope.builtin").live_grep()
end) -- global find

-- nerd tree toggle
vim.keymap.set("n", "<leader>E", ":NvimTreeToggle<CR>")
-- open file_browser with the path of the current buffer
vim.keymap.set("n", "<space>e", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
-- grapple keymaps
vim.keymap.set("n", "<leader>m", require("grapple").toggle)
vim.keymap.set("n", "<leader>M", require("grapple").toggle_tags)

vim.keymap.set("n", "<leader>1", "<cmd>Grapple select index=1<CR>")
vim.keymap.set("n", "<leader>2", "<cmd>Grapple select index=2<CR>")
vim.keymap.set("n", "<leader>3", "<cmd>Grapple select index=3<CR>")
vim.keymap.set("n", "<leader>4", "<cmd>Grapple select index=4<CR>")
vim.keymap.set("n", "<leader>5", "<cmd>Grapple select index=5<CR>")
