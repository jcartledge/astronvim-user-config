-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader> "] = {"za", desc = "Toggle fold under cursor"},

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- Jump to test
    ["gt"] = {":e %:r.test.%:e<cr>", desc = "Jump to test"},

    -- UI
    ["<leader>um"] = {"<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle markdown preview"},

    -- top-level
    -- ergonomics
    ["U"] = { "<c-r>", desc = "Redo" },
    ["Y"] = { "yy", desc = "Yank line" },
    ["<tab>"] = {"<c-^>", desc = "Switch to alt buffer"},

    -- brackets stuff
    ["[ "] = { "m`O<esc>``", desc = "Insert empty line before" },
    ["] "] = { "m`o<esc>``", desc = "Insert empty line after" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
