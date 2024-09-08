-- plugin for displaying change history on lines of code
return {
  'f-person/git-blame.nvim',
  event = 'VeryLazy',
  opts = {
    enabled = true,
    date_format = '%r',
    virtual_text_column = 1,
  },
}
