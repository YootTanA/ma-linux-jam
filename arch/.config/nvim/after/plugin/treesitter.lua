local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  print("treesitter is not ready for work")
  return
end

treesitter.setup({
  autotag = {
    enable = true,
  },
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "rust", "c", "go", "javascript", "python", "typescript", "vim", "lua", "vimdoc" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
})
