-- global configuration
hs.window.animationDuration = 0.1

-- reload configuration
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
end)
hs.alert.show("Hammerspoon config loaded")


-- config WinWin
hs.loadSpoon("WinWin")

winwinHotkeyMapping = {
    left = "halfleft",
    right = "halfright",
    up ="halfup",
    down = "halfdown",
    m = "maximize",
    f = "fullscreen",
    s = "shrink",
    n = "next",
    c = "center"
}

for k, action in pairs(winwinHotkeyMapping) do
    hs.hotkey.bind({"cmd", "alt", "ctrl"}, k, function() 
        spoon.WinWin:moveAndResize(action)
    end)
end
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "n", function()
   spoon.WinWin:moveToScreen("next")
end)
