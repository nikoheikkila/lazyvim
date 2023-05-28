local function surround(char)
  return {
    left = char,
    right = char,
  }
end

return {
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
      respect_selection_type = true,
      search_method = "cover_or_next",
      -- Add custom surroundings to make working with Markdown files easier
      custom_surroundings = {
        ["b"] = {
          output = function()
            return surround("**")
          end,
        },
        ["i"] = {
          output = function()
            return surround("_")
          end,
        },
        ["s"] = {
          output = function()
            return surround("~~")
          end,
        },
      },
    },
  },
}
