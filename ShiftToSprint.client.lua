--[[ 
	HOW TO SET UP:
	- Place this script in a client sided folder, such as StarterGui or StarterCharacterScripts.
	- Feel free to change the sprinting speed (I have provided comments to help you). 
	- Hold any of the shift keys on your keyboard to sprint!
	
	Script written by LegendOJ1, contact me on the DevForum to provide feedback or ask questions.
	I'm always happy to help when you message me on the DevForum.
	No credit is required for this script.
]]--

local UserInputService = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer

UserInputService.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.LeftShift or key.KeyCode == Enum.KeyCode.RightShift then
		if plr.Character:FindFirstChild("Humanoid") then
			plr.Character.Humanoid.WalkSpeed = 32 -- Change sprinting speed to whatever you want. Default WalkSpeed is 16.
		end
	end
end)

UserInputService.InputEnded:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.LeftShift or key.KeyCode == Enum.KeyCode.RightShift then
		if plr.Character:FindFirstChild("Humanoid") then
			plr.Character.Humanoid.WalkSpeed = 16 -- 16 is the default WalkSpeed.
		end
	end
end)
