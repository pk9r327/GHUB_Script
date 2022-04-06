--------------------------------------------------------------------------------
-- Command
-- -----

function SelectWindows()
    PressKey("lctrl", "lalt", "tab")
    ReleaseKey("lctrl", "lalt", "tab")
end

function SelectNextWindows()
    PressKey("lalt", "tab")
    ReleaseKey("lalt", "tab")
end

function SelectPreviousWindows()
    PressKey("lalt", "lshift", "tab")
    ReleaseKey("lalt", "lshift", "tab")
end

function SelectCurrentWindow()
    PressKey("enter")
    ReleaseKey("enter")
end

function SelectDesktops()
    PressKey("lgui", "tab")
    ReleaseKey("lgui", "tab")
end

function SelectNextDesktop()
    PressKey("lgui", "lctrl", "right")
    ReleaseKey("lgui", "lctrl", "right")
end

function SelectPreviousDesktop()
    PressKey("lgui", "lctrl", "left")
    ReleaseKey("lgui", "lctrl", "left")
end

function Screenshot()
    PressKey("lctrl", "lalt", "s")
    ReleaseKey("lctrl", "lalt", "s")
end

function CopyPress()
    PressKey("lctrl", "c")
end

function CopyRelease()
    ReleaseKey("lctrl", "c")
end

function Paste()
    PressKey("lctrl", "v")
    ReleaseKey("lctrl", "v")
end
--------------------------------------------------------------------------------