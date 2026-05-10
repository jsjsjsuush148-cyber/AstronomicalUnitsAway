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
BarLabel.Text = "VOIDDEVS PROVIDE DEOBF ENCHANTED HUB | PAID VERSION"
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
Title.Text = "Enchanted Hub (Paid Versiob) Deobfuscated"
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
	local UIWindow = loadstring(game:HttpGet('https://pastebin.com/raw/WRUyYTdY'))():MakeWindow({
		Name = 'Paid V1 | LEAKEDDDD LOLLLL XDDD',
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = 'Name',
	})
	print('Successfully executed.')
	local mainTab = UIWindow:MakeTab({
		Name = 'LEAKED LOLLLL',
		Icon = 'rbxassetid://1',
		PremiumOnly = false,
	})
	mainTab:AddButton({
		Name = 'Load Elerium V2 Version',
		Callback = function()
			local _EnchantedHubPaidVersion = loadstring(game:HttpGet('https://raw.githubusercontent.com/iblameaabis/Ililililililililililililil/refs/heads/main/W%20UI', true))():AddWindow('Enchanted Hub | Paid Version | DEOBFUSCATED BY VOIDDEVS', {
				main_color = Color3.fromRGB(0, 0, 0),
				min_size = Vector2.new(610, 520),
				can_resize = false,
			})
			local _Introduction = _EnchantedHubPaidVersion:AddTab('Introduction')
			_Introduction:Show()
			_Introduction:AddLabel('SCRIPT DEOBFUSCATED BY VOIDDEVS!! FOR MORE SCRIPTS LIKE THIS JOIN THE DISCORD!!!').TextSize = 26
			_Introduction:AddLabel('Owner Of Enchanted Hub Is iblamaabis')
			_Introduction:AddLabel('The Credits Goes to iblameaabis For making the script')
			local _FastGlitch = _EnchantedHubPaidVersion:AddTab('Fast Glitch')
			_Introduction:Show()
			_FastGlitch:AddLabel('-----Fast Bugs Works On A Good Ping-----')
			_FastGlitch:AddSwitch('Ancient Jungle Rock', function(p6)
				if p6 then
					local _LocalPlayer = game.Players.LocalPlayer
					local _LeftHand = (_LocalPlayer.Character or _LocalPlayer.CharacterAdded:Wait()):WaitForChild('LeftHand')
					local _Rock = game.Workspace.machinesFolder:FindFirstChild('Ancient Jungle Rock'):FindFirstChild('Rock')
					_G.jungleautorock = true
					while _G.jungleautorock do
						if _Rock then
							_Rock.Size = Vector3.new(2, 1, 1)
							_Rock.Transparency = 1
							local v10, v11, v12 = pairs(_Rock.rockGui:GetChildren())
							while true do
								local v13
								v12, v13 = v10(v11, v12)
								if v12 == nil then
									break
								end
								v13.Visible = false
							end
							_Rock.CanCollide = false
							if _Rock:FindFirstChild('rockEmitter') then
								_Rock.rockEmitter:Destroy()
							end
							if _Rock:FindFirstChild('hoopParticle') then
								_Rock.hoopParticle:Destroy()
							end
							if _Rock:FindFirstChild('lavaParticle') then
								_Rock.lavaParticle:Destroy()
							end
							_Rock.CFrame = _LeftHand.CFrame
						else
							warn('Rock not found.')
						end
						wait()
					end
				else
					local v19, _ = pcall(function()
						local _Rock2 = game.Workspace.machinesFolder:FindFirstChild('Ancient Jungle Rock'):FindFirstChild('Rock')
						_G.jungleautorock = false
						if _Rock2 then
							local v15, v16, v17 = pairs(_Rock2.rockGui:GetChildren())
							while true do
								local v18
								v17, v18 = v15(v16, v17)
								if v17 == nil then
									break
								end
								v18.Visible = true
							end
							_Rock2.CanCollide = true
							_Rock2.Transparency = 0
							_Rock2.CFrame = CFrame.new(_Rock2.originalPosition.Value)
							_Rock2.Size = Vector3.new(23.18409538269043, 20.20000648498535, 24.44658088684082)
						else
							warn('Rock not found in Ancient Jungle.')
						end
					end)
					if not v19 then
						warn('Error turning Ancient Jungle Rock off.')
					end
				end
			end):Set(false)
			_FastGlitch:AddSwitch('Muscle King Rock', function(p20)
				if p20 then
					local _LocalPlayer2 = game.Players.LocalPlayer
					local _LeftHand2 = (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):WaitForChild('LeftHand')
					local _Rock3 = game.Workspace.machinesFolder:FindFirstChild('Muscle King Mountain'):FindFirstChild('Rock')
					_G.musclekingautorock = true
					while _G.musclekingautorock do
						if _Rock3 then
							_Rock3.Size = Vector3.new(2, 1, 1)
							_Rock3.Transparency = 1
							local v24, v25, v26 = pairs(_Rock3.rockGui:GetChildren())
							while true do
								local v27
								v26, v27 = v24(v25, v26)
								if v26 == nil then
									break
								end
								v27.Visible = false
							end
							_Rock3.CanCollide = false
							if _Rock3:FindFirstChild('rockEmitter') then
								_Rock3.rockEmitter:Destroy()
							end
							if _Rock3:FindFirstChild('hoopParticle') then
								_Rock3.hoopParticle:Destroy()
							end
							if _Rock3:FindFirstChild('lavaParticle') then
								_Rock3.lavaParticle:Destroy()
							end
							_Rock3.CFrame = _LeftHand2.CFrame
						else
							warn('Rock not found.')
						end
						wait()
					end
				else
					local _, _ = pcall(function()
						local _Rock4 = game.Workspace.machinesFolder:FindFirstChild('Muscle King Mountain'):FindFirstChild('Rock')
						_G.musclekingautorock = false
						if _Rock4 then
							local v29, v30, v31 = pairs(_Rock4.rockGui:GetChildren())
							while true do
								local v32
								v31, v32 = v29(v30, v31)
								if v31 == nil then
									break
								end
								v32.Visible = true
							end
							_Rock4.CanCollide = true
							_Rock4.Transparency = 0
							_Rock4.CFrame = CFrame.new(_Rock4.originalPosition.Value)
							_Rock4.Size = Vector3.new(141.97381591796875, 123.69998931884766, 149.70497131347656)
						else
							warn('Rock not found in Muscle King Mountain.')
						end
					end)
				end
			end):Set(false)
			_FastGlitch:AddSwitch('Rock Of Legends', function(p33)
				if p33 then
					local _LocalPlayer3 = game.Players.LocalPlayer
					local _LeftHand3 = (_LocalPlayer3.Character or _LocalPlayer3.CharacterAdded:Wait()):WaitForChild('LeftHand')
					local _Rock5 = game.Workspace.machinesFolder:FindFirstChild('Rock Of Legends'):FindFirstChild('Rock')
					_G.legendsautorock = true
					while _G.legendsautorock do
						if _Rock5 then
							_Rock5.Size = Vector3.new(2, 1, 1)
							_Rock5.Transparency = 1
							local v37, v38, v39 = pairs(_Rock5.rockGui:GetChildren())
							while true do
								local v40
								v39, v40 = v37(v38, v39)
								if v39 == nil then
									break
								end
								v40.Visible = false
							end
							_Rock5.CanCollide = false
							if _Rock5:FindFirstChild('rockEmitter') then
								_Rock5.rockEmitter:Destroy()
							end
							if _Rock5:FindFirstChild('hoopParticle') then
								_Rock5.hoopParticle:Destroy()
							end
							if _Rock5:FindFirstChild('lavaParticle') then
								_Rock5.lavaParticle:Destroy()
							end
							_Rock5.CFrame = _LeftHand3.CFrame
						else
							warn('Rock not found.')
						end
						wait()
					end
				else
					local _, _ = pcall(function()
						local _Rock6 = game.Workspace.machinesFolder:FindFirstChild('Rock Of Legends'):FindFirstChild('Rock')
						_G.legendsautorock = false
						if _Rock6 then
							local v42, v43, v44 = pairs(_Rock6.rockGui:GetChildren())
							while true do
								local v45
								v44, v45 = v42(v43, v44)
								if v44 == nil then
									break
								end
								v45.Visible = true
							end
							_Rock6.CanCollide = true
							_Rock6.Transparency = 0
							_Rock6.CFrame = CFrame.new(_Rock6.originalPosition.Value)
							_Rock6.Size = Vector3.new(106.04995727539063, 92.39998626708984, 111.82489013671875)
						else
							warn('Rock not found.')
						end
					end)
				end
			end):Set(false)
			_FastGlitch:AddSwitch('Inferno Rock', function(p46)
				if p46 then
					local _LocalPlayer4 = game.Players.LocalPlayer
					local _LeftHand4 = (_LocalPlayer4.Character or _LocalPlayer4.CharacterAdded:Wait()):WaitForChild('LeftHand')
					local _Rock7 = game.Workspace.machinesFolder:FindFirstChild('Inferno Rock'):FindFirstChild('Rock')
					_G.infernoautorock = true
					while _G.infernoautorock do
						if _Rock7 then
							_Rock7.Size = Vector3.new(2, 1, 1)
							_Rock7.Transparency = 1
							local v50, v51, v52 = pairs(_Rock7.rockGui:GetChildren())
							while true do
								local v53
								v52, v53 = v50(v51, v52)
								if v52 == nil then
									break
								end
								v53.Visible = false
							end
							_Rock7.CanCollide = false
							if _Rock7:FindFirstChild('rockEmitter') then
								_Rock7.rockEmitter:Destroy()
							end
							if _Rock7:FindFirstChild('hoopParticle') then
								_Rock7.hoopParticle:Destroy()
							end
							if _Rock7:FindFirstChild('lavaParticle') then
								_Rock7.lavaParticle:Destroy()
							end
							_Rock7.CFrame = _LeftHand4.CFrame
						else
							warn('Rock not found.')
						end
						wait()
					end
				else
					local _, _ = pcall(function()
						local _Rock8 = game.Workspace.machinesFolder:FindFirstChild('Inferno Rock'):FindFirstChild('Rock')
						_G.infernoautorock = false
						if _Rock8 then
							local v55, v56, v57 = pairs(_Rock8.rockGui:GetChildren())
							while true do
								local v58
								v57, v58 = v55(v56, v57)
								if v57 == nil then
									break
								end
								v58.Visible = true
							end
							_Rock8.CanCollide = true
							_Rock8.Transparency = 0
							_Rock8.CFrame = CFrame.new(_Rock8.originalPosition.Value)
							_Rock8.Size = Vector3.new(80.6851577758789, 70.2999496459961, 85.07884979248047)
						else
							warn('Rock not found in Muscle King Mountain.')
						end
					end)
				end
			end):Set(false)
			_FastGlitch:AddSwitch('Mystic Rock', function(p59)
				if p59 then
					local _LocalPlayer5 = game.Players.LocalPlayer
					local _LeftHand5 = (_LocalPlayer5.Character or _LocalPlayer5.CharacterAdded:Wait()):WaitForChild('LeftHand')
					local _Rock9 = game.Workspace.machinesFolder:FindFirstChild('Mystic Rock'):FindFirstChild('Rock')
					_G.mysticautorock = true
					while _G.mysticautorock do
						if _Rock9 then
							_Rock9.Size = Vector3.new(2, 1, 1)
							_Rock9.Transparency = 1
							local v63, v64, v65 = pairs(_Rock9.rockGui:GetChildren())
							while true do
								local v66
								v65, v66 = v63(v64, v65)
								if v65 == nil then
									break
								end
								v66.Visible = false
							end
							_Rock9.CanCollide = false
							if _Rock9:FindFirstChild('rockEmitter') then
								_Rock9.rockEmitter:Destroy()
							end
							if _Rock9:FindFirstChild('hoopParticle') then
								_Rock9.hoopParticle:Destroy()
							end
							if _Rock9:FindFirstChild('lavaParticle') then
								_Rock9.lavaParticle:Destroy()
							end
							_Rock9.CFrame = _LeftHand5.CFrame
						else
							warn('Rock not found.')
						end
						wait()
					end
				else
					local _, _ = pcall(function()
						local _Rock10 = game.Workspace.machinesFolder:FindFirstChild('Mystic Rock'):FindFirstChild('Rock')
						_G.mysticautorock = false
						if _Rock10 then
							local v68, v69, v70 = pairs(_Rock10.rockGui:GetChildren())
							while true do
								local v71
								v70, v71 = v68(v69, v70)
								if v70 == nil then
									break
								end
								v71.Visible = true
							end
							_Rock10.CanCollide = true
							_Rock10.Transparency = 0
							_Rock10.CFrame = CFrame.new(_Rock10.originalPosition.Value)
							_Rock10.Size = Vector3.new(106.04995727539063, 92.39998626708984, 111.82489013671875)
						else
							warn('Rock not found in Muscle King Mountain.')
						end
					end)
				end
			end):Set(false)
			_FastGlitch:AddSwitch('Frozen Rock', function(p72)
				local _LocalPlayer6 = game.Players.LocalPlayer
				local _LeftHand6 = (_LocalPlayer6.Character or _LocalPlayer6.CharacterAdded:Wait()):WaitForChild('LeftHand')
				local _Rock11 = game.Workspace.machinesFolder:FindFirstChild('Frozen Rock'):FindFirstChild('Rock')
				if p72 then
					_G.frozenautorock = true
					while _G.frozenautorock do
						if _Rock11 then
							_Rock11.Size = Vector3.new(2, 1, 1)
							_Rock11.Transparency = 1
							_Rock11.CanCollide = false
							local v76, v77, v78 = pairs(_Rock11.rockGui:GetChildren())
							while true do
								local v79
								v78, v79 = v76(v77, v78)
								if v78 == nil then
									break
								end
								v79.Visible = false
							end
							local v80, v81, v82 = ipairs({
								'rockEmitter',
								'hoopParticle',
								'lavaParticle',
							})
							while true do
								local v83
								v82, v83 = v80(v81, v82)
								if v82 == nil then
									break
								end
								if _Rock11:FindFirstChild(v83) then
									_Rock11[v83]:Destroy()
								end
							end
							_Rock11.CFrame = _LeftHand6.CFrame
						else
							warn('Frozen Rock not found.')
						end
						wait()
					end
				else
					_G.frozenautorock = false
					pcall(function()
						if _Rock11 then
							local v84, v85, v86 = pairs(_Rock11.rockGui:GetChildren())
							while true do
								local v87
								v86, v87 = v84(v85, v86)
								if v86 == nil then
									break
								end
								v87.Visible = true
							end
							_Rock11.CanCollide = true
							_Rock11.Transparency = 0
							_Rock11.Size = Vector3.new(80.6851577758789, 70.2999496459961, 85.07884979248047)
							_Rock11.CFrame = CFrame.new(_Rock11.originalPosition.Value)
						else
							warn('Frozen Rock not found in Muscle King Mountain.')
						end
					end)
				end
			end):Set(false)
			_FastGlitch:AddSwitch('Tiny Rock', function(p88)
				if p88 then
					local _LocalPlayer7 = game.Players.LocalPlayer
					local _LeftHand7 = (_LocalPlayer7.Character or _LocalPlayer7.CharacterAdded:Wait()):WaitForChild('LeftHand')
					local _Rock12 = game.Workspace.machinesFolder:FindFirstChild('Tiny Rock'):FindFirstChild('Rock')
					_G.tinyautorock = true
					while _G.tinyautorock do
						if _Rock12 then
							_Rock12.Size = Vector3.new(2, 1, 1)
							_Rock12.Transparency = 1
							_Rock12.CanCollide = false
							local v92, v93, v94 = pairs(_Rock12.rockGui:GetChildren())
							while true do
								local v95
								v94, v95 = v92(v93, v94)
								if v94 == nil then
									break
								end
								v95.Visible = false
							end
							local v96, v97, v98 = ipairs({
								'rockEmitter',
								'hoopParticle',
								'lavaParticle',
							})
							while true do
								local v99
								v98, v99 = v96(v97, v98)
								if v98 == nil then
									break
								end
								if _Rock12:FindFirstChild(v99) then
									_Rock12[v99]:Destroy()
								end
							end
							_Rock12.CFrame = _LeftHand7.CFrame
						else
							warn('Tiny Rock not found.')
						end
						wait()
					end
				else
					_G.tinyautorock = false
					pcall(function()
						local _Rock13 = game.Workspace.machinesFolder:FindFirstChild('Tiny Rock'):FindFirstChild('Rock')
						if _Rock13 then
							local v101, v102, v103 = pairs(_Rock13.rockGui:GetChildren())
							while true do
								local v104
								v103, v104 = v101(v102, v103)
								if v103 == nil then
									break
								end
								v104.Visible = true
							end
							_Rock13.CanCollide = true
							_Rock13.Transparency = 0
							_Rock13.Size = Vector3.new(23.18409538269043, 20.20000648498535, 24.44658088684082)
							_Rock13.CFrame = CFrame.new(_Rock13.originalPosition.Value)
						else
							warn('Tiny Rock not found in Muscle King Mountain.')
						end
					end)
				end
			end):Set(false)
			local _FarmV2 = _EnchantedHubPaidVersion:AddTab('FarmV2')
			_FarmV2:Show()
			_FarmV2:AddSwitch('Fast Rebirth', function(p106)
				fastRebirth = p106
				if fastRebirth then
					spawn(function()
						local _ReplicatedStorage = game:GetService('ReplicatedStorage')
						local _LocalPlayer8 = game:GetService('Players').LocalPlayer
						local function u118(_)
							local _petsFolder = _LocalPlayer8.petsFolder
							local v110, v111, v112 = pairs(_petsFolder:GetChildren())
							while true do
								local v113
								v112, v113 = v110(v111, v112)
								if v112 == nil then
									break
								end
								if v113:IsA('Folder') then
									local v114, v115, v116 = pairs(v113:GetChildren())
									while true do
										local v117
										v116, v117 = v114(v115, v116)
										if v116 == nil then
											break
										end
										_ReplicatedStorage.rEvents.equipPetEvent:FireServer('unequipPet', v117)
									end
								end
							end
							task.wait(0.1)
						end
						local function v124(p119)
							u118()
							task.wait(0.01)
							local v120, v121, v122 = pairs(_LocalPlayer8.petsFolder.Unique:GetChildren())
							while true do
								local v123
								v122, v123 = v120(v121, v122)
								if v122 == nil then
									break
								end
								if v123.Name == p119 then
									_ReplicatedStorage.rEvents.equipPetEvent:FireServer('equipPet', v123)
								end
							end
						end
						local v125 = u118
						local function v132(p126)
							local v127 = workspace.machinesFolder:FindFirstChild(p126)
							if not v127 then
								local v128, v129, v130 = pairs(workspace:GetChildren())
								while true do
									local v131
									v130, v131 = v128(v129, v130)
									if v130 == nil then
										break
									end
									if v131:IsA('Folder') and v131.Name:find('machines') then
										v127 = v131:FindFirstChild(p126)
										if v127 then
											break
										end
									end
								end
							end
							return v127
						end
						local function v134()
							local _VirtualInputManager = game:GetService('VirtualInputManager')
							_VirtualInputManager:SendKeyEvent(true, 'E', false, game)
							task.wait(0.1)
							_VirtualInputManager:SendKeyEvent(false, 'E', false, game)
						end
						while fastRebirth do
							local v135 = 10000 + 5000 * _LocalPlayer8.leaderstats.Rebirths.Value
							if _LocalPlayer8.ultimatesFolder:FindFirstChild('Golden Rebirth') then
								local _Value = _LocalPlayer8.ultimatesFolder['Golden Rebirth'].Value
								v135 = math.floor(v135 * (1 - _Value * 0.1))
							end
							v125()
							task.wait(0.1)
							v124('Swift Samurai')
							while _LocalPlayer8.leaderstats.Strength.Value < v135 do
								for _ = 1, 10 do
									_LocalPlayer8.muscleEvent:FireServer('rep')
								end
								task.wait()
							end
							v125()
							task.wait(0.1)
							v124('Tribal Overlord')
							local _JungleBarLift = v132('Jungle Bar Lift')
							if _JungleBarLift and _JungleBarLift:FindFirstChild('interactSeat') then
								_LocalPlayer8.Character.HumanoidRootPart.CFrame = _JungleBarLift.interactSeat.CFrame * CFrame.new(0, 3, 0)
								repeat
									task.wait(0.1)
									v134()
								until _LocalPlayer8.Character.Humanoid.Sit
							end
							local _Value2 = _LocalPlayer8.leaderstats.Rebirths.Value
							repeat
								_ReplicatedStorage.rEvents.rebirthRemote:InvokeServer('rebirthRequest')
								task.wait(0.1)
							until _Value2 < _LocalPlayer8.leaderstats.Rebirths.Value
							task.wait()
						end
					end)
				end
			end)
			_FarmV2:AddSwitch('Lock Position (Enable After Fast Rebirth)', function(p139)
				lockPosition = p139
				local _LocalPlayer9 = game.Players.LocalPlayer
				local v141 = _LocalPlayer9.Character or _LocalPlayer9.CharacterAdded:Wait()
				local _Humanoid = v141:FindFirstChild('Humanoid')
				local _HumanoidRootPart = v141:FindFirstChild('HumanoidRootPart')
				if p139 and (_Humanoid and _HumanoidRootPart) then
					savedPosition = _HumanoidRootPart.Position
					_Humanoid.WalkSpeed = 0
					task.spawn(function()
						while lockPosition do
							if (_HumanoidRootPart.Position - savedPosition).magnitude > 0.1 then
								_HumanoidRootPart.CFrame = CFrame.new(savedPosition)
							end
							task.wait(0.05)
						end
					end)
				elseif _Humanoid then
					_Humanoid.WalkSpeed = 16
				end
			end)
			_FarmV2:AddSwitch('Fast Strength', function(p144)
				getgenv().isGrinding = p144
				if p144 then
					for _ = 1, 30 do
						task.spawn(function()
							while getgenv().isGrinding do
								game:GetService('Players').LocalPlayer.muscleEvent:FireServer('rep')
								task.wait(0.01)
							end
						end)
					end
				end
			end)
			_FarmV2:AddSwitch('Ultra Fast Strength', function()
				getgenv().isGrinding = Value
				if Value then
					for _ = 1, 3000 do
						task.spawn(function()
							while getgenv().isGrinding do
								game:GetService('Players').LocalPlayer.muscleEvent:FireServer('rep')
								task.wait(0.01)
							end
						end)
					end
				end
			end)
			_FarmV2:AddSwitch('Hide Frame', function(p145)
				local v146, v147, v148 = ipairs({
					'strengthFrame',
					'durabilityFrame',
					'agilityFrame',
				})
				while true do
					local v149
					v148, v149 = v146(v147, v148)
					if v148 == nil then
						break
					end
					local v150 = game:GetService('ReplicatedStorage'):FindFirstChild(v149)
					if v150 and v150:IsA('GuiObject') then
						v150.Visible = not p145
					end
				end
			end)
			_FarmV2:AddLabel('----Normal----')
			_FarmV2:AddSwitch('Auto Punch', function(p151)
				if p151 then
					local _LocalPlayer10 = game.Players.LocalPlayer
					local _Name = _LocalPlayer10.Name
					local v154 = _LocalPlayer10.Backpack:FindFirstChild('Punch') or game.Workspace:FindFirstChild(_Name):FindFirstChild('Punch')
					_G.punchanim = true
					while _G.punchanim do
						if v154 then
							if v154.Parent ~= game.Workspace:FindFirstChild(_Name) then
								v154.Parent = game.Workspace:FindFirstChild(_Name)
							end
							v154:Activate()
							wait()
						else
							warn('Punch tool not found')
							_G.punchanim = false
						end
					end
				else
					_G.punchanim = false
				end
			end):Set(false)
			_FarmV2:AddSwitch('Fast Punch', function(p155)
				local _LocalPlayer11 = game.Players.LocalPlayer
				local _Punch = _LocalPlayer11.Backpack:FindFirstChild('Punch')
				local v158 = game.Workspace:FindFirstChild(_LocalPlayer11.Name)
				local v159
				if v158 then
					v159 = v158:FindFirstChild('Punch')
				else
					v159 = nil
				end
				if p155 then
					if _Punch and _Punch:FindFirstChild('attackTime') then
						_Punch.attackTime.Value = 0
					elseif v159 and v159:FindFirstChild('attackTime') then
						v159.attackTime.Value = 0
					end
				elseif _Punch and _Punch:FindFirstChild('attackTime') then
					_Punch.attackTime.Value = 0.35
				elseif v159 and v159:FindFirstChild('attackTime') then
					v159.attackTime.Value = 0.35
				end
			end):Set(false)
			_FarmV2:AddLabel('----------')
			_FarmV2:AddSwitch('Gain Strength', function(p160)
				isAutoStrength = p160
				local _LocalPlayer12 = game.Players.LocalPlayer
				local _Backpack = _LocalPlayer12:FindFirstChild('Backpack')
				while isAutoStrength do
					wait(0.01)
					local v163 = _Backpack and _Backpack:FindFirstChild('Weight')
					if v163 then
						_LocalPlayer12.Character.Humanoid:EquipTool(v163)
					end
					game:GetService('Players').LocalPlayer.muscleEvent:FireServer(unpack({
						'rep',
					}))
				end
				if not isAutoStrength then
					local _Tool = _LocalPlayer12.Character:FindFirstChildOfClass('Tool')
					if _Tool and _Tool.Name == 'Weight' then
						_Tool.Parent = _Backpack
					end
				end
			end):Set(false)
			_FarmV2:AddSwitch('Auto Pushups', function(p165)
				isAutoPushups = p165
				local _LocalPlayer13 = game.Players.LocalPlayer
				local _Backpack2 = _LocalPlayer13:FindFirstChild('Backpack')
				while isAutoPushups do
					wait(0.01)
					local v168 = _Backpack2 and _Backpack2:FindFirstChild('Pushups')
					if v168 then
						_LocalPlayer13.Character.Humanoid:EquipTool(v168)
					end
					game:GetService('Players').LocalPlayer.muscleEvent:FireServer(unpack({
						'rep',
					}))
				end
				if not isAutoPushups then
					local _Tool2 = _LocalPlayer13.Character:FindFirstChildOfClass('Tool')
					if _Tool2 and _Tool2.Name == 'Pushups' then
						_Tool2.Parent = _Backpack2
					end
				end
			end):Set(false)
			_FarmV2:AddSwitch('Auto Situps', function(p170)
				isAutoSitups = p170
				local _LocalPlayer14 = game.Players.LocalPlayer
				local _Backpack3 = _LocalPlayer14:FindFirstChild('Backpack')
				while isAutoSitups do
					wait(0.01)
					local v173 = _Backpack3 and _Backpack3:FindFirstChild('Situps')
					if v173 then
						_LocalPlayer14.Character.Humanoid:EquipTool(v173)
					end
					game:GetService('Players').LocalPlayer.muscleEvent:FireServer(unpack({
						'rep',
					}))
				end
				if not isAutoSitups then
					local _Tool3 = _LocalPlayer14.Character:FindFirstChildOfClass('Tool')
					if _Tool3 and _Tool3.Name == 'Situps' then
						_Tool3.Parent = _Backpack3
					end
				end
			end):Set(false)
			_FarmV2:AddSwitch('Auto Handstands', function(p175)
				isAutoHandstands = p175
				local _LocalPlayer15 = game.Players.LocalPlayer
				local _Backpack4 = _LocalPlayer15:FindFirstChild('Backpack')
				while isAutoHandstands do
					wait(0.01)
					local v178 = _Backpack4 and _Backpack4:FindFirstChild('Handstands')
					if v178 then
						_LocalPlayer15.Character.Humanoid:EquipTool(v178)
					end
					game:GetService('Players').LocalPlayer.muscleEvent:FireServer(unpack({
						'rep',
					}))
				end
				if not isAutoHandstands then
					local _Tool4 = _LocalPlayer15.Character:FindFirstChildOfClass('Tool')
					if _Tool4 and _Tool4.Name == 'Handstands' then
						_Tool4.Parent = _Backpack4
					end
				end
			end):Set(false)
			local _Killing = _EnchantedHubPaidVersion:AddTab('Killing')
			_Killing:Show()
			_Killing:AddSwitch('Auto Punch', function(p181)
				if p181 then
					local _LocalPlayer16 = game.Players.LocalPlayer
					local _Name2 = _LocalPlayer16.Name
					local v184 = _LocalPlayer16.Backpack:FindFirstChild('Punch') or game.Workspace:FindFirstChild(_Name2):FindFirstChild('Punch')
					_G.punchanim = true
					while _G.punchanim do
						if v184 then
							if v184.Parent ~= game.Workspace:FindFirstChild(_Name2) then
								v184.Parent = game.Workspace:FindFirstChild(_Name2)
							end
							v184:Activate()
							wait()
						else
							warn('Punch tool not found')
							_G.punchanim = false
						end
					end
				else
					_G.punchanim = false
				end
			end):Set(false)
			_Killing:AddSwitch('Fast Punch', function(p185)
				local _LocalPlayer17 = game.Players.LocalPlayer
				local _Punch2 = _LocalPlayer17.Backpack:FindFirstChild('Punch')
				local v188 = game.Workspace:FindFirstChild(_LocalPlayer17.Name)
				local v189
				if v188 then
					v189 = v188:FindFirstChild('Punch')
				else
					v189 = nil
				end
				if p185 then
					if _Punch2 and _Punch2:FindFirstChild('attackTime') then
						_Punch2.attackTime.Value = 0
					elseif v189 and v189:FindFirstChild('attackTime') then
						v189.attackTime.Value = 0
					end
				elseif _Punch2 and _Punch2:FindFirstChild('attackTime') then
					_Punch2.attackTime.Value = 0.35
				elseif v189 and v189:FindFirstChild('attackTime') then
					v189.attackTime.Value = 0.35
				end
			end):Set(false)
			_Killing:AddLabel('---Tab Inspired by AKM Hub---')
			local u190 = {}
			local u191 = false
			_G.autoKillActive = false
			local function u196(p192)
				local _LocalPlayer18 = game.Players.LocalPlayer
				local _Backpack5 = _LocalPlayer18:FindFirstChild('Backpack')
				local v195 = _Backpack5 and _Backpack5:FindFirstChild(p192)
				if v195 then
					_LocalPlayer18.Character.Humanoid:EquipTool(v195)
				end
			end
			local function u226(p197)
				if p197 then
					_G.autoKillActive = true
					u196('Punch')
					coroutine.wrap(function()
						while _G.autoKillActive do
							wait()
							local _LocalPlayer19 = game.Players.LocalPlayer
							_LocalPlayer19.muscleEvent:FireServer('punch', 'rightHand')
							_LocalPlayer19.muscleEvent:FireServer('punch', 'leftHand')
							local v199, v200, v201 = pairs(game.Players:GetChildren())
							while true do
								local v202
								v201, v202 = v199(v200, v201)
								if v201 == nil then
									break
								end
								if v202.Name ~= _LocalPlayer19.Name then
									local v203 = game.Workspace:FindFirstChild(v202.Name)
									local v204 = game.Workspace:FindFirstChild(_LocalPlayer19.Name)
									if v203 and v204 then
										local _LeftHand8 = v204:FindFirstChild('LeftHand')
										if _LeftHand8 then
											local _Head = v203:FindFirstChild('Head')
											if _Head then
												_Head.CFrame = _LeftHand8.CFrame
											end
											local v207, v208, v209 = pairs(v203:GetDescendants())
											while true do
												local v210
												v209, v210 = v207(v208, v209)
												if v209 == nil then
													break
												end
												if v210:IsA('BasePart') and v210.Name == 'Handle' then
													v210.CFrame = _LeftHand8.CFrame
												end
											end
											local _sweatPart = v203:FindFirstChild('sweatPart')
											if _sweatPart then
												_sweatPart.CFrame = _LeftHand8.CFrame
											end
										end
									end
								end
							end
						end
					end)()
					coroutine.wrap(function()
						while _G.autoKillActive do
							wait()
							local _LocalPlayer20 = game.Players.LocalPlayer
							_LocalPlayer20.muscleEvent:FireServer('punch', 'rightHand')
							_LocalPlayer20.muscleEvent:FireServer('punch', 'leftHand')
							local v213, v214, v215 = pairs(game.Players:GetChildren())
							while true do
								local v216
								v215, v216 = v213(v214, v215)
								if v215 == nil then
									break
								end
								if v216.Name ~= _LocalPlayer20.Name then
									local v217 = game.Workspace:FindFirstChild(v216.Name)
									local v218 = game.Workspace:FindFirstChild(_LocalPlayer20.Name)
									if v217 and v218 then
										local _LeftHand9 = v218:FindFirstChild('LeftHand')
										if _LeftHand9 then
											local _Head2 = v217:FindFirstChild('Head')
											if _Head2 then
												_Head2.Parent = nil
												wait(0.1)
												_Head2.CFrame = _LeftHand9.CFrame
												_Head2.Parent = v217
											end
											local v221, v222, v223 = pairs(v217:GetDescendants())
											while true do
												local v224
												v223, v224 = v221(v222, v223)
												if v223 == nil then
													break
												end
												if v224:IsA('BasePart') and v224.Name == 'Handle' then
													v224.CFrame = _LeftHand9.CFrame
												end
											end
											local _sweatPart2 = v217:FindFirstChild('sweatPart')
											if _sweatPart2 then
												_sweatPart2.CFrame = _LeftHand9.CFrame
											end
										end
									end
								end
							end
						end
					end)()
				else
					_G.autoKillActive = false
				end
			end
			local function u236()
				u191 = true
				u196('Punch')
				while u191 do
					local _LocalPlayer21 = game.Players.LocalPlayer
					local u228 = _LocalPlayer21.Character or _LocalPlayer21.CharacterAdded:Wait()
					local _HumanoidRootPart2 = u228:WaitForChild('HumanoidRootPart')
					local v230, v231, v232 = ipairs(game.Players:GetPlayers())
					while true do
						local u233
						v232, u233 = v230(v231, v232)
						if v232 == nil then
							break
						end
						if u233 ~= _LocalPlayer21 and not table.find(u190, u233.Name) then
							pcall(function()
								local _Character = u233.Character
								if _Character then
									_Character = u233.Character:FindFirstChild('HumanoidRootPart')
								end
								if _Character then
									_Character.Size = Vector3.new(20, 20, 20)
									_Character.Transparency = 1
									_Character.Color = Color3.new(1, 0, 0)
									_Character.Material = Enum.Material.Neon
									_Character.CanCollide = false
									_Character.CFrame = CFrame.new(1955.3785, 1.7816, 6170.521)
									local _Punch3 = u228:FindFirstChild('Punch')
									if _Punch3 then
										_Punch3:Activate()
									end
								end
							end)
						end
					end
					_HumanoidRootPart2.CFrame = CFrame.new(1953.2662, 1.7816, 6186.1226)
					wait(0.01)
				end
			end
			_Killing:AddSwitch('Auto Kill Everyone', function(p237)
				if p237 then
					if killMethod ~= 'Teleport' then
						_G.autoKillActive = true
						u226(true)
						print('Auto Kill (Non-Teleport) Enabled')
					else
						u191 = true
						spawn(u236)
						print('Auto Kill (Teleport) Enabled')
					end
				else
					u191 = false
					_G.autoKillActive = false
					print('Auto Kill Disabled')
				end
			end):Set(false)
			local _SelectKillMethod = _Killing:AddDropdown('Select Kill Method', function(p238)
				killMethod = p238
				print('Kill Method set to:', p238)
			end)
			_SelectKillMethod:Add('Teleport')
			_SelectKillMethod:Add('Non-Teleport')
			local _WhitelistPlayers = _Killing:AddDropdown('Whitelist Players', function(p240)
				if table.find(u190, p240) then
					local v241, v242, v243 = ipairs(u190)
					while true do
						local v244
						v243, v244 = v241(v242, v243)
						if v243 == nil then
							break
						end
						if v244 == p240 then
							table.remove(u190, v243)
							break
						end
					end
				else
					table.insert(u190, p240)
				end
				print('Updated Whitelist:', u190)
			end)
			local v246, v247, v248 = ipairs(game.Players:GetPlayers())
			while true do
				local v249, v250 = v246(v247, v248)
				if v249 == nil then
					break
				end
				v248 = v249
				if v250.Name ~= game.Players.LocalPlayer.Name then
					_WhitelistPlayers:Add(v250.Name)
				end
			end
			game.Players.PlayerAdded:Connect(function(p251)
				if p251.Name ~= game.Players.LocalPlayer.Name then
					_WhitelistPlayers:Add(p251.Name)
				end
			end)
			game.Players.PlayerRemoving:Connect(function(p252)
				if p252.Name ~= game.Players.LocalPlayer.Name then
					_WhitelistPlayers:Remove(p252.Name)
				end
			end)
			_Killing:AddSwitch('Fast Kill Aura', function(p253)
				_G.fasterAutoKill = p253
				local _LocalPlayer22 = game.Players.LocalPlayer
				local _Punch4 = _LocalPlayer22.Backpack:FindFirstChild('Punch')
				local v256 = game.Workspace:FindFirstChild(_LocalPlayer22.Name)
				if v256 then
					v256 = v256:FindFirstChild('Punch')
				end
				if p253 then
					if _Punch4 and _Punch4:FindFirstChild('attackTime') then
						_Punch4.attackTime.Value = 0
					elseif v256 and v256:FindFirstChild('attackTime') then
						v256.attackTime.Value = 0
					end
				elseif _Punch4 and _Punch4:FindFirstChild('attackTime') then
					_Punch4.attackTime.Value = 0.35
				elseif v256 and v256:FindFirstChild('attackTime') then
					v256.attackTime.Value = 0.35
				end
			end):Set(false)
			_Killing:AddSwitch('Auto Good Karma', function(p257)
				autoGoodKarma = p257
				if autoGoodKarma then
					spawn(function()
						while autoGoodKarma do
							local _LocalPlayer23 = game.Players.LocalPlayer
							local _Character2 = _LocalPlayer23.Character
							local v260
							if _Character2 then
								v260 = _Character2:FindFirstChild('RightHand')
							else
								v260 = _Character2
							end
							local v261
							if _Character2 then
								v261 = _Character2:FindFirstChild('LeftHand')
							else
								v261 = _Character2
							end
							if _Character2 and (v260 and v261) then
								local v262, v263, v264 = ipairs(game.Players:GetPlayers())
								while true do
									local v265
									v264, v265 = v262(v263, v264)
									if v264 == nil then
										break
									end
									if v265 ~= _LocalPlayer23 then
										local _evilKarma = v265:FindFirstChild('evilKarma')
										local _goodKarma = v265:FindFirstChild('goodKarma')
										if _evilKarma and (_goodKarma and (_evilKarma:IsA('IntValue') and (_goodKarma:IsA('IntValue') and _evilKarma.Value > _goodKarma.Value))) then
											local _Character3 = v265.Character
											if _Character3 then
												_Character3 = _Character3:FindFirstChild('HumanoidRootPart')
											end
											if _Character3 then
												firetouchinterest(v260, _Character3, 1)
												firetouchinterest(v261, _Character3, 1)
												firetouchinterest(v260, _Character3, 0)
												firetouchinterest(v261, _Character3, 0)
											end
										end
									end
								end
							end
							task.wait(0.1)
						end
					end)
				end
			end)
			_Killing:AddSwitch('Auto Bad Karma', function(p269)
				autoBadKarma = p269
				if autoBadKarma then
					spawn(function()
						while autoBadKarma do
							local _LocalPlayer24 = game.Players.LocalPlayer
							local _Character4 = _LocalPlayer24.Character
							local v272
							if _Character4 then
								v272 = _Character4:FindFirstChild('RightHand')
							else
								v272 = _Character4
							end
							local v273
							if _Character4 then
								v273 = _Character4:FindFirstChild('LeftHand')
							else
								v273 = _Character4
							end
							if _Character4 and (v272 and v273) then
								local v274, v275, v276 = ipairs(game.Players:GetPlayers())
								while true do
									local v277
									v276, v277 = v274(v275, v276)
									if v276 == nil then
										break
									end
									if v277 ~= _LocalPlayer24 then
										local _evilKarma2 = v277:FindFirstChild('evilKarma')
										local _goodKarma2 = v277:FindFirstChild('goodKarma')
										if _evilKarma2 and (_goodKarma2 and (_evilKarma2:IsA('IntValue') and (_goodKarma2:IsA('IntValue') and _goodKarma2.Value > _evilKarma2.Value))) then
											local _Character5 = v277.Character
											if _Character5 then
												_Character5 = _Character5:FindFirstChild('HumanoidRootPart')
											end
											if _Character5 then
												firetouchinterest(v272, _Character5, 1)
												firetouchinterest(v273, _Character5, 1)
												firetouchinterest(v272, _Character5, 0)
												firetouchinterest(v273, _Character5, 0)
											end
										end
									end
								end
							end
							task.wait(0.1)
						end
					end)
				end
			end)
			_Killing:AddLabel('---Single Kill---')
			_Killing:AddTextBox('Player Username', function(p281)
				targetPlayerName = p281
			end)
			local u282 = false
			_Killing:AddSwitch('Auto Fast Kill Player', function(p283)
				u282 = p283
				while u282 do
					local _LocalPlayer25 = game.Players.LocalPlayer
					local v285 = game.Players:FindFirstChild(targetPlayerName)
					if v285 and v285 ~= _LocalPlayer25 then
						local _Character6 = v285.Character
						if _Character6 then
							_Character6 = _Character6:FindFirstChild('HumanoidRootPart')
						end
						if _Character6 then
							local _Character7 = _LocalPlayer25.Character
							if _Character7 then
								_Character7 = _LocalPlayer25.Character:FindFirstChild('RightHand')
							end
							local _Character8 = _LocalPlayer25.Character
							if _Character8 then
								_Character8 = _LocalPlayer25.Character:FindFirstChild('LeftHand')
							end
							if _Character7 and _Character8 then
								firetouchinterest(_Character7, _Character6, 1)
								firetouchinterest(_Character8, _Character6, 1)
								firetouchinterest(_Character7, _Character6, 0)
								firetouchinterest(_Character8, _Character6, 0)
							end
						end
					end
					wait(0.1)
				end
			end)
			local u289 = false
			_Killing:AddSwitch('Spy Player', function(p290)
				u289 = p290
				if u289 then
					while u289 do
						local _LocalPlayer26 = game.Players.LocalPlayer
						local v292 = game.Players:FindFirstChild(targetPlayerName)
						if v292 and v292 ~= _LocalPlayer26 then
							local _Character9 = v292.Character
							if _Character9 then
								_Character9 = _Character9:FindFirstChild('Humanoid')
							end
							if _Character9 then
								workspace.CurrentCamera.CameraSubject = _Character9
							end
						end
						wait(0.1)
					end
				else
					local _LocalPlayer27 = game.Players.LocalPlayer
					local _CurrentCamera = workspace.CurrentCamera
					if _LocalPlayer27.Character then
						_LocalPlayer27 = _LocalPlayer27.Character:FindFirstChild('Humanoid') or _LocalPlayer27
					end
					_CurrentCamera.CameraSubject = _LocalPlayer27
				end
			end)
			local _Stats = _EnchantedHubPaidVersion:AddTab('Stats')
			local function u298(p297)
				if p297 >= 1000000000000000 then
					return string.format('%.1fQa', p297 / 1000000000000000)
				elseif p297 >= 1000000000000 then
					return string.format('%.1fT', p297 / 1000000000000)
				elseif p297 >= 1000000000 then
					return string.format('%.1fB', p297 / 1000000000)
				elseif p297 >= 1000000 then
					return string.format('%.1fM', p297 / 1000000)
				elseif p297 >= 1000 then
					return string.format('%.1fK', p297 / 1000)
				else
					return tostring(p297)
				end
			end
			local u299 = {
				TimeSpentLabel = _Stats:AddLabel('Time spent in this server: 00:00'),
				StrengthGainedLabel = _Stats:AddLabel('Amount of strength gained in this server: 0'),
				DurabilityGainedLabel = _Stats:AddLabel('Amount of durability gained in this server: 0'),
				AgilityGainedLabel = _Stats:AddLabel('Amount of agility gained in this server: 0'),
				KillsGainedLabel = _Stats:AddLabel('Amount of kills gained in this server: 0'),
				EvilKarmaGainedLabel = _Stats:AddLabel('Amount of Evil Karma gained in this server: 0'),
				GoodKarmaGainedLabel = _Stats:AddLabel('Amount of Good Karma gained in this server: 0'),
			}
			(function()
				local _LocalPlayer28 = game.Players.LocalPlayer
				if _LocalPlayer28 then
					local _leaderstats = _LocalPlayer28:WaitForChild('leaderstats')
					if _leaderstats then
						local _Strength = _leaderstats:WaitForChild('Strength')
						local _Durability = _LocalPlayer28:WaitForChild('Durability')
						local _Agility = _LocalPlayer28:WaitForChild('Agility')
						local _Kills = _leaderstats:WaitForChild('Kills')
						local _evilKarma3 = _LocalPlayer28:WaitForChild('evilKarma')
						local _goodKarma3 = _LocalPlayer28:WaitForChild('goodKarma')
						local u308 = _Strength.Value or 0
						local u309 = _Durability.Value or 0
						local u310 = _Agility.Value or 0
						local u311 = _Kills.Value or 0
						local u312 = _evilKarma3.Value or 0
						local u313 = _goodKarma3.Value or 0
						local u314 = tick()
						local function v321()
							local v315 = _Strength.Value - u308
							local v316 = _Durability.Value - u309
							local v317 = _Agility.Value - u310
							local v318 = _Kills.Value - u311
							local v319 = _evilKarma3.Value - u312
							local v320 = _goodKarma3.Value - u313
							u299.StrengthGainedLabel.Text = 'Amount of strength gained in this server: ' .. u298(v315)
							u299.DurabilityGainedLabel.Text = 'Amount of durability gained in this server: ' .. u298(v316)
							u299.AgilityGainedLabel.Text = 'Amount of agility gained in this server: ' .. u298(v317)
							u299.KillsGainedLabel.Text = 'Amount of kills gained in this server: ' .. u298(v318)
							u299.EvilKarmaGainedLabel.Text = 'Amount of Evil Karma gained in this server: ' .. u298(v319)
							u299.GoodKarmaGainedLabel.Text = 'Amount of Good Karma gained in this server: ' .. u298(v320)
						end
						local function v325()
							local v322 = tick() - u314
							local v323 = math.floor(v322 / 60)
							local v324 = math.floor(v322 % 60)
							u299.TimeSpentLabel.Text = string.format('Time spent in this server: %02d:%02d', v323, v324)
						end
						_Strength.Changed:Connect(v321)
						_Durability.Changed:Connect(v321)
						_Agility.Changed:Connect(v321)
						_Kills.Changed:Connect(v321)
						_evilKarma3.Changed:Connect(v321)
						_goodKarma3.Changed:Connect(v321)
						game:GetService('RunService').Heartbeat:Connect(v325)
						v321()
					end
				else
					return
				end
			end)()
			local _StatsV2 = _EnchantedHubPaidVersion:AddTab('StatsV2')
			_StatsV2:AddLabel('Thanks To BLX Encrypted For Giving The source of This')
			_StatsV2:AddLabel('Stats:')
			local u327 = {
				RebirthsGainedLabel = _StatsV2:AddLabel('Rebirths Gained In 1 Minute: ...'),
				RebirthsPerMinuteLabel = _StatsV2:AddLabel('Rebirths Per Minute: ...'),
				RebirthsPerHourLabel = _StatsV2:AddLabel('Rebirths Per Week: ...'),
			}
			local _leaderstats2 = game:GetService('Players').LocalPlayer:FindFirstChild('leaderstats')
			if _leaderstats2 then
				_leaderstats2 = _leaderstats2:FindFirstChild('Rebirths')
			end
			local function u330(p329)
				if p329 >= 1000000000 then
					return string.format('%.2fB', p329 / 1000000000)
				elseif p329 >= 1000000 then
					return string.format('%.2fM', p329 / 1000000)
				elseif p329 >= 1000 then
					return string.format('%.2fK', p329 / 1000)
				else
					return tostring(p329)
				end
			end
			local u331 = _leaderstats2 and (_leaderstats2.Value or 0) or 0
			task.spawn(function()
				while task.wait(60) do
					local v332 = _leaderstats2 and _leaderstats2.Value or 0
					local v333 = math.max(0, v332 - u331)
					u331 = v332
					u327.RebirthsGainedLabel.Text = 'Rebirths Gained In 1 Minute: ' .. u330(v333)
					u327.RebirthsPerMinuteLabel.Text = 'Rebirths Per Minute: ' .. u330(v333)
					u327.RebirthsPerHourLabel.Text = 'Rebirths Per Hour: ' .. u330(v333 * 60)
					u327.RebirthsPerDayLabel.Text = 'Rebirths Per Day: ' .. u330(v333 * 1440)
					u327.RebirthsPerWeekLabel.Text = 'Rebirths Per Week: ' .. u330(v333 * 10080)
				end
			end)
			local _ViewStats = _EnchantedHubPaidVersion:AddTab('ViewStats')
			local u335 = nil
			_ViewStats:AddTextBox('Player Username', function(p336)
				local v337 = game.Players:FindFirstChild(p336)
				if v337 then
					u335 = v337
				else
					u335 = nil
					resetTargetStats()
				end
			end)
			local u338 = {
				TargetStats = _ViewStats:AddLabel('Target Stats:'),
				StrengthLabel = _ViewStats:AddLabel('Strength: 0'),
				DurabilityLabel = _ViewStats:AddLabel('Durability: 0'),
				AgilityLabel = _ViewStats:AddLabel('Agility: 0'),
				RebirthsLabel = _ViewStats:AddLabel('Rebirths: 0'),
				KillsLabel = _ViewStats:AddLabel('Kills: 0'),
				EvilKarmaLabel = _ViewStats:AddLabel('Evil Karma: 0'),
				GoodKarmaLabel = _ViewStats:AddLabel('Good Karma: 0'),
				EquippedPetsLabel = _ViewStats:AddLabel('Equipped Pets:'),
			}
			local u339 = u335
			for v340 = 1, 8 do
				local v341 = v340
				u338['Pet' .. v341 .. 'Label'] = _ViewStats:AddLabel('Pet' .. v341 .. ': No pet Equipped')
			end
			local function u349()
				if u339 then
					local _leaderstats3 = u339:FindFirstChild('leaderstats')
					local _goodKarma4 = u339:FindFirstChild('goodKarma')
					local _evilKarma4 = u339:FindFirstChild('evilKarma')
					if _leaderstats3 then
						u338.StrengthLabel.Text = 'Strength: ' .. u330(_leaderstats3:FindFirstChild('Strength') and (_leaderstats3.Strength.Value or 0) or 0)
						local v345 = u339
						u338.DurabilityLabel.Text = 'Durability: ' .. u330(v345:FindFirstChild('Durability') and u339.Durability.Value or 0)
						local v346 = u339
						u338.AgilityLabel.Text = 'Agility: ' .. u330(v346:FindFirstChild('Agility') and u339.Agility.Value or 0)
						u338.RebirthsLabel.Text = 'Rebirths: ' .. u330(_leaderstats3:FindFirstChild('Rebirths') and (_leaderstats3.Rebirths.Value or 0) or 0)
						u338.KillsLabel.Text = 'Kills: ' .. u330(_leaderstats3:FindFirstChild('Kills') and _leaderstats3.Kills.Value or 0)
					end
					u338.EvilKarmaLabel.Text = 'Evil Karma: ' .. u330(_evilKarma4 and _evilKarma4.Value or 0)
					u338.GoodKarmaLabel.Text = 'Good Karma: ' .. u330(_goodKarma4 and _goodKarma4.Value or 0)
					for v347 = 1, 8 do
						local v348 = u339:FindFirstChild('pet' .. v347)
						if v348 and (v348:IsA('IntValue') and v348.Value ~= '') then
							u338['Pet' .. v347 .. 'Label'].Text = 'Pet' .. v347 .. ': ' .. v348.Value
						else
							u338['Pet' .. v347 .. 'Label'].Text = 'Pet' .. v347 .. ': No pet Equipped'
						end
					end
				end
			end
			task.spawn(function()
				while task.wait(0.1) do
					if u339 then
						u349()
					end
				end
			end)
		end,
	})
	mainTab:AddButton({
		Name = 'Load Fluent Version',
		Callback = function()
			local u350 = loadstring(game:HttpGetAsync('https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau'))()
			loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau'))()
			loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau'))()
			game:GetService('ReplicatedStorage')
			local _LocalPlayer29 = game:GetService('Players').LocalPlayer
			os.time()
			local _ = _LocalPlayer29.leaderstats.Rebirths.Value
			local _ = _LocalPlayer29.DisplayName
			local v352 = u350
			local v353 = u350.CreateWindow(v352, {
				Title = 'Enchanted Hub Paid | LEAKEDD BY VOIDDEVS',
				SubTitle = 'Fluent Version | BALLS AND SHIT NIGGERSSS',
				TabWidth = 125,
				Size = UDim2.fromOffset(580, 340),
				Acrylic = true,
				Theme = 'VSC Dark High Contrast',
				MinimizeKey = Enum.KeyCode.LeftAlt,
			})
			local v354 = {
				Main = v353:CreateTab({
					Title = 'MiscV1',
					Icon = 'phosphor-house-bold',
				}),
				AutoFarm = v353:CreateTab({
					Title = 'Farm/Fast Glitch',
					Icon = 'phosphor-robot-bold',
				}),
				Rebirth = v353:CreateTab({
					Title = 'Rebirthing',
					Icon = 'phosphor-arrows-clockwise-bold',
				}),
			}
			v354.Main:CreateToggle('Anti AFK', {
				Title = 'Night Time',
				Default = false,
				Callback = function(_)
					game.Lighting.TimeOfDay = '00:00:00'
				end,
			})
			v354.Main:CreateToggle('AutoSize', {
				Title = 'FPS Boost',
				Description = 'Boosts Your FPS',
				Default = false,
				Callback = function(_)
					local function v359()
						local v355, v356, v357 = pairs(game:GetDescendants())
						while true do
							local v358
							v357, v358 = v355(v356, v357)
							if v357 == nil then
								break
							end
							if v358:IsA('ParticleEmitter') or (v358:IsA('Trail') or (v358:IsA('Smoke') or (v358:IsA('Fire') or v358:IsA('Explosion')))) then
								v358:Destroy()
							elseif v358:IsA('Decal') or v358:IsA('Texture') then
								v358:Destroy()
							end
						end
					end
					v359()
					while wait(30) do
						v359()
					end
				end,
			})
			v354.Main:CreateButton({
				Title = 'Full Optimization',
				Description = 'Applies all performance optimizations',
				Callback = function()
					local _PlayerGui = _LocalPlayer29:WaitForChild('PlayerGui')
					local v361, v362, v363 = pairs(_PlayerGui:GetChildren())
					while true do
						local v364
						v363, v364 = v361(v362, v363)
						if v363 == nil then
							break
						end
						if v364:IsA('ScreenGui') and v364.Enabled then
							v364.Enabled = false
						end
					end
					settings().Rendering.QualityLevel = 1
					settings().Physics.PhysicsEnvironmentalThrottle = 1
					settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01
					settings().Physics.AllowSleep = true
					settings().Physics.ForceCSGv2 = false
					settings().Rendering.EagerBulkExecution = true
					game:GetService('Lighting').GlobalShadows = false
					game:GetService('Lighting').FogEnd = 9000000000
					game:GetService('Lighting').Brightness = 0
					settings().Physics.NetworkOwnershipRule = Enum.NetworkOwnershipRule.Manual
					settings().Network.IncomingReplicationLag = 0
					game:GetService('NetworkClient'):SetOutgoingKBPSLimit(100)
					local v365, v366, v367 = pairs(game:GetDescendants())
					while true do
						local v368
						v367, v368 = v365(v366, v367)
						if v367 == nil then
							break
						end
						if v368:IsA('ParticleEmitter') or v368:IsA('Trail') then
							v368.Lifetime = NumberRange.new(0)
						elseif v368:IsA('Fire') or (v368:IsA('SpotLight') or (v368:IsA('Smoke') or v368:IsA('Sparkles'))) then
							v368.Enabled = false
						end
					end
					u350:Notify({
						Title = 'Optimization Complete',
						Content = 'All performance optimizations have been applied',
						Duration = 0,
					})
				end,
			})
			local _ = u350.Options
			local _BasicControls = v354.Main:CreateSection('Basic Controls')
			local u370 = '2'
			_BasicControls:AddInput('SizeChanger', {
				Title = 'Size Changer',
				Description = 'Enter Size',
				Default = '2',
				Placeholder = 'Type here...',
				Numeric = true,
				Finished = true,
				Callback = function(p371)
					u370 = p371
					if _G.AutoSize then
						game:GetService('ReplicatedStorage').rEvents.changeSpeedSizeRemote:InvokeServer('changeSize', tonumber(u370))
					end
				end,
			})
			v354.Main:CreateToggle('AutoSize', {
				Title = 'Auto Set Size',
				Description = 'Auto Set ur Choosed Size',
				Default = false,
				Callback = function(p372)
					_G.AutoSize = p372
					while _G.AutoSize do
						game:GetService('ReplicatedStorage').rEvents.changeSpeedSizeRemote:InvokeServer('changeSize', tonumber(u370))
						task.wait(0.1)
					end
				end,
			})
			local u373 = '125'
			v354.Main:CreateInput('SpeedChanger', {
				Title = 'Speed Changer',
				Description = 'Enter Speed',
				Default = '125',
				Placeholder = 'Enter Speed',
				Numeric = true,
				Finished = true,
				Callback = function(p374)
					u373 = p374
					if _G.AutoSpeed and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(u373)
					end
				end,
			})
			v354.Main:CreateToggle('AutoSpeed', {
				Title = 'Auto Set Speed',
				Description = 'Auto Set ur Choosed Speed',
				Default = false,
				Callback = function(p375)
					_G.AutoSpeed = p375
					while _G.AutoSpeed do
						if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(u373)
						end
						task.wait()
					end
				end,
			})
			v354.Main:CreateButton({
				Title = 'Free AutoLift Gamepass',
				Callback = function()
					local _gamepassIds = game:GetService('ReplicatedStorage').gamepassIds
					local _LocalPlayer30 = game:GetService('Players').LocalPlayer
					local v378, v379, v380 = pairs(_gamepassIds:GetChildren())
					while true do
						local v381
						v380, v381 = v378(v379, v380)
						if v380 == nil then
							break
						end
						local _IntValue = Instance.new('IntValue')
						_IntValue.Name = v381.Name
						_IntValue.Value = v381.Value
						_IntValue.Parent = _LocalPlayer30.ownedGamepasses
					end
				end,
			})
			v354.Main:CreateButton({
				Title = 'Less Lag',
				Description = 'Optimize game performance',
				Callback = function()
					local v383, v384, v385 = pairs(game:GetDescendants())
					while true do
						local v386
						v385, v386 = v383(v384, v385)
						if v385 == nil then
							break
						end
						if v386:IsA('ParticleEmitter') or (v386:IsA('Trail') or (v386:IsA('Smoke') or (v386:IsA('Fire') or v386:IsA('Sparkles')))) then
							v386.Enabled = false
						end
					end
					local _Lighting = game:GetService('Lighting')
					_Lighting.GlobalShadows = false
					_Lighting.FogEnd = 9000000000
					local v388, v389, v390 = pairs(workspace:GetDescendants())
					while true do
						local v391
						v390, v391 = v388(v389, v390)
						if v390 == nil then
							break
						end
						if v391:IsA('BasePart') and not v391.Parent:FindFirstChild('Humanoid') then
							v391.Material = Enum.Material.SmoothPlastic
							if v391:IsA('Texture') then
								v391:Destroy()
							end
						end
					end
					settings().Rendering.QualityLevel = 1
				end,
			})
			v354.Main:CreateToggle('NoClip', {
				Title = 'NoClip',
				Description = 'Be able to walk through anything',
				Default = false,
				Callback = function(p392)
					local _RunService = game:GetService('RunService')
					local _LocalPlayer31 = game:GetService('Players').LocalPlayer
					if p392 then
						getgenv().noclipConnection = _RunService.Stepped:Connect(function()
							local v395, v396, v397 = pairs(_LocalPlayer31.Character:GetDescendants())
							while true do
								local v398
								v397, v398 = v395(v396, v397)
								if v397 == nil then
									break
								end
								if v398:IsA('BasePart') then
									v398.CanCollide = false
								end
							end
						end)
					elseif getgenv().noclipConnection then
						getgenv().noclipConnection:Disconnect()
					end
				end,
			})
			local v399, v400, u401 = pairs({
				['Swift Samurai'] = 'Equip All Swift Samurai',
				['Tribal Overlord'] = 'Equip All Tribal Overlord',
				['Mighty Monster'] = 'Equip All Mighty Monster',
				['Wild Wizard'] = 'Equip All Wild Wizard',
			})
			local function u411()
				local _petsFolder2 = game:GetService('Players').LocalPlayer.petsFolder
				local v403, v404, v405 = pairs(_petsFolder2:GetChildren())
				while true do
					local v406
					v405, v406 = v403(v404, v405)
					if v405 == nil then
						break
					end
					if v406:IsA('Folder') then
						local v407, v408, v409 = pairs(v406:GetChildren())
						while true do
							local v410
							v409, v410 = v407(v408, v409)
							if v409 == nil then
								break
							end
							game:GetService('ReplicatedStorage').rEvents.equipPetEvent:fireServer('unequipPet', v410)
						end
					end
				end
				task.wait(0.1)
			end
			while true do
				local v412
				u401, v412 = v399(v400, u401)
				if u401 == nil then
					break
				end
				v354.Main:CreateButton({
					Title = v412,
					Callback = function()
						u411()
						local v413, v414, v415 = pairs(game:GetService('Players').LocalPlayer.petsFolder.Unique:GetChildren())
						while true do
							local v416
							v415, v416 = v413(v414, v415)
							if v415 == nil then
								break
							end
							if v416.Name == u401 then
								game:GetService('ReplicatedStorage').rEvents.equipPetEvent:fireServer('equipPet', v416)
							end
						end
					end,
				})
			end
			v354.AutoFarm:CreateToggle('Weight', {
				Title = 'Auto Weight',
				Description = 'Auto Lift Weight',
				Default = false,
				Callback = function(p417)
					_G.AutoWeight = p417
					if p417 then
						local _Weight = game.Players.LocalPlayer.Backpack:FindFirstChild('Weight')
						if _Weight then
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(_Weight)
						end
					else
						local _Weight2 = game.Players.LocalPlayer.Character:FindFirstChild('Weight')
						if _Weight2 then
							_Weight2.Parent = game.Players.LocalPlayer.Backpack
						end
					end
					while _G.AutoWeight do
						game:GetService('Players').LocalPlayer.muscleEvent:FireServer('rep')
						task.wait(0)
					end
				end,
			})
			v354.AutoFarm:CreateToggle('Pushups', {
				Title = 'Auto Pushups',
				Description = 'Auto Lift Pushups',
				Default = false,
				Callback = function(p420)
					_G.AutoPushups = p420
					if p420 then
						local _Pushups = game.Players.LocalPlayer.Backpack:FindFirstChild('Pushups')
						if _Pushups then
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(_Pushups)
						end
					else
						local _Pushups2 = game.Players.LocalPlayer.Character:FindFirstChild('Pushups')
						if _Pushups2 then
							_Pushups2.Parent = game.Players.LocalPlayer.Backpack
						end
					end
					while _G.AutoPushups do
						game:GetService('Players').LocalPlayer.muscleEvent:FireServer('rep')
						task.wait(0)
					end
				end,
			})
			v354.AutoFarm:CreateToggle('Handstands', {
				Title = 'Auto Handstands',
				Description = 'Auto Lift Handstands',
				Default = false,
				Callback = function(p423)
					_G.AutoHandstands = p423
					if p423 then
						local _Handstands = game.Players.LocalPlayer.Backpack:FindFirstChild('Handstands')
						if _Handstands then
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(_Handstands)
						end
					else
						local _Handstands2 = game.Players.LocalPlayer.Character:FindFirstChild('Handstands')
						if _Handstands2 then
							_Handstands2.Parent = game.Players.LocalPlayer.Backpack
						end
					end
					while _G.AutoHandstands do
						game:GetService('Players').LocalPlayer.muscleEvent:FireServer('rep')
						task.wait(0)
					end
				end,
			})
			v354.AutoFarm:CreateToggle('Situps', {
				Title = 'Auto Situps',
				Description = 'Auto Lift Situps',
				Default = false,
				Callback = function(p426)
					_G.AutoSitups = p426
					if p426 then
						local _Situps = game.Players.LocalPlayer.Backpack:FindFirstChild('Situps')
						if _Situps then
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(_Situps)
						end
					else
						local _Situps2 = game.Players.LocalPlayer.Character:FindFirstChild('Situps')
						if _Situps2 then
							_Situps2.Parent = game.Players.LocalPlayer.Backpack
						end
					end
					while _G.AutoSitups do
						game:GetService('Players').LocalPlayer.muscleEvent:FireServer('rep')
						task.wait(0)
					end
				end,
			})
			v354.AutoFarm:CreateToggle('Punch', {
				Title = 'Auto Punch',
				Description = 'Auto Punch',
				Default = false,
				Callback = function(p429)
					_G.fastHitActive = p429
					if p429 then
						coroutine.wrap(function()
							while _G.fastHitActive do
								local _LocalPlayer32 = game.Players.LocalPlayer
								local _Punch5 = _LocalPlayer32.Backpack:FindFirstChild('Punch')
								if _Punch5 then
									_Punch5.Parent = _LocalPlayer32.Character
									if _Punch5:FindFirstChild('attackTime') then
										_Punch5.attackTime.Value = 0
									end
								end
								wait(0)
							end
						end)()
						coroutine.wrap(function()
							while _G.fastHitActive do
								local _LocalPlayer33 = game.Players.LocalPlayer
								_LocalPlayer33.muscleEvent:FireServer('punch', 'rightHand')
								_LocalPlayer33.muscleEvent:FireServer('punch', 'leftHand')
								local _Character10 = _LocalPlayer33.Character
								local v434 = _Character10 and _Character10:FindFirstChild('Punch')
								if v434 then
									v434:Activate()
								end
								wait(0)
							end
						end)()
					else
						local _Punch6 = game.Players.LocalPlayer.Character:FindFirstChild('Punch')
						if _Punch6 then
							_Punch6.Parent = game.Players.LocalPlayer.Backpack
						end
					end
				end,
			})
			v354.AutoFarm:CreateToggle('ToolSpeed', {
				Title = 'Fast Tools',
				Description = "Fast Tools..., What u didn't get.",
				Default = false,
				Callback = function(p436)
					_G.FastTools = p436
					local _LocalPlayer34 = game.Players.LocalPlayer
					local _Backpack6 = _LocalPlayer34:WaitForChild('Backpack')
					local v439, v440, v441 = ipairs({
						{
							'Punch',
							'attackTime',
							p436 and 0 or 0.35,
						},
						{
							'Ground Slam',
							'attackTime',
							p436 and 0 or 6,
						},
						{
							'Stomp',
							'attackTime',
							p436 and 0 or 7,
						},
						{
							'Handstands',
							'repTime',
							p436 and 0 or 1,
						},
						{
							'Pushups',
							'repTime',
							p436 and 0 or 1,
						},
						{
							'Weight',
							'repTime',
							p436 and 0 or 1,
						},
						{
							'Situps',
							'repTime',
							p436 and 0 or 1,
						},
					})
					while true do
						local v442
						v441, v442 = v439(v440, v441)
						if v441 == nil then
							break
						end
						local v443 = _Backpack6:FindFirstChild(v442[1])
						if v443 and v443:FindFirstChild(v442[2]) then
							v443[v442[2] ].Value = v442[3]
						end
						local _Character11 = _LocalPlayer34.Character
						if _Character11 then
							_Character11 = _LocalPlayer34.Character:FindFirstChild(v442[1])
						end
						if _Character11 and _Character11:FindFirstChild(v442[2]) then
							_Character11[v442[2] ].Value = v442[3]
						end
					end
				end,
			})
			v354.AutoFarm:CreateSection('Rock Farm')
			local u445 = ''
			v354.AutoFarm:CreateToggle('TinyIslandRock', {
				Title = 'Farm Tiny Island Rock',
				Description = 'Farm rocks at Tiny Island',
				Default = false,
				Callback = function(p446)
					u445 = 'Tiny Island Rock'
					getgenv().autoFarm = p446
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 0 then
							local v447, v448, v449 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v450
								v449, v450 = v447(v448, v449)
								if v449 == nil then
									break
								end
								if v450.Name == 'neededDurability' and v450.Value == 0 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v450.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v450.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v450.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v450.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			v354.AutoFarm:CreateToggle('StarterIslandRock', {
				Title = 'Farm Starter Island Rock',
				Description = 'Farm rocks at Starter Island',
				Default = false,
				Callback = function(p451)
					u445 = 'Starter Island Rock'
					getgenv().autoFarm = p451
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 100 then
							local v452, v453, v454 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v455
								v454, v455 = v452(v453, v454)
								if v454 == nil then
									break
								end
								if v455.Name == 'neededDurability' and v455.Value == 100 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v455.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v455.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v455.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v455.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			v354.AutoFarm:CreateToggle('LegendBeachRock', {
				Title = 'Farm Legend Beach Rock',
				Description = 'Farm rocks at Legend Beach',
				Default = false,
				Callback = function(p456)
					u445 = 'Legend Beach Rock'
					getgenv().autoFarm = p456
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 5000 then
							local v457, v458, v459 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v460
								v459, v460 = v457(v458, v459)
								if v459 == nil then
									break
								end
								if v460.Name == 'neededDurability' and v460.Value == 5000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v460.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v460.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v460.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v460.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			function gettool()
				local v461, v462, v463 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
				while true do
					local v464
					v463, v464 = v461(v462, v463)
					if v463 == nil then
						break
					end
					if v464.Name == 'Punch' and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v464)
					end
				end
				game:GetService('Players').LocalPlayer.muscleEvent:FireServer('punch', 'leftHand')
				game:GetService('Players').LocalPlayer.muscleEvent:FireServer('punch', 'rightHand')
			end
			v354.AutoFarm:CreateToggle('FrostGymRock', {
				Title = 'Farm Frost Gym Rock',
				Description = 'Farm rocks at Frost Gym',
				Default = false,
				Callback = function(p465)
					u445 = 'Frost Gym Rock'
					getgenv().autoFarm = p465
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 150000 then
							local v466, v467, v468 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v469
								v468, v469 = v466(v467, v468)
								if v468 == nil then
									break
								end
								if v469.Name == 'neededDurability' and v469.Value == 150000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v469.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v469.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v469.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v469.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			v354.AutoFarm:CreateToggle('MythicalGymRock', {
				Title = 'Farm Mythical Gym Rock',
				Description = 'Farm rocks at Mythical Gym',
				Default = false,
				Callback = function(p470)
					u445 = 'Mythical Gym Rock'
					getgenv().autoFarm = p470
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 400000 then
							local v471, v472, v473 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v474
								v473, v474 = v471(v472, v473)
								if v473 == nil then
									break
								end
								if v474.Name == 'neededDurability' and v474.Value == 400000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v474.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v474.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v474.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v474.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			v354.AutoFarm:CreateToggle('EternalGymRock', {
				Title = 'Farm Eternal Gym Rock',
				Description = 'Farm rocks at Eternal Gym',
				Default = false,
				Callback = function(p475)
					u445 = 'Eternal Gym Rock'
					getgenv().autoFarm = p475
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 750000 then
							local v476, v477, v478 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v479
								v478, v479 = v476(v477, v478)
								if v478 == nil then
									break
								end
								if v479.Name == 'neededDurability' and v479.Value == 750000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v479.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v479.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v479.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v479.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			v354.AutoFarm:CreateToggle('LegendGymRock', {
				Title = 'Farm Legend Gym Rock',
				Description = 'Farm rocks at Legend Gym',
				Default = false,
				Callback = function(p480)
					u445 = 'Legend Gym Rock'
					getgenv().autoFarm = p480
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 1000000 then
							local v481, v482, v483 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v484
								v483, v484 = v481(v482, v483)
								if v483 == nil then
									break
								end
								if v484.Name == 'neededDurability' and v484.Value == 1000000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v484.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v484.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v484.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v484.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			v354.AutoFarm:CreateToggle('MuscleKingGymRock', {
				Title = 'Farm Muscle King Gym Rock',
				Description = 'Farm rocks at Muscle King Gym',
				Default = false,
				Callback = function(p485)
					u445 = 'Muscle King Gym Rock'
					getgenv().autoFarm = p485
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 5000000 then
							local v486, v487, v488 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v489
								v488, v489 = v486(v487, v488)
								if v488 == nil then
									break
								end
								if v489.Name == 'neededDurability' and v489.Value == 5000000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v489.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v489.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v489.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v489.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			v354.AutoFarm:CreateToggle('AncientJungleRock', {
				Title = 'Farm Ancient Jungle Rock',
				Description = 'Farm rocks at Ancient Jungle',
				Default = false,
				Callback = function(p490)
					u445 = 'Ancient Jungle Rock'
					getgenv().autoFarm = p490
					while getgenv().autoFarm do
						task.wait()
						if game:GetService('Players').LocalPlayer.Durability.Value >= 10000000 then
							local v491, v492, v493 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())
							while true do
								local v494
								v493, v494 = v491(v492, v493)
								if v493 == nil then
									break
								end
								if v494.Name == 'neededDurability' and v494.Value == 10000000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
									firetouchinterest(v494.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
									firetouchinterest(v494.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
									firetouchinterest(v494.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
									firetouchinterest(v494.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
									gettool()
								end
							end
						end
					end
				end,
			})
			local function u496()
				local _VirtualInputManager2 = game:GetService('VirtualInputManager')
				_VirtualInputManager2:SendKeyEvent(true, 'E', false, game)
				task.wait(0.1)
				_VirtualInputManager2:SendKeyEvent(false, 'E', false, game)
			end
			local function u497()
				while getgenv().working and task.wait() do
					game:GetService('Players').LocalPlayer.muscleEvent:FireServer('rep')
				end
			end
			local function u499(_, p498)
				if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p498
					task.wait(0.5)
					u496()
					u497()
				end
			end
			local u500 = {
				['Bench Press'] = {
					['Starter Island'] = CFrame.new(- 17.0609932, 3.31417918, - 2.48164988),
					['Legend Beach'] = CFrame.new(470.334656, 3.31417966, - 321.053925),
					['Frost Gym'] = CFrame.new(- 3013.24194, 39.2158546, - 335.036926),
					['Mythical Gym'] = CFrame.new(2371.7356, 39.2158546, 1246.31555),
					['Eternal Gym'] = CFrame.new(- 7176.19141, 45.394104, - 1106.31421),
					['Legend Gym'] = CFrame.new(4111.91748, 1020.46674, - 3799.97217),
					['Muscle King Gym'] = CFrame.new(- 8590.06152, 46.0167427, - 6043.34717),
					['Jungle Gym'] = CFrame.new(- 8173, 64, 1898),
				},
				Squat = {
					['Starter Island'] = CFrame.new(- 48.8711243, 3.31417918, - 11.8831778),
					['Legend Beach'] = CFrame.new(470.334656, 3.31417966, - 321.053925),
					['Frost Gym'] = CFrame.new(- 2933.47998, 29.6399612, - 579.946045),
					['Mythical Gym'] = CFrame.new(2489.21484, 3.67686629, 849.051025),
					['Eternal Gym'] = CFrame.new(- 7176.19141, 45.394104, - 1106.31421),
					['Legend Gym'] = CFrame.new(4304.99023, 987.829956, - 4124.2334),
					['Muscle King Gym'] = CFrame.new(- 8940.12402, 13.1642084, - 5699.13477),
					['Jungle Gym'] = CFrame.new(- 8352, 34, 2878),
				},
				Deadlift = {
					['Starter Island'] = CFrame.new(- 48.8711243, 3.31417918, - 11.8831778),
					['Legend Beach'] = CFrame.new(470.334656, 3.31417966, - 321.053925),
					['Frost Gym'] = CFrame.new(- 2933.47998, 29.6399612, - 579.946045),
					['Mythical Gym'] = CFrame.new(2489.21484, 3.67686629, 849.051025),
					['Eternal Gym'] = CFrame.new(- 7176.19141, 45.394104, - 1106.31421),
					['Legend Gym'] = CFrame.new(4304.99023, 987.829956, - 4124.2334),
					['Muscle King Gym'] = CFrame.new(- 8940.12402, 13.1642084, - 5699.13477),
				},
				['Pull Up'] = {
					['Starter Island'] = CFrame.new(- 33.3047485, 3.31417918, - 11.8831778),
					['Legend Beach'] = CFrame.new(470.334656, 3.31417966, - 321.053925),
					['Frost Gym'] = CFrame.new(- 2933.47998, 29.6399612, - 579.946045),
					['Mythical Gym'] = CFrame.new(2489.21484, 3.67686629, 849.051025),
					['Eternal Gym'] = CFrame.new(- 7176.19141, 45.394104, - 1106.31421),
					['Legend Gym'] = CFrame.new(4304.99023, 987.829956, - 4124.2334),
					['Muscle King Gym'] = CFrame.new(- 8940.12402, 13.1642084, - 5699.13477),
					['Jungle Gym'] = CFrame.new(- 8666, 34, 2070),
				},
				Boulder = {
					['Starter Island'] = CFrame.new(- 33.3047485, 3.31417918, - 11.8831778),
					['Legend Beach'] = CFrame.new(470.334656, 3.31417966, - 321.053925),
					['Frost Gym'] = CFrame.new(- 2933.47998, 29.6399612, - 579.946045),
					['Mythical Gym'] = CFrame.new(2489.21484, 3.67686629, 849.051025),
					['Eternal Gym'] = CFrame.new(- 7176.19141, 45.394104, - 1106.31421),
					['Legend Gym'] = CFrame.new(4304.99023, 987.829956, - 4124.2334),
					['Muscle King Gym'] = CFrame.new(- 8940.12402, 13.1642084, - 5699.13477),
					['Jungle Gym'] = CFrame.new(- 8621, 34, 2684),
				},
			}
			local v501, v502, v503 = ipairs({
				'Bench Press',
				'Squat',
				'Deadlift',
				'Pull Up',
				'Boulder',
			})
			local v504 = {
				'Starter Island',
				'Legend Beach',
				'Frost Gym',
				'Mythical Gym',
				'Eternal Gym',
				'Legend Gym',
				'Muscle King Gym',
				'Jungle Gym',
			}
			while true do
				local u505
				v503, u505 = v501(v502, v503)
				if v503 == nil then
					break
				end
				v354.AutoFarm:CreateDropdown(u505 .. ' dropdown', {
					Title = 'Select ' .. u505,
					Description = 'Choose Your Training Location',
					Values = v504,
					Multi = false,
					Default = 1,
					Callback = function(p506)
						_G['select' .. string.lower(string.gsub(u505, ' ', ''))] = p506
					end,
				})
				v354.AutoFarm:CreateToggle(u505 .. ' Toggle', {
					Title = 'Farm ' .. u505,
					Description = 'Auto Trains ' .. u505,
					Default = false,
					Callback = function(p507)
						getgenv().working = p507
						if p507 then
							local v508 = _G['select' .. string.lower(string.gsub(u505, ' ', ''))]
							if u500[u505][v508] then
								u499(u505, u500[u505][v508])
							end
						end
					end,
				})
			end
			v354.Rebirth:CreateSection('AutoRebirth')
			local u509 = 1
			local _Value3 = game.Players.LocalPlayer.leaderstats.Rebirths.Value
			local _RebirthStats = v354.Rebirth:CreateParagraph('RebirthStats', {
				Title = 'Rebirth Statistics',
				Content = 'Loading stats...',
				TitleAlignment = 'Left',
				ContentAlignment = Enum.TextXAlignment.Left,
			})
			local function u514()
				local _Value4 = game.Players.LocalPlayer.leaderstats.Rebirths.Value
				local v513 = _Value4 - _Value3
				_RebirthStats:SetContent(string.format('Target Rebirth: %d\nCurrent Rebirths: %d\nRebirths Gained: %d', u509, _Value4, v513))
			end
			game.Players.LocalPlayer.leaderstats.Rebirths.Changed:Connect(u514)
			u514()
			v354.Rebirth:CreateInput('TargetRebirth', {
				Title = 'Target Rebirth Amount',
				Description = 'Enter your target rebirth goal',
				Default = '1',
				Placeholder = 'Enter amount...',
				Numeric = true,
				Finished = true,
				Callback = function(p515)
					u509 = tonumber(p515) or 1
					u514()
				end,
			})
			local u516 = nil
			v354.Rebirth:CreateToggle('AutoRebirthTarget', {
				Title = 'Auto Rebirth (Target)',
				Description = 'Automatically rebirth until target is reached',
				Default = false,
				Callback = function(p517)
					if p517 then
						u516 = task.spawn(function()
							while task.wait(0.1) do
								if u509 <= game.Players.LocalPlayer.leaderstats.Rebirths.Value then
									targetToggle:SetValue(false)
									break
								end
								game:GetService('ReplicatedStorage').rEvents.rebirthRemote:InvokeServer('rebirthRequest')
							end
						end)
					elseif u516 then
						task.cancel(u516)
						u516 = nil
					end
				end,
			})
			local u518 = nil
			v354.Rebirth:CreateToggle('AutoRebirthInfinite', {
				Title = 'Auto Rebirth (Infinite)',
				Description = 'Continuously rebirth without stopping',
				Default = false,
				Callback = function(p519)
					if p519 then
						u518 = task.spawn(function()
							while task.wait(0.1) do
								game:GetService('ReplicatedStorage').rEvents.rebirthRemote:InvokeServer('rebirthRequest')
							end
						end)
					elseif u518 then
						task.cancel(u518)
						u518 = nil
					end
				end,
			})
			local u520 = nil
			v354.Rebirth:CreateToggle('AutoSize', {
				Title = 'Auto Size 1',
				Description = 'Sets character size to 1 continuously',
				Default = false,
				Callback = function(p521)
					if p521 then
						u520 = task.spawn(function()
							while task.wait(0) do
								game:GetService('ReplicatedStorage').rEvents.changeSpeedSizeRemote:InvokeServer('changeSize', 1)
							end
						end)
					elseif u520 then
						task.cancel(u520)
						u520 = nil
					end
				end,
			})
			local u522 = nil
			v354.Rebirth:CreateToggle('KingTeleport', {
				Title = 'Auto Teleport to King',
				Description = 'Continuously teleport to Muscle King',
				Default = false,
				Callback = function(p523)
					if p523 then
						u522 = task.spawn(function()
							while task.wait(0) do
								if game.Players.LocalPlayer.Character then
									game.Players.LocalPlayer.Character:MoveTo(Vector3.new(- 8646, 17, - 5738))
								end
							end
						end)
					elseif u522 then
						task.cancel(u522)
						u522 = nil
					end
				end,
			})
			v354.Rebirth:CreateToggle('FrameToggle', {
				Title = 'Hide All Frames',
				Description = 'Toggle ON to hide all game frames',
				Default = false,
				Callback = function(p524)
					local _ReplicatedStorage2 = game:GetService('ReplicatedStorage')
					local v526, v527, v528 = pairs(_ReplicatedStorage2:GetChildren())
					while true do
						local v529
						v528, v529 = v526(v527, v528)
						if v528 == nil then
							break
						end
						if v529.Name:match('Frame$') then
							v529.Visible = not p524
						end
					end
				end,
			})
			v354.Rebirth:CreateInput('RebirthInput', {
				Title = 'Target Rebirth',
				Description = 'Farm will stop at this rebirth count',
				Default = '50000',
				Placeholder = 'Enter target rebirth...',
				Numeric = true,
				Finished = true,
				Callback = function(p530)
					targetRebirth = tonumber(p530) or math.huge
				end,
			})
			local u531 = false
			local _ReplicatedStorage3 = game:GetService('ReplicatedStorage')
			local _LocalPlayer35 = game:GetService('Players').LocalPlayer
			local function u543()
				local _petsFolder3 = _LocalPlayer35:FindFirstChild('petsFolder')
				local v535, v536, v537 = pairs(_petsFolder3:GetChildren())
				while true do
					local v538
					v537, v538 = v535(v536, v537)
					if v537 == nil then
						break
					end
					if v538:IsA('Folder') then
						local v539, v540, v541 = pairs(v538:GetChildren())
						while true do
							local v542
							v541, v542 = v539(v540, v541)
							if v541 == nil then
								break
							end
							_ReplicatedStorage3.rEvents.equipPetEvent:FireServer('unequipPet', v542)
						end
					end
				end
				task.wait(0.1)
			end
			local function u549(p544)
				u543()
				task.wait(0.01)
				local v545, v546, v547 = pairs(_LocalPlayer35.petsFolder.Unique:GetChildren())
				while true do
					local v548
					v547, v548 = v545(v546, v547)
					if v547 == nil then
						break
					end
					if v548.Name == p544 then
						_ReplicatedStorage3.rEvents.equipPetEvent:FireServer('equipPet', v548)
					end
				end
			end
			local function u556(p550)
				local v551 = workspace.machinesFolder:FindFirstChild(p550)
				if not v551 then
					local v552, v553, v554 = pairs(workspace:GetChildren())
					while true do
						local v555
						v554, v555 = v552(v553, v554)
						if v554 == nil then
							break
						end
						if v555:IsA('Folder') and v555.Name:find('machines') then
							v551 = v555:FindFirstChild(p550)
							if v551 then
								break
							end
						end
					end
				end
				return v551
			end
			local function u558()
				local _VirtualInputManager3 = game:GetService('VirtualInputManager')
				_VirtualInputManager3:SendKeyEvent(true, 'E', false, game)
				task.wait(0.1)
				_VirtualInputManager3:SendKeyEvent(false, 'E', false, game)
			end
			local function u563()
				while u531 do
					local v559 = 10000 + 5000 * _LocalPlayer35.leaderstats.Rebirths.Value
					if _LocalPlayer35.ultimatesFolder:FindFirstChild('Golden Rebirth') then
						local _Value5 = _LocalPlayer35.ultimatesFolder['Golden Rebirth'].Value
						v559 = math.floor(v559 * (1 - _Value5 * 0.1))
					end
					u543()
					task.wait(0.1)
					u549('Swift Samurai')
					while u531 and _LocalPlayer35.leaderstats.Strength.Value < v559 do
						for _ = 1, 10 do
							_LocalPlayer35.muscleEvent:FireServer('rep')
						end
						task.wait()
					end
					u543()
					task.wait(0.1)
					u549('Tribal Overlord')
					local _JungleBarLift2 = u556('Jungle Bar Lift')
					if _JungleBarLift2 and _JungleBarLift2:FindFirstChild('interactSeat') then
						_LocalPlayer35.Character.HumanoidRootPart.CFrame = _JungleBarLift2.interactSeat.CFrame * CFrame.new(0, 3, 0)
						repeat
							task.wait(0.01)
							u558()
						until _LocalPlayer35.Character.Humanoid.Sit
					end
					local _Value6 = _LocalPlayer35.leaderstats.Rebirths.Value
					repeat
						_ReplicatedStorage3.rEvents.rebirthRemote:InvokeServer('rebirthRequest')
						task.wait(0.01)
					until _Value6 < _LocalPlayer35.leaderstats.Rebirths.Value
					task.wait()
				end
			end
			v354.Rebirth:CreateToggle('UltimateFarm', {
				Title = 'FastRebirthsV1',
				Default = false,
				Callback = function(p564)
					u531 = p564
					if p564 then
						task.spawn(u563)
					end
				end,
			})
			local _ReplicatedStorage4 = game:GetService('ReplicatedStorage')
			local _LocalPlayer36 = game:GetService('Players').LocalPlayer
			local function u576()
				local _petsFolder4 = _LocalPlayer36:FindFirstChild('petsFolder')
				local v568, v569, v570 = pairs(_petsFolder4:GetChildren())
				while true do
					local v571
					v570, v571 = v568(v569, v570)
					if v570 == nil then
						break
					end
					if v571:IsA('Folder') then
						local v572, v573, v574 = pairs(v571:GetChildren())
						while true do
							local v575
							v574, v575 = v572(v573, v574)
							if v574 == nil then
								break
							end
							_ReplicatedStorage4.rEvents.equipPetEvent:FireServer('unequipPet', v575)
						end
					end
				end
				task.wait(0.01)
			end
			local function u582(p577)
				u576()
				task.wait(0.01)
				local v578, v579, v580 = pairs(_LocalPlayer36.petsFolder.Unique:GetChildren())
				while true do
					local v581
					v580, v581 = v578(v579, v580)
					if v580 == nil then
						break
					end
					if v581.Name == p577 then
						_ReplicatedStorage4.rEvents.equipPetEvent:FireServer('equipPet', v581)
					end
				end
			end
			local function u583()
				while u531 do
					u582('Swift Samurai')
					while u531 do
						for _ = 1, 10 do
							_LocalPlayer36.muscleEvent:FireServer('rep')
						end
						task.wait(0.01)
					end
					task.wait(0.01)
				end
			end
			v354.Rebirth:CreateToggle('UltimateStrength', {
				Title = 'Fast Rep',
				Default = false,
				Callback = function(p584)
					u531 = p584
					if p584 then
						task.spawn(u583)
					end
				end,
			})
			local _ReplicatedStorage5 = game:GetService('ReplicatedStorage')
			local _LocalPlayer37 = game:GetService('Players').LocalPlayer
			local function u596()
				local _petsFolder5 = _LocalPlayer37:FindFirstChild('petsFolder')
				local v588, v589, v590 = pairs(_petsFolder5:GetChildren())
				while true do
					local v591
					v590, v591 = v588(v589, v590)
					if v590 == nil then
						break
					end
					if v591:IsA('Folder') then
						local v592, v593, v594 = pairs(v591:GetChildren())
						while true do
							local v595
							v594, v595 = v592(v593, v594)
							if v594 == nil then
								break
							end
							_ReplicatedStorage5.rEvents.equipPetEvent:FireServer('unequipPet', v595)
						end
					end
				end
				task.wait(0.01)
			end
			local function u602(p597)
				u596()
				task.wait(0.01)
				local v598, v599, v600 = pairs(_LocalPlayer37.petsFolder.Unique:GetChildren())
				while true do
					local v601
					v600, v601 = v598(v599, v600)
					if v600 == nil then
						break
					end
					if v601.Name == p597 then
						_ReplicatedStorage5.rEvents.equipPetEvent:FireServer('equipPet', v601)
					end
				end
			end
			local function u603()
				while u531 do
					u602('Swift Samurai')
					while u531 do
						for _ = 1, 3000 do
							_LocalPlayer37.muscleEvent:FireServer('rep')
						end
						task.wait(0.01)
					end
					task.wait(0.01)
				end
			end
			v354.Rebirth:CreateToggle('UltimateStrength', {
				Title = 'Ultra Fast Rep',
				Default = false,
				Callback = function(p604)
					u531 = p604
					if p604 then
						task.spawn(u603)
					end
				end,
			})
			local u605 = false
			local _ReplicatedStorage6 = game:GetService('ReplicatedStorage')
			local _LocalPlayer38 = game:GetService('Players').LocalPlayer
			local function u617()
				local _petsFolder6 = _LocalPlayer38:FindFirstChild('petsFolder')
				local v609, v610, v611 = pairs(_petsFolder6:GetChildren())
				while true do
					local v612
					v611, v612 = v609(v610, v611)
					if v611 == nil then
						break
					end
					if v612:IsA('Folder') then
						local v613, v614, v615 = pairs(v612:GetChildren())
						while true do
							local v616
							v615, v616 = v613(v614, v615)
							if v615 == nil then
								break
							end
							_ReplicatedStorage6.rEvents.equipPetEvent:FireServer('unequipPet', v616)
						end
					end
				end
				task.wait(0.01)
			end
			local function u623(p618)
				u617()
				task.wait(0.01)
				local v619, v620, v621 = pairs(_LocalPlayer38.petsFolder.Unique:GetChildren())
				while true do
					local v622
					v621, v622 = v619(v620, v621)
					if v621 == nil then
						break
					end
					if v622.Name == p618 then
						_ReplicatedStorage6.rEvents.equipPetEvent:FireServer('equipPet', v622)
					end
				end
			end
			local function u630(p624)
				local v625 = workspace.machinesFolder:FindFirstChild(p624)
				if not v625 then
					local v626, v627, v628 = pairs(workspace:GetChildren())
					while true do
						local v629
						v628, v629 = v626(v627, v628)
						if v628 == nil then
							break
						end
						if v629:IsA('Folder') and v629.Name:find('machines') then
							v625 = v629:FindFirstChild(p624)
							if v625 then
								break
							end
						end
					end
				end
				return v625
			end
			local function u632()
				local _VirtualInputManager4 = game:GetService('VirtualInputManager')
				_VirtualInputManager4:SendKeyEvent(true, 'E', false, game)
				task.wait(0.01)
				_VirtualInputManager4:SendKeyEvent(false, 'E', false, game)
			end
			local function u637()
				while u605 do
					local v633 = 10000 + 5000 * _LocalPlayer38.leaderstats.Rebirths.Value
					if _LocalPlayer38.ultimatesFolder:FindFirstChild('Golden Rebirth') then
						local _Value7 = _LocalPlayer38.ultimatesFolder['Golden Rebirth'].Value
						v633 = math.floor(v633 * (1 - _Value7 * 0.1))
					end
					u617()
					task.wait(0.1)
					u623('Swift Samurai')
					while u605 and _LocalPlayer38.leaderstats.Strength.Value < v633 do
						for _ = 1, 10 do
							_LocalPlayer38.muscleEvent:FireServer('rep')
						end
						task.wait(0.01)
					end
					u617()
					task.wait(0.01)
					u623('Tribal Overlord')
					local _JungleBarLift3 = u630('Jungle Bar Lift')
					if _JungleBarLift3 and _JungleBarLift3:FindFirstChild('interactSeat') then
						_LocalPlayer38.Character.HumanoidRootPart.CFrame = _JungleBarLift3.interactSeat.CFrame * CFrame.new(0, 3, 0)
						repeat
							task.wait(0.01)
							u632()
						until _LocalPlayer38.Character.Humanoid.Sit
					end
					local _Value8 = _LocalPlayer38.leaderstats.Rebirths.Value
					repeat
						_ReplicatedStorage6.rEvents.rebirthRemote:InvokeServer('rebirthRequest')
						task.wait(0.01)
					until _Value8 < _LocalPlayer38.leaderstats.Rebirths.Value
					task.wait()
				end
			end
			v354.Rebirth:CreateToggle('UltimateFarm', {
				Title = 'FastRebirthsV2',
				Default = false,
				Callback = function(p638)
					u605 = p638
					if p638 then
						task.spawn(u637)
					end
				end,
			})
		end,
	})
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
