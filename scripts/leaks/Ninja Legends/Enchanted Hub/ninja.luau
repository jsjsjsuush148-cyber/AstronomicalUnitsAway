local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if PlayerGui:FindFirstChild("DeobfScripts") then
	PlayerGui:FindFirstChild("DeobfScripts"):Destroy()
end
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeobfScripts"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = PlayerGui
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 420, 0, 320)
MainFrame.Position = UDim2.new(0.5, - 210, 0.5, - 160)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = MainFrame
local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(160, 0, 0)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.3
MainStroke.Parent = MainFrame
local BgGradient = Instance.new("UIGradient")
BgGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 0, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(12, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 0, 0)),
})
BgGradient.Rotation = 135
BgGradient.Parent = MainFrame
local GlowInner = Instance.new("Frame")
GlowInner.Name = "GlowInner"
GlowInner.Size = UDim2.new(1, 0, 0.5, 0)
GlowInner.Position = UDim2.new(0, 0, 0, 0)
GlowInner.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
GlowInner.BackgroundTransparency = 0.95
GlowInner.BorderSizePixel = 0
GlowInner.ZIndex = 1
GlowInner.Parent = MainFrame
local GlowGrad = Instance.new("UIGradient")
GlowGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0)),
})
GlowGrad.Rotation = 180
GlowGrad.Parent = GlowInner
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 44)
TitleBar.Position = UDim2.new(0, 0, 0, 0)
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 0, 0)
TitleBar.BorderSizePixel = 0
TitleBar.ZIndex = 5
TitleBar.Parent = MainFrame
local TitleBarGrad = Instance.new("UIGradient")
TitleBarGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 0, 0)),
})
TitleBarGrad.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0.5),
	NumberSequenceKeypoint.new(1, 0.7),
})
TitleBarGrad.Rotation = 90
TitleBarGrad.Parent = TitleBar
local TitleBorder = Instance.new("Frame")
TitleBorder.Size = UDim2.new(1, 0, 0, 1)
TitleBorder.Position = UDim2.new(0, 0, 1, - 1)
TitleBorder.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
TitleBorder.BackgroundTransparency = 0.4
TitleBorder.BorderSizePixel = 0
TitleBorder.ZIndex = 6
TitleBorder.Parent = TitleBar
local TitleBorderGrad = Instance.new("UIGradient")
TitleBorderGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(0.3, Color3.fromRGB(200, 0, 0)),
	ColorSequenceKeypoint.new(0.7, Color3.fromRGB(200, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0)),
})
TitleBorderGrad.Parent = TitleBorder
local BarLabel = Instance.new("TextLabel")
BarLabel.Text = "VOIDDEVS PROVIDE DEOBF ENCHANTED HUB"
BarLabel.Size = UDim2.new(1, - 60, 1, 0)
BarLabel.Position = UDim2.new(0, 14, 0, 0)
BarLabel.BackgroundTransparency = 1
BarLabel.Font = Enum.Font.GothamBold
BarLabel.TextSize = 11
BarLabel.TextColor3 = Color3.fromRGB(180, 60, 60)
BarLabel.TextXAlignment = Enum.TextXAlignment.Left
BarLabel.TextTransparency = 0.3
BarLabel.ZIndex = 7
BarLabel.Parent = TitleBar
local CloseBtn = Instance.new("TextButton")
CloseBtn.Name = "CloseBtn"
CloseBtn.Size = UDim2.new(0, 28, 0, 28)
CloseBtn.Position = UDim2.new(1, - 36, 0.5, - 14)
CloseBtn.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
CloseBtn.BackgroundTransparency = 0.5
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 80, 80)
CloseBtn.TextSize = 13
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.BorderSizePixel = 0
CloseBtn.ZIndex = 8
CloseBtn.AutoButtonColor = false
CloseBtn.Parent = TitleBar
local CloseBtnCorner = Instance.new("UICorner")
CloseBtnCorner.CornerRadius = UDim.new(1, 0)
CloseBtnCorner.Parent = CloseBtn
local CloseBtnStroke = Instance.new("UIStroke")
CloseBtnStroke.Color = Color3.fromRGB(180, 0, 0)
CloseBtnStroke.Thickness = 1
CloseBtnStroke.Transparency = 0.5
CloseBtnStroke.Parent = CloseBtn
CloseBtn.MouseEnter:Connect(function()
	TweenService:Create(CloseBtn, TweenInfo.new(0.15), {
		BackgroundColor3 = Color3.fromRGB(200, 0, 0),
		BackgroundTransparency = 0.1,
		TextColor3 = Color3.fromRGB(255, 255, 255),
	}):Play()
end)
CloseBtn.MouseLeave:Connect(function()
	TweenService:Create(CloseBtn, TweenInfo.new(0.15), {
		BackgroundColor3 = Color3.fromRGB(120, 0, 0),
		BackgroundTransparency = 0.5,
		TextColor3 = Color3.fromRGB(255, 80, 80),
	}):Play()
end)
local Body = Instance.new("Frame")
Body.Name = "Body"
Body.Size = UDim2.new(1, 0, 1, - 44)
Body.Position = UDim2.new(0, 0, 0, 44)
Body.BackgroundTransparency = 1
Body.ZIndex = 2
Body.Parent = MainFrame
local Emblem = Instance.new("TextLabel")
Emblem.Text = "◈"
Emblem.Size = UDim2.new(0, 70, 0, 70)
Emblem.Position = UDim2.new(0.5, - 35, 0, 18)
Emblem.BackgroundTransparency = 1
Emblem.Font = Enum.Font.GothamBold
Emblem.TextSize = 52
Emblem.TextColor3 = Color3.fromRGB(220, 0, 0)
Emblem.ZIndex = 3
Emblem.Parent = Body
local emblemPulse = true
task.spawn(function()
	local growing = true
	while emblemPulse do
		local target = growing and Color3.fromRGB(255, 40, 40) or Color3.fromRGB(180, 0, 0)
		TweenService:Create(Emblem, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			TextColor3 = target
		}):Play()
		growing = not growing
		task.wait(1.2)
	end
end)
local Sep = Instance.new("Frame")
Sep.Size = UDim2.new(0, 260, 0, 1)
Sep.Position = UDim2.new(0.5, - 130, 0, 96)
Sep.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
Sep.BackgroundTransparency = 0.4
Sep.BorderSizePixel = 0
Sep.ZIndex = 3
Sep.Parent = Body
local SepGrad = Instance.new("UIGradient")
SepGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0)),
})
SepGrad.Parent = Sep
local Title = Instance.new("TextLabel")
Title.Text = "Enchanted Hub Deobfuscated"
Title.Size = UDim2.new(1, - 40, 0, 36)
Title.Position = UDim2.new(0, 20, 0, 104)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextStrokeColor3 = Color3.fromRGB(200, 0, 0)
Title.TextStrokeTransparency = 0.4
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.ZIndex = 3
Title.Parent = Body
local Subtitle = Instance.new("TextLabel")
Subtitle.Text = "Deobfuscated by VoidDevs"
Subtitle.Size = UDim2.new(1, - 40, 0, 22)
Subtitle.Position = UDim2.new(0, 20, 0, 140)
Subtitle.BackgroundTransparency = 1
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextSize = 13
Subtitle.TextColor3 = Color3.fromRGB(180, 60, 60)
Subtitle.TextXAlignment = Enum.TextXAlignment.Center
Subtitle.ZIndex = 3
Subtitle.Parent = Body
local TagLine = Instance.new("TextLabel")
TagLine.Text = "── x ──"
TagLine.Size = UDim2.new(1, 0, 0, 20)
TagLine.Position = UDim2.new(0, 0, 0, 166)
TagLine.BackgroundTransparency = 1
TagLine.Font = Enum.Font.Gotham
TagLine.TextSize = 12
TagLine.TextColor3 = Color3.fromRGB(120, 0, 0)
TagLine.TextXAlignment = Enum.TextXAlignment.Center
TagLine.ZIndex = 3
TagLine.Parent = Body
local ExecBtn = Instance.new("TextButton")
ExecBtn.Name = "ExecuteBtn"
ExecBtn.Size = UDim2.new(0, 200, 0, 46)
ExecBtn.Position = UDim2.new(0.5, - 100, 0, 198)
ExecBtn.BackgroundColor3 = Color3.fromRGB(160, 0, 0)
ExecBtn.Text = ""
ExecBtn.BorderSizePixel = 0
ExecBtn.AutoButtonColor = false
ExecBtn.ZIndex = 4
ExecBtn.Parent = Body
local ExecCorner = Instance.new("UICorner")
ExecCorner.CornerRadius = UDim.new(0, 6)
ExecCorner.Parent = ExecBtn
local ExecStroke = Instance.new("UIStroke")
ExecStroke.Color = Color3.fromRGB(220, 30, 30)
ExecStroke.Thickness = 1.5
ExecStroke.Transparency = 0.2
ExecStroke.Parent = ExecBtn
local ExecGradient = Instance.new("UIGradient")
ExecGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 10, 10)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 0, 0)),
})
ExecGradient.Rotation = 90
ExecGradient.Parent = ExecBtn
local ExecLabel = Instance.new("TextLabel")
ExecLabel.Text = "Execute!"
ExecLabel.Size = UDim2.new(1, 0, 1, 0)
ExecLabel.BackgroundTransparency = 1
ExecLabel.Font = Enum.Font.GothamBold
ExecLabel.TextSize = 17
ExecLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecLabel.TextStrokeColor3 = Color3.fromRGB(120, 0, 0)
ExecLabel.TextStrokeTransparency = 0.6
ExecLabel.ZIndex = 5
ExecLabel.Parent = ExecBtn
ExecBtn.MouseEnter:Connect(function()
	TweenService:Create(ExecBtn, TweenInfo.new(0.15), {
		BackgroundColor3 = Color3.fromRGB(210, 0, 0),
		Size = UDim2.new(0, 208, 0, 46),
		Position = UDim2.new(0.5, - 104, 0, 198),
	}):Play()
	TweenService:Create(ExecStroke, TweenInfo.new(0.15), {
		Transparency = 0,
	}):Play()
end)
ExecBtn.MouseLeave:Connect(function()
	TweenService:Create(ExecBtn, TweenInfo.new(0.15), {
		BackgroundColor3 = Color3.fromRGB(160, 0, 0),
		Size = UDim2.new(0, 200, 0, 46),
		Position = UDim2.new(0.5, - 100, 0, 198),
	}):Play()
	TweenService:Create(ExecStroke, TweenInfo.new(0.15), {
		Transparency = 0.2,
	}):Play()
end)
ExecBtn.MouseButton1Down:Connect(function()
	TweenService:Create(ExecBtn, TweenInfo.new(0.08), {
		BackgroundColor3 = Color3.fromRGB(100, 0, 0),
		Size = UDim2.new(0, 194, 0, 44),
		Position = UDim2.new(0.5, - 97, 0, 199),
	}):Play()
end)
ExecBtn.MouseButton1Up:Connect(function()
	TweenService:Create(ExecBtn, TweenInfo.new(0.08), {
		BackgroundColor3 = Color3.fromRGB(210, 0, 0),
		Size = UDim2.new(0, 208, 0, 46),
		Position = UDim2.new(0.5, - 104, 0, 198),
	}):Play()
	ScreenGui:Destroy()
	local _EnchantedHubNinja = loadstring(game:HttpGet('https://raw.githubusercontent.com/iblameaabis/Ililililililililililililil/refs/heads/main/W%20UI', true))():AddWindow('Enchanted Hub | Ninja | LEAKED BY VOIDDEVS', {
		main_color = Color3.fromRGB(1, 2, 3),
		min_size = Vector2.new(655, 650),
		can_resize = false,
	})
	local _Main = _EnchantedHubNinja:AddTab('Main')
	local _TimeOfDay = _Main:AddFolder('Time Of Day')
	_Main:AddLabel("LEAKED BY VOIDDEVS").TextSize = 34
	_TimeOfDay:AddButton('Day Time', function()
		game.Lighting.TimeOfDay = '12:00:00'
	end)
	_TimeOfDay:AddButton('Night Time', function()
		game.Lighting.TimeOfDay = '00:00:00'
	end)
	_TimeOfDay:AddButton('Dawn', function()
		game.Lighting.TimeOfDay = '09:00:00'
	end)
	local _Performance = _Main:AddFolder('Performance')
	_Performance:AddButton('Less Lag', function()
		local v23, v24, v25 = pairs(game:GetDescendants())
		while true do
			local v26
			v25, v26 = v23(v24, v25)
			if v25 == nil then
				break
			end
			if v26:IsA('ParticleEmitter') or (v26:IsA('Trail') or (v26:IsA('Smoke') or (v26:IsA('Fire') or v26:IsA('Sparkles')))) then
				v26.Enabled = false
			end
		end
		local _Lighting = game:GetService('Lighting')
		_Lighting.GlobalShadows = false
		_Lighting.FogEnd = 9000000000
		local v28, v29, v30 = pairs(workspace:GetDescendants())
		while true do
			local v31
			v30, v31 = v28(v29, v30)
			if v30 == nil then
				break
			end
			if v31:IsA('BasePart') and not v31.Parent:FindFirstChild('Humanoid') then
				v31.Material = Enum.Material.SmoothPlastic
				if v31:IsA('Texture') then
					v31:Destroy()
				end
			end
		end
		settings().Rendering.QualityLevel = 1
	end)
	_Performance:AddButton('FPS', function()
		RemoveLag()
		if cleanupLoop then
			task.cancel(cleanupLoop)
			cleanupLoop = nil
		end
		cleanupLoop = task.spawn(function()
			while true do
				wait(50)
				RemoveLag()
			end
		end)
	end)
	_Performance:AddSwitch('Hide Frames', function(p32)
		hideframes = p32
		if hideframes then
			local _ReplicatedStorage = game:GetService('ReplicatedStorage')
			local v34, v35, v36 = pairs(_ReplicatedStorage:GetChildren())
			while true do
				local v37
				v36, v37 = v34(v35, v36)
				if v36 == nil then
					break
				end
				if v37.Name:match('Frame$') then
					v37.Visible = not p32
				end
			end
		end
		if hideallframes then
			task.cancel(hideallframes)
		end
	end)
	local _AutoFarm = _EnchantedHubNinja:AddTab('Auto Farm')
	local _AutoFarm2 = _AutoFarm:AddFolder('Auto Farm')
	_AutoFarm2:AddSwitch('Auto Swing', function(p40)
		_G.swing = p40
		if _G.swing then
			while _G.swing do
				wait()
				game:GetService('Players').LocalPlayer.ninjaEvent:FireServer(unpack({
					'swingKatana',
				}))
			end
		end
	end)
	_AutoFarm2:AddSwitch('Auto Farm Chi', function(p41)
		_G.c = p41
		if _G.c then
			while _G.c do
				wait()
				local v42, v43, v44 = pairs(game.Workspace.spawnedCoins.Valley:GetChildren())
				while true do
					local v45
					v44, v45 = v42(v43, v44)
					if v44 == nil then
						break
					end
					if v45.Name == 'Blue Chi Crate' then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v45.Position)
						wait(0.3)
					end
				end
			end
		end
	end)
	_AutoFarm2:AddSwitch('Auto Farm Coins', function(p46)
		_G.co = p46
		if _G.co then
			while _G.co do
				wait()
				local v47, v48, v49 = pairs(game.Workspace.spawnedCoins.Valley:GetChildren())
				while true do
					local v50
					v49, v50 = v47(v48, v49)
					if v49 == nil then
						break
					end
					if v50.Name == 'Purple Coin Crate' then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v50.Position)
						wait(0.3)
					end
				end
			end
		end
	end)
	_AutoFarm2:AddSwitch('Auto Buy Hoops', function(p51)
		_G.hoops = p51
		if _G.hoops then
			while _G.hoops do
				wait()
				local _LocalPlayer = game.Players.LocalPlayer
				local v53, v54, v55 = pairs(workspace.Hoops:GetDescendants())
				while true do
					local v56
					v55, v56 = v53(v54, v55)
					if v55 == nil then
						break
					end
					if v56.ClassName == 'MeshPart' then
						v56.touchPart.CFrame = _LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			end
		end
	end)
	_AutoFarm2:AddSwitch('Auto Sell', function(p57)
		_G.sell = p57
		if _G.sell then
			while _G.sell do
				wait()
				game.workspace.sellAreaCircles.sellAreaCircle15.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait()
				game.workspace.sellAreaCircles.sellAreaCircle15.circleInner.CFrame = game.Workspace.Part.CFrame
			end
		end
	end)
	_AutoFarm2:AddSwitch('Auto Sell When Full', function(p58)
		_G.sell = p58
		if _G.sell then
			while _G.sell do
				wait()
				if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible then
					game.workspace.sellAreaCircles.sellAreaCircle15.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					wait()
					game.workspace.sellAreaCircles.sellAreaCircle15.circleInner.CFrame = game.Workspace.Part.CFrame
				end
			end
		end
	end)
	local _AutoBuy = _AutoFarm:AddFolder('Auto Buy')
	_AutoBuy:AddSwitch('Auto Buy Swords', function(p60)
		_G.sw = p60
		if _G.sw then
			while _G.sw do
				wait()
				game:GetService('Players').LocalPlayer.ninjaEvent:FireServer(unpack({
					'buyAllSwords',
					'Blazing Vortex Island',
				}))
			end
		end
	end)
	_AutoBuy:AddSwitch('Auto Buy Belts', function(p61)
		_G.sw = p61
		if _G.sw then
			while _G.sw do
				wait()
				game:GetService('Players').LocalPlayer.ninjaEvent:FireServer(unpack({
					'buyAllBelts',
					'Blazing Vortex Island',
				}))
			end
		end
	end)
	_AutoBuy:AddSwitch('Auto Buy Skills', function(p62)
		_G.sk = p62
		if _G.sk then
			while _G.sk do
				wait()
				game:GetService('Players').LocalPlayer.ninjaEvent:FireServer(unpack({
					'buyAllSkills',
					'Blazing Vortex Island',
				}))
			end
		end
	end)
	_AutoBuy:AddSwitch('Auto Buy Ranks', function(p63)
		_G.r = p63
		if _G.r then
			while _G.r do
				wait()
				local v64 = game:GetService('ReplicatedStorage').Ranks.Ground:GetChildren()
				local v65 = 'buyRank'
				for v66 = 1, # v64 do
					game:GetService('Players').LocalPlayer.ninjaEvent:FireServer(v65, v64[v66].Name)
				end
			end
		end
	end)
	_AutoBuy:AddSwitch('Auto Buy Shurikens', function(p67)
		_G.sh = p67
		if _G.sh then
			while _G.sh do
				wait()
				game:GetService('Players').LocalPlayer.ninjaEvent:FireServer(unpack({
					'buyAllShurikens',
					'Blazing Vortex Island',
				}))
			end
		end
	end)
	local _SettingsV2 = _EnchantedHubNinja:AddTab('Misc'):AddFolder('Settings V2')
	_SettingsV2:AddButton('Disable Trading', function()
		game:GetService('ReplicatedStorage').rEvents.tradingEvent:FireServer(unpack({
			'disableTrading',
		}))
	end)
	_SettingsV2:AddButton('Enable Trading', function()
		game:GetService('ReplicatedStorage').rEvents.tradingEvent:FireServer(unpack({
			'enableTrading',
		}))
	end)
	local _AutoEquip = _EnchantedHubNinja:AddTab('Pets'):AddFolder('Auto Equip')
	local v70, v71, u72 = pairs({
		['Twin Element Birdies'] = 'Equip all TEB',
		['Ultra Doom Colossus'] = 'Equip all UDC',
		['Inner Peace Legion'] = 'Equip all IPL',
		['GLITCH: Awakened Nighthunter'] = 'Equip all GAN',
		['Void Omega Pegasus'] = 'Equip all VOP',
	})
	while true do
		local v73
		u72, v73 = v70(v71, u72)
		if u72 == nil then
			break
		end
		_AutoEquip:AddButton(v73, function()
			unequipAllPets()
			local v74, v75, v76 = pairs(game:GetService('Players').LocalPlayer.petsFolder.Unique:GetChildren())
			while true do
				local v77
				v76, v77 = v74(v75, v76)
				if v76 == nil then
					break
				end
				if v77.Name == u72 then
					game:GetService('ReplicatedStorage').rEvents.equipPetEvent:FireServer('equipPet', v77)
				end
			end
		end)
	end
	_AutoEquip:AddSwitch('Auto Evolve Pets', function(p78)
		autoevolvepets = p78
		if autoevolvepets then
			_G.ePet = true
			wait()
			while _G.ePet do
				wait()
				local v79, v80, v81 = pairs(game:GetService('Players').LocalPlayer.petsFolder:GetChildren())
				while true do
					local v82
					v81, v82 = v79(v80, v81)
					if v81 == nil then
						break
					end
					local v83, v84, v85 = pairs(v82:GetChildren())
					while true do
						local v86
						v85, v86 = v83(v84, v85)
						if v85 == nil then
							break
						end
						local _Name = v86.Name
						game:GetService('ReplicatedStorage').rEvents.petEvolveEvent:FireServer('evolvePet', _Name)
					end
				end
			end
		end
	end)
	local _Buyelements = _EnchantedHubNinja:AddTab('Elements'):AddFolder('Buy elements')
	local v89, v90, v91 = pairs({
		Frost = 'Buy Frost',
		Inferno = 'Buy Inferno',
		Lightning = 'Buy Lightning',
		['Electral Chaos'] = 'Buy Electral Chaos',
		['Masterful Wrath'] = 'Buy Masterful Wrath',
		['Shadow Charge'] = 'Buy Shadow Charge',
		Shadowfire = 'Buy Shadowfire',
		['Eternity Storm'] = 'Buy Eternity Storm',
		['Blazing Entity'] = 'Buy Blazing Entity',
	})
	while true do
		local v92
		v91, v92 = v89(v90, v91)
		if v91 == nil then
			break
		end
		_Buyelements:AddButton(v92, function()
			local v93, v94, v95 = ipairs(elements)
			while true do
				local v96
				v95, v96 = v93(v94, v95)
				if v95 == nil then
					break
				end
				game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer(v96)
			end
		end)
	end
	local _MiscV3 = _EnchantedHubNinja:AddTab('Misc V3'):AddFolder('Misc V3')
	_MiscV3:AddSwitch('Invisibility', function(p98)
		invisibility = p98
		if invisibility then
			_G.invis = true
			wait()
			while _G.invis do
				wait()
				game.Players.LocalPlayer.ninjaEvent:FireServer('goInvisible')
			end
			if not invisibility then
				task.cancel(_G.invis)
			end
		end
	end)
	_MiscV3:AddSwitch('Infinite Jump', function(p99)
		infinitejump = p99
		if infinitejump then
			_G.iJumps = true
			local u100 = true
			game:GetService('UserInputService').JumpRequest:Connect(function()
				if u100 then
					game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState('Jumping')
				end
			end)
			if not infinitejump then
				task.cancel(_G.iJumps)
			end
		end
	end)
	_MiscV3:AddButton('Rejoin', function()
		local _TeleportService = game:GetService('TeleportService')
		local _LocalPlayer2 = game:GetService('Players').LocalPlayer
		_TeleportService:Teleport(game.PlaceId, _LocalPlayer2)
	end)
	_MiscV3:AddButton('Unlock All Islands', function()
		local _LocalPlayer3 = game.Players.LocalPlayer
		local v104 = {
			CFrame.new(80, 766, - 188),
			CFrame.new(- 128, 39439, 173),
			CFrame.new(183, 46010, 36),
			CFrame.new(188, 59594, 24),
			CFrame.new(166, 52607, 34),
			CFrame.new(180, 33206, 28),
			CFrame.new(80, 766, - 118),
			CFrame.new(233, 2013, 331),
			CFrame.new(165, 4047, 51),
			CFrame.new(186, 5656, 76),
			CFrame.new(189, 9284, 31),
			CFrame.new(135, 17686, 61),
			CFrame.new(171, 28255, 39),
			CFrame.new(139, 13680, 74),
			CFrame.new(108, 24069, 84),
			CFrame.new(175, 39317, 25),
			CFrame.new(226, 66669, 15),
			CFrame.new(197, 70271, 7),
			CFrame.new(140.093933, 74479.0938, 66.5151367, 0.939700544, 0, - 0.341998369, 0, - 1.00000048, 0, - 0.341998369, 0, - 0.939700961),
			CFrame.new(140.093933, 87087.3125, 66.5151367, 0.939700544, 0, - 0.341998369, 0, - 1.00000048, 0, - 0.341998369, 0, - 0.939700961),
			CFrame.new(140.093933, 83235.2266, 66.5151367, 0.939700544, 0, - 0.341998369, 0, - 1.00000048, 0, - 0.341998369, 0, - 0.939700961),
			CFrame.new(140.093933, 91282.3125, 66.5151367, 0.939700544, 0, - 0.341998369, 0, - 1.00000048, 0, - 0.341998369, 0, - 0.939700961),
		}
		local v105, v106, v107 = ipairs(v104)
		while true do
			local v108
			v107, v108 = v105(v106, v107)
			if v107 == nil then
				break
			end
			_LocalPlayer3.Character.HumanoidRootPart.CFrame = v108
			wait(0.1)
		end
	end)
	_EnchantedHubNinja:AddTab('Meditate'):AddFolder('Meditate')
	folder9:AddSwitch('Auto Train All Zones', function(p109)
		trainallzone = p109
		if trainallzone then
			local _LocalPlayer4 = game.Players.LocalPlayer
			local v111 = {
				CFrame.new(323.886536, 8830.5625, 86.6897125, 0.913021803, - 1.7190792799999999e-8, - 0.407910764, 3.03308703e-8, 1, 2.57457131e-8, 0.407910764, - 3.58786849e-8, 0.913021803),
				CFrame.new(- 149.893921, 12958.5273, 244.160095, 0.687048197, - 1.95576577e-9, 0.726611853, - 3.5282568e-8, 1, 3.60530734e-8, - 0.726611853, - 5.0406932e-8, 0.687048197),
				CFrame.new(328.426178, 16872.0977, - 10.9853659, - 0.463079929, - 9.71666623e-8, 0.886316538, - 1.50905244e-8, 1, 1.01745307e-7, - 0.886316538, 3.37412267e-8, - 0.463079929),
				CFrame.new(320.739563, 30383.0996, - 12.8224678, - 0.664686263, - 6.87606638e-9, 0.747122586, 1.51589763e-8, 1, 2.26897576e-8, - 0.747122586, 2.6407184e-8, - 0.664686263),
			}
			local v112, v113, v114 = ipairs(v111)
			while true do
				local v115
				v114, v115 = v112(v113, v114)
				if v114 == nil then
					break
				end
				_LocalPlayer4.Character.HumanoidRootPart.CFrame = CFrame.new(v115.Position)
				task.wait(0.1)
			end
		end
	end)
	folder9:AddSwitch('Mystical Midnight Waters', function(p116)
		mysticalmidnightwaters = p116
		if mysticalmidnightwaters then
			game.Players.LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(323.886536, 8830.5625, 86.6897125, 0.913021803, - 1.7190792799999999e-8, - 0.407910764, 3.03308703e-8, 1, 2.57457131e-8, 0.407910764, - 3.58786849e-8, 0.913021803)
		else
			game.Players.LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(- 15.7757254, 63.514267, 31.1953373, - 0.263172954, - 8.51272048e-8, - 0.964748681, 7.2572944999999995e-8, 1, - 1.08034811e-7, 0.964748681, - 9.84464918e-8, - 0.263172954)
		end
	end)
end)
local VersionLabel = Instance.new("TextLabel")
VersionLabel.Text = "v0.1 | Deobfuscator | VoidDevs On Top"
VersionLabel.Size = UDim2.new(1, 0, 0, 18)
VersionLabel.Position = UDim2.new(0, 0, 1, - 22)
VersionLabel.BackgroundTransparency = 1
VersionLabel.Font = Enum.Font.Gotham
VersionLabel.TextSize = 10
VersionLabel.TextColor3 = Color3.fromRGB(80, 0, 0)
VersionLabel.TextXAlignment = Enum.TextXAlignment.Center
VersionLabel.ZIndex = 3
VersionLabel.Parent = Body
local dragging = false
local dragStart = nil
local startPos = nil
TitleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)
UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)
CloseBtn.MouseButton1Click:Connect(function()
	emblemPulse = false
	TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 420, 0, 0),
		Position = UDim2.new(MainFrame.Position.X.Scale, MainFrame.Position.X.Offset, MainFrame.Position.Y.Scale, MainFrame.Position.Y.Offset + 160),
	}):Play()
	task.wait(0.3)
	ScreenGui:Destroy()
end)
MainFrame.BackgroundTransparency = 1
MainFrame.Size = UDim2.new(0, 420, 0, 0)
task.wait(0.05)
TweenService:Create(MainFrame, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
	BackgroundTransparency = 0,
	Size = UDim2.new(0, 420, 0, 320),
}):Play()
