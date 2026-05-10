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
	local _EnchantedHubLegendsOfSpeed = loadstring(game:HttpGet('https://raw.githubusercontent.com/iblameaabis/Ililililililililililililil/refs/heads/main/W%20UI', true))():AddWindow('Enchanted Hub | Legends Of Speed • CRACKED BY VOIDDEVS!!!', {
		main_color = Color3.fromRGB(64, 64, 64),
		min_size = Vector2.new(510, 470),
		can_resize = false,
	})
	local _Farming = _EnchantedHubLegendsOfSpeed:AddTab('Farming')
	_Farming:AddLabel("CRY ALL YOU WANT. YOUR SCRIPT GOT LEAKED LOL. Fucking pathetic. Script leaked vy Voiddevs").TextSize = 22
	local _GlitchableRebirths = _Farming:AddDropdown('Glitchable Rebirths', function(p21)
		if p21 == '9' then
			print('Rebirth: 9')
		elseif p21 == '15' then
			print('Rebirth: 15')
		elseif p21 == '23' then
			print('Rebirth: 23')
		elseif p21 == '31' then
			print('Rebirth: 31')
		elseif p21 == '34' then
			print('Rebirth: 34')
		elseif p21 == '37' then
			print('Rebirth: 37')
		elseif p21 == '42' then
			print('Rebirth: 42')
		elseif p21 == '45' then
			print('Rebirth: 45')
		elseif p21 == '51' then
			print('Rebirth: 51')
		elseif p21 == '59' then
			print('Rebirth: 59')
		elseif p21 == '64' then
			print('Rebirth: 64')
		elseif p21 == '71' then
			print('Rebirth: 71')
		elseif p21 == '83' then
			print('Rebirth: 83')
		elseif p21 == '89' then
			print('Rebirth: 89')
		elseif p21 == '94' then
			print('Rebirth: 94')
		elseif p21 == '101' then
			print('Rebirth: 101')
		elseif p21 == '109' then
			print('Rebirth: 109')
		elseif p21 == '124' then
			print('Rebirth: 124')
		elseif p21 == '144' then
			print('Rebirth: 144')
		elseif p21 == '179' then
			print('Rebirth: 179')
		elseif p21 == '199' then
			print('Rebirth: 199')
		elseif p21 == '224' then
			print('Rebirth: 224')
		elseif p21 == '249' then
			print('Rebirth: 249')
		elseif p21 == '287' then
			print('Rebirth: 287')
		elseif p21 == '329' then
			print('Rebirth: 329')
		elseif p21 == '349' then
			print('Rebirth: 349')
		elseif p21 == '374' then
			print('Rebirth: 374')
		elseif p21 == '399' then
			print('Rebirth: 399')
		elseif p21 == '429' then
			print('Rebirth: 429')
		elseif p21 == '479' then
			print('Rebirth: 479')
		elseif p21 == '499' then
			print('Rebirth: 499')
		elseif p21 == '549' then
			print('Rebirth: 549')
		elseif p21 == '574' then
			print('Rebirth: 574')
		elseif p21 == '599' then
			print('Rebirth: 599')
		elseif p21 == '639' then
			print('Rebirth: 639')
		elseif p21 == '679' then
			print('Rebirth: 679')
		elseif p21 == '699' then
			print('Rebirth: 699')
		elseif p21 == '739' then
			print('Rebirth: 739')
		elseif p21 == '824' then
			print('Rebirth: 824')
		elseif p21 == '874' then
			print('Rebirth: 874')
		elseif p21 == '949' then
			print('Rebirth: 949')
		elseif p21 == '999' then
			print('Rebirth: 999')
		elseif p21 == '1099' then
			print('Rebirth: 1099')
		elseif p21 == '1249' then
			print('Rebirth: 1249')
		elseif p21 == '1374' then
			print('Rebirth: 1374')
		elseif p21 == '1499' then
			print('Rebirth: 1499')
		elseif p21 == '1749' then
			print('Rebirth: 1749')
		elseif p21 == '2399' then
			print('Rebirth: 2399')
		elseif p21 == '2749' then
			print('Rebirth: 2749')
		elseif p21 == '2999' then
			print('Rebirth: 2999')
		elseif p21 == '3749' then
			print('Rebirth: 3749')
		elseif p21 == '3999' then
			print('Rebirth: 3999')
		elseif p21 == '4599' then
			print('Rebirth: 4599')
		elseif p21 == '4999' then
			print('Rebirth: 4999')
		elseif p21 == '5249' then
			print('Rebirth: 5249')
		elseif p21 == '6799' then
			print('Rebirth: 6799')
		elseif p21 == '7249' then
			print('Rebirth: 7249')
		elseif p21 == '7499' then
			print('Rebirth: 7499')
		elseif p21 == '7599' then
			print('Rebirth: 7599')
		elseif p21 == '7749' then
			print('Rebirth: 7749')
		elseif p21 == '7999' then
			print('Rebirth: 7999')
		elseif p21 == '8249' then
			print('Rebirth: 8249')
		elseif p21 == '8749' then
			print('Rebirth: 8749')
		elseif p21 == '9099' then
			print('Rebirth: 9099')
		elseif p21 == '9499' then
			print('Rebirth: 9499')
		elseif p21 == '9749' then
			print('Rebirth: 9749')
		elseif p21 == '9999' then
			print('Rebirth: 9999')
		elseif p21 == '10149' then
			print('Rebirth: 10149')
		elseif p21 == '10499' then
			print('Rebirth: 10499')
		elseif p21 == '10999' then
			print('Rebirth: 10999')
		elseif p21 == '11249' then
			print('Rebirth: 11249')
		elseif p21 == '11399' then
			print('Rebirth: 11399')
		elseif p21 == '11699' then
			print('Rebirth: 11699')
		elseif p21 == '11999' then
			print('Rebirth: 11999')
		elseif p21 == '12349' then
			print('Rebirth: 12349')
		end
	end)
	_GlitchableRebirths:Add('9')
	_GlitchableRebirths:Add('15')
	_GlitchableRebirths:Add('23')
	_GlitchableRebirths:Add('31')
	_GlitchableRebirths:Add('34')
	_GlitchableRebirths:Add('37')
	_GlitchableRebirths:Add('42')
	_GlitchableRebirths:Add('45')
	_GlitchableRebirths:Add('51')
	_GlitchableRebirths:Add('59')
	_GlitchableRebirths:Add('64')
	_GlitchableRebirths:Add('71')
	_GlitchableRebirths:Add('83')
	_GlitchableRebirths:Add('89')
	_GlitchableRebirths:Add('94')
	_GlitchableRebirths:Add('101')
	_GlitchableRebirths:Add('109')
	_GlitchableRebirths:Add('124')
	_GlitchableRebirths:Add('144')
	_GlitchableRebirths:Add('179')
	_GlitchableRebirths:Add('199')
	_GlitchableRebirths:Add('224')
	_GlitchableRebirths:Add('249')
	_GlitchableRebirths:Add('287')
	_GlitchableRebirths:Add('329')
	_GlitchableRebirths:Add('349')
	_GlitchableRebirths:Add('374')
	_GlitchableRebirths:Add('399')
	_GlitchableRebirths:Add('429')
	_GlitchableRebirths:Add('479')
	_GlitchableRebirths:Add('499')
	_GlitchableRebirths:Add('549')
	_GlitchableRebirths:Add('574')
	_GlitchableRebirths:Add('599')
	_GlitchableRebirths:Add('639')
	_GlitchableRebirths:Add('679')
	_GlitchableRebirths:Add('699')
	_GlitchableRebirths:Add('739')
	_GlitchableRebirths:Add('824')
	_GlitchableRebirths:Add('874')
	_GlitchableRebirths:Add('949')
	_GlitchableRebirths:Add('999')
	_GlitchableRebirths:Add('1099')
	_GlitchableRebirths:Add('1249')
	_GlitchableRebirths:Add('1374')
	_GlitchableRebirths:Add('1499')
	_GlitchableRebirths:Add('1749')
	_GlitchableRebirths:Add('2399')
	_GlitchableRebirths:Add('2749')
	_GlitchableRebirths:Add('2999')
	_GlitchableRebirths:Add('3749')
	_GlitchableRebirths:Add('3999')
	_GlitchableRebirths:Add('4599')
	_GlitchableRebirths:Add('4999')
	_GlitchableRebirths:Add('5249')
	_GlitchableRebirths:Add('6799')
	_GlitchableRebirths:Add('7249')
	_GlitchableRebirths:Add('7499')
	_GlitchableRebirths:Add('7599')
	_GlitchableRebirths:Add('7749')
	_GlitchableRebirths:Add('7999')
	_GlitchableRebirths:Add('8249')
	_GlitchableRebirths:Add('8749')
	_GlitchableRebirths:Add('9099')
	_GlitchableRebirths:Add('9499')
	_GlitchableRebirths:Add('9749')
	_GlitchableRebirths:Add('9999')
	_GlitchableRebirths:Add('10149')
	_GlitchableRebirths:Add('10499')
	_GlitchableRebirths:Add('10999')
	_GlitchableRebirths:Add('11249')
	_GlitchableRebirths:Add('11399')
	_GlitchableRebirths:Add('11699')
	_GlitchableRebirths:Add('11999')
	_GlitchableRebirths:Add('12349')
	local u23 = 'Yellow Orb'
	local _SelectOrb = _Farming:AddDropdown('Select Orb', function(p24)
		u23 = p24
	end)
	local v26, v27, v28 = ipairs({
		'Red Orb',
		'Blue Orb',
		'Orange Orb',
		'Yellow Orb',
		'Ethereal Orb',
		'Gem',
	})
	local u29 = u23
	local u30 = 'City'
	local u31 = false
	local u32 = nil
	local u33 = false
	local u34 = nil
	while true do
		local v35
		v28, v35 = v26(v27, v28)
		if v28 == nil then
			break
		end
		_SelectOrb:Add(v35)
	end
	local _SelectCity = _Farming:AddDropdown('Select City', function(p36)
		u30 = p36
	end)
	local v38, v39, v40 = ipairs({
		'City',
		'Snow City',
		'Magma City',
		'Space',
		'Desert',
	})
	while true do
		local v41
		v40, v41 = v38(v39, v40)
		if v40 == nil then
			break
		end
		_SelectCity:Add(v41)
	end
	_Farming:AddSwitch('Auto Orb Farm', function(p42)
		u31 = p42
		if u31 then
			u32 = task.spawn(function()
				local _orbEvent = game:GetService('ReplicatedStorage').rEvents.orbEvent
				while u31 do
					task.wait(0.01)
					for _ = 1, 10 do
						_orbEvent:FireServer('collectOrb', u29, u30)
					end
				end
			end)
		else
			u31 = false
		end
	end)
	_Farming:AddSwitch('Auto Hoop', function(p44)
		u33 = p44
		if u33 then
			u34 = task.spawn(function()
				local _Hoops = game:GetService('Workspace').Hoops
				local _Character = game.Players.LocalPlayer.Character
				while u33 do
					task.wait()
					local v47, v48, v49 = pairs(_Hoops:GetChildren())
					while true do
						local v50
						v49, v50 = v47(v48, v49)
						if v49 == nil then
							break
						end
						firetouchinterest(v50, _Character.HumanoidRootPart, 0)
						task.wait()
						firetouchinterest(v50, _Character.HumanoidRootPart, 1)
					end
				end
			end)
		else
			u33 = false
		end
	end)
	local _Teleports = _EnchantedHubLegendsOfSpeed:AddTab('Teleports')
	_Teleports:AddButton('Teleport to City', function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 9684.84, 60.65, 3093.29)
	end)
	_Teleports:AddButton('Teleport to Snow City', function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 9673.79, 60.65, 3788.24)
	end)
	_Teleports:AddButton('Teleport to Magma City', function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 11053.11, 218.58, 4904.35)
	end)
	_Teleports:AddButton('Teleport to Legends Highway', function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 13097.01, 218.58, 5913.35)
	end)
	local _Crystals = _EnchantedHubLegendsOfSpeed:AddTab('Crystals')
	local u53 = 'Yellow Crystal'
	local _SelectCrystal = _Crystals:AddDropdown('Select Crystal', function(p54)
		u53 = p54
	end)
	local v56, v57, v58 = ipairs({
		'Yellow Crystal',
		'Blue Crystal',
		'Red Crystal',
		'Lightning Crystal',
		'Inferno Crystal',
		'Lava Crystal',
		'Snow Crystal',
		'Electro Legends Crystal',
		'Space Crystal',
		'Alien Crystal',
		'Electro Crystal',
		'Desert Crystal',
		'Jungle Crystal',
	})
	local u59 = u53
	while true do
		local v60
		v58, v60 = v56(v57, v58)
		if v58 == nil then
			break
		end
		_SelectCrystal:Add(v60)
	end
	local u61 = false
	_Crystals:AddSwitch('Open Crystal', function(p62)
		u61 = p62
		task.spawn(function()
			while u61 do
				local v63 = {
					'openCrystal',
					u59,
				}
				game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer(unpack(v63))
				task.wait(0.01)
			end
		end)
	end)
	local u64 = 'Swift Samurai'
	local _SelectPet = _Crystals:AddDropdown('Select Pet', function(p65)
		u64 = p65
	end)
	local v67, v68, v69 = ipairs({
		'Swift Samurai',
		'Golden Viking',
		'Speedy Sensei',
		'Maestro Dog',
		'Divine Pegasus',
	})
	local u70 = u64
	while true do
		local v71
		v69, v71 = v67(v68, v69)
		if v69 == nil then
			break
		end
		_SelectPet:Add(v71)
	end
	local u72 = false
	_Crystals:AddSwitch('Open Pet', function(p73)
		u72 = p73
		task.spawn(function()
			while u72 do
				local _cPetShopFolder = game:GetService('ReplicatedStorage').cPetShopFolder
				game:GetService('ReplicatedStorage').cPetShopRemote:InvokeServer(_cPetShopFolder[u70])
				wait(0.01)
			end
		end)
	end)
	local _Rebirthing = _EnchantedHubLegendsOfSpeed:AddTab('Rebirthing')
	local u76 = 0
	local u77 = false
	local u78 = nil
	_Rebirthing:AddSwitch('Auto Rebirth Infinite', function(p79)
		u77 = p79
		if u77 then
			u78 = task.spawn(function()
				local _rebirthEvent = game:GetService('ReplicatedStorage').rEvents.rebirthEvent
				while u77 do
					task.wait(0.001)
					_rebirthEvent:FireServer('rebirthRequest')
				end
			end)
		end
	end)
	_Rebirthing:AddTextBox('Target Rebirth', function(p81)
		u76 = tonumber(p81) or 0
	end)
	_Rebirthing:AddSwitch('Rebirth Target', function(p82)
		local _Rebirths = game.Players.LocalPlayer:WaitForChild('leaderstats'):WaitForChild('Rebirths')
		task.spawn(function()
			while p82 do
				task.wait(0.01)
				if _Rebirths.Value >= u76 then
					break
				end
				game:GetService('ReplicatedStorage').rEvents.rebirthEvent:FireServer('rebirthRequest')
			end
		end)
	end)
	local _Racing = _EnchantedHubLegendsOfSpeed:AddTab('Racing')
	local u85 = nil
	local u86 = nil
	local u87 = false
	local u88 = false
	_Racing:AddSwitch('Auto Race', function(p89)
		u88 = p89
		if p89 then
			u85 = task.spawn(function()
				local _raceEvent = game:GetService('ReplicatedStorage').rEvents.raceEvent
				while u88 do
					task.wait(0.01)
					_raceEvent:FireServer('joinRace')
				end
			end)
		end
	end)
	_Racing:AddSwitch('Finish Race', function(p91)
		u87 = p91
		if u87 then
			u86 = task.spawn(function()
				while u87 do
					local _Character2 = game.Players.LocalPlayer.Character
					if _Character2 and _Character2:FindFirstChild('HumanoidRootPart') then
						_Character2:MoveTo(Vector3.new(1686.07, 36.31, - 5946.63))
						task.wait(0.01)
						_Character2:MoveTo(Vector3.new(48.31, 36.31, - 8680.45))
						task.wait(0.01)
						_Character2:MoveTo(Vector3.new(1001.33, 36.31, - 10986.21))
						task.wait(0.01)
					end
				end
			end)
		else
			u87 = false
		end
	end)
	local _Stats = _EnchantedHubLegendsOfSpeed:AddTab('Stats')
	local u94 = nil
	local _SelectTarget = _Stats:AddDropdown('Select Target', function(p95)
		u94 = game.Players:FindFirstChild(p95)
	end)
	local v97, v98, v99 = ipairs(game.Players:GetPlayers())
	local u100 = u94
	while true do
		local v101
		v99, v101 = v97(v98, v99)
		if v99 == nil then
			break
		end
		_SelectTarget:Add(v101.Name)
	end
	local u102 = {
		stepsLabel = _Stats:AddLabel('Steps: 0'),
		rebirthsLabel = _Stats:AddLabel('Rebirths: 0'),
		hoopsLabel = _Stats:AddLabel('Hoops: 0'),
		racesLabel = _Stats:AddLabel('Races: 0'),
	}
	local function u104(p103)
		if p103 >= 1000000000000000 then
			return string.format('%.2fQa', p103 / 1000000000000000)
		elseif p103 >= 1000000000000 then
			return string.format('%.2fT', p103 / 1000000000000)
		elseif p103 >= 1000000000 then
			return string.format('%.2fB', p103 / 1000000000)
		elseif p103 >= 1000000 then
			return string.format('%.2fM', p103 / 1000000)
		elseif p103 >= 1000 then
			return string.format('%.2fK', p103 / 1000)
		else
			return tostring(p103)
		end
	end
	task.spawn(function()
		while true do
			repeat
				task.wait(0.1)
			until u100 and u100:FindFirstChild('leaderstats')
			local _leaderstats = u100.leaderstats
			u102.stepsLabel.Text = 'Steps: ' .. u104(_leaderstats.Steps.Value)
			u102.rebirthsLabel.Text = 'Rebirths: ' .. u104(_leaderstats.Rebirths.Value)
			u102.hoopsLabel.Text = 'Hoops: ' .. u104(_leaderstats.Hoops.Value)
			u102.racesLabel.Text = 'Races: ' .. u104(_leaderstats.Races.Value)
		end
	end)
	_Stats:AddLabel('Thanks To Adopt For Giving This')
	local _Misc = _EnchantedHubLegendsOfSpeed:AddTab('Misc')
	_Misc:AddSwitch('Auto Set Speed', function(p107)
		getgenv().autoSpeed = p107
		while getgenv().autoSpeed and task.wait(0.1) do
			pcall(function()
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
			end)
		end
	end)
	_Misc:AddSwitch('Auto Set Jump Power', function(p108)
		getgenv().autoJump = p108
		while getgenv().autoJump and task.wait(0.1) do
			pcall(function()
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
			end)
		end
	end)
	_Misc:AddSwitch('Walk on Water', function(p109)
		if p109 then
			local _Part = Instance.new('Part', workspace)
			_Part.Name = 'WaterPlatform'
			_Part.Size = Vector3.new(1000, 1, 1000)
			_Part.Position = Vector3.new(0, 2, 0)
			_Part.Anchored = true
			_Part.Transparency = 0.5
			_Part.CanCollide = true
		else
			local _WaterPlatform = workspace:FindFirstChild('WaterPlatform')
			if _WaterPlatform then
				_WaterPlatform:Destroy()
			end
		end
	end)
	_Misc:AddSwitch('Serious FPS Booster', function(p112)
		if p112 then
			settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
			game:GetService('Lighting').GlobalShadows = false
			game:GetService('Lighting').FogEnd = 9000000000
			local v113, v114, v115 = ipairs(game:GetDescendants())
			while true do
				local v116
				v115, v116 = v113(v114, v115)
				if v115 == nil then
					break
				end
				if v116:IsA('BasePart') then
					v116.Material = Enum.Material.SmoothPlastic
					v116.Reflectance = 0
				end
			end
		end
	end)
	_Misc:AddSwitch('Anti Lag', function(p117)
		if p117 then
			local v118, v119, v120 = ipairs(game:GetDescendants())
			while true do
				local v121
				v120, v121 = v118(v119, v120)
				if v120 == nil then
					break
				end
				if v121:IsA('Decal') or v121:IsA('Texture') then
					v121:Destroy()
				elseif v121:IsA('ParticleEmitter') or v121:IsA('Trail') then
					v121.Enabled = false
				end
			end
		end
	end)
	_Misc:AddSwitch('Anti AFK', function(p122)
		if p122 then
			local _VirtualUser = game:GetService('VirtualUser')
			game:GetService('Players').LocalPlayer.Idled:Connect(function()
				_VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
				task.wait(1)
				_VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
			end)
		end
	end)
	_Misc:AddButton('Rejoin', function()
		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
	end)
	_Misc:AddButton('Hoop Server', function()
		game:GetService('TeleportService'):Teleport(game.PlaceId)
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
