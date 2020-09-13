local M = {}

function M.setup()
  require('telescope').setup{
    defaults = {
      sorting_strategy = "ascending",
      prompt_position = "top",
      show_pluto = true,
      shorten_path = true,
      layout_strategy = 'horizontal',
      preview_cutoff = 79,
      winblend = 0,
      borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},

      -- layout_strategy = 'flex',
      -- :echo columns
      -- -1 for preview_cutoff
      -- preview_cutoff = 79,
      -- winblend = 100,
      -- sorting_strategy = "descending",
      -- prompt_position = "bottom",

    }
  }
end

function M.current_file_cwd()
  return vim.fn.expand("%:h")
end

function M.spellcheck()
  print("hello")
  -- Not sure how to accomplish what I want
  hello = vim.fn.execute("z=")
  -- print(hello)
end

function M.cfwd ()
  require('telescope.builtin').git_files {
    shorten_path = false,
    cwd = M.current_file_cwd(),
    prompt = "~ CFWD ~"
  }
end

return M
