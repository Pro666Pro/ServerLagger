for _,v in pairs(game.Players:GetChildren()) do
                    if v.Character:FindFirstChild("rock") then
                        v.Character:Destroy()
                    end
                end

local GameName = "Server Lagger - By Nexer1234"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Server Lagger MUAHAHA x99999", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Script = Window:MakeTab({
	Name = "Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Script:AddSection({
	Name = "some cool server laggers scripts"
})

Scripts:AddButton({
	Name = "Equip Diamond",
	Callback = function(Value)
fireclickdetector(workspace.Lobby["Diamond"].ClickDetector)
	 end
})

Scripts:AddToggle({
	Name = "Diamond Glove Lagger { Diamond Glove Required }",
		
  	Default = false,
	Callback = function(Value)
_G.DiamondLagger = Value
while _G.DiamondLagger == true do
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
wait(0.00000000000000000000000000000000000000000000000000000000000000000000000001)
game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()
end
	 end
})

Scripts:AddButton({
	Name = "Equip Glovel",
	Callback = function(Value)
fireclickdetector(workspace.Lobby["Glovel"].ClickDetector)
	 end
})

Scripts:AddButton({
	Name = "TURN ON GLOVEL KILLER",
	Callback = function(Value)
game:GetService("ReplicatedStorage").DigEvent:FireServer("start")
wait(3)
for i = 1, 1000 do
game:GetService("ReplicatedStorage").GlovelFunc:InvokeServer()
end
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
task.wait()
end
	 end
})
