return {
  cmd = {
    "clangd",
    -- "--background-index",
    -- "-j=12",
    -- "--clang-tidy",
    -- "--clangd-tidy-checks=*",
    -- "--all-scopes-completion",
    -- "--completion-style-detailed",
  },
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
    clangdFileStatus = true,
  },
}
