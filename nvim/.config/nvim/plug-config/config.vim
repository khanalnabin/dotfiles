lua << EOF
require("bufferline").setup{}
require'lualine'.setup{
options = {
    icons_enabled = true,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {{'diagnostics', sources={'nvim_lsp', 'coc'}}},
    lualine_y = {'filetype'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {},
  theme='edge'
}
vim.fn.sign_define("DiagnosticSignError",
    {text = "", texthl = "Red"})
vim.fn.sign_define("DiagnosticSignWarn",
    {text = "", texthl = "Yellow"})
vim.fn.sign_define("DiagnosticSignInformation",
    {text = "", texthl = "Blue"})
vim.fn.sign_define("DiagnosticSignHint",
    {text = "", texthl = "Aqua"})
EOF
