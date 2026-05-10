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
BarLabel.Text = "VOIDDEVS PROVIDE DEOBF NEBULA HUB"
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
Title.Text = "Nebula Hub Deobfuscated"
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
TagLine.Text = "── ✦ ──"
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
	local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
	local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
	local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
	local Window = Library:CreateWindow{
		Title = "Nebula Hub | Game: Muscle Legends | Version [v.2.6.2]",
		SubTitle = "DEOBF BY VoidDevs | bitch ass ttvkaiser",
		TabWidth = 160,
		Size = UDim2.fromOffset(1087, 690.5),
		Resize = true, -- Resize this ^ Size according to a 1920x1080 screen, good for mobile users but may look weird on some devices
		MinSize = Vector2.new(470, 380),
		Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
		Theme = "Amethyst Dark",
		MinimizeKey = Enum.KeyCode.RightControl-- Used when theres no MinimizeKeybind
	}

-- Fluent Renewed provides ALL 1544 Lucide 0.469.0 https://lucide.dev/icons/ Icons and ALL 9072 Phosphor 2.1.0 https://phosphoricons.com/ Icons for the tabs, icons are optional
	local Tabs = {
	  tooEzz = Window:CreateTab{
	    Title = "DEOBF",
	    Icon = "skull"
	  },
		Home = Window:CreateTab{
			Title = "Home",
			Icon = "house"
		},
		Main = Window:CreateTab{
			Title = "Main",
			Icon = "phosphor-users-bold"
		},
		Rocks = Window:CreateTab{
			Title = "Rocks",
			Icon = "mountain"
		},
		Rebirth = Window:CreateTab{
			Title = "Auto Rebirths",
			Icon = "biceps-flexed"
		},
		Killing = Window:CreateTab{
			Title = "Auto Kill",
			Icon = "skull"
		},
		Teleport = Window:CreateTab{
			Title = "Teleport",
			Icon = "tree-palm"
		},
		Status = Window:CreateTab{
			Title = "Status",
			Icon = "circle-plus"
		},
		Crystal = Window:CreateTab{
			Title = "Crystal",
			Icon = "gem"
		},
		Misc = Window:CreateTab{
			Title = "Misc",
			Icon = "command"
		},
		Credits = Window:CreateTab{
			Title = "Credits",
			Icon = "credit-card"
		},
		Settings = Window:CreateTab{
			Title = "Settings",
			Icon = "settings"
		}
	}
	local Options = Library.Options
	Library:Notify{
		Title = "NEBULA HUB DEOBF BY VOID DEVS",
		Content = "stupid fuck this is shitty code",
		SubContent = "take this terrible source code", -- Optional
		Duration = 13-- Set to nil to make the notification not disappear
	}
	local DEOBFPARA = Tabs.tooEzz:CreateParagraph("too_fucking_easy", {
	  Title = "This is Nebula Hub Deobfuscated",
	  Content = "this is nebula hub by ttvkaiser (weird fuck) and we VoidDevs Deobfuscated the source for y'all to use and that this public now. us VoidDevs are glad to help you skidders 🙏🙏\n\nbig thanks to the whole crew for making this shit free game. go skid responsibly, inject, exploit, and enjoy the full deobf. no more paid garbage, everything open for the streets now. VoidDevs always delivering 🔥",
	  TitleAlignment = "Left",
		ContentAlignment = Enum.TextXAlignment.Left
	})
	Tabs.Home:AddSection("Discord Server Link")
	Tabs.Home:CreateButton({
		Title = "Click to Copy Link",
		Description = "This allows you to join our Discord server and get update pings and more.",
		Callback = function()
			Window:Dialog({
				Title = "Join Our Discord",
				Content = "Would you like to copy the invite link to our Discord server?",
				Buttons = {
					{
						Title = "Confirm",
						Callback = function()
							local link = "https://discord.gg/xbRqESfpD8"
							setclipboard(link)
							print("Copied Discord link to clipboard.")
						end
					}
				}
			})
		end
	})
	Tabs.Home:AddSection("Local Player Configurations")
	local speed = 16
	local Input = Tabs.Home:AddInput("Input", {
		Title = "Speed Input",
		Default = tostring(speed),
		Placeholder = "Enter Speed",
		Numeric = true,
		Finished = false,
		Callback = function(Value)
			local num = tonumber(Value)
			if num then
				speed = num
				print("Speed set to:", speed)
				if Options.MyToggle.Value then
					applySpeed()
				end
			end
		end
	})
	local Toggle = Tabs.Home:AddToggle("MyToggle", {
		Title = "Enable Speed",
		Default = false
	})
	local function applySpeed()
		local player = game.Players.LocalPlayer
		if not player then
			return
		end
		local char = player.Character
		if char then
			local humanoid = char:FindFirstChildOfClass("Humanoid")
			if humanoid and Options.MyToggle.Value then
				humanoid.WalkSpeed = speed
			end
		end
	end
	Toggle:OnChanged(function()
		print("Toggle changed:", Options.MyToggle.Value)
		applySpeed()
	end)
	local player = game.Players.LocalPlayer
	player.CharacterAdded:Connect(function(char)
		char:WaitForChild("Humanoid")
		if Options.MyToggle.Value then
			task.wait(0.1)
			applySpeed()
		end
	end)

-- indinre jump togllw
	local ToggleInfiniteJump = Tabs.Home:AddToggle("Toggle_InfiniteJump", {
		Title = "Infinite Jump",
		Default = false
	})
	ToggleInfiniteJump:OnChanged(function()
		if Options.Toggle_InfiniteJump.Value then
			local UserInputService = game:GetService("UserInputService")
			local Player = game.Players.LocalPlayer
			local Character = Player.Character or Player.CharacterAdded:Wait()
			local Humanoid = Character:WaitForChild("Humanoid")

        -- connecttion on ro jumps
			_G.InfiniteJumpConnection = UserInputService.JumpRequest:Connect(function()
				if Options.Toggle_InfiniteJump.Value then
					Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				end
			end)
			print("Infinite Jump enabled")
		else
			if _G.InfiniteJumpConnection then
				_G.InfiniteJumpConnection:Disconnect()
				_G.InfiniteJumpConnection = nil
			end
			print("Infinite Jump disabled")
		end
	end)

-- no xlip togle
	local ToggleNoClip = Tabs.Home:AddToggle("Toggle_NoClip", {
		Title = "No Clip",
		Default = false
	})
	ToggleNoClip:OnChanged(function()
		local RunService = game:GetService("RunService")
		local Player = game.Players.LocalPlayer
		if Options.Toggle_NoClip.Value then
			_G.NoclipConnection = RunService.Stepped:Connect(function()
				local Character = Player.Character
				if Character then
					for _, part in pairs(Character:GetDescendants()) do
						if part:IsA("BasePart") and part.CanCollide then
							part.CanCollide = false
						end
					end
				end
			end)
			print("No Clip enabled")
		else
			if _G.NoclipConnection then
				_G.NoclipConnection:Disconnect()
				_G.NoclipConnection = nil
			end
			print("No Clip disabled")
		end
	end)
	Tabs.Main:AddSection("Auto Farm")
	local Toggle = Tabs.Main:CreateToggle("AutoRep", {
		Title = "Auto Lift",
		Default = false
	})
	Toggle:OnChanged(function(State)
		if State then
			task.spawn(function()
				while Toggle.Value do
					game:GetService("Players").LocalPlayer:WaitForChild("muscleEvent"):FireServer("rep")
					task.wait(0.1)
				end
			end)
		end
	end)
	local Toggle = Tabs.Main:CreateToggle("AutoPunchWithAnim", {
		Title = "Auto Fast Punch",
		Default = false
	})
	Toggle:OnChanged(function(state)
		while state and Toggle.Value do
			local player = game.Players.LocalPlayer
			local char = game.Workspace:FindFirstChild(player.Name)
			local punchTool = player.Backpack:FindFirstChild("Punch") or (char and char:FindFirstChild("Punch"))
			if punchTool then
				if punchTool.Parent ~= char then
					punchTool.Parent = char -- Equip
					task.wait(0.1) -- small delay to ensure it's equipped
				end

            -- Fast punch tweak
				local attackTime = punchTool:FindFirstChild("attackTime")
				if attackTime then
					attackTime.Value = 0
				end

            -- Simulate tool activation (triggers animation + event)
				punchTool:Activate()
			else
				warn("Punch tool not found")
				Toggle:SetValue(false)
			end
			task.wait()
		end
	end)
	local Toggle = Tabs.Main:CreateToggle("AutoNormalPunch", {
		Title = "Auto Normal Punch",
		Default = false
	})
	Toggle:OnChanged(function(state)
		while state and Toggle.Value do
			local player = game.Players.LocalPlayer
			local char = game.Workspace:FindFirstChild(player.Name)
			local punchTool = player.Backpack:FindFirstChild("Punch") or (char and char:FindFirstChild("Punch"))
			if punchTool then
				if punchTool.Parent ~= char then
					punchTool.Parent = char -- Equip
					task.wait(0.1)
				end

            -- Set normal attack delay
				local attackTime = punchTool:FindFirstChild("attackTime")
				if attackTime then
					attackTime.Value = 0.35
				end

            -- Simulate tool activation (plays animation)
				punchTool:Activate()
			else
				warn("Punch tool not found")
				Toggle:SetValue(false)
			end
			task.wait()
		end
	end)
--------------------------------------------------------------------
--  SECTION - Auto Gym  
--------------------------------------------------------------------
	Tabs.Main:AddSection("Auto Gym")

-- === 1. Data tables =========================================================
	local gymToTools = {                           -- what each gym contains
		["Jungle"] = {
			"Boulder",
			"Bench",
			"Squat",
			"Bar Lift"
		},
		["Muscle King"] = {
			"Boulder",
			"Bench",
			"Squat",
			"Dead Lift"
		},
	}
	local machineData = {                          -- CFrame + machine name
		["Jungle"] = {
			Boulder = {
				cf = CFrame.new(- 8617, 37, 2677),
				rName = "Jungle Boulder"
			},
			Bench = {
				cf = CFrame.new(- 8629.88, 64.88, 1855.03),
				rName = "Jungle Bench"
			},
			Squat = {
				cf = CFrame.new(- 8374.26, 34.59, 2932.45),
				rName = "Jungle Squat"
			},
			["Bar Lift"] = {
				cf = CFrame.new(- 8678.06, 14.50, 2089.26),
				rName = "Jungle Bar Lift"
			},
		},
		["Muscle King"] = {
			Boulder = {
				cf = CFrame.new(- 8940.12, 13.16, - 5699.13),
				rName = "King Boulder"
			},
			Bench = {
				cf = CFrame.new(- 8590.06, 46.02, - 6043.35),
				rName = "Muscle King Bench"
			},
			Squat = {
				cf = CFrame.new(- 8759, 44, - 6044),
				rName = "Muscle King Squat"
			},
			["Dead Lift"] = {
				cf = CFrame.new(- 8773, 50, - 5664),
				rName = "Muscle King Lift"
			},
		}
	}

-- === 2. UI widgets ==========================================================
	local SelectGymDropdown = Tabs.Main:CreateDropdown("SelectGym", {
		Title = "Select Gym",
		Values = {
			"Jungle",
			"Muscle King"
		},
		Multi = false,
		Default = 1,
	})
	local SelectToolDropdown = Tabs.Main:CreateDropdown("SelectTool", {
		Title = "Select Tool",
		Values = gymToTools["Jungle"],            -- start with Jungle list
		Multi = false,
		Default = 1,
	})

-- change the tool list when the gym changes (if your Fluent build supports SetValues)
	SelectGymDropdown:OnChanged(function(newGym)
		if SelectToolDropdown.SetValues then
			SelectToolDropdown:SetValues(gymToTools[newGym])
			SelectToolDropdown:SetValue(gymToTools[newGym][1]) -- reset to first entry
		end
	end)
	local StartGymToggle = Tabs.Main:CreateToggle("MyToggle", {
		Title = "Auto Gym (choose both dropdowns first)",
		Default = false
	})

-- === 3. Automation loop =====================================================
	local runService = game:GetService("RunService")
	local loopConn   -- connection holder so we can disconnect cleanly
	StartGymToggle:OnChanged(function()
    -- stop any previous loop
		if loopConn then
			loopConn:Disconnect()
			loopConn = nil
		end
		if Options.MyToggle.Value then
			loopConn = runService.Heartbeat:Connect(function()
				local gym = SelectGymDropdown.Value
				local tool = SelectToolDropdown.Value
				local info = machineData[gym] and machineData[gym][tool]
				if not info then
					return
				end
				local char = game.Players.LocalPlayer.Character
				if not (char and char.PrimaryPart) then
					return
				end

            -- teleport & fire the remote
				char:SetPrimaryPartCFrame(info.cf)
				game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder[info.rName].interactSeat)
			end)
		end
	end)

-- === 4. Optional: reset UI defaults =========================================
	SelectGymDropdown:SetValue("Jungle")
	SelectToolDropdown:SetValue("Boulder")
	Options.MyToggle:SetValue(false)
	Tabs.Main:AddSection("Auto Equip")
	local equipWeightToggle = Tabs.Main:CreateToggle("EquipWeight", {
		Title = "Auto Equip Weight",
		Default = false
	})
	equipWeightToggle:OnChanged(function(State)
		if State then
			task.spawn(function()
				while equipWeightToggle.Value do
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Weight")
					if tool then
						tool.Parent = game.Players.LocalPlayer.Character
					end
					task.wait(0.1)
				end
			end)
		end
	end)
	local equipPushupToggle = Tabs.Main:CreateToggle("EquipPushups", {
		Title = "Auto Equip Pushups",
		Default = false
	})
	equipPushupToggle:OnChanged(function(State)
		if State then
			task.spawn(function()
				while equipPushupToggle.Value do
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Pushups")
					if tool then
						tool.Parent = game.Players.LocalPlayer.Character
					end
					task.wait(0.1)
				end
			end)
		end
	end)
	local equipSitupToggle = Tabs.Main:CreateToggle("EquipSitups", {
		Title = "Auto Equip Situps",
		Default = false
	})
	equipSitupToggle:OnChanged(function(State)
		if State then
			task.spawn(function()
				while equipSitupToggle.Value do
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Situps")
					if tool then
						tool.Parent = game.Players.LocalPlayer.Character
					end
					task.wait(0.1)
				end
			end)
		end
	end)
	local equipHandstandToggle = Tabs.Main:CreateToggle("EquipHandstands", {
		Title = "Auto Equip Handstands",
		Default = false
	})
	equipHandstandToggle:OnChanged(function(State)
		if State then
			task.spawn(function()
				while equipHandstandToggle.Value do
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Handstands")
					if tool then
						tool.Parent = game.Players.LocalPlayer.Character
					end
					task.wait(0.1)
				end
			end)
		end
	end)
	Tabs.Main:AddSection("Brawl")

-- God Mode (Brawl) Toggle
	local godModeToggle = Tabs.Main:CreateToggle("GodModeBrawl", {
		Title = "God Mode (Brawl)",
		Default = false
	})
	godModeToggle:OnChanged(function()
		local state = Options.GodModeBrawl.Value
		if state then
			task.spawn(function()
				while Options.GodModeBrawl.Value do
					game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
					task.wait(0)
				end
			end)
		end
	end)

-- Auto Join Brawl Toggle
	local autoJoinToggle = Tabs.Main:CreateToggle("AutoJoinBrawl", {
		Title = "Auto Join Brawl",
		Default = false
	})
	autoJoinToggle:OnChanged(function()
		local state = Options.AutoJoinBrawl.Value
		if state then
			task.spawn(function()
				while Options.AutoJoinBrawl.Value do
					game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
					task.wait(2)
				end
			end)
		end
	end)

-- Auto Rebirth (Normal)
	local autoRebirthToggle = Tabs.Rebirth:CreateToggle("AutoRebirth", {
		Title = "Auto Rebirth (Normal)",
		Default = false
	})
	autoRebirthToggle:OnChanged(function(State)
		if State then
			task.spawn(function()
				while autoRebirthToggle.Value do
					game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthRemote"):InvokeServer("rebirthRequest")
					task.wait(0.1)
				end
			end)
		end
	end)

-- Auto Size 2
	local autoSize2Toggle = Tabs.Rebirth:CreateToggle("AutoSize2", {
		Title = "Auto Size 2",
		Default = false
	})
	autoSize2Toggle:OnChanged(function(State)
		if State then
			autoSizeLoop = task.spawn(function()
				while autoSize2Toggle.Value do
					game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
					task.wait()
				end
			end)
		else
			if autoSizeLoop then
				task.cancel(autoSizeLoop)
				autoSizeLoop = nil
			end
		end
	end)

-- Hide All Frames
	local hideFramesToggle = Tabs.Rebirth:CreateToggle("HideAllFrames", {
		Title = "Hide All Frames",
		Default = false
	})
	hideFramesToggle:OnChanged(function(State)
		local rSto = game:GetService("ReplicatedStorage")
		for _, obj in pairs(rSto:GetChildren()) do
			if obj:IsA("Instance") and obj.Name:match("Frame$") then
				obj.Visible = not State
			end
		end
	end)

-- Label
	Tabs.Rebirth:AddSection("OP Stuff")

-- Fast Rebirths
	local fastRebirthsToggle = Tabs.Rebirth:CreateToggle("FastRebirths", {
		Title = "Fast Rebirths",
		Default = false
	})
	fastRebirthsToggle:OnChanged(function(State)
		if State then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ttvkaiser/Nebula-Hub/refs/heads/main/Muscle-Legends/Ddd.txt"))()
		end
	end)

-- Speed Grind (No Rebirth)
	local speedGrindToggle = Tabs.Rebirth:CreateToggle("SpeedGrind", {
		Title = "Fast Grind (No Rebirth)",
		Default = false
	})
	speedGrindToggle:OnChanged(function(State)
		if State then
			for i = 1, 12 do
				task.spawn(function()
					while speedGrindToggle.Value do
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
						task.wait(0.083)
					end
				end)
			end
		end
	end)
	Tabs.Rocks:AddSection("Auto Punch Rocks")
	local player = game.Players.LocalPlayer
	repeat
		task.wait()
	until game:IsLoaded() and player.Character and player.Character:FindFirstChild("Humanoid") and workspace
	local ROCK_MODE = "shrink"
	local function gettool()
		local tool = player.Backpack:FindFirstChild("Punch") or player.Character:FindFirstChild("Punch")
		if tool and tool.Parent ~= player.Character then
			tool.Parent = player.Character
			task.wait(0.1)
		elseif not tool then
			warn("Punch tool not found in Backpack or Character")
		end
		return tool
	end
	local function modifyRock(rock)
		if not rock then
			return
		end
		if ROCK_MODE == "shrink" then
			rock.Size = rock.Size * 0.1
		elseif ROCK_MODE == "hide" then
			rock.Transparency = 1
			rock.CanCollide = false
		end
	end
	local function farmRocks(neededDurabilityValue)
		while getgenv().autoFarm do
			task.wait()
			local character = player.Character
			local machinesFolder = workspace:FindFirstChild("machinesFolder")
			if not character or not machinesFolder then
				return
			end
			if player.Durability.Value >= neededDurabilityValue then
				for _, v in pairs(machinesFolder:GetDescendants()) do
					if v.Name == "neededDurability" and v.Value == neededDurabilityValue then
						local rock = v.Parent:FindFirstChild("Rock")
						if rock and character:FindFirstChild("LeftHand") and character:FindFirstChild("RightHand") then
							local punchTool = gettool()
							if punchTool then
								player.muscleEvent:FireServer("punch", "rightHand")
								player.muscleEvent:FireServer("punch", "leftHand")
								firetouchinterest(rock, character.RightHand, 0)
								firetouchinterest(rock, character.RightHand, 1)
								firetouchinterest(rock, character.LeftHand, 0)
								firetouchinterest(rock, character.LeftHand, 1)
								modifyRock(rock)
							end
						end
					end
				end
			end
		end
	end

-- Create the toggle with Fluent Renewed syntax
	local JungleToggle = Tabs.Rocks:CreateToggle("JungleRockToggle", {
		Title = "Jungle Rock (10M)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	JungleToggle:OnChanged(function()
		local state = Options.JungleRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(10000000)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)

-- You can also set the toggle state programmatically like this:
	Options.JungleRockToggle:SetValue(false)
	local MuscleKingRockToggle = Tabs.Rocks:CreateToggle("MuscleKingRockToggle", {
		Title = "Muscle King Rock (5M)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	MuscleKingRockToggle:OnChanged(function()
		local state = Options.MuscleKingRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(5000000)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.MuscleKingRockToggle:SetValue(false)
	local LegendRockToggle = Tabs.Rocks:CreateToggle("LegendRockToggle", {
		Title = "Legend Rock (1M)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	LegendRockToggle:OnChanged(function()
		local state = Options.LegendRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(1000000)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.LegendRockToggle:SetValue(false)
	local InfernoRockToggle = Tabs.Rocks:CreateToggle("InfernoRockToggle", {
		Title = "Inferno Rock (750K)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	InfernoRockToggle:OnChanged(function()
		local state = Options.InfernoRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(750000)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.InfernoRockToggle:SetValue(false)
	local MysticRockToggle = Tabs.Rocks:CreateToggle("MysticRockToggle", {
		Title = "Mystic Rock (400K)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	MysticRockToggle:OnChanged(function()
		local state = Options.MysticRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(400000)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.MysticRockToggle:SetValue(false)
	local FrozenRockToggle = Tabs.Rocks:CreateToggle("FrozenRockToggle", {
		Title = "Frozen Rock (150K)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	FrozenRockToggle:OnChanged(function()
		local state = Options.FrozenRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(150000)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.FrozenRockToggle:SetValue(false)
	local GoldenRockToggle = Tabs.Rocks:CreateToggle("GoldenRockToggle", {
		Title = "Golden Rock (5K)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	GoldenRockToggle:OnChanged(function()
		local state = Options.GoldenRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(5000)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.GoldenRockToggle:SetValue(false)
	local LargeRockToggle = Tabs.Rocks:CreateToggle("LargeRockToggle", {
		Title = "Large Rock (100)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	LargeRockToggle:OnChanged(function()
		local state = Options.LargeRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(100)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.LargeRockToggle:SetValue(false)
	local PunchingRockToggle = Tabs.Rocks:CreateToggle("PunchingRockToggle", {
		Title = "Punching Rock (10)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	PunchingRockToggle:OnChanged(function()
		local state = Options.PunchingRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(10)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.PunchingRockToggle:SetValue(false)
	local TinyRockToggle = Tabs.Rocks:CreateToggle("TinyRockToggle", {
		Title = "Tiny Rock (0)",
		Default = false
	})

-- Use OnChanged to handle toggle changes
	TinyRockToggle:OnChanged(function()
		local state = Options.LegendRockToggle.Value
		_G.fastHitActive = state
		getgenv().autoFarm = state
		if state then
			coroutine.wrap(function()
				while _G.fastHitActive do
					local character = player.Character
					if character then
						for _ = 1, 10 do
							gettool()
							farmRocks(0)
						end
					end
					task.wait(0.1)
				end
			end)()
		else
			local character = player.Character
			local equipped = character and character:FindFirstChild("Punch")
			if equipped then
				equipped.Parent = player.Backpack
			end
		end
	end)
	Options.TinyRockToggle:SetValue(false)
	local whitelist = {}
	Tabs.Killing:CreateInput("WhitelistBox", {
		Title = "Whitelist Player",
		Default = "",
		Placeholder = "Enter username...",
		Numeric = false,
		Callback = function(text)
			local target = game.Players:FindFirstChild(text)
			if target then
				whitelist[target.Name] = true
			end
		end
	})
	local Toggle = Tabs.Killing:CreateToggle("AutoKill", {
		Title = "Auto Kill",
		Default = false
	})
	Toggle:OnChanged(function(state)
		while state and Toggle.Value do
			local player = game.Players.LocalPlayer
			local char = player.Character or game.Workspace:FindFirstChild(player.Name)

        -- Equip Punch Tool
			local punchTool = player.Backpack:FindFirstChild("Punch") or (char and char:FindFirstChild("Punch"))
			if punchTool then
				if punchTool.Parent ~= char then
					punchTool.Parent = char
					task.wait(0.1)
				end
				local attackTime = punchTool:FindFirstChild("attackTime")
				if attackTime then
					attackTime.Value = 0
				end
				punchTool:Activate()
			else
				warn("Punch tool not found")
				Toggle:SetValue(false)
				break
			end

        -- Damage all non-whitelisted players
			for _, target in ipairs(game.Players:GetPlayers()) do
				if target ~= player and not whitelist[target.Name] then
					local root = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
					local rHand = char and char:FindFirstChild("RightHand")
					local lHand = char and char:FindFirstChild("LeftHand")
					if root and rHand and lHand then
						firetouchinterest(rHand, root, 1)
						firetouchinterest(lHand, root, 1)
						firetouchinterest(rHand, root, 0)
						firetouchinterest(lHand, root, 0)
					end
				end
			end
			task.wait(0.1)
		end
	end)

-- Target Kill
	local targetPlayerName = nil
	Tabs.Killing:CreateInput("TargetPlayerBox", {
		Title = "Player Username",
		Default = "",
		Placeholder = "Enter exact username...",
		Callback = function(text)
			targetPlayerName = text
		end
	})
	local Toggle = Tabs.Killing:CreateToggle("AutoKillTarget", {
		Title = "Auto Kill Player",
		Default = false
	})
	Toggle:OnChanged(function(state)
		while state and Toggle.Value do
			local player = game.Players.LocalPlayer
			local target = game.Players:FindFirstChild(targetPlayerName)
			if target and target ~= player then
				local root = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
				local rHand = player.Character and player.Character:FindFirstChild("RightHand")
				local lHand = player.Character and player.Character:FindFirstChild("LeftHand")
				if root and rHand and lHand then
					firetouchinterest(rHand, root, 1)
					firetouchinterest(lHand, root, 1)
					firetouchinterest(rHand, root, 0)
					firetouchinterest(lHand, root, 0)
				end
			end
			task.wait(0.1)
		end
	end)

-- Tiny Island
	Tabs.Teleport:CreateButton({
		Title = "Tiny Island",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 31.8626194, 6.0588026, 2087.88672, - 0.999396682, - 9.72631931e-09, 0.034730725, - 6.63278898e-09, 1, 8.91870684e-08, - 0.034730725, 8.8902901e-08, - 0.999396682)
		end
	})

-- Starter Island
	Tabs.Teleport:CreateButton({
		Title = "Starter Island",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(226.252472, 8.1526947, 219.366516, - 0.00880406145, 3.58277887e-08, - 0.999961257, - 4.41204939e-08, 1, 3.62176351e-08, 0.999961257, 4.44376482e-08, - 0.00880406145)
		end
	})

-- Beach
	Tabs.Teleport:CreateButton({
		Title = "Beach",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 365.798309, 44.5082932, - 501.618591, 0.00878552441, - 6.19950713e-09, 0.999961436, - 4.37451603e-10, 1, 6.20358964e-09, - 0.999961436, - 4.91936492e-10, 0.00878552441)
		end
	})

-- Frost Gym
	Tabs.Teleport:CreateButton({
		Title = "Frost Gym",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 2933.47998, 29.6399612, - 579.946045, 0.0345239155, - 1.03010173e-07, 0.999403894, 1.03015294e-08, 1, 1.02715752e-07, - 0.999403894, 6.74923806e-09, 0.0345239155)
		end
	})

-- Mythical Gym
	Tabs.Teleport:CreateButton({
		Title = "Mythical Gym",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2659.50635, 21.6095238, 934.690613, 0.999999881, 4.98906161e-08, 0.000502891606, - 4.98585742e-08, 1, - 6.37288338e-08, - 0.000502891606, 6.37037516e-08, 0.999999881)
		end
	})

-- Eternal Gym
	Tabs.Teleport:CreateButton({
		Title = "Eternal Gym",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 7176.19141, 45.394104, - 1106.31421, 0.971191287, - 2.38377185e-09, 0.238301158, 1.41694778e-09, 1, 4.22844915e-09, - 0.238301158, - 3.76897269e-09, 0.971191287)
		end
	})

-- Legend Gym
	Tabs.Teleport:CreateButton({
		Title = "Legend Gym",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4446.91699, 1004.46698, - 3983.76074, - 0.999961317, - 1.97616366e-08, 0.00879266672, - 1.93830077e-08, 1, 4.31365149e-08, - 0.00879266672, 4.29661292e-08, - 0.999961317)
		end
	})

-- Muscle King
	Tabs.Teleport:CreateButton({
		Title = "Muscle King",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 8626, 15, - 5730)
		end
	})

-- Jungle Gym
	Tabs.Teleport:CreateButton({
		Title = "Jungle Gym",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 8137, 28, 2820)
		end
	})
	Tabs.Status:AddSection("Stats Gained")
	local function abbreviateNumber(value)
		if value >= 1e15 then
			return string.format("%.1fQa", value / 1e15)
		elseif value >= 1e12 then
			return string.format("%.1fT", value / 1e12)
		elseif value >= 1e9 then
			return string.format("%.1fB", value / 1e9)
		elseif value >= 1e6 then
			return string.format("%.1fM", value / 1e6)
		elseif value >= 1e3 then
			return string.format("%.1fK", value / 1e3)
		else
			return tostring(value)
		end
	end

-- Paragraph containers
	local paragraphs = {
		TimeSpent = Tabs.Status:CreateParagraph("TimeSpent", {
			Title = "Time Spent",
			Content = "Time spent in this server: 00:00",
			TitleAlignment = "Middle",
			ContentAlignment = Enum.TextXAlignment.Center
		}),
		StrengthGained = Tabs.Status:CreateParagraph("StrengthGained", {
			Title = "Strength",
			Content = "Strength gained: 0",
			TitleAlignment = "Middle",
			ContentAlignment = Enum.TextXAlignment.Center
		}),
		DurabilityGained = Tabs.Status:CreateParagraph("DurabilityGained", {
			Title = "Durability",
			Content = "Durability gained: 0",
			TitleAlignment = "Middle",
			ContentAlignment = Enum.TextXAlignment.Center
		}),
		AgilityGained = Tabs.Status:CreateParagraph("AgilityGained", {
			Title = "Agility",
			Content = "Agility gained: 0",
			TitleAlignment = "Middle",
			ContentAlignment = Enum.TextXAlignment.Center
		}),
		KillsGained = Tabs.Status:CreateParagraph("KillsGained", {
			Title = "Kills",
			Content = "Kills gained: 0",
			TitleAlignment = "Middle",
			ContentAlignment = Enum.TextXAlignment.Center
		}),
		EvilKarmaGained = Tabs.Status:CreateParagraph("EvilKarmaGained", {
			Title = "Evil Karma",
			Content = "Evil Karma gained: 0",
			TitleAlignment = "Middle",
			ContentAlignment = Enum.TextXAlignment.Center
		}),
		GoodKarmaGained = Tabs.Status:CreateParagraph("GoodKarmaGained", {
			Title = "Good Karma",
			Content = "Good Karma gained: 0",
			TitleAlignment = "Middle",
			ContentAlignment = Enum.TextXAlignment.Center
		})
	}
	local function createMyParagraphStats()
		local player = game.Players.LocalPlayer
		if not player then
			return
		end
		local leaderstats = player:WaitForChild("leaderstats")
		local strengthStat = leaderstats:WaitForChild("Strength")
		local durabilityStat = player:WaitForChild("Durability")
		local agilityStat = player:WaitForChild("Agility")
		local killsStat = leaderstats:WaitForChild("Kills")
		local evilKarmaStat = player:WaitForChild("evilKarma")
		local goodKarmaStat = player:WaitForChild("goodKarma")
		local initialStrength = strengthStat.Value
		local initialDurability = durabilityStat.Value
		local initialAgility = agilityStat.Value
		local initialKills = killsStat.Value
		local initialEvilKarma = evilKarmaStat.Value
		local initialGoodKarma = goodKarmaStat.Value
		local startTime = tick()
		local function updateParagraphs()
			paragraphs.StrengthGained:SetContent("Strength gained: " .. abbreviateNumber(strengthStat.Value - initialStrength))
			paragraphs.DurabilityGained:SetContent("Durability gained: " .. abbreviateNumber(durabilityStat.Value - initialDurability))
			paragraphs.AgilityGained:SetContent("Agility gained: " .. abbreviateNumber(agilityStat.Value - initialAgility))
			paragraphs.KillsGained:SetContent("Kills gained: " .. abbreviateNumber(killsStat.Value - initialKills))
			paragraphs.EvilKarmaGained:SetContent("Evil Karma gained: " .. abbreviateNumber(evilKarmaStat.Value - initialEvilKarma))
			paragraphs.GoodKarmaGained:SetContent("Good Karma gained: " .. abbreviateNumber(goodKarmaStat.Value - initialGoodKarma))
		end
		local function updateTimeSpent()
			local timeSpent = tick() - startTime
			local minutes = math.floor(timeSpent / 60)
			local seconds = math.floor(timeSpent % 60)
			paragraphs.TimeSpent:SetContent(string.format("Time spent in this server: %02d:%02d", minutes, seconds))
		end

    -- Connect stat changes to updates
		strengthStat.Changed:Connect(updateParagraphs)
		durabilityStat.Changed:Connect(updateParagraphs)
		agilityStat.Changed:Connect(updateParagraphs)
		killsStat.Changed:Connect(updateParagraphs)
		evilKarmaStat.Changed:Connect(updateParagraphs)
		goodKarmaStat.Changed:Connect(updateParagraphs)

    -- Update loop for time
		game:GetService("RunService").Heartbeat:Connect(updateTimeSpent)

    -- Initial refresh
		updateParagraphs()
	end
	createMyParagraphStats()
	local selectedCrystal = "Galaxy Oracle Crystal"
	local autoCrystalRunning = false

-- Crystal names
	local crystalNames = {
		"Blue Crystal",
		"Green Crystal",
		"Frozen Crystal",
		"Mythical Crystal",
		"Inferno Crystal",
		"Legends Crystal",
		"Muscle Elite Crystal",
		"Galaxy Oracle Crystal",
		"Sky Eclipse Crystal",
		"Jungle Crystal"
	}

-- Create Dropdown
	local CrystalDropdown = Tabs.Crystal:CreateDropdown("CrystalDropdown", {
		Title = "Select Crystal",
		Values = crystalNames,
		Multi = false,
		Default = table.find(crystalNames, selectedCrystal) or 1,
	})
	CrystalDropdown:OnChanged(function(value)
		selectedCrystal = value
		print("[Nebula Hub] Selected Crystal:", value)
	end)

-- Function to auto open crystal
	local function autoOpenCrystal()
		while autoCrystalRunning do
			pcall(function()
				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer("openCrystal", selectedCrystal)
			end)
			task.wait(0.1)
		end
	end

-- Create Toggle
	local CrystalToggle = Tabs.Crystal:CreateToggle("AutoCrystalToggle", {
		Title = "Auto Crystal",
		Default = false,
	})
	CrystalToggle:OnChanged(function()
		autoCrystalRunning = Options.AutoCrystalToggle.Value
		if autoCrystalRunning then
			task.spawn(autoOpenCrystal)
		else
			print("[Nebula Hub] Auto Crystal stopped.")
		end
	end)

-- Permanent Shift Lock Button
	Tabs.Misc:CreateButton({
		Title = "Permanent Shift Lock",
		Callback = function()
			loadstring(game:HttpGet('https://pastebin.com/raw/CjNsnSDy'))()
		end
	})
	local Toggle = Tabs.Misc:CreateToggle("LockPosition", {
		Title = "Lock Position",
		Default = false
	})
	Toggle:OnChanged(function(Value)
		if Value then
			local currentPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			getgenv().posLock = game:GetService("RunService").Heartbeat:Connect(function()
				local char = game.Players.LocalPlayer.Character
				if char and char:FindFirstChild("HumanoidRootPart") then
					char.HumanoidRootPart.CFrame = currentPos
				end
			end)
		else
			if getgenv().posLock then
				getgenv().posLock:Disconnect()
				getgenv().posLock = nil
			end
		end
	end)

-- Anti AFK Button
	Tabs.Misc:CreateButton({
		Title = "Anti AFK",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
		end
	})

-- Disable Trade Toggle
	Tabs.Misc:CreateToggle("DisableTrade", {
		Title = "Disable Trade",
		Default = false
	}):OnChanged(function(state)
		local tradeEvent = game:GetService("ReplicatedStorage").rEvents.tradingEvent
		if state then
			tradeEvent:FireServer("disableTrading")
		else
			tradeEvent:FireServer("enableTrading")
		end
	end)

-- Hide Pets Toggle
	Tabs.Misc:CreateToggle("HidePets", {
		Title = "Hide Pets",
		Default = false
	}):OnChanged(function(state)
		local petEvent = game:GetService("ReplicatedStorage").rEvents.showPetsEvent
		if state then
			petEvent:FireServer("hidePets")
		else
			petEvent:FireServer("showPets")
		end
	end)
	Tabs.Misc:CreateSection("Game Enhancers")

-- Anti AFK Button
	Tabs.Misc:CreateButton({
		Title = "Anti AFK",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/SPACE-HUB-/refs/heads/main/MAIN%20AINTI%20AFK%20.txt"))()
		end
	})
	Tabs.Misc:CreateButton{
		Title = "Instant FPS Boost",
		Description = "Clears effects and boosts performance immediately.",
		Callback = function()
        -- Disable laggy visual effects
			for _, obj in pairs(workspace:GetDescendants()) do
				if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Smoke") or obj:IsA("Fire") then
					obj.Enabled = false
				elseif obj:IsA("Explosion") then
					obj:Destroy()
				end
			end

        -- Remove decals/textures
			for _, v in pairs(game:GetDescendants()) do
				if v:IsA("Decal") or v:IsA("Texture") then
					v:Destroy()
				end
			end

        -- Lower graphics quality
			settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

        -- Turn off terrain decorations if available
			if workspace:FindFirstChildOfClass("Terrain") then
				workspace.Terrain.Decorations = false
			end

        -- Force garbage collection
			collectgarbage("collect")
			print("[Nebula Hub] Performance Boost Applied ✔️")
		end
	}
	Tabs.Misc:CreateButton{
		Title = "No Lag",
		Description = "Instantly removes lag by cleaning visuals, effects, and more.",
		Callback = function()
        -- Disable visual effects
			for _, obj in pairs(workspace:GetDescendants()) do
				if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Smoke") or obj:IsA("Fire") or obj:IsA("Sparkles") then
					obj.Enabled = false
				elseif obj:IsA("Explosion") then
					obj:Destroy()
				elseif obj:IsA("Decal") or obj:IsA("Texture") then
					obj:Destroy()
				elseif obj:IsA("Lighting") then
					obj:Destroy()
				end
			end

        -- Lower graphics quality
			settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

        -- Disable terrain decoration
			if workspace:FindFirstChildOfClass("Terrain") then
				workspace.Terrain.Decorations = false
			end

        -- Remove sounds
			for _, s in pairs(workspace:GetDescendants()) do
				if s:IsA("Sound") then
					s:Destroy()
				end
			end

        -- Remove accessories and clothing
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
			for _, item in pairs(character:GetDescendants()) do
				if item:IsA("Accessory") or item:IsA("Clothing") or item:IsA("ShirtGraphic") then
					item:Destroy()
				end
			end

        -- Disable global shadows and blur
			local lighting = game:GetService("Lighting")
			lighting.GlobalShadows = false
			lighting.FogEnd = 100000
			lighting.Blur = nil

        -- Garbage collect memory
			collectgarbage("collect")
			print("[Nebula Hub] 🧹 No Lag Mode Activated")
		end
	}
	local Paragraph = Tabs.Credits:CreateParagraph("Credits", {
		Title = "Script Credits",
		Content = "This script was made by ttvkaiser (Emperor).\nHe is the creator and owner of this script. All rights reserved."
	})

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
	SaveManager:SetLibrary(Library)
	InterfaceManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
	SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
	SaveManager:SetIgnoreIndexes{}

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
	InterfaceManager:SetFolder("FluentScriptHub")
	SaveManager:SetFolder("FluentScriptHub/specific-game")
	InterfaceManager:BuildInterfaceSection(Tabs.Settings)
	SaveManager:BuildConfigSection(Tabs.Settings)
	Window:SelectTab(1)
	Library:Notify{
		Title = "Nebula Hub",
		Content = "The script has been loaded.",
		Duration = 1
	}

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
	SaveManager:LoadAutoloadConfig()
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
