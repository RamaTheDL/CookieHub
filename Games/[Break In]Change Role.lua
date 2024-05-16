	local Window = OrionLib:MakeWindow({
		Name = "Toggle",
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
	Notify('Loaded!', "Script Successfully Loaded!", 'rbxassetid://7733911828', 4)
	wait(4.2)
	Notify('Notification!', 'Type ".toggle" to hide/show the Gui', 'rbxassetid://7733911828', 7)
	OrionLib:Init()