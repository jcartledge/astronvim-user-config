return {
  n = {
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- single key mappings
    ["U"] = { "<c-r>", desc = "Redo" },
    ["Y"] = { "yy", desc = "Yank line" },
    ["<tab>"] = { "<c-^>", desc = "Switch to alt buffer" },
    --
    -- go mappings
    ["gt"] = { ":e %:r.test.%:e<cr>", desc = "Go to test" },
    ["gj"] = { ":exe 'e ~/notes/journals/'.strftime('%F').'.md'<cr>", desc = "Go to journal" },

    -- leader mappings
    ["<leader> "] = { "za", desc = "Toggle fold under cursor" },
    ["<leader>="] = { "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format buffer" },
    ["<leader>F"] = { "<leader>fo", desc = "Find recent" },
    ["<leader>um"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle markdown preview" },
    ["<leader>v"] = { "ggVG", desc = "Visual select buffer" },
    ["<leader>y"] = { "ggyG<c-o>", desc = "Yank buffer" },

    -- brackets mappings
    ["[ "] = { "m`O<esc>``", desc = "Insert empty line before" },
    ["] "] = { "m`o<esc>``", desc = "Insert empty line after" },
  },
  t = {},
}
