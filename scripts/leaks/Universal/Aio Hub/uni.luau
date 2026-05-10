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
BarLabel.Text = "VOIDDEVS PROVIDE DEOBF AIO HUB"
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
Title.Text = "Aio Hub Deobfuscated"
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
	local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
	local Window = Rayfield:CreateWindow({
		Name = "aioHub",
		Icon = "cloud-cog",
		LoadingTitle = "All in One HUB",
		LoadingSubtitle = "by chadleythecat on discord",
		ShowText = "AIOHub",
		Theme = "Serenity",
		ToggleUIKeybind = "K",
		DisableRayfieldPrompts = false,
		DisableBuildWarnings = false,
		ConfigurationSaving = {
			Enabled = true,
			FileName = "AllInOneHUB"
		},
		Discord = {
			Enabled = false,
			Invite = "noinvitelink",
			RememberJoins = true
		},
		KeySystem = false,
		KeySettings = {
			Title = "aiohub",
			Subtitle = "Key System",
			Note = "find key in aiohub discord server .gg/uFyk9f245a",
			FileName = "OhSoChadley",
			GrabKeyFromSite = false,
			Key = {
				"chadleythecat"
			}
		}
	})
	local MainTab = Window:CreateTab("Main", "hexagon")
	MainTab:CreateSection("All Hubs/Scripts")
	Rayfield:Notify({
		Title = "Executed AIO HUB",
		Content = "Succesfully executed",
		Duration = 6.5
	})
	MainTab:CreateButton({
		Name = "black hole script (works on any game with unanchored parts)",
		Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/wBsi24w3"))()
		end
	})
	MainTab:CreateButton({
		Name = "fling selected player",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Kilasik/Roblox-Scripts/main/FlingGUI.lua"))()
		end
	})
	MainTab:CreateButton({
		Name = "touch fling",
		Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/wBsi24w3"))()
		end
	})
	MainTab:CreateButton({
		Name = "Yarhm",
		Callback = function()
			local success, result = pcall(function()
				return game:HttpGet("https://yarhm.mhi.im/scr")
			end)
			if not success or not result then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "YARHM Outage",
					Text = "YARHM Online is currently unavailable! Sorry for the inconvenience. Using YARHM Offline.",
					Duration = 5
				})
				result = game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/source/yarhm/1.19/yarhm.lua")
			end
			loadstring(result)()
		end
	})
	MainTab:CreateButton({
		Name = "Talentless (piano autoplayer)",
		Callback = function()
			pcall(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/TALENTLESS"))()
			end)
		end
	})
	MainTab:CreateButton({
		Name = "FakeLag",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Biem6ondo/FAKELAG/refs/heads/main/Fakelag"))()
		end
	})
	MainTab:CreateButton({
		Name = "Fling all players",
		Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/wBsi24w3"))()
		end
	})
	MainTab:CreateButton({
		Name = "InfYield",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
		end
	})
	MainTab:CreateButton({
		Name = "Dex explorer",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/BigBoyTimme/New.Loadstring.Scripts/refs/heads/main/Dex.Explorer"))()
		end
	})
	MainTab:CreateButton({
		Name = "Slap Tower Hanger troll gui",
		Callback = function()
			loadstring(game:HttpGet("https://pastefy.app/MUHN9FgU/raw"))()
		end
	})
	MainTab:CreateButton({
		Name = "Soleilkii's Client Music Player",
		Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/wBsi24w3"))()
		end
	})
	local HubsTab = Window:CreateTab("Hubs", "computer")
	HubsTab:CreateSection("Useful hubs")
	HubsTab:CreateButton({
		Name = "Yarhm MM2, fling, teleport",
		Callback = function()
			local success, result = pcall(function()
				return game:HttpGet("https://yarhm.mhi.im/scr")
			end)
			if not success or not result then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "YARHM Outage",
					Text = "YARHM Online is currently unavailable! Sorry for the inconvenience. Using YARHM Offline.",
					Duration = 5
				})
				result = game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/source/yarhm/1.19/yarhm.lua")
			end
			loadstring(result)()
		end
	})
	HubsTab:CreateButton({
		Name = "Nds Hub",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/KaterHub-Inc/NaturalDisasterSurvival/refs/heads/main/main.lua"))()
		end
	})
	HubsTab:CreateButton({
		Name = "Katerhub trolling (universal)",
		Callback = function()
			loadstring(game:HttpGet("https://katerhub-inc.github.io/KaterHub/main.lua"))()
		end
	})
	HubsTab:CreateButton({
		Name = "VexonHub (keyless?) MM2, TSB, Slap Battles, BBAFT",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/VexonHub"))()
		end
	})
	local MiscTab = Window:CreateTab("Misc", "book-x")
	MiscTab:CreateSection("Misc stuff")
	MiscTab:CreateButton({
		Name = "InfJump",
		Callback = function()
			local Players = game:GetService("Players")
			local LocalPlayer = Players.LocalPlayer
			local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
			local Humanoid = Character:WaitForChild("Humanoid")
			local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
			local JumpPower = 50
			local Touched
			local JumpRequest
			JumpRequest = Humanoid.JumpRequest:Connect(function()
				Humanoid.FloorMaterial = Enum.Material.Air
				task.delay(0.1, function()
					Humanoid.FloorMaterial = Enum.Material.Air
				end)
				Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end)
			Touched = HumanoidRootPart.Touched:Connect(function(hit)
				if hit.Parent == Character then
					return
				end
				Humanoid.FloorMaterial = Enum.Material.Air
				HumanoidRootPart.Velocity = Vector3.new(0, JumpPower, 0)
			end)
			print("InfJump script loaded.")
		end
	})
	MiscTab:CreateSlider({
		Name = "Walkspeed",
		Range = {
			0,
			10000
		},
		Increment = 10,
		Suffix = "Walkspeed",
		CurrentValue = 16,
		Flag = "Slider1",
		Callback = function(value)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
		end
	})
	MiscTab:CreateButton({
		Name = "Rejoin Server",
		Callback = function()
			local TeleportService = game:GetService("TeleportService")
			local Players = game:GetService("Players")
			local LocalPlayer = Players.LocalPlayer
			coroutine.resume(coroutine.create(function()
				local success, err = pcall(function()
					TeleportService:Teleport(game.PlaceId, LocalPlayer)
				end)
				if not success then
					warn(err)
				end
			end))
		end
	})
	MiscTab:CreateButton({
		Name = "idk 2",
		Callback = function()
		end
	})
	MiscTab:CreateButton({
		Name = "idk 2",
		Callback = function()
		end
	})
	MiscTab:CreateButton({
		Name = "idk 2",
		Callback = function()
		end
	})
	MiscTab:CreateButton({
		Name = "idk 2",
		Callback = function()
		end
	})
	MiscTab:CreateButton({
		Name = "nds black hole script",
		Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/wBsi24w3"))()
		end
	})
	local NDSTab = Window:CreateTab("Natural disaster survival", "cloud-lightning")
	NDSTab:CreateSection("Natural disaster scripts")
	NDSTab:CreateButton({
		Name = "NDS black hole script",
		Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/wBsi24w3"))()
		end
	})
	local LBBTab = Window:CreateTab("Lucky block battlegrounds", "clover")
	LBBTab:CreateSection("Lucky block battlegrounds scripts")
	LBBTab:CreateButton({
		Name = "give all items",
		Callback = function()
			loadstring(game:HttpGet("https://pastefy.app/DfkSRQJ9/raw"))()
		end
	})
	local NightsTab = Window:CreateTab("99 nights in the forest", "trees")
	NightsTab:CreateSection("99 nights in the forest scripts/hubs")
	NightsTab:CreateButton({
		Name = "future script (not working)",
		Callback = function()
		end
	})
	local GardenTab = Window:CreateTab("GROW A GARDEN", "apple")
	GardenTab:CreateSection("GROW A GARDEN scripts/hubs")
	GardenTab:CreateButton({
		Name = "future script/hub (not working)",
		Callback = function()
		end
	})
	local ForsakenTab = Window:CreateTab("FORSAKEN", "drama")
	ForsakenTab:CreateSection("FORSAKEN scripts/hubs")
	ForsakenTab:CreateButton({
		Name = "future script/hub (not working)",
		Callback = function()
		end
	})
	local MM2Tab = Window:CreateTab("MM2", "sword")
	MM2Tab:CreateSection("MM2 scripts/hubs")
	MM2Tab:CreateButton({
		Name = "future scripts/hub (not working)",
		Callback = function()
		end
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
