--------------------------------------------------------------------------------
-- Normal Mode
-- -----------

NormalMode = Mode:new(nil, NORMAL_CODE)
function NormalMode:new(o, modeCode)
    o = o or Mode:new(o, modeCode)
    setmetatable(o, self)
    self.__index = self
    InitializeButton(o)
    return o
end

function NormalMode:MouseButtonPressed1()
    PressMouseButton(LEFT_MOUSE_BUTTON)
end

function NormalMode:MouseButtonReleased1()
    ReleaseMouseButton(LEFT_MOUSE_BUTTON)
    ChangeMode(NORMAL_CODE)
end

function NormalMode:MouseButtonPressed2()
    PressMouseButton(RIGHT_MOUSE_BUTTON)
end

function NormalMode:MouseButtonReleased2()
    ReleaseMouseButton(RIGHT_MOUSE_BUTTON)
    ChangeMode(NORMAL_CODE)
end

function NormalMode:MouseButtonPressed4()
    Paste()
    ChangeMode(PASTED_CODE)
end

function NormalMode:MouseButtonPressed5()
    CopyPress()
end

function NormalMode:MouseButtonReleased5()
    CopyRelease()
    ChangeMode(NORMAL_CODE)
end

function NormalMode:MouseButtonPressed6()
    ChangeMode(DESKTOP_CODE)
end
--------------------------------------------------------------------------------