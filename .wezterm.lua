local wezterm = require 'wezterm'

return {
    font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true }),
    pane_focus_follows_mouse = true,
    font_size = 15.0,
    initial_cols = 300,
    initial_rows = 100,
    window_padding = {
        left = 10,
        right = 10,
        top = 10,
        bottom = 10,
    },

    -- Keybindings
    keys = {
        {
            key = "RightArrow",
            mods = "ALT",
            action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
        },
        { 
            key = "UpArrow", 
            mods = "ALT", 
            action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) 
        },
        {
            key="LeftArrow", 
            mods="CMD", 
            action=wezterm.action{MoveTabRelative=-1}
        },
        {
            key="RightArrow", 
            mods="CMD", 
            action=wezterm.action{MoveTabRelative=1}
        },
        {
            key="w", 
            mods="CMD", 
            action=wezterm.action{CloseCurrentPane={confirm=true}}
        },
        {
            key="f", 
            mods="CMD", 
            action=wezterm.action.ToggleFullScreen
        },
    },
}