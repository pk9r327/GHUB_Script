LEFT_MOUSE_BUTTON = 1
RIGHT_MOUSE_BUTTON = 3

NORMAL_CODE = 0
DESKTOP_CODE = 1
SELECT_WINDOWS_CODE = 2
PASTED_CODE = 3

TIME_CHANGE_MODE = 1000

IS_DEBUG = false

dofile[[D:\GHUB_Script\Mouse\Command.lua]]
dofile[[D:\GHUB_Script\Mouse\Mode.lua]]
dofile[[D:\GHUB_Script\Mouse\NormalMode.lua]]
dofile[[D:\GHUB_Script\Mouse\DesktopMode.lua]]
dofile[[D:\GHUB_Script\Mouse\SelectWindowsMode.lua]]
dofile[[D:\GHUB_Script\Mouse\PastedMode.lua]]

local mode = 0
local lastTimeChangeMode = 0
local isDebug = IS_DEBUG

local nomalMode = NormalMode:new()
local desktopMode = DesktopMode:new()
local selectWindowsMode = SelectWindowsMode:new()
local pastedMode = PastedMode:new()
local listMode = {nomalMode, desktopMode, selectWindowsMode, pastedMode}

EnablePrimaryMouseButtonEvents(true)

function OutputLog(message)
    if isDebug then
        OutputLogMessage(message)
    end
end

function OnEvent(event, arg)
    OutputLog("Event: " .. event .. " Arg: " .. arg .. "\n")

    UpdateMode()

    for _, v in pairs(listMode) do
        if v.modeCode == mode then
            v:OnEvent(event, arg)
            break
        end
    end
end

--- Thay đổi chế độ chuột
---@param m any modeCode chế độ chuột
function ChangeMode(m)
    OutputLog("Change Mode: " .. m .. "\n")

	if m ~= NORMAL_CODE then
    	lastTimeChangeMode = GetRunningTime()
	end
    mode = m
end

--- Cập nhập chế độ chuột
function UpdateMode()
    if mode == SELECT_WINDOWS_CODE then
        return
    elseif mode == PASTED_CODE then
        return
    end

    if mode ~= NORMAL_CODE and GetRunningTime() - lastTimeChangeMode > TIME_CHANGE_MODE then
        ChangeMode(NORMAL_CODE)
    end
end
