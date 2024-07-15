---@class LspsagaConfig
---@field public ui? LspsagaConfig.Ui Global UI config
---@field public hover? LspsagaConfig.Hover Hover documentation
---@field public scroll_preview? LspsagaConfig.Scroll.Keys Keys to scroll
---@field public request_timeout? integer LSP request timeout
---@field public finder? LspsagaConfig.Finder Token/reference finder
---@field public definition? LspsagaConfig.Definition Definition
---@field public rename? LspsagaConfig.Rename Rename
---@field public callhierarchy? LspsagaConfig.Hierarchy Call hierarchy
---@field public typehierarchy? LspsagaConfig.Hierarchy Type hierarchy
---@field public implement? LspsagaConfig.Implement Implementation
---@field public beacon? LspsagaConfig.Beacon Beacon

---@class LspsagaConfig.Definition
---@field width? number defines float window width
---@field height? number defines float window height
---@field save_pos? boolean Saves cursor position
---@field keys? LspsagaConfig.Definition.Keys

---@class LspsagaConfig.Rename
---@field in_select? boolean
---@field auto_save? boolean
---@field project_max_width? number
---@field project_max_height? number
---@field keys? LspsagaConfig.Rename.Keys

---@class LspsagaConfig.Hierarchy
---@field layout? LayoutOption
---@field left_width? number Width of left panel
---@field keys? LspsagaConfig.Hierarchy.Keys

---@class LspsagaConfig.Implement
---@field enable? boolean Enable implementation plugin
---@field sign? boolean show sign in status column
---@field lang? string[] Additional languages that support implementing interfaces
---@field virtual_text? boolean show virtual text at the end of line
---@field priority? integer sign priority

---@class LspsagaConfig.Ui
---@field border? BorderType Border type, see `:help nvim_open_win`
---@field devicon? boolean Whether to use nvim-web-devicons
---@field foldericon? boolean Show folder icon in breadcrumbs
---@field title? boolean Show title in some float window
---@field expand? string Expand (drop down) icon
---@field collapse? string Collapse (drop down) icon
---@field lines? string[] Symbols used in virtual text connect
---@field kind? table LSP kind custom table
---@field button? [string, string] Button icon { '', '' }
---@field imp_sign? string Implement icon

---@class LspsagaConfig.Hover
---@field max_width? number Defines float window width
---@field max_height? number Defines float window height
---@field open_link? string Key for opening links
---@field open_cmd? string Cmd for opening links

---@class LspsagaConfig.Finder
---@field max_height? number max_height of the finder window (float layout)
---@field left_width? number width of left panel in finder window
---@field methods? LspMethods
---@field default? "ref" | "imp" | "def" | string Default search results shown; **ref**erences; **imp**lementation; **def**inition; any in config.methods
---@field layout? LayoutOption
---@field silent? boolean If it’s true, it will disable show the no response message
---@field filter? string[] Filter search results
---@field fname_sub? function Filename substitution function
---@field sp_inexist? boolean
---@field sp_global? boolean
---@field ly_botright? boolean
---@field keys? LspsagaConfig.Finder.Keys

---@class LspsagaConfig.Beacon
---@field enable? boolean Enable beacon
---@field frequency? integer

---@class LspsagaConfig.Scroll.Keys
---@field scroll_down? SagaKeys
---@field scroll_up? SagaKeys

---@class LspsagaConfig.Finder.Keys
---@field shuttle? SagaKeys shuttle between the finder layout window
---@field toggle_or_open? SagaKeys toggle expand or open
---@field vsplit? SagaKeys open in vsplit
---@field split? SagaKeys open in hsplit
---@field tabe? SagaKeys open in tabe
---@field tabnew? SagaKeys open in new tab
---@field quit? SagaKeys quit the finder; only works in layout left window
---@field close? SagaKeys close the finder

---@class LspsagaConfig.Hierarchy.Keys
---@field edit? SagaKeys
---@field vsplit? SagaKeys open in vsplit
---@field split? SagaKeys open in hsplit
---@field tabe? SagaKeys open in tabe
---@field quit? SagaKeys quit the hierarchy
---@field shuttle? SagaKeys shuttle between the hierarchy
---@field close? SagaKeys close the hierarchy
---@field toggle_or_req? SagaKeys toggle or do request

---@class LspsagaConfig.Definition.Keys
---@field edit? SagaKeys
---@field vsplit? SagaKeys open in vsplit
---@field split? SagaKeys open in hsplit
---@field tabe? SagaKeys open in tabe
---@field quit? SagaKeys quit the definition
---@field close? SagaKeys close the definition

---@class LspsagaConfig.Rename.Keys
---@field quit? SagaKeys quit rename window or `project_replace` window
---@field exec? SagaKeys execute rename in `rename` window or execute replace in `project_replace` window
---@field select? SagaKeys select or cancel select item in `project_replace` float window

---@alias LayoutOption "float" | "normal"
---@alias BorderType "none" | "single" | "double" | "rounded" | "solid" | "shadow" | string[]
---@alias SagaKeys string | string[]

---@class LspMethods
---@field [string] string Keys are alias of LSP methods. Values are LSP methods, which you want to show in finder.
