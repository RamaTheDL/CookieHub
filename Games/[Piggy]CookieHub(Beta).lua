--[[
-- // Key // --
Gold: Yellow Key
Alder: Purple Key
Neon Orange: Orange Key
Lime Green: Green Key
Toothpaste: Blue Key
Really Red: Red Key

-- // Special // --

Gas = if v:FindFirstChildOfClass("UnionOperation") and v.BrickColor == BrickColor.new("Persimmon") then
WaterGun = if v:FindFirstChildOfClass("SpecialMesh") and v.TextureId == "rbxassetid://1771169634" then

-- // Others // --
KeyCode = if v:FindFirstChildOfClass("SurfaceGui") and v:FindFirstChild("ItemPickupScript") then 
Hammer = if v:FindFirstChildOfClass("SpecialMesh") and v.TextureId == "16198294" then
Wrench = if v:FindFirstChildOfClass("SpecialMesh") and v.TextureId == "16884673" then
]]



-- // Locals // --
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RamaTheDL/Library/main/Orion/Library/Source.lua')))()
local WorkS = game:GetService("Workspace")
local LocalPlayer = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local OriginalWalkspeed = LocalPlayer.Character.Humanoid.WalkSpeed
local OriginalJumpPower = LocalPlayer.Character.Humanoid.JumpPower
local ModifiedWalkspeed = 50
local ModifiedJumpPower = 100
local OriginalBrightness = Lighting.Brightness
local OriginalFog = Lighting.FogEnd
local OriginalShadow = Lighting.GlobalShadows

-- // Floating Part // --
local Part = Instance.new("Part")
Part.Size = Vector3.new(5, 1, 5)
Part.Parent = game:GetService("Workspace")
Part.Anchored = true
Part.Transparency = 1
Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 999, 0)

-- // Functions // --
local function color3ToRGB(color)
	if typeof(color) == 'Color3' then
		local hex = color:ToHex()
		
		local r = tonumber('0x'..string.sub(hex,1,2))
		local g = tonumber('0x'..string.sub(hex,3,4))
		local b = tonumber('0x'..string.sub(hex,5,6))
		
		return r, g, b
	end
end

local function InfiniteJumpingEn(State)
	local InfiniteJumpEnabled = State
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJumpEnabled then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end

local function Notify(name, content, image, time)
	OrionLib:MakeNotification({
		Name = name,
		Content = content,
		Image = image,
		Time = time
	})
end

-- // Main Script // --
local Window = OrionLib:MakeWindow({
	Name = "Piggy",
	HidePremium = false,
	SaveConfig = false,
	ConfigFolder = "OrionTest",
	IntroText = "Loading Script...",
	IntroIcon = "rbxassetid://7733989869"
})
--[[
local Tab = Window:MakeTab({
	Name = "Get Items",
	Icon = "rbxassetid://7743869612",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Key"
})
Tab:AddButton({
	Name = "Green Key",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v.BrickColor == BrickColor.new("Lime Green") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Yellow Key",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v.BrickColor == BrickColor.new("Gold") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Blue Key",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v.BrickColor == BrickColor.new("Toothpaste") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Red Key",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v:FindFirstChildOfClass("Part") and v.BrickColor == BrickColor.new("Really Red") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Orange Key",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v.BrickColor == BrickColor.new("Neon Orange") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Purple Key",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v.BrickColor == BrickColor.new("Alder") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "White Key",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v:FindFirstChildOfClass("SpecialMesh").MeshId == "rbxassetid://456878024" then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})

local Section = Tab:AddSection({
	Name = "Gears"
})
Tab:AddButton({
	Name = "Green Gears",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v.BrickColor == BrickColor.new("Shamrock") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Red Gears",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v.BrickColor == BrickColor.new("Persimmon") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})

local Section = Tab:AddSection({
	Name = "Others"
})
Tab:AddButton({
	Name = "Hammer",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("SpecialMesh").TextureId == "16198294" then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				elseif v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("SpecialMesh").TextureId == "rbxassetid://16198294" then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Wrench",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v:FindFirstChildOfClass("SpecialMesh") then
					if v.TextureId == "16884673" then
						local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
						wait(0.05)
						LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
						wait(0.2)
						fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
						wait(0.3)
						LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
					end
					if v.TextureId == "rbxassetid://16884673" then
						local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
						wait(0.05)
						LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
						wait(0.2)
						fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
						wait(0.3)
						LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
					end
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "KeyCode",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("SurfaceGui") and v:FindFirstChild("ItemPickupScript") then
				local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
				wait(0.05)
				LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
				wait(0.2)
				fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
				wait(0.3)
				LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
			end
		end
	end    
})
Tab:AddButton({
	Name = "Planks",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v.BrickColor == BrickColor.new("BurntSiena") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Ammo",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v:FindFirstChildOfClass("SpecialMesh") then
					if v.TextureId == "725833458" then
						local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
						wait(0.05)
						LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
						wait(0.2)
						fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
						wait(0.3)
						LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
					end
					if v.TextureId == "rbxassetid://725833458" then
						local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
						wait(0.05)
						LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
						wait(0.2)
						fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
						wait(0.3)
						LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
					end
				end
			end
		end
	end    
})

local Section = Tab:AddSection({
	Name = "Special"
})
Tab:AddButton({
	Name = "Gas",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v:FindFirstChildOfClass("UnionOperation") and v.BrickColor == BrickColor.new("Persimmon") then
					local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.05)
					LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
					wait(0.2)
					fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
					wait(0.3)
					LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
				end
			end
		end
	end    
})
Tab:AddButton({
	Name = "Water Gun",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("ClickDetector") then
				if v:FindFirstChildOfClass("SpecialMesh") then
					if v.TextureId == "1771169634" then
						local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
						wait(0.05)
						LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
						wait(0.2)
						fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
						wait(0.3)
						LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
					end
					if v.TextureId == "rbxassetid://1771169634" then
						local cpos = LocalPlayer.Character.HumanoidRootPart.CFrame
						wait(0.05)
						LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
						wait(0.2)
						fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
						wait(0.3)
						LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
					end
				end
			end
		end
	end    
})
]]
local Tab = Window:MakeTab({
	Name = "Humanoid",
	Icon = "rbxassetid://7733916988",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Settings"
})
Tab:AddSlider({
	Name = "Walk Speed",
	Min = 0,
	Max = 500,
	Default = 20,
	Color = Color3.fromRGB(0, 151, 201),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		ModifiedWalkspeed = Value
	end    
})
Tab:AddSlider({
	Name = "Jump Power",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(0, 201, 3),
	Increment = 1,
	ValueName = "Power",
	Callback = function(Value)
		ModifiedJumpPower = Value
	end    
})
local Section = Tab:AddSection({
	Name = "Humanoid"
})
Tab:AddToggle({
	Name = "Enable Walk Speed",
	Default = false,
	Callback = function(Value)
		while Value do
			if Value == true then
				OriginalWalkspeed = LocalPlayer.Character.Humanoid.WalkSpeed
				LocalPlayer.Character.Humanoid.WalkSpeed = ModifiedWalkspeed
			else
				LocalPlayer.Character.Humanoid.WalkSpeed = OriginalWalkspeed
			end
			wait()
		end
	end    
})
Tab:AddToggle({
	Name = "Enable Jump Power",
	Default = false,
	Callback = function(Value)
		while Value do
			if Value == true then
				OriginalJumpPower = LocalPlayer.Character.Humanoid.JumpPower
				LocalPlayer.Character.Humanoid.JumpPower = ModifiedJumpPower
				LocalPlayer.Character.Humanoid.UseJumpPower = Value
			else
				LocalPlayer.Character.Humanoid.JumpPower = OriginalJumpPower
			end
			wait()
		end
	end    
})
Tab:AddToggle({
	Name = "Enable Infinite Jump",
	Default = false,
	Callback = function(Value)
		while Value do
			if Value == true then
				InfiniteJumpingEn(true)
				wait(0.3)
			else
				InfiniteJumpingEn(false)
			end
			wait()
		end
	end    
})
Tab:AddToggle({
	Name = "Enable Noclip",
	Default = false,
	Callback = function(Value)
		NoclippingV = Value
		if NoclippingV == true then
			Clipon = true
			Stepped = game:GetService("RunService").Stepped:Connect(function()
				if not Clipon == false then
					for a, b in pairs(Workspace:GetChildren()) do
   	             	if b.Name == LocalPlayer.Name then
   	             		for i, v in pairs(Workspace[LocalPlayer.Name]:GetChildren()) do
   	             			if v:IsA("BasePart") then
   	             				v.CanCollide = false
   	             			end
							end
						end
					end
					wait(0.2)
				else
					Stepped:Disconnect()
				end
			end)
		else
			Clipon = false
		end
	end
})
Tab:AddToggle({
	Name = "Enable Floating",
	Default = false,
	Callback = function(Value)
		Float = Value
		if Float == true then
			while Float == true do
				Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
				task.wait(.05)
			end
		end
		if Float == false then
			Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 999, 0)
		end
	end
})

local Tab = Window:MakeTab({
	Name = "Esp",
	Icon = "rbxassetid://7734052925",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "Piggy Esp & Traitor",
	Default = false,
	Callback = function(Value)
		if Value == true then
			while Value do
				for i, v in ipairs(WorkS:GetDescendants()) do
					if v:FindFirstChild("Enemy") and v:IsA("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
						v:FindFirstChild("Highlight"):Destroy()
						v:FindFirstChild("Highlight"):Destroy()
					end
					if v:FindFirstChild("Traitor") and v:IsA("Highlight") then
						v:FindFirstChild("Traitor"):Destroy()
						v:FindFirstChild("Traitor"):Destroy()
						v:FindFirstChild("Traitor"):Destroy()
					end
				end
				wait(0.1)
				for i, v in ipairs(WorkS:GetDescendants()) do
					if v:FindFirstChild("Enemy") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    	    			highlight.FillColor = Color3.fromRGB(255, 0, 0)
    	    			highlight.FillTransparency = 0.5
    	    			highlight.OutlineTransparency = 0
    	    			highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
    				elseif v:FindFirstChild("Enemy") then
    					local highlight = Instance.new("Highlight")
						highlight.Parent = v
    	    			highlight.FillColor = Color3.fromRGB(255, 0, 0)
    	    			highlight.FillTransparency = 0.5
    	    			highlight.OutlineTransparency = 0
    	    			highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
					end
					if v:FindFirstChild("Traitor") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    	    			highlight.FillColor = Color3.fromRGB(255, 0, 0)
    	    			highlight.FillTransparency = 0.5
    	    			highlight.OutlineTransparency = 0
    	    			highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
					elseif v:FindFirstChild("Traitor") then
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    	    			highlight.FillColor = Color3.fromRGB(255, 0, 0)
    	    			highlight.FillTransparency = 0.5
    	    			highlight.OutlineTransparency = 0
    	    			highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
					end
    			end
    			wait(2)
			end
		else
			for i=1, 2 do
				for i, v in ipairs(WorkS:GetDescendants()) do
					if v:FindFirstChild("Enemy") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
					end
				end
				wait(0.1)
			end
		end
	end    
})
Tab:AddToggle({
	Name = "Items Esp",
	Default = false,
	Callback = function(Value)
		if Value == true then
			while Value do
				-- // Add Highlight() // --
				for i, v in ipairs(WorkS:GetDescendants()) do
					-- // Brick/ItemPickupScript // --
					if v:FindFirstChild("ItemPickupScript") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
						wait(0.1)
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v.Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v.Color))
    	   			 --print(color3ToRGB(v.Color), ": Brick")
    				elseif v:FindFirstChild("ItemPickupScript") then
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v.Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v.Color))
    	   			 --print(color3ToRGB(v.Color), ": Brick")
    				end
    				
    				-- // ParticleEmitter // --
					if v:FindFirstChild("ParticleEmitter") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v.Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v.Color))
    	   			 --print(color3ToRGB(v.Color), ": ParticleEmitter")
    				elseif v:FindFirstChild("ParticleEmitter") then
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v.Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v.Color))
    	   			 --print(color3ToRGB(v.Color), ": ParticleEmitter")
					end
					
					-- // Special Map(Book 2) // --
					if v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("ProximityPrompt") and v:FindFirstChild("NewItemPickupScript") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v.Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v.Color))
    	   			 --print(color3ToRGB(v.Color), ": ParticleEmitter")
    				elseif v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("ProximityPrompt") and v:FindFirstChild("NewItemPickupScript") then
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v.Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v.Color))
    	   			 --print(color3ToRGB(v.Color), ": ParticleEmitter")
					end
				end
				wait(2)
			end
		else
			for i=1, 2 do
				for i, v in ipairs(WorkS:GetDescendants()) do
					if v:FindFirstChild("ParticleEmitter") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
					end
					if v:FindFirstChild("ItemPickupScript") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
					end
					if v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("ProximityPrompt") and v:FindFirstChild("NewItemPickupScript") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
					end
				end
			end
		end
	end    
})
Tab:AddToggle({
	Name = "Doors Esp",
	Default = false,
	Callback = function(Value)
		if Value == true then
			while Value do
				for i, v in ipairs(WorkS:GetDescendants()) do
					if v:FindFirstChildOfClass("TouchTransmitter") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
						wait(0.1)
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v.Parent:FindFirstChildOfClass("Part").Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v.Parent:FindFirstChildOfClass("Part").Color))
    	   			 print(v.Parent)
						--print(color3ToRGB(v.Parent.Color))
    				elseif v:FindFirstChildOfClass("TouchTransmitter") and v:FindFirstChildOfClass("ClickDetector") then
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v.Parent:FindFirstChildOfClass("Part").Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v.Parent:FindFirstChildOfClass("Part").Color))
    	   			 print(v.Parent)
						--print(color3ToRGB(v.Parent.Color))
    				end
    				
    				if v:FindFirstChildOfClass("TouchTransmitter") and v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("Script") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
						wait(0.1)
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v:FindFirstChildOfClass("Part").Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v:FindFirstChildOfClass("Part").Color))
    	   			 print(v.Parent)
						--print(color3ToRGB(v.Parent.Color))
    				elseif v:FindFirstChildOfClass("TouchTransmitter") and v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("Script") then
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
    				    highlight.FillColor = Color3.fromRGB(color3ToRGB(v:FindFirstChildOfClass("Part").Color))
    	    			highlight.FillTransparency = 0.5
    	   			 highlight.OutlineTransparency = 0
    	   			 highlight.OutlineColor = Color3.fromRGB(color3ToRGB(v:FindFirstChildOfClass("Part").Color))
    	   			 print(v.Parent)
						--print(color3ToRGB(v.Parent.Color))
    				end
				end
				wait(2)
			end
		else
			for i=1, 2 do
				for i, v in ipairs(WorkS:GetDescendants()) do
					if v:FindFirstChildOfClass("TouchTransmitter") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
					end
				end
			end
		end
	end    
})

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://7733911621",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "Full Bright & No Fog",
	Default = false,
	Callback = function(Value)
		if Value == true then
			Lighting.Brightness = 2
			Lighting.ClockTime = 14
			Lighting.FogEnd = 100000
			Lighting.GlobalShadows = false
			Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			for i,v in pairs(Lighting:GetDescendants()) do
				if v:IsA("Atmosphere") then
					v:Destroy()
				end
			end
		else
			Lighting.Brightness = OriginalBrightness
			Lighting.FogEnd = OriginalFog
			Lighting.GlobalShadows = GlobalShadows
		end
	end    
})
Notify('Notification!', "Author: Rama102031", 'rbxassetid://7733911828', 5)
wait(1)
Notify('Loaded!', "Script Successfully Loaded!", 'rbxassetid://7733911828', 5)
OrionLib:AddToggleButton()
OrionLib:Init()
--[[
local function TPpos(Pos)
	LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameArg
end
Tab:AddButton({
	Name = "Auto Escape House",
	Callback = function()
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("Mesh") then
				if v.TextureId == "16198294" then
					HammerPos = v:GetFullName().Parent.CFrame
					HammerCd = v:GetFullName():FindFirstChildOfClass("ClickDetector")
				else
					Notify('Error!', "The part you are looking for was not found.", 'rbxassetid://7733911828', 5)
				end
				if v.TextureId == "16884681" then
					WrenchPos = v:GetFullName().Parent.CFrame
					WrenchCd = v:GetFullName():FindFirstChildOfClass("ClickDetector")
				else
					Notify('Error!', "The part you are looking for was not found.", 'rbxassetid://7733911828', 5)
				end
			end
		end
		for i, v in ipairs(WorkS:GetDescendants()) do
			if v:FindFirstChildOfClass("Part") then
				if v.BrickColor == "SharmRock" then
					GreenGearsPos = v:GetFullName().CFrame
					GreenGearsCd = v:GetFullName():FindFirstChildOfClass("ClickDetector")
				else
					Notify('Error!', "The part you are looking for was not found.", 'rbxassetid://7733911828', 5)
				end
				wait()
				if v.BrickColor == "Persimmon" then
					RedGearsPos = v:GetFullName().CFrame
					RedGearsCd = v:GetFullName():FindFirstChildOfClass("ClickDetector")
				else
					Notify('Error!', "The part you are looking for was not found.", 'rbxassetid://7733911828', 5)
				end
			end
		end
		-- // Teleport // --
		TPpos(. . .)
	end    
})

-- // House // --
if v.BrickColor:
SharmRock, Persimmon

Hammer: 16198294(TextureId)
Wrench: 16884681(MeshId)
Keycode: SurfaceGui, ItemPickupScript, ClickDetector

Door: 23.874164581298828, 54.84001922607422, -84.62554931640625 or 25.982696533203125, 58.25456619262695, -87.05162811279297
Wrench: 17.4312801361084, 54.825523376464844, -83.78057861328125
Code: 32.09082794189453, 54.825523376464844, -83.89530944824219
]]
