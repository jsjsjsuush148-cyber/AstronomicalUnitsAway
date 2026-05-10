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
BarLabel.Text = "VOIDDEVS PROVIDE DEOBF FOKI HUB"
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
Title.Text = "Foki Hub Deobfuscated"
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
	local rs = game:GetService("RunService")
	local plrs = game:GetService("Players")
	local uis = game:GetService("UserInputService")
	local hs = game:GetService("HttpService")
	local cas = game:GetService("ContextActionService")
	local lit = game:GetService("Lighting")
	local cg = game:GetService("CoreGui")
	local lp = plrs.LocalPlayer
	local cam = workspace.CurrentCamera
	do
		pcall(function()
			if not getrawmetatable or not setreadonly or not newcclosure or not checkcaller then
				return
			end
			local m = getrawmetatable(game)
			local orig = m.__index
			setreadonly(m, false)
			m.__index = newcclosure(function(s, k)
				if not checkcaller() then
					return orig(s, k)
				end
				return orig(s, k)
			end)
			setreadonly(m, true)
		end)
	end
	local function getchar()
		return lp.Character
	end
	local function getroot()
		local c = getchar()
		return c and c:FindFirstChild("HumanoidRootPart")
	end
	local function gethum()
		local c = getchar()
		return c and c:FindFirstChildOfClass("Humanoid")
	end
	local function isalive()
		local h = gethum()
		return h and h.Health > 0
	end
	local function getwpos()
		local r = getroot()
		return r and r.Position or Vector3.new()
	end
	local function screenCenter()
		return Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
	end
	local function worldToScreen(pos)
		local s, vis = cam:WorldToViewportPoint(pos)
		return Vector2.new(s.X, s.Y), vis, s.Z
	end
	local function distanceTo(pos)
		return (getwpos() - pos).Magnitude
	end
	local function isTeammate(pl)
		pcall(function()
		end)
		if not lp.Team then
			return false
		end
		return pl.Team == lp.Team
	end
	local function hasLOS(origin, target)
		local dir = (target - origin).Unit * 999
		local rp = RaycastParams.new()
		rp.FilterDescendantsInstances = {
			getchar()
		}
		rp.FilterType = Enum.RaycastFilterType.Exclude
		local res = workspace:Raycast(origin, dir, rp)
		if not res then
			return true
		end
		local hit = res.Instance
		local inChar = false
		for _, pl in ipairs(plrs:GetPlayers()) do
			if pl ~= lp and pl.Character and hit:IsDescendantOf(pl.Character) then
				inChar = true
				break
			end
		end
		return inChar
	end
	local cfg = {
		aim_on = true,
		aim_fov = 120,
		aim_smooth = 10,
		aim_mode = 1,
		aim_modes = {
			"Mouse",
			"Camera"
		},
		aim_bone = "Head",
		wallck = true,
		npc_aim = false,
		aim_key = Enum.KeyCode.B,
		strafe_on = false,
		strafe_dist = 10,
		strafe_spd = 10,
		strafe_key = Enum.KeyCode.L,
		strafe_name = "",
		esp_on = true,
		esp_boxes = true,
		esp_tracers = true,
		esp_highlight = false,
		esp_names = true,
		esp_dist = 1000,
		teamck = false,
		npc_esp = false,
		box_col = Color3.fromRGB(255, 255, 255),
		tracer_col = Color3.fromRGB(255, 255, 255),
		alist = true,
		colormode = 1,
		color_list = {
			"White",
			"Black",
			"Rainbow"
		},
		fly_on = false,
		fly_spd = 50,
		fly_inertia = true,
		fly_inertia_pwr = 0.1,
		speed_on = false,
		wspeed = 16,
		noclip_on = false,
		freecam_on = false,
		freecam_spd = 1,
		airwalk_on = false,
		air_lvl = 0,
		wallhop_on = false,
		fps_on = false,
		stretch_on = false,
		stretch_val = 70,
		fstretch_on = false,
		fstretch_val = 65,
		trail_on = false,
		trail_col = Color3.fromRGB(255, 0, 0),
		trail_life = 1,
		chinahat_on = false,
		chinahat_col = Color3.fromRGB(255, 255, 255),
		neko_on = false,
	}
	local SAVE_KEY = "fhub_v2.json"
	local function doSave()
		pcall(function()
			local t = {}
			for k, v in pairs(cfg) do
				local vt = type(v)
				if vt == "boolean" or vt == "number" or vt == "string" then
					t[k] = v
				elseif vt == "EnumItem" then
					t[k] = tostring(v)
				end
			end
			writefile(SAVE_KEY, hs:JSONEncode(t))
		end)
	end
	local function doLoad()
		if not isfile then
			return
		end
		if not isfile(SAVE_KEY) then
			return
		end
		local ok, raw = pcall(readfile, SAVE_KEY)
		if not ok then
			return
		end
		local ok2, data = pcall(hs.JSONDecode, hs, raw)
		if not ok2 or type(data) ~= "table" then
			return
		end
		for k, v in pairs(data) do
			if cfg[k] ~= nil then
				if type(cfg[k]) == "boolean" then
					cfg[k] = v == true
				elseif type(cfg[k]) == "number" then
					cfg[k] = tonumber(v) or cfg[k]
				elseif type(cfg[k]) == "string" then
					cfg[k] = tostring(v)
				elseif type(cfg[k]) == "EnumItem" and type(v) == "string" then
					pcall(function()
						cfg[k] = Enum.KeyCode[v:match("%.(%w+)$") or v]
					end)
				end
			end
		end
	end
	doLoad()
	local themes = {
		{
			bg = Color3.fromRGB(12, 12, 12),
			side = Color3.fromRGB(18, 18, 18),
			elem = Color3.fromRGB(22, 22, 22),
			toff = Color3.fromRGB(40, 40, 40),
			ton = Color3.fromRGB(255, 255, 255),
			txt = Color3.fromRGB(235, 235, 235),
			name = "Dark",
		},
		{
			bg = Color3.fromRGB(242, 242, 242),
			side = Color3.fromRGB(220, 220, 220),
			elem = Color3.fromRGB(205, 205, 205),
			toff = Color3.fromRGB(40, 40, 40),
			ton = Color3.fromRGB(255, 255, 255),
			txt = Color3.fromRGB(35, 35, 35),
			name = "Light",
		},
		{
			bg = Color3.fromRGB(10, 10, 12),
			side = Color3.fromRGB(4, 4, 6),
			elem = Color3.fromRGB(30, 30, 35),
			toff = Color3.fromRGB(40, 40, 40),
			ton = Color3.fromRGB(255, 255, 255),
			txt = Color3.fromRGB(255, 255, 255),
			name = "Glass",
		},
	}
	local tidx = 1
	local thm = themes[tidx]
	local txt_pool = {}
	local elem_pool = {}
	local function reg_t(o)
		txt_pool[# txt_pool + 1] = o
	end
	local function reg_e(o)
		elem_pool[# elem_pool + 1] = o
	end
	local function push_theme(t)
		thm = t
		for _, o in ipairs(txt_pool) do
			if o.Parent then
				o.TextColor3 = t.txt
			end
		end
		for _, o in ipairs(elem_pool) do
			if o.Parent then
				o.BackgroundColor3 = t.elem
			end
		end
	end
	local tw_info = TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local function tw_pos(f, p)
		f:TweenPosition(p, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.18, true)
	end
	local function mkround(p, r)
		local c = Instance.new("UICorner")
		c.CornerRadius = UDim.new(0, r or 7)
		c.Parent = p
		return c
	end
	local function mkpad(p, px, py)
		local pad = Instance.new("UIPadding")
		pad.PaddingLeft = UDim.new(0, px or 4)
		pad.PaddingRight = UDim.new(0, px or 4)
		pad.PaddingTop = UDim.new(0, py or 2)
		pad.PaddingBottom = UDim.new(0, py or 2)
		pad.Parent = p
	end
	local function mkToggle(par, init, on_fn, off_fn)
		local wrap = Instance.new("TextButton")
		wrap.Size = UDim2.new(0, 34, 0, 18)
		wrap.Position = UDim2.new(1, - 42, 0.5, - 9)
		wrap.Text = ""
		wrap.AutoButtonColor = false
		mkround(wrap, 9)
		wrap.Parent = par
		local knob = Instance.new("Frame")
		knob.Size = UDim2.new(0, 13, 0, 13)
		mkround(knob, 7)
		knob.Parent = wrap
		local ON_P = UDim2.new(1, - 15, 0.5, - 6)
		local OFF_P = UDim2.new(0, 2, 0.5, - 6)
		local st = init
		local function redraw()
			if st then
				wrap.BackgroundColor3 = thm.ton
				knob.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
				tw_pos(knob, ON_P)
			else
				wrap.BackgroundColor3 = thm.toff
				knob.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
				tw_pos(knob, OFF_P)
			end
		end
		redraw()
		wrap.MouseButton1Click:Connect(function()
			st = not st
			redraw()
			if st then
				if on_fn then
					on_fn()
				end
			else
				if off_fn then
					off_fn()
				end
			end
			doSave()
		end)
		return wrap, knob
	end
	local function mkRow(par, lbl_text, key, on_fn, off_fn)
		local row = Instance.new("Frame")
		row.Size = UDim2.new(1, - 4, 0, 34)
		row.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		mkround(row, 6)
		reg_e(row)
		row.Parent = par
		local lbl = Instance.new("TextLabel")
		lbl.Text = "  " .. lbl_text
		lbl.Size = UDim2.new(0.72, 0, 1, 0)
		lbl.TextColor3 = Color3.fromRGB(205, 205, 205)
		lbl.BackgroundTransparency = 1
		lbl.TextXAlignment = Enum.TextXAlignment.Left
		lbl.Font = Enum.Font.GothamMedium
		lbl.TextSize = 12
		reg_t(lbl)
		lbl.Parent = row
		mkToggle(row, cfg[key], function()
			cfg[key] = true;
			if on_fn then
				on_fn()
			end
		end, function()
			cfg[key] = false;
			if off_fn then
				off_fn()
			end
		end)
		return row
	end
	local function mkSlide(par, lbl_text, key, lo, hi)
		local v = tonumber(cfg[key]) or lo
		local wrap = Instance.new("Frame")
		wrap.Size = UDim2.new(1, - 4, 0, 46)
		wrap.BackgroundTransparency = 1
		wrap.Parent = par
		local lbl = Instance.new("TextLabel")
		lbl.Text = string.format("  %s: %s", lbl_text, tostring(v))
		lbl.Size = UDim2.new(1, 0, 0, 17)
		lbl.TextColor3 = Color3.fromRGB(145, 145, 145)
		lbl.BackgroundTransparency = 1
		lbl.Font = Enum.Font.Gotham
		lbl.TextSize = 11
		lbl.TextXAlignment = Enum.TextXAlignment.Left
		reg_t(lbl)
		lbl.Parent = wrap
		local track = Instance.new("Frame")
		track.Size = UDim2.new(1, - 12, 0, 4)
		track.Position = UDim2.new(0, 6, 0, 32)
		track.BackgroundColor3 = Color3.fromRGB(32, 32, 38)
		mkround(track, 2)
		track.Parent = wrap
		local fill = Instance.new("Frame")
		fill.Size = UDim2.new(math.clamp((v - lo) / (hi - lo), 0, 1), 0, 1, 0)
		fill.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
		mkround(fill, 2)
		fill.Parent = track
		local hitbox = Instance.new("TextButton")
		hitbox.Size = UDim2.new(1, 0, 4, 0)
		hitbox.Position = UDim2.new(0, 0, - 1.5, 0)
		hitbox.BackgroundTransparency = 1
		hitbox.Text = ""
		hitbox.Parent = track
		local dragging = false
		local function setVal(inp)
			local raw = (inp.Position.X - track.AbsolutePosition.X) / math.max(track.AbsoluteSize.X, 1)
			local ratio = math.clamp(raw, 0, 1)
			local nv = math.floor(lo + ratio * (hi - lo))
			cfg[key] = nv
			fill.Size = UDim2.new(ratio, 0, 1, 0)
			lbl.Text = string.format("  %s: %s", lbl_text, tostring(nv))
			doSave()
		end
		hitbox.InputBegan:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				setVal(i)
			end
		end)
		hitbox.InputEnded:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = false
			end
		end)
		uis.InputChanged:Connect(function(i)
			if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
				setVal(i)
			end
		end)
		return wrap
	end
	local function mkCycle(par, prefix, opts, key)
		local idx = tonumber(cfg[key]) or 1
		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(1, - 4, 0, 30)
		btn.Text = prefix .. (opts[idx] or "?")
		btn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		btn.TextColor3 = Color3.fromRGB(220, 220, 220)
		btn.Font = Enum.Font.GothamMedium
		btn.TextSize = 11
		btn.AutoButtonColor = false
		mkround(btn, 6)
		reg_t(btn)
		reg_e(btn)
		btn.Parent = par
		btn.MouseButton1Click:Connect(function()
			idx = idx % # opts + 1
			cfg[key] = idx
			btn.Text = prefix .. opts[idx]
			doSave()
		end)
		return btn
	end
	local function mkBind(par, prefix, key)
		local kc = cfg[key]
		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(1, - 4, 0, 30)
		btn.Text = prefix .. (type(kc) == "EnumItem" and kc.Name or tostring(kc))
		btn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		btn.TextColor3 = Color3.fromRGB(220, 220, 220)
		btn.Font = Enum.Font.GothamMedium
		btn.TextSize = 11
		btn.AutoButtonColor = false
		mkround(btn, 6)
		reg_t(btn)
		reg_e(btn)
		btn.Parent = par
		local wait_key = false
		btn.MouseButton1Click:Connect(function()
			if wait_key then
				return
			end
			wait_key = true
			btn.Text = "[ press key ]"
		end)
		uis.InputBegan:Connect(function(i)
			if not wait_key then
				return
			end
			if i.UserInputType ~= Enum.UserInputType.Keyboard then
				return
			end
			wait_key = false
			cfg[key] = i.KeyCode
			btn.Text = prefix .. i.KeyCode.Name
			doSave()
		end)
		return btn
	end
	local scr = Instance.new("ScreenGui")
	scr.Name = "fh_" .. tostring(math.random(10000, 99999))
	scr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	scr.ResetOnSpawn = false
	scr.Parent = cg
	local earL = Instance.new("ImageLabel")
	earL.Name = "el"
	earL.Size = UDim2.new(0, 118, 0, 118)
	earL.AnchorPoint = Vector2.new(0.5, 0.5)
	earL.BackgroundTransparency = 1
	earL.Image = "rbxassetid://113169948724698"
	earL.ZIndex = 99
	earL.Visible = false
	earL.Parent = scr
	local earR = Instance.new("ImageLabel")
	earR.Name = "er"
	earR.Size = UDim2.new(0, 118, 0, 118)
	earR.AnchorPoint = Vector2.new(0.5, 0.5)
	earR.BackgroundTransparency = 1
	earR.Image = "rbxassetid://94760042824701"
	earR.ZIndex = 99
	earR.Visible = false
	earR.Parent = scr
	local tail = Instance.new("ImageLabel")
	tail.Name = "tl"
	tail.Size = UDim2.new(0, 128, 0, 165)
	tail.AnchorPoint = Vector2.new(0.5, 0.5)
	tail.BackgroundTransparency = 1
	tail.Image = "rbxassetid://114951759498089"
	tail.ZIndex = 99
	tail.Visible = false
	tail.Parent = scr
	local win = Instance.new("Frame")
	win.Size = UDim2.new(0, 448, 0, 378)
	win.Position = UDim2.new(0.5, - 224, 0.5, - 189)
	win.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
	win.BorderSizePixel = 0
	mkround(win, 8)
	win.Parent = scr
	local wstroke = Instance.new("UIStroke")
	wstroke.Color = Color3.fromRGB(70, 70, 75)
	wstroke.Thickness = 1.5
	wstroke.Parent = win
	local sidebar = Instance.new("Frame")
	sidebar.Size = UDim2.new(0, 108, 1, 0)
	sidebar.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
	sidebar.BorderSizePixel = 0
	mkround(sidebar, 8)
	sidebar.Parent = win
	local title = Instance.new("TextLabel")
	title.Text = "FOKI HUB"
	title.Size = UDim2.new(0, 108, 0, 44)
	title.Position = UDim2.new(0, 0, 0, 0)
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.Font = Enum.Font.GothamBold
	title.TextSize = 15
	title.BackgroundTransparency = 1
	reg_t(title)
	title.Parent = win
	local topbar = Instance.new("Frame")
	topbar.Size = UDim2.new(0, 64, 0, 30)
	topbar.Position = UDim2.new(1, - 70, 0, 8)
	topbar.BackgroundTransparency = 1
	topbar.Parent = win
	local function mkCtrl(txt, x)
		local b = Instance.new("TextButton")
		b.Text = txt
		b.Size = UDim2.new(0, 26, 0, 22)
		b.Position = UDim2.new(0, x, 0, 3)
		b.Font = Enum.Font.GothamBold
		b.TextSize = 15
		b.AutoButtonColor = false
		mkround(b, 5)
		reg_e(b)
		reg_t(b)
		b.Parent = topbar
		return b
	end
	local minBtn = mkCtrl("-", 0)
	local xBtn = mkCtrl("x", 34)
	local isMin = false
	minBtn.MouseButton1Click:Connect(function()
		isMin = not isMin
		if isMin then
			win:TweenSize(UDim2.new(0, 448, 0, 44), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25, true)
			sidebar.Visible = false
		else
			win:TweenSize(UDim2.new(0, 448, 0, 378), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25, true)
			sidebar.Visible = true
		end
	end)
	xBtn.MouseButton1Click:Connect(function()
		win.Visible = false
	end)
	do
		local dragging_win = false
		local drag_offset = Vector2.new()
		win.InputBegan:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 then
				local mp = uis:GetMouseLocation()
				if mp.Y - win.AbsolutePosition.Y < 46 then
					dragging_win = true
					drag_offset = mp - Vector2.new(win.AbsolutePosition.X, win.AbsolutePosition.Y)
				end
			end
		end)
		win.InputEnded:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging_win = false
			end
		end)
		uis.InputChanged:Connect(function(i)
			if dragging_win and i.UserInputType == Enum.UserInputType.MouseMovement then
				local mp = uis:GetMouseLocation()
				local np = mp - drag_offset
				win.Position = UDim2.new(0, np.X, 0, np.Y)
			end
		end)
	end
	local tabbox = Instance.new("Frame")
	tabbox.Size = UDim2.new(1, 0, 1, - 54)
	tabbox.Position = UDim2.new(0, 0, 0, 48)
	tabbox.BackgroundTransparency = 1
	tabbox.Parent = sidebar
	local tablist = Instance.new("UIListLayout")
	tablist.HorizontalAlignment = Enum.HorizontalAlignment.Center
	tablist.Padding = UDim.new(0, 4)
	tablist.SortOrder = Enum.SortOrder.LayoutOrder
	tablist.Parent = tabbox
	local pghold = Instance.new("Frame")
	pghold.Size = UDim2.new(1, - 132, 1, - 58)
	pghold.Position = UDim2.new(0, 122, 0, 50)
	pghold.BackgroundTransparency = 1
	pghold.Parent = win
	local function mkPage()
		local p = Instance.new("ScrollingFrame")
		p.Size = UDim2.new(1, 0, 1, 0)
		p.BackgroundTransparency = 1
		p.Visible = false
		p.ScrollBarThickness = 0
		p.AutomaticCanvasSize = Enum.AutomaticSize.Y
		p.Parent = pghold
		local ll = Instance.new("UIListLayout")
		ll.Padding = UDim.new(0, 7)
		ll.SortOrder = Enum.SortOrder.LayoutOrder
		ll.Parent = p
		return p
	end
	local pg_combat = mkPage()
	local pg_visuals = mkPage()
	local pg_move = mkPage()
	local pg_misc = mkPage()
	local all_pages = {
		pg_combat,
		pg_visuals,
		pg_move,
		pg_misc
	}
	pg_combat.Visible = true
	local function swapPage(tgt)
		for _, p in ipairs(all_pages) do
			p.Visible = (p == tgt)
		end
	end
	local tab_names = {
		"Combat",
		"Visuals",
		"Move",
		"Misc"
	}
	local tab_pages = {
		pg_combat,
		pg_visuals,
		pg_move,
		pg_misc
	}
	for i = 1, # tab_names do
		local tb = Instance.new("TextButton")
		tb.LayoutOrder = i
		tb.Size = UDim2.new(0.88, 0, 0, 30)
		tb.Text = tab_names[i]
		tb.Font = Enum.Font.GothamMedium
		tb.TextSize = 11
		tb.AutoButtonColor = false
		mkround(tb, 5)
		reg_e(tb)
		reg_t(tb)
		tb.Parent = tabbox
		local page = tab_pages[i]
		tb.MouseButton1Click:Connect(function()
			swapPage(page)
		end)
	end
	mkRow(pg_combat, "Aimbot", "aim_on")
	mkSlide(pg_combat, "FOV", "aim_fov", 1, 576)
	mkSlide(pg_combat, "Smoothness", "aim_smooth", 1, 99)
	mkCycle(pg_combat, "Mode: ", {
		"Mouse",
		"Camera"
	}, "aim_mode")
	mkCycle(pg_combat, "Bone: ", {
		"Head",
		"Torso",
		"HumanoidRootPart"
	}, "aim_bone")
	mkRow(pg_combat, "Wall Check", "wallck")
	mkRow(pg_combat, "NPC Aim", "npc_aim")
	mkBind(pg_combat, "Aim key: ", "aim_key")
	mkRow(pg_combat, "Target Strafe", "strafe_on")
	mkSlide(pg_combat, "Strafe Dist", "strafe_dist", 1, 50)
	mkSlide(pg_combat, "Strafe Speed", "strafe_spd", 1, 50)
	mkBind(pg_combat, "Strafe key: ", "strafe_key")
	do
		local box = Instance.new("TextBox")
		box.Size = UDim2.new(1, - 4, 0, 30)
		box.PlaceholderText = "focus target name..."
		box.Text = cfg.strafe_name or ""
		box.Font = Enum.Font.Gotham
		box.TextSize = 11
		box.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		box.TextColor3 = Color3.fromRGB(205, 205, 205)
		box.PlaceholderColor3 = Color3.fromRGB(80, 80, 80)
		box.ClearTextOnFocus = false
		mkround(box, 6)
		reg_e(box)
		box.Parent = pg_combat
		box.FocusLost:Connect(function()
			cfg.strafe_name = box.Text
			doSave()
		end)
	end
	mkRow(pg_visuals, "ESP", "esp_on")
	mkRow(pg_visuals, "Boxes", "esp_boxes")
	mkRow(pg_visuals, "Tracers", "esp_tracers")
	mkRow(pg_visuals, "Names", "esp_names")
	mkRow(pg_visuals, "Highlight", "esp_highlight")
	mkSlide(pg_visuals, "ESP Dist", "esp_dist", 100, 5000)
	mkRow(pg_visuals, "Team Check", "teamck")
	mkRow(pg_visuals, "NPC ESP", "npc_esp")
	do
		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(1, - 4, 0, 30)
		btn.Text = "Theme: " .. themes[tidx].name
		btn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		btn.TextColor3 = Color3.fromRGB(220, 220, 220)
		btn.Font = Enum.Font.GothamMedium
		btn.TextSize = 11
		btn.AutoButtonColor = false
		mkround(btn, 6)
		reg_t(btn)
		reg_e(btn)
		btn.Parent = pg_visuals
		btn.MouseButton1Click:Connect(function()
			tidx = tidx % # themes + 1
			push_theme(themes[tidx])
			btn.Text = "Theme: " .. themes[tidx].name
		end)
	end
	mkCycle(pg_visuals, "Color: ", cfg.color_list, "colormode")
	mkRow(pg_visuals, "ArrayList", "alist")
	mkRow(pg_visuals, "Player Trail", "trail_on")
	mkRow(pg_visuals, "China Hat", "chinahat_on")
	mkRow(pg_visuals, "FOV Ring", "stretch_on")
	mkSlide(pg_visuals, "FOV Value", "stretch_val", 10, 120)
	mkRow(pg_move, "Fly", "fly_on")
	mkSlide(pg_move, "Fly Speed", "fly_spd", 1, 200)
	mkRow(pg_move, "Fly Inertia", "fly_inertia")
	mkRow(pg_move, "Speed", "speed_on", function()
		local h = gethum()
		if h then
			h.WalkSpeed = cfg.wspeed
		end
	end, function()
		local h = gethum()
		if h then
			h.WalkSpeed = 16
		end
	end)
	mkSlide(pg_move, "Speed Val", "wspeed", 16, 500)
	mkRow(pg_move, "No-Clip", "noclip_on")
	mkRow(pg_move, "FreeCam", "freecam_on", function()
		cas:UnbindAction("DisableInputs")
	end, function()
		cas:UnbindAction("DisableInputs")
	end)
	mkSlide(pg_move, "FreeCam Speed", "freecam_spd", 1, 20)
	mkRow(pg_move, "Air Walk", "airwalk_on")
	mkRow(pg_move, "Wall Hop", "wallhop_on")
	mkRow(pg_misc, "FPS Boost", "fps_on", function()
		lit.GlobalShadows = false
		for _, p in ipairs(workspace:GetDescendants()) do
			if p:IsA("BasePart") then
				pcall(function()
					p.Material = Enum.Material.SmoothPlastic
				end)
			end
		end
	end, function()
		lit.GlobalShadows = true
	end)
	mkRow(pg_misc, "Frame Stretch", "fstretch_on")
	mkSlide(pg_misc, "Stretch Val", "fstretch_val", 1, 99)
	mkRow(pg_misc, "Neko Mode", "neko_on", function()
		earL.Visible = true
		earR.Visible = true
		tail.Visible = true
	end, function()
		earL.Visible = false
		earR.Visible = false
		tail.Visible = false
	end)
	do
		local sv = Instance.new("TextButton")
		sv.Size = UDim2.new(1, - 4, 0, 30)
		sv.Text = "Save Config"
		sv.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		sv.TextColor3 = Color3.fromRGB(220, 220, 220)
		sv.Font = Enum.Font.GothamMedium
		sv.TextSize = 11
		sv.AutoButtonColor = false
		mkround(sv, 6)
		reg_t(sv)
		reg_e(sv)
		sv.Parent = pg_misc
		sv.MouseButton1Click:Connect(function()
			doSave()
			sv.Text = "Saved"
			task.delay(1.2, function()
				sv.Text = "Save Config"
			end)
		end)
		local lv = Instance.new("TextButton")
		lv.Size = UDim2.new(1, - 4, 0, 30)
		lv.Text = "Load Config"
		lv.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		lv.TextColor3 = Color3.fromRGB(220, 220, 220)
		lv.Font = Enum.Font.GothamMedium
		lv.TextSize = 11
		lv.AutoButtonColor = false
		mkround(lv, 6)
		reg_t(lv)
		reg_e(lv)
		lv.Parent = pg_misc
		lv.MouseButton1Click:Connect(function()
			doLoad()
			lv.Text = "Loaded"
			task.delay(1.2, function()
				lv.Text = "Load Config"
			end)
		end)
	end
	local alist_gui = Instance.new("ScreenGui")
	alist_gui.Name = "fh_al_" .. tostring(math.random(1000, 9999))
	alist_gui.ResetOnSpawn = false
	alist_gui.Parent = cg
	local al_frame = Instance.new("Frame")
	al_frame.Size = UDim2.new(0, 195, 1, 0)
	al_frame.Position = UDim2.new(1, - 205, 0, 10)
	al_frame.BackgroundTransparency = 1
	al_frame.Parent = alist_gui
	local al_layout = Instance.new("UIListLayout")
	al_layout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	al_layout.Padding = UDim.new(0, 2)
	al_layout.Parent = al_frame
	local al_features = {
		{
			"aim_on",
			"Aimbot"
		},
		{
			"strafe_on",
			"Strafe"
		},
		{
			"esp_on",
			"ESP"
		},
		{
			"esp_boxes",
			"Boxes"
		},
		{
			"esp_tracers",
			"Tracers"
		},
		{
			"esp_names",
			"Names"
		},
		{
			"esp_highlight",
			"Highlight"
		},
		{
			"fly_on",
			"Fly"
		},
		{
			"speed_on",
			"Speed"
		},
		{
			"noclip_on",
			"NoClip"
		},
		{
			"freecam_on",
			"FreeCam"
		},
		{
			"airwalk_on",
			"AirWalk"
		},
		{
			"wallhop_on",
			"WallHop"
		},
		{
			"fps_on",
			"FPS Boost"
		},
		{
			"fstretch_on",
			"FStretch"
		},
		{
			"stretch_on",
			"FOV Ring"
		},
		{
			"trail_on",
			"Trail"
		},
		{
			"chinahat_on",
			"ChinaHat"
		},
		{
			"neko_on",
			"Neko"
		},
		{
			"npc_aim",
			"NPC Aim"
		},
		{
			"npc_esp",
			"NPC ESP"
		},
	}
	local al_lbls = {}
	local al_last = 0
	rs.Heartbeat:Connect(function()
		al_frame.Visible = cfg.alist
		if not cfg.alist then
			return
		end
		if tick() - al_last < 0.09 then
			return
		end
		al_last = tick()
		for _, l in ipairs(al_lbls) do
			l:Destroy()
		end
		al_lbls = {}
		for _, e in ipairs(al_features) do
			local k, disp = e[1], e[2]
			if cfg[k] == true then
				local lbl = Instance.new("TextLabel")
				lbl.Text = disp
				lbl.Size = UDim2.new(0, 195, 0, 17)
				lbl.TextColor3 = Color3.fromRGB(235, 235, 235)
				lbl.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
				lbl.BackgroundTransparency = 0.35
				lbl.Font = Enum.Font.GothamMedium
				lbl.TextSize = 11
				lbl.TextXAlignment = Enum.TextXAlignment.Right
				lbl.Parent = al_frame
				al_lbls[# al_lbls + 1] = lbl
			end
		end
	end)
	rs.Stepped:Connect(function()
		if not cfg.noclip_on then
			return
		end
		local c = getchar()
		if not c then
			return
		end
		for _, p in ipairs(c:GetDescendants()) do
			if p:IsA("BasePart") then
				p.CanCollide = false
			end
		end
	end)
	rs:BindToRenderStep("fh_wh", Enum.RenderPriority.Character.Value + 1, function()
		if not cfg.wallhop_on then
			return
		end
		local h = gethum()
		if h and h:GetState() == Enum.HumanoidStateType.Freefall then
			h:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end)
	rs.Heartbeat:Connect(function()
		if not cfg.speed_on then
			return
		end
		local h = gethum()
		if h then
			h.WalkSpeed = cfg.wspeed
		end
	end)
	local esp_objects = {}
	local function destroyESP(pl)
		if esp_objects[pl] then
			for _, o in pairs(esp_objects[pl]) do
				pcall(function()
					o:Destroy()
				end)
			end
			esp_objects[pl] = nil
		end
	end
	local function buildESP(pl)
		destroyESP(pl)
		esp_objects[pl] = {}
		local box = Instance.new("SelectionBox")
		box.Color3 = cfg.box_col
		box.LineThickness = 0.03
		box.SurfaceTransparency = 1
		box.SurfaceColor3 = Color3.new(0, 0, 0)
		box.Parent = cg
		esp_objects[pl].box = box
		if cfg.esp_highlight then
			local hl = Instance.new("Highlight")
			hl.FillTransparency = 0.7
			hl.OutlineTransparency = 0
			hl.OutlineColor = cfg.box_col
			hl.FillColor = cfg.box_col
			hl.Parent = cg
			esp_objects[pl].highlight = hl
		end
		if cfg.esp_names then
			local bb = Instance.new("BillboardGui")
			bb.AlwaysOnTop = true
			bb.Size = UDim2.new(0, 100, 0, 24)
			bb.StudsOffset = Vector3.new(0, 2.5, 0)
			bb.Parent = cg
			local nl = Instance.new("TextLabel")
			nl.Size = UDim2.new(1, 0, 1, 0)
			nl.BackgroundTransparency = 1
			nl.Font = Enum.Font.GothamBold
			nl.TextSize = 13
			nl.TextColor3 = cfg.box_col
			nl.Text = pl.Name
			nl.Parent = bb
			esp_objects[pl].bb = bb
			esp_objects[pl].nml = nl
		end
		if cfg.esp_tracers then
			local line = Instance.new("SelectionBox")
			line.Color3 = cfg.tracer_col
			line.LineThickness = 0.02
			line.SurfaceTransparency = 1
			line.Parent = cg
			esp_objects[pl].tracer = line
		end
	end
	local function updateESP()
		for _, pl in ipairs(plrs:GetPlayers()) do
			if pl == lp then
				destroyESP(pl)
			elseif not cfg.esp_on then
				destroyESP(pl)
			elseif cfg.teamck and isTeammate(pl) then
				destroyESP(pl)
			else
				local c = pl.Character
				local root = c and c:FindFirstChild("HumanoidRootPart")
				if not root then
					destroyESP(pl)
				else
					local dist = distanceTo(root.Position)
					if dist > cfg.esp_dist then
						destroyESP(pl)
					else
						if not esp_objects[pl] then
							buildESP(pl)
						end
						local obj = esp_objects[pl]
						if obj.box then
							obj.box.Adornee = cfg.esp_boxes and c or nil
						end
						if obj.highlight then
							obj.highlight.Adornee = cfg.esp_highlight and c or nil
						end
						if obj.bb then
							obj.bb.Adornee = root
							if obj.nml then
								obj.nml.Text = pl.Name
							end
						end
					end
				end
			end
		end
	end
	plrs.PlayerRemoving:Connect(function(pl)
		destroyESP(pl)
	end)
	rs.Heartbeat:Connect(function()
		updateESP()
	end)
	local aim_active = false
	uis.InputBegan:Connect(function(i, g)
		if g then
			return
		end
		if i.KeyCode == cfg.aim_key then
			aim_active = true
		end
	end)
	uis.InputEnded:Connect(function(i)
		if i.KeyCode == cfg.aim_key then
			aim_active = false
		end
	end)
	local function getTarget()
		if not cfg.aim_on or not aim_active then
			return nil
		end
		if not isalive() then
			return nil
		end
		local best_pl = nil
		local best_dist = cfg.aim_fov
		local sc = screenCenter()
		for _, pl in ipairs(plrs:GetPlayers()) do
			if pl ~= lp then
				if cfg.teamck and isTeammate(pl) then
					continue
				end
				local c = pl.Character
				if not c then
					continue
				end
				local part = c:FindFirstChild(cfg.aim_bone) or c:FindFirstChild("Head")
				if not part then
					continue
				end
				local hm = c:FindFirstChildOfClass("Humanoid")
				if not hm or hm.Health <= 0 then
					continue
				end
				local spos, vis = worldToScreen(part.Position)
				if not vis then
					continue
				end
				local rootp = c:FindFirstChild("HumanoidRootPart")
				if cfg.wallck and rootp and not hasLOS(getwpos(), rootp.Position) then
					continue
				end
				local d = (spos - sc).Magnitude
				if d < best_dist then
					best_dist = d
					best_pl = part
				end
			end
		end
		return best_pl
	end
	rs.Heartbeat:Connect(function()
		local t = getTarget()
		if not t then
			return
		end
		local spos = worldToScreen(t.Position)
		local sc = screenCenter()
		if cfg.aim_mode == 1 then
			local cur = uis:GetMouseLocation()
			local dir = (spos - cur)
			local sm = math.clamp(cfg.aim_smooth / 100, 0.01, 1)
			mousemoverel(dir.X * sm, dir.Y * sm)
		elseif cfg.aim_mode == 2 then
			local sm = math.clamp(cfg.aim_smooth / 100, 0.01, 1)
			local cr = cam.CFrame
			local tr = CFrame.new(cam.CFrame.Position, t.Position)
			cam.CFrame = cr:Lerp(tr, sm)
		end
	end)
	local strafe_angle = 0
	rs.Heartbeat:Connect(function(dt)
		if not cfg.strafe_on then
			return
		end
		if not isalive() then
			return
		end
		local tgt_pl = plrs:FindFirstChild(cfg.strafe_name)
		if not tgt_pl then
			return
		end
		local tc = tgt_pl.Character
		local tr = tc and tc:FindFirstChild("HumanoidRootPart")
		if not tr then
			return
		end
		local myroot = getroot()
		if not myroot then
			return
		end
		strafe_angle = strafe_angle + cfg.strafe_spd * dt
		local dist = cfg.strafe_dist
		local tx = tr.Position.X + math.cos(strafe_angle) * dist
		local tz = tr.Position.Z + math.sin(strafe_angle) * dist
		local ty = tr.Position.Y
		local h = gethum()
		if h then
			h:MoveTo(Vector3.new(tx, ty, tz))
		end
	end)
	local fly_vel = Vector3.new()
	local fly_active = false
	uis.InputBegan:Connect(function(i, g)
		if g then
			return
		end
		if i.KeyCode == Enum.KeyCode.F then
			if not cfg.fly_on then
				return
			end
			fly_active = not fly_active
			local c = getchar()
			local h = gethum()
			local r = getroot()
			if not c or not h or not r then
				fly_active = false
				return
			end
			if fly_active then
				h.PlatformStand = true
			else
				h.PlatformStand = false
				fly_vel = Vector3.new()
			end
		end
	end)
	rs.Heartbeat:Connect(function(dt)
		if not cfg.fly_on then
			if fly_active then
				fly_active = false
				local h = gethum()
				if h then
					h.PlatformStand = false
				end
			end
			return
		end
		if not fly_active then
			return
		end
		local r = getroot()
		if not r then
			return
		end
		local mv = Vector3.new()
		if uis:IsKeyDown(Enum.KeyCode.W) then
			mv = mv + cam.CFrame.LookVector
		end
		if uis:IsKeyDown(Enum.KeyCode.S) then
			mv = mv - cam.CFrame.LookVector
		end
		if uis:IsKeyDown(Enum.KeyCode.A) then
			mv = mv - cam.CFrame.RightVector
		end
		if uis:IsKeyDown(Enum.KeyCode.D) then
			mv = mv + cam.CFrame.RightVector
		end
		if uis:IsKeyDown(Enum.KeyCode.Space) then
			mv = mv + Vector3.new(0, 1, 0)
		end
		if uis:IsKeyDown(Enum.KeyCode.LeftShift) then
			mv = mv - Vector3.new(0, 1, 0)
		end
		if mv.Magnitude > 0 then
			mv = mv.Unit * cfg.fly_spd
		end
		if cfg.fly_inertia then
			fly_vel = fly_vel:Lerp(mv, cfg.fly_inertia_pwr)
		else
			fly_vel = mv
		end
		r.Velocity = fly_vel
		r.CFrame = CFrame.new(r.Position + fly_vel * dt, r.Position + fly_vel * dt + cam.CFrame.LookVector)
	end)
	local noclip_conn
	rs.Stepped:Connect(function()
		if not cfg.noclip_on then
			return
		end
		local c = getchar()
		if not c then
			return
		end
		for _, p in ipairs(c:GetDescendants()) do
			if p:IsA("BasePart") then
				p.CanCollide = false
			end
		end
	end)
	push_theme(thm)
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
