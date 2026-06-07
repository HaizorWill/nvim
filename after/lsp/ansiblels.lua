local check = vim.fn.has("unix") == 1

if not check then
  return {
    cmd = {},
    settings = {},
    filetypes = { "yaml.ansible" },
  }
end

return {
  cmd = { "ansible-language-server", "--stdio" },
  settings = {
    ansible = {
      python = {
        interpreterPath = "python",
      },
      ansible = {
        path = "ansible",
      },
      executionEnvironment = {
        enabled = false,
      },
      validation = {
        enabled = true,
        lint = {
          enabled = true,
          path = "ansible-lint",
        },
      },
    },
  },
  filetypes = { "yaml.ansible" },
  root_markers = { "ansible.cfg", ".ansible-lint" },
}
