-- Kavo-UI-Library Module
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BlueDuck-jpg/UiLibrary/main/KavoUiLibrary.lua"))()

-- https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua for themes
local GrapeTheme = {
    SchemeColor = Color3.fromRGB(166, 71, 214),
    Background = Color3.fromRGB(64, 50, 71),
    Header = Color3.fromRGB(36, 28, 41),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(74, 58, 84)
}

function createNotification(Title, Text, Duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title,
        Text = Text,
        Duration = Duration
    }) 
end

local checkname;
function greetUser()
    local key;
    key = game.HttpService:JSONDecode(readfile("cchub.json"))
    local requests = request or syn.request
    local check_key = requests({
        Url="https://cchub.smktd.repl.co/findkey?key=" .. key.cchubkey,
        Method="GET",
        Headers=headers
    })
    check_name = game.HttpService:JSONEncode(check_key.Body):split('"')[13]:split("\\")[1]
    
    createNotification("Welcome!", "We're happy to see you, " .. check_name .. "!", 5)
end

greetUser()

local window = library.CreateLib("CCHub v1 - Universal, Welcome " .. check_name, GrapeTheme)
local tab1 = window:NewTab("Local Player")
local LocalPlayer = tab1:NewSection("Local Player")
local tab2 = window:NewTab("Aimbot & ESP")
local Aimbot = tab2:NewSection("Aimbot")
local ESP = tab2:NewSection("ESP")
local tab3 = window:NewTab("Credits & Settings")
local Credits = tab3:NewSection("Credits")
local Settings = tab3:NewSection("Settings")
local mouse = game.Players.LocalPlayer:GetMouse()

-- Anti Afk & Anti Kick
loadstring(game:HttpGet("https://raw.githubusercontent.com/BlueDuck-jpg/RobloxScripts/main/antiafk_antikick"))()

-- Local Player 

LocalPlayer:NewSlider("Walk Speed", "WalkSpeed", 100, 0, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

LocalPlayer:NewSlider("Jump Power", "JumpPower", 100, 0, function(t)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = t 
end)

LocalPlayer:NewButton("Noclip | N To Toggle", "Noclip", function()
    noclip = false
    game:GetService('RunService').Stepped:connect(function()
    if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)
    
    if key == "n" then
    noclip = not noclip
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)  
end)

local flynoclip = false

local flysettings = {
    enabled = false,
    speed = 2
}

LocalPlayer:NewToggle("Fly", "Fly", function(t)
    flysettings.enabled = t
end)

LocalPlayer:NewSlider("Fly Speed", "Fly Speed", 10, 0, function(t)
    flysettings.speed = t 
end)

local holding = {
    ["w"] = false,
    ["a"] = false,
    ["s"] = false,
    ["d"] = false,
    ["e"] = false,
    ["q"] = false
}

game:GetService("UserInputService").InputBegan:Connect(function(key)
    if holding[tostring(key.KeyCode.Name):lower()] ~= nil then
        holding[tostring(key.KeyCode.Name):lower()] = true
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(key)
    if holding[tostring(key.KeyCode.Name):lower()] ~= nil then
        holding[tostring(key.KeyCode.Name):lower()] = false
    end
end)


coroutine.resume(coroutine.create(function()
    while wait() do
        local stat, err = pcall(function()
            char = game.Players.LocalPlayer.Character
            if flysettings.enabled then
                flynoclip = true
                if holding["w"] then
                    char.HumanoidRootPart.CFrame = char.Torso.CFrame:ToWorldSpace(CFrame.new(0,0,-1 * flysettings.speed))
                end
                if holding["a"] then
                    char.HumanoidRootPart.CFrame = char.Torso.CFrame:ToWorldSpace(CFrame.new(-1 * flysettings.speed,0,0))
                end
                if holding["s"] then
                    char.HumanoidRootPart.CFrame = char.Torso.CFrame:ToWorldSpace(CFrame.new(0,0,flysettings.speed))
                end
                if holding["d"] then
                    char.HumanoidRootPart.CFrame = char.Torso.CFrame:ToWorldSpace(CFrame.new(1 * flysettings.speed,0,0))
                end
                if holding["e"] then
                    char.HumanoidRootPart.CFrame = char.Torso.CFrame:ToWorldSpace(CFrame.new(0,flysettings.speed,0))
                end
                if holding["q"] then
                    char.HumanoidRootPart.CFrame = char.Torso.CFrame:ToWorldSpace(CFrame.new(0,-1 * flysettings.speed,0))
                end
            else
                flynoclip = false
            end
        end)
        if not stat then end
    end
end))

game:GetService("RunService").RenderStepped:Connect(function()
    if flynoclip then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)

local infjumpenabled = false

mouse.KeyDown:Connect(function(key)
    if infjumpenabled then
        if key == " " then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
        end
    end
end)

LocalPlayer:NewToggle("Infinite Jump", "Infinite Jump", function(t)
    infjumpenabled = t 
end)

LocalPlayer:NewToggle("XRay", "XRay", function(t)
    if t then
        for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and not v.Parent.Parent:FindFirstChild("Humanoid") then
				v.Transparency = v.Transparency + 0.5
			end
		end
    else
        for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and not v.Parent.Parent:FindFirstChild("Humanoid") then
				v.Transparency = v.Transparency - 0.5
			end
		end
    end
end)

LocalPlayer:NewButton("BTools", "BTools", function()
    for item = 3, 4 do
        HopperBin = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        HopperBin.BinType = item
    end
end)

_G.AIMBOT = false

Aimbot:NewToggle("Enable Aimbot", "Aimbot", function(value)
    if value == true and _G.AIMBOT == false then
        _G.AIMBOT = true
        local localPlayer = game:GetService("Players").LocalPlayer
        
        local function player()
            local target = nil
            local dist = math.huge
        
            for i,v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    if v.Character and v.Character:FindFirstChild("Head") and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") and _G.AIMBOT then
                        local magnitude = (v.Character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).magnitude
        
                        if magnitude < dist then
                            target = v
                            dist = magnitude
                        end
                    end
                end
            end
            return target
        end
        
        local camera = game.Workspace.CurrentCamera
        local UIS = game:GetService("UserInputService")
        local aim = false
        
        game:GetService("RunService").RenderStepped:Connect(function()
            if aim then
                camera.CFrame = CFrame.new(camera.CFrame.Position,player().Character.Head.Position)
            end
        end)
        
        UIS.InputBegan:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton2 then
                aim = true
            end
        end)
        
        UIS.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton2 then
                aim = false
            end
        end)
    elseif value == false and _G.AIMBOT == true then
        _G.AIMBOT = false
    end
end)

local ESPEnabled = false
local DistanceEnabled = false
local TracersEnabled = false
local NameEnabled = false

pcall(function()
	
	Camera = game:GetService("Workspace").CurrentCamera
	RunService = game:GetService("RunService")
	camera = workspace.CurrentCamera
	Bottom = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)

	function GetPoint(vector3)
		local vector, onScreen = camera:WorldToViewportPoint(vector3)
		return {Vector2.new(vector.X,vector.Y),onScreen,vector.Z}
	end
	
	function MakeESP(model)
		local CurrentParent = model.Parent
	
		local TopL = Drawing.new("Line")
		local BottomL = Drawing.new("Line")
		local LeftL = Drawing.new("Line")
		local RightL = Drawing.new("Line")
		local Tracer = Drawing.new("Line")
		local Display = Drawing.new("Text")
		local Name = Drawing.new("Text")

        coroutine.resume(coroutine.create(function()
			while model.Parent == CurrentParent do
				
				local Distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - model.HumanoidRootPart.Position).Magnitude
                local GetP = GetPoint(model.HumanoidRootPart.Position)
                local headps = model.Head.CFrame
                
				if ESPEnabled and GetP[2] then
					
                    -- Calculate Cords
                    local topright = headps * CFrame.new(3,1, 0)
                    local topleft = headps * CFrame.new(-3,1, 0)
                    local bottomleft = headps * CFrame.new(-3,-5,0)
                    local bottomright = headps * CFrame.new(3,-5,0)
					topright = GetPoint(topright.p)[1]
					topleft = GetPoint(topleft.p)[1]
					bottomleft = GetPoint(bottomleft.p)[1]
					bottomright = GetPoint(bottomright.p)[1]

                    local teamcolor = game:GetService("Players")[model.Name].TeamColor.Color or Color3.fromRGB(0,0,0)
                    TopL.Color, BottomL.Color, RightL.Color, LeftL.Color = teamcolor, teamcolor, teamcolor, teamcolor
                    TopL.From, BottomL.From, RightL.From, LeftL.From = topleft, bottomleft, topright, topleft
                    TopL.To, BottomL.To, RightL.To, LeftL.To = topright, bottomright, bottomright, bottomleft
					TopL.Visible, BottomL.Visible, RightL.Visible, LeftL.Visible = true, true, true, true
				else
					TopL.Visible, BottomL.Visible, RightL.Visible, LeftL.Visible = false, false, false, false
                end
                
				if ESPEnabled and TracersEnabled and GetP[2] then
					Tracer.Color = game:GetService("Players")[model.Name].TeamColor.Color or Color3.fromRGB(0,0,0)
					Tracer.From = Bottom
					Tracer.To = GetPoint(headps.p)[1]
					Tracer.Thickness = 1.5
					Tracer.Visible = true
				else
					Tracer.Visible = false
                end
                
				if ESPEnabled and DistanceEnabled and GetP[2] then
					Display.Visible = true
					Display.Position = GetPoint(headps.p + Vector3.new(0,0.5,0))[1]
					Display.Center = true
					Display.Text = tostring(math.floor(Distance)).." studs"
					Display.Color = Color3.fromRGB(255, 255, 255)
				else
					Display.Visible = false
                end
                
                if ESPEnabled and NameEnabled and GetP[2] then
                    Name.Visible = true
					Name.Position = GetPoint(headps.p + Vector3.new(0,2.5,0))[1]
					Name.Center = true
					Name.Text = tostring(game:GetService("Players")[model.Name])
					Name.Color = Color3.fromRGB(255, 255, 255) 
                else
                    Name.Visible = false
                end
                
				RunService.RenderStepped:Wait()
			end
	
			TopL:Remove()
			BottomL:Remove()
			RightL:Remove()
			LeftL:Remove()
			Tracer:Remove()
			Display:Remove()
			Name:Remove()
        
        end))
    end
    
	for _, Player in next, game:GetService("Players"):GetChildren() do
		if Player.Name ~= game.Players.LocalPlayer.Name then
			MakeESP(Player.Character)
			Player.CharacterAdded:Connect(function()
				delay(0.5, function()
					MakeESP(Player.Character)
				end)
			end)
		end	
	end
	
	game:GetService("Players").PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            delay(0.5, function()
                MakeESP(player.Character)
            end)
		end)
	end)
end)

ESP:NewToggle("Enable ESP", "Enable ESP", function(t)
    ESPEnabled = t
end)

ESP:NewToggle("Enable Tracer", "Enable Tracer", function(t)
    TracersEnabled = t
end)

ESP:NewToggle("Show Distance", "Show Distance", function(t)
    DistanceEnabled = t 
end)

ESP:NewToggle("Display Name", "Display Name", function(t)
    NameEnabled = t 
end)

Credits:NewDropdown("Scripters", "List of scripters", {"Blue Duck#8344", "Feliposo21#3197"}, function(t)
    setclipboard(t) 
end)
Credits:NewButton("Copy Discord Link", "Copies CCHub Discord Server Link", function()
    if Clipboard ~= nil then
        Clipboard.set("https://discord.gg/2E36MxZvaN")
    elseif Synapse ~= nil then
        Synapse:Copy("https://discord.gg/2E36MxZvaN")
    elseif setclipboard ~= nil then
        setclipboard("https://discord.gg/2E36MxZvaN")
    end
end)
Credits:NewLabel("UI Library: xHeptc#2255")
Credits:NewLabel("UI Library Name: Kavo UI Library")

for theme, color in pairs(GrapeTheme) do
    Settings:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        library:ChangeColor(theme, color3)
    end)
end

Settings:NewButton("Reset Theme", "Reset theme", function()
    GrapeTheme = {
        SchemeColor = Color3.fromRGB(166, 71, 214),
        Background = Color3.fromRGB(64, 50, 71),
        Header = Color3.fromRGB(36, 28, 41),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(74, 58, 84)
    }
    library:ChangeColor("SchemeColor", Color3.fromRGB(166, 71, 214))
    library:ChangeColor("Background", Color3.fromRGB(64, 50, 71))
    library:ChangeColor("Header", Color3.fromRGB(36, 28, 41))
    library:ChangeColor("TextColor", Color3.fromRGB(255,255,255))
    library:ChangeColor("ElementColor", Color3.fromRGB(74, 58, 84))
end)

Settings:NewButton("Rejoin", "Rejoin", function()
    game.TeleportService:TeleportToPlaceAsync(game.PlaceId, game.JobId, game.Players.LocalPlayer) 
end)

Settings:NewButton("Switch Server", "Switch Server", function()
    game.TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer) 
end)

Settings:NewKeybind("Change Toggle Ui Keybind", "Change Toggle Ui Keybind", Enum.KeyCode.RightControl, function()
    library:ToggleUI()
end)

Settings:NewButton("Log out form CCHub", "Log out from CCHub", function()
    delfile("cchub.json")
    createNotification("LOGGED OUT", "You have successfully logged out.", 5)
    library:Destroy()
    loadstring(game:HttpGet("https://ghostbin.com/CMKFU/raw"))()
end)
