local api = vim.api
local saga = {}
saga.saga_augroup = api.nvim_create_augroup('Lspsaga', { clear = true })

local default_config = {
  ui = {
    border = 'rounded',
    devicon = true,
    foldericon = true,
    title = true,
    expand = '⊞',
    collapse = '⊟',
    lines = { '┗', '┣', '┃', '━', '┏' },
    kind = nil,
    button = { '', '' },
    imp_sign = '󰳛 ',
  },
  hover = {
    max_width = 0.9,
    max_height = 0.8,
    open_link = 'gx',
    open_cmd = '!firefox',
  },
  scroll_preview = {
    scroll_down = '<C-f>',
    scroll_up = '<C-b>',
  },
  request_timeout = 2000,
  finder = {
    max_height = 0.5,
    left_width = 0.4,
    methods = {},
    default = 'ref+imp',
    layout = 'float',
    silent = false,
    filter = {},
    fname_sub = nil,
    sp_inexist = false,
    sp_global = false,
    ly_botright = false,
    keys = {
      shuttle = '[w',
      toggle_or_open = 'o',
      vsplit = 's',
      split = 'i',
      tabe = 't',
      tabnew = 'r',
      quit = 'q',
      close = '<C-c>k',
    },
  },
  definition = {
    width = 0.6,
    height = 0.5,
    save_pos = false,
    keys = {
      edit = '<C-o>',
      vsplit = '<C-v>',
      split = '<C-x>',
      tabe = '<C-t>',
      tabnew = '<C-c>n',
      quit = 'q',
      close = '<ESC>',
    },
  },
  rename = {
    in_select = true,
    auto_save = false,
    project_max_width = 0.5,
    project_max_height = 0.5,
    keys = {
      quit = '<C-k>',
      exec = '<CR>',
      select = 'x',
    },
  },
  callhierarchy = {
    layout = 'float',
    left_width = 0.2,
    keys = {
      edit = 'e',
      vsplit = 's',
      split = 'i',
      tabe = 't',
      close = '<C-c>k',
      quit = 'q',
      shuttle = '[w',
      toggle_or_req = 'u',
    },
  },
  typehierarchy = {
    layout = 'float',
    left_width = 0.2,
    keys = {
      edit = 'e',
      vsplit = 's',
      split = 'i',
      tabe = 't',
      close = '<C-c>k',
      quit = 'q',
      shuttle = '[w',
      toggle_or_req = 'u',
    },
  },
  implement = {
    enable = false,
    sign = true,
    lang = {},
    virtual_text = true,
    priority = 100,
  },
  beacon = {
    enable = true,
    frequency = 7,
  }
}

function saga.setup(opts)
  opts = opts or {}
  saga.config = vim.tbl_deep_extend('force', default_config, opts)

  require('lspsaga.highlight'):init_highlight()

  if vim.version().minor >= 10 and vim.fn.exists('##LspNotify') ~= 0 then
  else
    if vim.version().minor >= 10 then
      print(
        "[lspsaga.nvim] you're running outdated nightly version, you'll need LspNotify autocmd event to enable improved symbol"
      )
    end
  end
end

return saga
