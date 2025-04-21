return {

  "obsidian-nvim/obsidian.nvim",

  version = "*", -- recommended, use latest release instead of latest commit

  lazy = true,

  ft = "markdown",

  keys = {

    { "<leader>on", "<cmd>ObsidianSearch <cr>", { desc = "Open Obsidian Note Picker" } },

    { "<leader>nn", "<cmd>ObsidianNew <cr>", { desc = "Create a new note" } },

    { "<leader>nt", "<cmd>ObsidianToday <cr>", { desc = "Open today's daily note" } },

    { "<leader>ob", "<cmd>ObsidianBacklinks <cr>", { desc = "Open backlinks for current note" } },

    { "<leader>ot", "<cmd>ObsidianTemplate <cr>", { desc = "Insert template" } },
  },

  opts = {

    -- A list of workspace names, paths, and configuration overrides.

    -- If you use the Obsidian app, the 'path' of a workspace should generally be

    -- your vault root (where the `.obsidian` folder is located).

    -- When obsidian.nvim is loaded by your plugin manager, it will automatically set

    -- the workspace to the first workspace in the list whose `path` is a parent of the

    -- current markdown file being edited.

    workspaces = {
      {
        name = "personal",
        path = "/mnt/c/Users/Pereslavtsev/Documents/ObsidianVault",
      },
    },

    -- Alternatively - and for backwards compatibility - you can set 'dir' to a single path instead of

    -- 'workspaces'. For example:

    -- dir = "~/vaults/work",

    -- Optional, if you keep notes in a specific subdirectory of your vault.

    notes_subdir = "notes",

    -- Optional, set the log level for obsidian.nvim. This is an integer corresponding to one of the log

    -- levels defined by "vim.log.levels.*".

    log_level = vim.log.levels.INFO,

    daily_notes = {

      -- Optional, if you keep daily notes in a separate directory.

      folder = "notes/dailies",

      -- Optional, if you want to change the date format for the ID of daily notes.

      date_format = "%Y-%m-%d",

      -- Optional, if you want to change the date format of the default alias of daily notes.

      alias_format = "%B %-d, %Y",

      -- Optional, default tags to add to each new daily note created.

      default_tags = { "daily-notes" },

      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'

      template = nil,
    },

    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.

    completion = {

      -- Enables completion using nvim_cmp

      nvim_cmp = false,

      -- Enables completion using blink.cmp

      blink = true,

      -- Trigger completion at 2 chars.

      min_chars = 0,
    },

    -- Optional, configure key mappings. These are the defaults. If you don't want to set any keymappings this

    -- way then set 'mappings = {}'.

    mappings = {

      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.

      ["gf"] = {

        action = function()
          return require("obsidian").util.gf_passthrough()
        end,

        opts = { noremap = false, expr = true, buffer = true },
      },

      -- Toggle check-boxes.

      ["<leader>ch"] = {

        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,

        opts = { buffer = true },
      },

      -- Smart action depending on context, either follow link or toggle checkbox.

      ["<cr>"] = {

        action = function()
          return require("obsidian").util.smart_action()
        end,

        opts = { buffer = true, expr = true },
      },
    },

    templates = {

      folder = "templates",

      date_format = "%Y-%m-%d",

      time_format = "%H:%M",

      -- A map for custom variables, the key should be the variable and the value a function

      substitutions = {},
    },

    -- Optional, set to true if you use the Obsidian Advanced URI plugin.

    -- https://github.com/Vinzent03/obsidian-advanced-uri

    use_advanced_uri = false,

    -- Optional, set to true to force ':ObsidianOpen' to bring the app to the foreground.

    open_app_foreground = false,

    picker = {

      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', 'mini.pick' or 'snacks.pick'.

      name = "telescope.nvim",

      -- Optional, configure key mappings for the picker. These are the defaults.

      -- Not all pickers support all mappings.

      note_mappings = {

        -- Create a new note from your query.

        new = "<C-x>",

        -- Insert a link to the selected note.

        insert_link = "<C-l>",
      },

      tag_mappings = {

        -- Add tag(s) to current note.

        tag_note = "<C-x>",

        -- Insert a tag at the current location.

        insert_tag = "<C-l>",
      },
    },

    -- Optional, sort search results by "path", "modified", "accessed", or "created".

    -- The recommend value is "modified" and `true` for `sort_reversed`, which means, for example,

    -- that `:ObsidianQuickSwitch` will show the notes sorted by latest modified time

    sort_by = "modified",

    sort_reversed = true,

    -- Set the maximum number of lines to read from notes on disk when performing certain searches.

    search_max_lines = 1000,

    -- Optional, determines how certain commands open notes. The valid options are:

    -- 1. "current" (the default) - to always open in the current window

    -- 2. "vsplit" - to open in a vertical split if there's not already a vertical split

    -- 3. "hsplit" - to open in a horizontal split if there's not already a horizontal split

    open_notes_in = "current",

    -- Optional, define your own callbacks to further customize behavior.

    -- Optional, configure additional syntax highlighting / extmarks.

    -- This requires you have `conceallevel` set to 1 or 2. See `:help conceallevel` for more details.

    ui = {

      enable = false, -- set to false to disable all additional syntax features

      update_debounce = 200, -- update delay after a text change (in milliseconds)

      max_file_length = 5000, -- disable UI features for files with more than this many lines

      -- Define how various check-boxes are displayed

      checkboxes = {

        -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.

        [" "] = { char = "??", hl_group = "ObsidianTodo" },

        ["x"] = { char = "?", hl_group = "ObsidianDone" },

        [">"] = { char = "?", hl_group = "ObsidianRightArrow" },

        ["~"] = { char = "??", hl_group = "ObsidianTilde" },

        ["!"] = { char = "?", hl_group = "ObsidianImportant" },

        -- Replace the above with this if you don't have a patched font:

        -- [" "] = { char = "?", hl_group = "ObsidianTodo" },

        -- ["x"] = { char = "?", hl_group = "ObsidianDone" },

        -- You can also add more custom ones...
      },

      -- Use bullet marks for non-checkbox lists.

      bullets = { char = "", hl_group = "ObsidianBullet" },

      external_link_icon = { char = "?", hl_group = "ObsidianExtLinkIcon" },

      -- Replace the above with this if you don't have a patched font:

      -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },

      reference_text = { hl_group = "ObsidianRefText" },

      highlight_text = { hl_group = "ObsidianHighlightText" },

      tags = { hl_group = "ObsidianTag" },

      block_ids = { hl_group = "ObsidianBlockID" },

      hl_groups = {

        -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.

        ObsidianTodo = { bold = true, fg = "#f78c6c" },

        ObsidianDone = { bold = true, fg = "#89ddff" },

        ObsidianRightArrow = { bold = true, fg = "#f78c6c" },

        ObsidianTilde = { bold = true, fg = "#ff5370" },

        ObsidianImportant = { bold = true, fg = "#d73128" },

        ObsidianBullet = { bold = true, fg = "#89ddff" },

        ObsidianRefText = { underline = true, fg = "#c792ea" },

        ObsidianExtLinkIcon = { fg = "#c792ea" },

        ObsidianTag = { italic = true, fg = "#89ddff" },

        ObsidianBlockID = { italic = true, fg = "#89ddff" },

        ObsidianHighlightText = { bg = "#75662e" },
      },
    },

    -- Specify how to handle attachments.
  },
}
