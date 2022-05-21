--------------------------------------------------------------------------------
-- Desktop Mode
-- ------------

DesktopMode = Mode:new(nil, DESKTOP_CODE)
function DesktopMode:new(o, modeCode)
    o = o or Mode:new(o, modeCode)
    setmetatable(o, self)
    self.__index = self
    InitializeButton(o)
    return o
end

function DesktopMode:MouseButtonPressed1()
    --SelectPreviousDesktop()
end

function DesktopMode:MouseButtonReleased1()
    ChangeMode(NORMAL_CODE)
end

function DesktopMode:MouseButtonPressed2()
    --SelectNextDesktop()
end

function DesktopMode:MouseButtonReleased2()
    ChangeMode(NORMAL_CODE)
end

function DesktopMode:MouseButtonPressed4()
    Screenshot()
    ChangeMode(NORMAL_CODE)
end

function DesktopMode:MouseButtonPressed5()
    SelectEdgeTabs()
    ChangeMode(NORMAL_CODE)
end

function DesktopMode:MouseButtonPressed6()
    SelectDesktops()
    ChangeMode(SELECT_WINDOWS_CODE)
end
--------------------------------------------------------------------------------