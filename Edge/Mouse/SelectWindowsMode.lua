--------------------------------------------------------------------------------
-- Select Windows Mode
-- -------------------

SelectWindowsMode = NormalMode:new(nil, SELECT_WINDOWS_CODE)
function SelectWindowsMode:new(o, modeCode)
    o = o or NormalMode:new(o, modeCode)
    setmetatable(o, self)
    self.__index = self
    InitializeButton(o)
    return o
end

function SelectWindowsMode:MouseButtonPressed4()
    SelectPreviousWindows()
    ChangeMode(SELECT_WINDOWS_CODE)
end

function SelectWindowsMode:MouseButtonPressed5()
    SelectNextWindows()
    ChangeMode(SELECT_WINDOWS_CODE)
end

function SelectWindowsMode:MouseButtonReleased5()
end

function SelectWindowsMode:MouseButtonPressed6()
    SelectCurrentWindow()
    ChangeMode(NORMAL_CODE)
end
--------------------------------------------------------------------------------