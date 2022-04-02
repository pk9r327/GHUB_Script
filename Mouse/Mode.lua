--------------------------------------------------------------------------------
-- Mode
-- -----

Mode = {
    modeCode = -1,
    mouseButtonsPressed = {},
    mouseButtonsReleased = {}
}
function Mode:new(o, modeCode)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    o.modeCode = modeCode

    InitializeButton(o)
    return o
end

function Mode:OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED") then
        if self.mouseButtonsPressed[arg] ~= nil then
            self.mouseButtonsPressed[arg]()
        end
    elseif (event == "MOUSE_BUTTON_RELEASED") then
        if self.mouseButtonsReleased[arg] ~= nil then
            self.mouseButtonsReleased[arg]()
        end
    end
end

--- Nhấn nút chuột trái
function Mode:MouseButtonPressed1()
end

--- Thả nút chuột trái
function Mode:MouseButtonReleased1()
end

--- Nhấn nút chuột phải
function Mode:MouseButtonPressed2()
end

--- Thả nút chuột phải
function Mode:MouseButtonReleased2()
end

--- Nhấn nút dưới bên phải
function Mode:MouseButtonPressed4()
end

--- Thả nút dưới bên phải
function Mode:MouseButtonReleased4()
end

--- Nhấn nút trên bên phải
function Mode:MouseButtonPressed5()
end

--- Thả nút trên bên phải
function Mode:MouseButtonReleased5()
end

--- Nhấn nút chức năng
function Mode:MouseButtonPressed6()
end

--- Thả nút chức năng
function Mode:MouseButtonReleased6()
end
--------------------------------------------------------------------------------

function InitializeButton(o)
    o.mouseButtonsPressed =
    {
        o.MouseButtonPressed1,
        o.MouseButtonPressed2,
        nil,
        o.MouseButtonPressed4,
        o.MouseButtonPressed5,
        o.MouseButtonPressed6
    }
    o.mouseButtonsReleased =
    {
        o.MouseButtonReleased1,
        o.MouseButtonReleased2,
        nil,
        o.MouseButtonReleased4,
        o.MouseButtonReleased5,
        o.MouseButtonReleased6
    }
end