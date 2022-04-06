--------------------------------------------------------------------------------
-- Pasted Mode
-- -----------------

PastedMode = NormalMode:new(nil, PASTED_CODE)
function PastedMode:new(o, modeCode)
    o = o or NormalMode:new(o, modeCode)
    setmetatable(o, self)
    self.__index = self
    InitializeButton(o)
    return o
end

function PastedMode:MouseButtonPressed5()
    PressKey("enter")
    ReleaseKey("enter")
    ChangeMode(NORMAL_CODE)
end

function PastedMode:MouseButtonReleased5()
end
--------------------------------------------------------------------------------
