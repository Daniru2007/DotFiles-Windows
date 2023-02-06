local wezterm = require("wezterm")

-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = utf8.char(0xe0ba)
local SOLID_LEFT_MOST = utf8.char(0x2588)

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = utf8.char(0xe0bc)

local ADMIN_ICON = utf8.char(0xf49c)
local CMD_ICON = utf8.char(0xe62a)
local NU_ICON = utf8.char(0xe7a8)
local PS_ICON = utf8.char(0xe70f)
local ELV_ICON = utf8.char(0xfc6f)
local WSL_ICON = utf8.char(0xf83c)
local YORI_ICON = utf8.char(0xf1d4)
local NYA_ICON = utf8.char(0xf61a)
local VIM_ICON = utf8.char(0xe62b)
local SUP_IDX = {"¹","²","³","⁴","⁵","⁶","⁷","⁸","⁹","¹⁰",
                 "¹¹","¹²","¹³","¹⁴","¹⁵","¹⁶","¹⁷","¹⁸","¹⁹","²⁰"}
local SUB_IDX = {"₁","₂","₃","₄","₅","₆","₇","₈","₉","₁₀",
                 "₁₁","₁₂","₁₃","₁₄","₁₅","₁₆","₁₇","₁₈","₁₉","₂₀"}



wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local edge_background = "#333333"
  local background = "#141721"
  local foreground = "#89ddff"
  local dim_foreground = "#3A3A3A"

  if tab.is_active then
    background = "#89ddff"
    foreground = "#141721"
  elseif hover then
    background = "#FF8700"
    foreground = "#1C1B19"
  end

  local edge_foreground = background
  local shell_cmd, shell_name
  if tab.active_pane.title:find("vim") then
    shell_cmd = ""
    shell_name = VIM_ICON .. tab.active_pane.title:gsub("^(%S+)%s+(%d+/%d+) %- nvim", " %2 %1")
  elseif tab.active_pane.title:find("NYAGOS") then
    shell_cmd = tab.active_pane.title
    shell_name = NYA_ICON .. " " .. shell_cmd:gsub(".*: (.+) %- .+", "%1")
  elseif tab.active_pane.title:find("Yori") then
    shell_cmd = tab.active_pane.title:gsub(" %- Yori", "")
    shell_name = YORI_ICON .. " " .. shell_cmd
  else
    shell_cmd, shell_name = tab.active_pane.title:match("^(.*\\(%w+)%.exe)")
  end
  local real_title = tab.active_pane.title:match(".*\\cmd%.exe %- (.+)$") or "CMD"
  local clean_title

  if shell_name == "nu" then
    clean_title = NU_ICON .. " NuShell"
  elseif shell_name == "pwsh" then
    clean_title = PS_ICON .. " PS"
  elseif shell_name == "cmd" then
    clean_title = CMD_ICON .. " " .. real_title
  elseif shell_name == "elvish" then
    clean_title = ELV_ICON .. " Elvish"
  elseif shell_name == "wsl" then
    clean_title = WSL_ICON .. " WSL"
  else
    clean_title = shell_name
  end
  if shell_cmd and shell_cmd:match("Administrator: ") then
	clean_title = clean_title .. " " .. ADMIN_ICON
  end
  local left_arrow = SOLID_LEFT_ARROW
  if tab.tab_index == 0 then
    left_arrow = SOLID_LEFT_MOST
  end
  local id = SUB_IDX[tab.tab_index+1]
  local pid = SUP_IDX[tab.active_pane.pane_index+1]
  local title = " " .. wezterm.truncate_right(clean_title, max_width-6) .. " "

  return {
    {Attribute={Intensity="Bold"}},
    {Background={Color=edge_background}},
    {Foreground={Color=edge_foreground}},
    {Text=left_arrow},
    {Background={Color=background}},
    {Foreground={Color=foreground}},
    {Text=id},
    {Text=title},
    {Foreground={Color=dim_foreground}},
    {Text=pid},
    {Background={Color=edge_background}},
    {Foreground={Color=edge_foreground}},
    {Text=SOLID_RIGHT_ARROW},
    {Attribute={Intensity="Normal"}},
  }
end)









function string.split(str, sep)
	local t = {}
	for s in string.gmatch(str, "([^"..sep.."]+)") do
		table.insert(t, s)
	end
	return t
end

function reduce_title(title)
	title = title:gsub("\\", "/")
	title = title:split("/")
	return title[#title]
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	return reduce_title(tab.active_pane.title)
end)

wezterm.on("format-window-title", function(tab, pane, tabs, panes, config)
	return reduce_title(tab.active_pane.title)
end)

wezterm.on(
  'format-tab-title',
  function(tab, tabs, panes, config, hover, max_width)
    if tab.is_active then
      return {
        { Background = { Color = 'blue' } },
        { Text = ' ' .. tab.active_pane.title .. ' ' },
      }
    end
    return tab.active_pane.title
  end
)







local config = {

    check_for_updates = false,
    color_scheme = "MaterialOcean",
    inactive_pane_hsb = {
        hue = 1.0,
        saturation = 1.0,
        brightness = 1.0,
    },
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},











--	hide_tab_bar_if_only_one_tab = true,
	 window_background_opacity = 0.85,
  enable_tab_bar = true,

	adjust_window_size_when_changing_font_size = false,

	tab_bar_at_bottom = true,



    font_size = 14.0,
    font = wezterm.font 'CaskaydiaCove NF',
    launch_menu = {},
    leader = { key="d", mods="CTRL" },
    disable_default_key_bindings = true,
    use_fancy_tab_bar = false,
    keys = {
        { key = "d", mods = "LEADER|CTRL",  action=wezterm.action{SendString="\x01"}},
        { key = "-", mods = "LEADER",       action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
        { key = "\\",mods = "LEADER",       action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
        { key = "z", mods = "LEADER",       action="TogglePaneZoomState" },
        { key = "c", mods = "LEADER",       action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
        { key = "h", mods = "LEADER",       action=wezterm.action{ActivatePaneDirection="Left"}},
        { key = "j", mods = "LEADER",       action=wezterm.action{ActivatePaneDirection="Down"}},
        { key = "k", mods = "LEADER",       action=wezterm.action{ActivatePaneDirection="Up"}},
        { key = "l", mods = "LEADER",       action=wezterm.action{ActivatePaneDirection="Right"}},
        { key = "H", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
        { key = "J", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
        { key = "K", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
        { key = "L", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
        { key = "1", mods = "LEADER",       action=wezterm.action{ActivateTab=0}},
        { key = "2", mods = "LEADER",       action=wezterm.action{ActivateTab=1}},
        { key = "3", mods = "LEADER",       action=wezterm.action{ActivateTab=2}},
        { key = "4", mods = "LEADER",       action=wezterm.action{ActivateTab=3}},
        { key = "5", mods = "LEADER",       action=wezterm.action{ActivateTab=4}},
        { key = "6", mods = "LEADER",       action=wezterm.action{ActivateTab=5}},
        { key = "7", mods = "LEADER",       action=wezterm.action{ActivateTab=6}},
        { key = "8", mods = "LEADER",       action=wezterm.action{ActivateTab=7}},
        { key = "9", mods = "LEADER",       action=wezterm.action{ActivateTab=8}},
        { key = "[", mods = "LEADER",       action=wezterm.action{ActivateTabRelative=-1}},
        { key = "]", mods = "LEADER",       action=wezterm.action{ActivateTabRelative=1}},
        { key = "&", mods = "LEADER|SHIFT", action=wezterm.action{CloseCurrentTab={confirm=true}}},
        { key = "x", mods = "LEADER",       action=wezterm.action{CloseCurrentPane={confirm=true}}},


        { key = "n", mods="SHIFT|CTRL",     action="ToggleFullScreen" },
        { key="v",   mods="SHIFT|CTRL",     action="Paste"},
        { key="c",   mods="SHIFT|CTRL",     action="Copy"},
    },
  colors = {
    tab_bar = {
      background = "#121212",
      new_tab = {bg_color = "#121212", fg_color = "#FCE8C3", intensity = "Bold"},
      new_tab_hover = {bg_color = "#121212", fg_color = "#FBB829", intensity = "Bold"},
      active_tab = {bg_color = "#121212", fg_color = "#FCE8C3"},
    }
  },

  window_frame = {
    font = wezterm.font { family = 'Roboto', weight = 'Bold' },

    font_size = 9.0,

    active_titlebar_bg = '#141721',

    inactive_titlebar_bg = '#141721',
  },


    set_environment_variables = {},
}

return config
