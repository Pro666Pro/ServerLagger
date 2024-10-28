for _,v in pairs(game.Players:GetChildren()) do
                    if v.Character:FindFirstChild("rock") then
                        v.Character:Destroy()
                    end
                end

local GameName = "Server Lagger - By Nexer1234"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Server Lagger", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

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
game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()
end
	 end
})
