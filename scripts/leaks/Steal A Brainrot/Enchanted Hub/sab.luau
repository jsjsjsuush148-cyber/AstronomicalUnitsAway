--[[
  IBLAMEAABIS CAUGHT BEING A SKID. TRYING TO COVER UP BY SAYING CRACKED EVEN THOUGH YOU USE IT AND FRAMED IT AS YOUR SCRIPT. STUPID SKID 😭😂
]]
local _Players = game:GetService('Players')
local _TweenService2 = game:GetService('TweenService')
local _Lighting = game:GetService('Lighting')
local _ = _Players.LocalPlayer
local _RunService = game:GetService('RunService')
local _UserInputService = game:GetService('UserInputService')
local _LocalPlayer = game.Players.LocalPlayer
local _LocalPlayer2 = game.Players.LocalPlayer
local _BlurEffect = Instance.new('BlurEffect', _Lighting)
_BlurEffect.Size = 0
local v36 = _TweenService2
_TweenService2.Create(v36, _BlurEffect, TweenInfo.new(0.5), {
	Size = 24
}):Play()
local _ScreenGui3 = Instance.new('ScreenGui', _LocalPlayer:WaitForChild('PlayerGui'))
_ScreenGui3.Name = 'StellarLoader'
_ScreenGui3.ResetOnSpawn = false
_ScreenGui3.IgnoreGuiInset = true
local _Frame5 = Instance.new('Frame', _ScreenGui3)
_Frame5.Size = UDim2.new(1, 0, 1, 0)
_Frame5.BackgroundTransparency = 1
local _Frame6 = Instance.new('Frame', _Frame5)
_Frame6.Size = UDim2.new(1, 0, 1, 0)
_Frame6.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
_Frame6.BackgroundTransparency = 1
_Frame6.ZIndex = 0
local v40 = _TweenService2
_TweenService2.Create(v40, _Frame6, TweenInfo.new(0.5), {
	BackgroundTransparency = 0.3
}):Play()
local v41 = 'CRACKED'
local u42 = {}
local function v47()
	local v43, v44, v45 = ipairs(u42)
	while true do
		local v46
		v45, v46 = v43(v44, v45)
		if v45 == nil then
			break
		end
		_TweenService2:Create(v46, TweenInfo.new(0.3), {
			TextTransparency = 1,
			TextSize = 20,
		}):Play()
	end
	_TweenService2:Create(_Frame6, TweenInfo.new(0.5), {
		BackgroundTransparency = 1
	}):Play()
	_TweenService2:Create(_BlurEffect, TweenInfo.new(0.5), {
		Size = 0
	}):Play()
	wait(0.6)
	_ScreenGui3:Destroy()
	_BlurEffect:Destroy()
end
local v48 = u42
local v49 = _TweenService2
for v50 = 1, # v41 do
	local v51 = v50
	local v52 = v41:sub(v51, v51)
	local _TextLabel5 = Instance.new('TextLabel')
	_TextLabel5.Text = v52
	_TextLabel5.Font = Enum.Font.GothamBlack
	_TextLabel5.TextColor3 = Color3.new(1, 1, 1)
	_TextLabel5.TextStrokeTransparency = 1
	_TextLabel5.TextTransparency = 1
	_TextLabel5.TextScaled = false
	_TextLabel5.TextSize = 30
	_TextLabel5.Size = UDim2.new(0, 60, 0, 60)
	_TextLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
	_TextLabel5.Position = UDim2.new(0.5, (v51 - (# v41 / 2 + 0.5)) * 65, 0.5, 0)
	_TextLabel5.BackgroundTransparency = 1
	_TextLabel5.Parent = _Frame5
	local _UIGradient = Instance.new('UIGradient')
	_UIGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 170, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 100, 160)),
	})
	_UIGradient.Rotation = 90
	_UIGradient.Parent = _TextLabel5
	v49:Create(_TextLabel5, TweenInfo.new(0.3), {
		TextTransparency = 0,
		TextSize = 60,
	}):Play()
	table.insert(v48, _TextLabel5)
	wait(0.25)
end
wait(2)
v47()
repeat
	task.wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
if not game:IsLoaded() then
	game.Loaded:Wait()
end
local u55 = loadstring(game:HttpGet('https://raw.githubusercontent.com/x2zu/OPEN-SOURCE-UI-ROBLOX/refs/heads/main/X2ZU%20UI%20ROBLOX%20OPEN%20SOURCE/Lib'))()
local v56 = loadstring(game:HttpGet('https://raw.githubusercontent.com/x2zu/OPEN-SOURCE-UI-ROBLOX/refs/heads/main/X2ZU%20UI%20ROBLOX%20OPEN%20SOURCE/ConfigManager'))()
local _GetService = game.GetService
local u59 = cloneref or function(p58)
	return p58
end
local v63 = {
	__index = function(p60, p61)
		local v62 = u59(_GetService(game, p61))
		p60[p61] = v62
		return v62
	end,
}
setmetatable({}, v63)
local v64 = getgenv and getgenv() or shared or (_G or {})
local u65 = 'Owner'
local function v66()
	return string.find(u65, 'Ad Reward') and 'Free Version' or (string.find(u65, 'Premium') and 'Premium Version' or (string.find(u65, 'Owner') and 'CRACKED VERSION' or 'No Role Assigned'))
end
local _Load = u55.Load
local v68 = {
	Title = game:GetService('MarketplaceService'):GetProductInfo(109983668079237).Name .. ' \u{3022} discord.gg/enchantedhub \u{3022} ' .. v66(),
	ToggleButton = 'rbxassetid://105059922903197',
	BindGui = Enum.KeyCode.RightControl,
}
local v69 = _Load(u55, v68)
local v70 = {
	Information = v69:AddTab('Information'),
	General = v69:AddTab('General'),
	Config = v69:AddTab('Config'),
}
v69:SelectTab()
local v71 = {
	Welcome = v70.Information:AddSection({
		Defualt = true,
		Locked = true,
	}),
	Discord = v70.Information:AddSection({
		Defualt = true,
		Locked = true,
	}),
	Main = v70.General:AddSection({
		Title = 'Instant Proximity',
		Description = '',
		Defualt = false,
		Locked = false,
	}),
	Teleport = v70.General:AddSection({
		Title = 'Teleport',
		Description = '',
		Defualt = false,
		Locked = false,
	}),
	MiscTabs = v70.General:AddSection({
		Title = 'Character',
		Description = '',
		Defualt = false,
		Locked = false,
	}),
	Shop = v70.General:AddSection({
		Title = 'Shop',
		Description = '',
		Defualt = false,
		Locked = false,
	}),
	VisualTabs = v70.General:AddSection({
		Title = 'Visual',
		Description = '',
		Defualt = false,
		Locked = false,
	}),
}
v71.Discord:AddParagraph({
	Title = 'Found a bug?',
	Description = 'Please report by joining our Discord.',
})
v71.Discord:AddButton({
	Title = 'Copy Discord Invite',
	Callback = function()
		setclipboard('https://discord.gg/REDACTED — Dont join stupid iblameaabis fuck ass server')
		u55:Notification('Discord', 'Copied invite to clipboard, just paste it.', 5)
	end,
})
v64.WelcomeParagraph = v71.Welcome:AddParagraph({
	Title = 'Loading...',
	Description = "Please wait..\nIf you've been stuck on this for a long time please join our discord and report it.",
})
v64.WelcomeParagraph:SetTitle('Information')
v64.WelcomeParagraph:SetDesc([[

Welcome to StellarHub!
Thank you for choosing StellarHub. We're always working on improvements and features.
If you experience issues or have feedback, don't hesitate to join our Discord server.
Recent Updates:
[+] Switched to new UI (thanks to 3itx)
[+] Added Shop, Visual, Character
Join the Discord for help, suggestions, and the latest updates.
]])
local u72 = false
local u73 = {}
local u74 = {}
function dop(p75)
	if p75.Base.Spawn.PromptAttachment:FindFirstChild('ProximityPrompt') then
		local _ProximityPrompt = p75.Base.Spawn.PromptAttachment.ProximityPrompt
		table.insert(u73, _ProximityPrompt)
		if u72 then
			_ProximityPrompt.HoldDuration = 0
			table.insert(u74, _ProximityPrompt:GetPropertyChangedSignal('HoldDuration'):Connect(function()
				if _ProximityPrompt.HoldDuration ~= 0 and u72 then
					_ProximityPrompt.HoldDuration = 0
				end
			end))
		end
	end
	table.insert(u74, p75.Base.Spawn.PromptAttachment.ChildAdded:Connect(function(p77)
		if p77:IsA('ProximityPrompt') then
			table.insert(u73, p77)
			if u72 then
				p77.HoldDuration = 0
			end
			table.insert(u74, p77:GetPropertyChangedSignal('HoldDuration'):Connect(function()
				if p77.HoldDuration ~= 0 and u72 then
					p77.HoldDuration = 0
				end
			end))
		end
	end))
end
local v78, v79, v80 = pairs(workspace:WaitForChild('Plots'):GetChildren())
local u81 = u73
local u82 = u72
local v83 = u74
while true do
	local v84, v85 = v78(v79, v80)
	if v84 == nil then
		break
	end
	v80 = v84
	if v85:FindFirstChild('AnimalPodiums') then
		local v86, v87, v88 = pairs(v85.AnimalPodiums:GetChildren())
		while true do
			local v89
			v88, v89 = v86(v87, v88)
			if v88 == nil then
				break
			end
			dop(v89)
		end
		table.insert(v83, v85.AnimalPodiums.ChildAdded:Connect(dop))
	end
end
v71.Main:AddToggle('InstantProximityPrompt', {
	Title = 'Instant Proximity Prompts',
	Default = false,
	Callback = function(p90)
		u82 = p90
		if u82 then
			local v91, v92, v93 = pairs(u81)
			while true do
				local v94
				v93, v94 = v91(v92, v93)
				if v93 == nil then
					break
				end
				v94.HoldDuration = 0
			end
		end
	end,
})
v71.Teleport:AddToggle('TPToBaseToggle', {
	Title = 'Teleport to Base',
	Default = false,
	Callback = function(p95)
		local v96, v97, v98 = pairs(workspace:WaitForChild('Plots'):GetChildren())
		local u99 = nil
		while true do
			local v100
			v98, v100 = v96(v97, v98)
			if v98 == nil then
				break
			end
			local _YourBase = v100:FindFirstChild('YourBase', true)
			if _YourBase and _YourBase.Enabled then
				u99 = v100:FindFirstChild('DeliveryHitbox', true)
				break
			end
		end
		task.spawn(function()
			while p95 do
				task.wait()
				if u99 and (_LocalPlayer2 and _LocalPlayer2.Character) and _LocalPlayer2.Character:FindFirstChild('HumanoidRootPart') then
					local _HumanoidRootPart = _LocalPlayer2.Character.HumanoidRootPart
					local _Position = _HumanoidRootPart.Position
					local v104 = Vector3.new(u99.Position.X, _Position.Y, u99.Position.Z)
					_HumanoidRootPart.CFrame = CFrame.new(v104)
				end
			end
		end)
	end,
})
v71.Teleport:AddToggle('TweenToBaseBtn', {
	Title = 'Tween To Base',
	Description = 'Teleports smoothly to your base using Tween',
	Default = false,
	Callback = function(p105)
		if not p105 then
			return
		end
		local v106, v107, v108 = pairs(workspace:WaitForChild('Plots'):GetChildren())
		local v109 = nil
		while true do
			local v110
			v108, v110 = v106(v107, v108)
			if v108 == nil then
				break
			end
			local _YourBase2 = v110:FindFirstChild('YourBase', true)
			if _YourBase2 and _YourBase2.Enabled then
				v109 = v110:FindFirstChild('DeliveryHitbox', true)
				break
			end
		end
		if v109 and (_LocalPlayer2 and _LocalPlayer2.Character) and (_LocalPlayer2.Character:FindFirstChild('HumanoidRootPart') and _LocalPlayer2.Character:FindFirstChild('Humanoid')) then
			local _HumanoidRootPart2 = _LocalPlayer2.Character.HumanoidRootPart
			local _Humanoid = _LocalPlayer2.Character.Humanoid
			local _Position2 = _HumanoidRootPart2.Position
			local v115 = Vector3.new(v109.Position.X, _Position2.Y, v109.Position.Z)
			game:GetService('TweenService'):Create(_HumanoidRootPart2, TweenInfo.new((v115 - _Position2).Magnitude / _Humanoid.WalkSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				CFrame = CFrame.new(v115) * (_HumanoidRootPart2.CFrame - _Position2),
				Velocity = Vector3.new(0, 0, 0),
			}):Play()
		end
	end,
})
local u116 = {
	{
		Name = 'Slap',
		ID = 'Basic Slap',
	},
	{
		Name = 'Iron Slap',
		ID = 'Iron Slap',
	},
	{
		Name = 'Gold Slap',
		ID = 'Gold Slap',
	},
	{
		Name = 'Diamond Slap',
		ID = 'Diamond Slap',
	},
	{
		Name = 'Emerald Slap',
		ID = 'Emerald Slap',
	},
	{
		Name = 'Ruby Slap',
		ID = 'Ruby Slap',
	},
	{
		Name = 'Dark Matter Slap',
		ID = 'Dark Matter Slap',
	},
	{
		Name = 'Flame Slap',
		ID = 'Flame Slap',
	},
	{
		Name = 'Nuclear Slap',
		ID = 'Nuclear Slap',
	},
	{
		Name = 'Galaxy Slap',
		ID = 'Galaxy Slap',
	},
	{
		Name = 'Trap',
		ID = 'Trap',
	},
	{
		Name = 'Bee Launcher',
		ID = 'Bee Launcher',
	},
	{
		Name = 'Rage Table',
		ID = 'Rage Table',
	},
	{
		Name = 'Grapple Hook',
		ID = 'Grapple Hook',
	},
	{
		Name = 'Taser Gun',
		ID = 'Taser Gun',
	},
	{
		Name = 'Boogie Bomb',
		ID = 'Boogie Bomb',
	},
	{
		Name = "Medusa's Head",
		ID = "Medusa's Head",
	},
	{
		Name = 'Web Slinger',
		ID = 'Web Slinger',
	},
	{
		Name = 'Quantum Cloner',
		ID = 'Quantum Cloner',
	},
	{
		Name = 'All Seeing Sentry',
		ID = 'All Seeing Sentry',
	},
	{
		Name = 'Laser Cape',
		ID = 'Laser Cape',
	},
	{
		Name = 'Speed Coil',
		ID = 'Speed Coil',
	},
	{
		Name = 'Gravity Coil',
		ID = 'Gravity Coil',
	},
	{
		Name = 'Coil Combo',
		ID = 'Coil Combo',
	},
	{
		Name = 'Invisibility Cloak',
		ID = 'Invisibility Cloak',
	},
}
local v117, v118, v119 = pairs(u116)
local v120 = {}
while true do
	local v121
	v119, v121 = v117(v118, v119)
	if v119 == nil then
		break
	end
	table.insert(v120, v121.Name)
end
v71.Shop:AddDropdown('ShopItemDropdown', {
	Title = 'Select Item to Purchase',
	Description = 'Pick an item from the shop list.',
	Options = v120,
	Default = '',
	PlaceHolder = 'Search Item...',
	Multiple = false,
	Callback = function(p122)
		local v123, v124, v125 = pairs(u116)
		while true do
			local u126
			v125, u126 = v123(v124, v125)
			if v125 == nil then
				break
			end
			if p122 == u126.Name then
				local v127, v128 = pcall(function()
					game:GetService('ReplicatedStorage'):WaitForChild('Packages'):WaitForChild('Net'):WaitForChild('RF/CoinsShopService/RequestBuy'):InvokeServer(u126.ID)
				end)
				u55:Notification('STELLARHUB', v127 and 'Tried to buy: ' .. u126.Name or 'Error: ' .. tostring(v128), 3)
				break
			end
		end
	end,
})
local u129 = {}
local function u136(p130)
	if typeof(p130) == 'number' then
		local u131 = _LocalPlayer.Character or workspace:FindFirstChild(_LocalPlayer.Name)
		local u132
		if u131 then
			u132 = u131:FindFirstChildWhichIsA('Humanoid')
		else
			u132 = u131
		end
		local function u133()
			if u131 and u132 then
				u132.WalkSpeed = p130
			end
		end
		u133()
		if u129.wsLoop then
			u129.wsLoop:Disconnect()
		end
		if u129.wsCA then
			u129.wsCA:Disconnect()
		end
		if u132 then
			local v134 = u132
			u129.wsLoop = u132.GetPropertyChangedSignal(v134, 'WalkSpeed'):Connect(u133)
		end
		u129.wsCA = _LocalPlayer.CharacterAdded:Connect(function(p135)
			u132 = p135:WaitForChild('Humanoid')
			u131 = p135
			u133()
			u129.wsLoop = u132:GetPropertyChangedSignal('WalkSpeed'):Connect(u133)
		end)
	end
end
v71.MiscTabs:AddToggle('WalkSpeedToggle', {
	Title = 'WalkSpeed (50)',
	Default = false,
	Callback = function(p137)
		if p137 then
			u136(50)
		else
			u136(16)
			if u129.wsLoop then
				u129.wsLoop:Disconnect()
				u129.wsLoop = nil
			end
			if u129.wsCA then
				u129.wsCA:Disconnect()
				u129.wsCA = nil
			end
		end
	end,
})
local u138 = false
_RunService.Stepped:Connect(function()
	if u138 and _LocalPlayer.Character then
		local v139, v140, v141 = pairs(_LocalPlayer.Character:GetChildren())
		while true do
			local v142
			v141, v142 = v139(v140, v141)
			if v141 == nil then
				break
			end
			if v142:IsA('BasePart') and v142.CanCollide == true then
				v142.CanCollide = false
			end
		end
	end
end)
v71.MiscTabs:AddToggle('NoclipToggle', {
	Title = 'Noclip',
	Default = false,
	Callback = function(p143)
		u138 = p143
	end,
})
local u144 = false
local u145 = nil
v71.MiscTabs:AddToggle('InfiniteJumpToggle', {
	Title = 'Infinite Jump',
	Default = false,
	Callback = function(p146)
		u144 = p146
		if p146 then
			u145 = _UserInputService.JumpRequest:Connect(function()
				if _LocalPlayer.Character and _LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					_LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState('Jumping')
				end
			end)
		elseif u145 then
			u145:Disconnect()
			u145 = nil
		end
	end,
})
local u147 = false
local u148 = {}
local u149 = nil
local function u158()
	local function u156(p150)
		local _Humanoid2 = p150:FindFirstChildOfClass('Humanoid')
		if _Humanoid2 then
			_Humanoid2.BreakJointsOnDeath = false
			_Humanoid2.RequiresNeck = false
			local v152, v153, v154 = ipairs(getconnections(_Humanoid2.Died))
			while true do
				local v155
				v154, v155 = v152(v153, v154)
				if v154 == nil then
					break
				end
				v155:Disable()
				table.insert(u148, v155)
			end
			table.insert(u148, _Humanoid2:GetPropertyChangedSignal('Health'):Connect(function()
				if _Humanoid2.Health < _Humanoid2.MaxHealth then
					_Humanoid2.Health = _Humanoid2.MaxHealth
				end
			end))
			u149 = _RunService.Heartbeat:Connect(function()
				if _Humanoid2 and _Humanoid2.Health < _Humanoid2.MaxHealth then
					_Humanoid2.Health = _Humanoid2.MaxHealth
				end
			end)
		end
	end
	u156(_LocalPlayer.Character or _LocalPlayer.CharacterAdded:Wait())
	table.insert(u148, _LocalPlayer.CharacterAdded:Connect(function(p157)
		task.wait(0.5)
		u156(p157)
	end))
end
local function u164()
	local v159, v160, v161 = ipairs(u148)
	while true do
		local v162
		v161, v162 = v159(v160, v161)
		if v161 == nil then
			break
		end
		if typeof(v162) == 'RBXScriptConnection' then
			v162:Disconnect()
		end
	end
	u148 = {}
	if u149 then
		u149:Disconnect()
		u149 = nil
	end
	local _Character = _LocalPlayer.Character
	if _Character then
		_Character = _LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
	end
	if _Character then
		_Character.BreakJointsOnDeath = true
		_Character.RequiresNeck = true
	end
end
v71.MiscTabs:AddToggle('GodModeToggle', {
	Title = 'God Mode',
	Default = false,
	Callback = function(p165)
		u147 = p165
		if p165 then
			u158()
		else
			u164()
		end
	end,
})
local u166 = false
local _Folder = Instance.new('Folder', game:GetService('CoreGui'))
_Folder.Name = 'ESPFolder'
local function u174(p168)
	local _BoxHandleAdornment = Instance.new('BoxHandleAdornment')
	_BoxHandleAdornment.Name = 'ESPBox'
	local _Character2 = p168.Character
	if _Character2 then
		_Character2 = p168.Character:FindFirstChild('HumanoidRootPart')
	end
	_BoxHandleAdornment.Adornee = _Character2
	_BoxHandleAdornment.AlwaysOnTop = true
	_BoxHandleAdornment.ZIndex = 10
	_BoxHandleAdornment.Size = Vector3.new(4, 6, 1)
	_BoxHandleAdornment.Color3 = Color3.new(1, 1, 1)
	_BoxHandleAdornment.Transparency = 0.5
	_BoxHandleAdornment.Parent = _Folder
	local _BillboardGui = Instance.new('BillboardGui')
	local _Character3 = p168.Character
	if _Character3 then
		_Character3 = p168.Character:FindFirstChild('HumanoidRootPart')
	end
	_BillboardGui.Adornee = _Character3
	_BillboardGui.Size = UDim2.new(0, 100, 0, 40)
	_BillboardGui.AlwaysOnTop = true
	_BillboardGui.Parent = _Folder
	_BillboardGui.Name = 'ESPNameTag'
	local _TextLabel6 = Instance.new('TextLabel')
	_TextLabel6.BackgroundTransparency = 1
	_TextLabel6.Size = UDim2.new(1, 0, 1, 0)
	_TextLabel6.Font = Enum.Font.GothamBold
	_TextLabel6.TextSize = 16
	_TextLabel6.TextColor3 = Color3.new(1, 1, 1)
	_TextLabel6.TextStrokeTransparency = 0.5
	_TextLabel6.Text = p168.DisplayName
	_TextLabel6.Parent = _BillboardGui
	return _BoxHandleAdornment, _BillboardGui
end
local function u181(p175)
	local v176 = _Folder
	local v177, v178, v179 = pairs(v176:GetChildren())
	while true do
		local v180
		v179, v180 = v177(v178, v179)
		if v179 == nil then
			break
		end
		if (v180:IsA('BoxHandleAdornment') or v180:IsA('BillboardGui')) and ((v180.Name == 'ESPBox' or v180.Name == 'ESPNameTag') and (v180.Adornee and v180.Adornee.Parent == p175.Character)) then
			v180:Destroy()
		end
	end
end
local function u193()
	local v182 = _Players
	local v183, v184, v185 = pairs(v182:GetPlayers())
	while true do
		local v186
		v185, v186 = v183(v184, v185)
		if v185 == nil then
			break
		end
		if v186 == _LocalPlayer or not v186.Character or (not v186.Character:FindFirstChild('HumanoidRootPart') or (not v186.Character:FindFirstChildOfClass('Humanoid') or v186.Character:FindFirstChildOfClass('Humanoid').Health <= 0)) then
			u181(v186)
		else
			local v187 = _Folder
			local v188, v189, v190 = pairs(v187:GetChildren())
			local v191 = false
			while true do
				local v192
				v190, v192 = v188(v189, v190)
				if v190 == nil then
					break
				end
				if v192:IsA('BoxHandleAdornment') and v192.Adornee == v186.Character.HumanoidRootPart then
					v191 = true
				end
			end
			if not v191 then
				u174(v186)
			end
		end
	end
end
v71.VisualTabs:AddToggle('ESPToggle', {
	Title = 'ESP',
	Default = false,
	Callback = function(p194)
		u166 = p194
		if not u166 then
			local v195 = _Folder
			local v196, v197, v198 = pairs(v195:GetChildren())
			while true do
				local v199
				v198, v199 = v196(v197, v198)
				if v198 == nil then
					break
				end
				v199:Destroy()
			end
		end
	end,
})
_RunService.Heartbeat:Connect(function()
	if u166 then
		u193()
	end
end)
v56:SetLibrary(u55)
v56:SetIgnoreIndexes({})
v56:SetFolder('Config/StealABrainrot')
v56:InitSaveSystem(v70.Config)
u55:Notification('STELLARHUB', 'We are gay and dicksucker!', 3)
