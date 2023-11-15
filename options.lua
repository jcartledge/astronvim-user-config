-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    relativenumber = true,
    number = true,
    spell = false,
    signcolumn = "auto",
    wrap = true,
    list = true,
    listchars = { tab = "󰌒 ", trail = "󱁐" },
  },
  g = {
    autoformat_enabled = false,
    autopairs_enabled = true,
    cmp_enabled = true,
    conceallevel = 1,
    diagnostics_mode = 3,
    icons_enabled = true,
    mapleader = " ",
    maplocalleader = ",",
    resession_enabled = false,
    ui_notifications_enabled = true,
    waikiki_default_maps = 1,
    waikiki_roots = { "~/notes/" },
  },
}
