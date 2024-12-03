	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RamaTheDL/Library/main/Orion/Library/Source.lua')))()
	local function Notify(name, content, image, time)
		OrionLib:MakeNotification({
			Name = name,
			Content = content,
			Image = image,
			Time = time
		})
	end
	
	-- Locals
	local Events1 = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	getgenv().UseSkin = false
	getgenv().SkinType = false -- true = bocil
		
	-- Role Table
	local RolesTable = {
		"The Guest",
		"The Hungry",
		"The Hyper",
		"The Medic",
		"The Police",
		"The Protector",
		"The Stealthy",
		"The Swat"
		
	}
	
	local function GetRole(Role)
		if Role == "The Guest" then
			Events1:WaitForChild("MakeRole"):FireServer("LinkedSword", getgenv().UseSkin)
		elseif Role == "The Hungry" then
			Events1:WaitForChild("MakeRole"):FireServer("Chips", getgenv().SkinType, getgenv().UseSkin)
		elseif Role == "The Hyper" then
			Events1:WaitForChild("OutsideRole"):FireServer("Lollipop", getgenv().UseSkin)
		elseif Role == "The Medic" then
			Events1:WaitForChild("MakeRole"):FireServer("MedKit", getgenv().SkinType, getgenv().UseSkin)
		elseif Role == "The Police" then
			Events1:WaitForChild("OutsideRole"):FireServer("Gun", getgenv().UseSkin)
		elseif Role == "The Protector" then
			Events1:WaitForChild("OutsideRole"):FireServer("Bat", getgenv().SkinType, getgenv().UseSkin)
		elseif Role == "The Stealthy" then
			Events1:WaitForChild("MakeRole"):FireServer("TeddyBloxpin", getgenv().SkinType, getgenv().UseSkin)
		elseif Role == "The Swat" then
			Events1:WaitForChild("OutsideRole"):FireServer("SwatGun", getgenv().UseSkin)
		end
	end
	
	local Window = OrionLib:MakeWindow({
		Name = "Lobby",
		HidePremium = false,
		SaveConfig = false,
		ConfigFolder = "OrionTest",
		IntroText = "Loading Script...",
		IntroIcon = "rbxassetid://7733989869"
	})
	
	local Tab = Window:MakeTab({
		Name = "Roles",
		Icon = "rbxassetid://7743876054",
		PremiumOnly = false
	})
	local Section = Tab:AddSection({
		Name = "Roles"
	})
	Tab:AddDropdown({
		Name = "Pick Role:",
		Default = "",
		Options = RolesTable,
		Callback = function(Value)
			SelectedRole = Value
		end
	})
	Tab:AddToggle({
		Name = "Use Costume:",
		Default = false,
		Callback = function(Value)
			getgenv().UseSkin = Value
		end
	})
	Tab:AddToggle({
		Name = "Avatar Type:",
		Default = false,
		Callback = function(Value)
			if SelectedRole == "The Hungry" or SelectedRole == "The Medic" or SelectedRole == "The Protector" or SelectedRole == "The Stealthy" then
				getgenv().SkinType = Value
			else
				Notify('Error!', "Avatar Type only works for roles: The Hungry, The Medic, The Protector, and The Stealthy.", 'rbxassetid://7733911828', 7)
			end
		end
	})
	Tab:AddButton({
		Name = "Use Role",
		Callback = function()
			GetRole(SelectedRole)
		end
	})
	local Section = Tab:AddSection({
		Name = "Others"
	})
	Tab:AddButton({
		Name = "Autofarm Win",
		Callback = function()
			print("Maintance..")
		end
	})
	Notify('Notification!', "Author: Rama102031", 'rbxassetid://7733911828', 5)
	wait(1)
	Notify('Loaded!', "Script Successfully Loaded!", 'rbxassetid://7733911828', 4)
	OrionLib:AddToggleButton()
        OrionLib:Init()
