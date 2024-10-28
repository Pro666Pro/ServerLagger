local GameName = "Server Killer 💢💥 - By Nexer1234"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Server Killer 💢", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

if workspace:FindFirstChild("Baseplate") == nil then
local S = Instance.new("Part")
S.Name = "Baseplate"
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(-200000, -200000, -200000)
S.Size = Vector3.new(1000, 10, 1000)
S.Parent = workspace
end

local Script = Window:MakeTab({
	Name = "Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Script:AddSection({
	Name = "some cool server laggers scripts"
})

Scripts:AddButton({
	Name = "Equip Glovel",
	Callback = function(Value)
fireclickdetector(workspace.Lobby["Glovel"].ClickDetector)
	 end
})

Scripts:AddTextbox({
	Name = "Glovel Killer Power",
	Default = "Input",
    	TextDisappear = false,
	Callback = function(Value)
_G.Power = Value
	 end
})

Scripts:AddButton({
	Name = "TURN ON GLOVEL KILLER",
	Callback = function(Value)
game:GetService("ReplicatedStorage").DigEvent:FireServer("start")
wait(3)
for i = 1, _G.Power do
game:GetService("ReplicatedStorage").GlovelFunc:InvokeServer()
end
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Glovel Killer Turned On",Icon = "rbxassetid://7733658504",Duration = 5})
	 end
})

Scripts:AddButton({
	Name = "TURN OFF GLOVEL KILLER",
	Callback = function(Value)
game:GetService("ReplicatedStorage").GlovelCancel:FireServer()
	 end
})

Scripts:AddToggle({
	Name = "Glovel Killer Anti-Lag",
  	Default = false,
	Callback = function(Value)
_G.AntiLag = Value
while _G.AntiLag do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Part" then
                        v:Destroy()
                    end
                end
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
end
	 end
})
