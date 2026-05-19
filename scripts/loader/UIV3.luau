local Library = {}
function Library:TweenInstance(Instance, Time, OldValue, NewValue)
	local rz_Tween = game:GetService("TweenService"):Create(Instance, TweenInfo.new(Time, Enum.EasingStyle.Quad), {
		[OldValue] = NewValue
	})
	rz_Tween:Play()
	return rz_Tween
end
function Library:UpdateContent(Content, Title, Object)
	if Content.Text ~= "" then
		Title.Position = UDim2.new(0, 10, 0, 7)
		Title.Size = UDim2.new(1, - 60, 0, 16)
		local MaxY = math.max(Content.TextBounds.Y + 15, 45)
		Object.Size = UDim2.new(1, 0, 0, MaxY)
	end
end
function Library:UpdateScrolling(Scroll, List)
	List:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		Scroll.CanvasSize = UDim2.new(0, 0, 0, List.AbsoluteContentSize.Y + 15)
	end)
end
function Library:MouseEvent(Skibidi, ...)
	local Args = {
		...
	}
	Skibidi.MouseEnter:Connect(Args[1])
	Skibidi.MouseLeave:Connect(Args[2])
end
function Library:MakeConfig(Config, NewConfig)
	for i, v in next, Config do
		if NewConfig[i] == nil then
			NewConfig[i] = v
		end
	end
	return NewConfig
end
function Library:MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil
	local function UpdatePos(input)
		local Delta = input.Position - DragStart
		local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		local Tween = game:GetService("TweenService"):Create(object, TweenInfo.new(0.2), {
			Position = pos
		})
		Tween:Play()
	end
	topbarobject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartPosition = object.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)
	topbarobject.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			DragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == DragInput and Dragging then
			UpdatePos(input)
		end
	end)
end
function Library:NewWindow(ConfigWindow)
	local function GetIcon(input)
		if not input then
			return ""
		end
		local id = tostring(input):match("%d+")
		if id and not tostring(input):find("http") then
			return "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=" .. id
		end
		return input
	end
	local ConfigWindow = self:MakeConfig({
		Title = "Void UI",
		Description = "By Kay & T0X1C",
		Icon = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=75322827874289",
		Resizable = true,
		ReopenButton = {
			ButtonIcon = "rbxassetid://1234567890",
			ButtonColorStroke = Color3.fromRGB(116, 18, 217),
			ButtonBackgroundColor = Color3.fromRGB(225, 225, 225),
			ButtonPosition = UDim2.new(0.267, - 171, 0.437, - 115),
			ButtonSize = UDim2.new(0, 50, 0, 50)
		},
		Watermark = {
			Text = "Watermark!",
			Position = "bottom-left",
			Size = 14,
			Opacity = 1,
			Padding = 10,
			Icon = true,
			IconImage = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=75322827874289",
			OnGui = true
		}
	}, ConfigWindow or {})
	local vui = Instance.new("ScreenGui")
	local DropShadowHolder = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Top = Instance.new("Frame")
	local Line = Instance.new("Frame")
	local Left = Instance.new("Folder")
	local NameHub = Instance.new("TextLabel")
	local LogoHub = Instance.new("ImageLabel")
	local Desc = Instance.new("TextLabel")
	local Right = Instance.new("Folder")
	local Frame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local Minize = Instance.new("TextButton")
	local Icon = Instance.new("ImageLabel")
	local Large = Instance.new("TextButton")
	local Icon_2 = Instance.new("ImageLabel")
	local Close = Instance.new("TextButton")
	local Icon_3 = Instance.new("ImageLabel")
	local UIStroke = Instance.new("UIStroke")
	local TabFrame = Instance.new("Frame")
	local Line_2 = Instance.new("Frame")
	local SearchFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local IconSearch = Instance.new("ImageLabel")
	local SearchBox = Instance.new("TextBox")
	local ScrollingTab = Instance.new("ScrollingFrame")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local LayoutFrame = Instance.new("Frame")
	local RealLayout = Instance.new("Frame")
	local LayoutList = Instance.new("Folder")
	local UIPageLayout = Instance.new("UIPageLayout")
	local LayoutName = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local DropdownZone = Instance.new("Frame")
	local ResizeHandle = Instance.new("TextButton")
	local ResizeCorner = Instance.new("UICorner")
	vui.Name = "vui"
	vui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	vui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	vui.IgnoreGuiInset = true
	vui.ResetOnSpawn = false
	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = vui
	DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadowHolder.BackgroundTransparency = 1.000
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadowHolder.Size = UDim2.new(0, 555, 0, 350)
	DropShadowHolder.ZIndex = 0
	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	Main.Name = "Main"
	Main.Parent = DropShadowHolder
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
	Main.BackgroundTransparency = 0.070
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 555, 0, 350)
	if ConfigWindow.Resizable == true then
		ResizeHandle.Name = "ResizeHandle"
		ResizeHandle.Parent = Main
		ResizeHandle.AnchorPoint = Vector2.new(1, 1)
		ResizeHandle.Position = UDim2.new(1, 0, 1, 0)
		ResizeHandle.Size = UDim2.new(0, 20, 0, 20)
		ResizeHandle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		ResizeHandle.BackgroundTransparency = 0.3
		ResizeHandle.BorderSizePixel = 0
		ResizeHandle.Text = ""
		ResizeHandle.ZIndex = 100
		ResizeCorner.CornerRadius = UDim.new(0, 4)
		ResizeCorner.Parent = ResizeHandle
		local UserInputService = game:GetService("UserInputService")
		local resizing = false
		local dragStart
		local startSize
		ResizeHandle.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				resizing = true
				dragStart = input.Position
				startSize = DropShadowHolder.AbsoluteSize
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if resizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = input.Position - dragStart
				local newWidth = math.clamp(startSize.X + (delta.X * 2), 400, 800)
				local newHeight = math.clamp(startSize.Y + (delta.Y * 2), 250, 600)
				DropShadowHolder.Size = UDim2.new(0, newWidth, 0, newHeight)
				Main.Size = UDim2.new(0, newWidth, 0, newHeight)
			end
		end)
		UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				resizing = false
			end
		end)
	else
		print("Resizing disabled")
	end
	if ConfigWindow.Watermark then
		local wm_cfg = ConfigWindow.Watermark
		local WatermarkFrame = Instance.new("Frame")
		local WM_Layout = Instance.new("UIListLayout")
		local WM_Padding = Instance.new("UIPadding")
		WatermarkFrame.Name = "Watermark"
		WatermarkFrame.Parent = wm_cfg.OnGui and Main or NextGenUI
		WatermarkFrame.BackgroundTransparency = 1
		WatermarkFrame.AutomaticSize = Enum.AutomaticSize.XY
		WatermarkFrame.ZIndex = 100
		WM_Layout.Parent = WatermarkFrame
		WM_Layout.FillDirection = Enum.FillDirection.Horizontal
		WM_Layout.SortOrder = Enum.SortOrder.LayoutOrder
		WM_Layout.VerticalAlignment = Enum.VerticalAlignment.Center
		WM_Layout.Padding = UDim.new(0, 6)
		WM_Padding.Parent = WatermarkFrame
		local pVal = wm_cfg.Padding or 10
		WM_Padding.PaddingBottom = UDim.new(0, pVal)
		WM_Padding.PaddingLeft = UDim.new(0, pVal)
		WM_Padding.PaddingRight = UDim.new(0, pVal)
		WM_Padding.PaddingTop = UDim.new(0, pVal)
		local pos = wm_cfg.Position or "bottom-left"
		if pos == "bottom-left" then
			WatermarkFrame.AnchorPoint = Vector2.new(0, 1)
			WatermarkFrame.Position = UDim2.new(0, 0, 1, 0)
		elseif pos == "bottom-right" then
			WatermarkFrame.AnchorPoint = Vector2.new(1, 1)
			WatermarkFrame.Position = UDim2.new(1, 0, 1, 0)
		elseif pos == "top-left" then
			WatermarkFrame.AnchorPoint = Vector2.new(0, 0)
			WatermarkFrame.Position = UDim2.new(0, 0, 0, 0)
		elseif pos == "top-right" then
			WatermarkFrame.AnchorPoint = Vector2.new(1, 0)
			WatermarkFrame.Position = UDim2.new(1, 0, 0, 0)
		end
		if wm_cfg.Icon then
			local WM_IconImg = Instance.new("ImageLabel")
			WM_IconImg.Name = "Icon"
			WM_IconImg.Parent = WatermarkFrame
			WM_IconImg.BackgroundTransparency = 1
			WM_IconImg.Size = UDim2.new(0, wm_cfg.Size or 14, 0, wm_cfg.Size or 14)
			WM_IconImg.Image = wm_cfg.IconImage or ""
			WM_IconImg.ImageTransparency = 1 - (wm_cfg.Opacity or 1)
			WM_IconImg.ZIndex = 101
			local WM_Sep = Instance.new("TextLabel")
			WM_Sep.Name = "Separator"
			WM_Sep.Parent = WatermarkFrame
			WM_Sep.BackgroundTransparency = 1
			WM_Sep.Text = "|"
			WM_Sep.TextColor3 = Color3.fromRGB(255, 255, 255)
			WM_Sep.TextSize = wm_cfg.Size or 14
			WM_Sep.Font = Enum.Font.GothamBold
			WM_Sep.AutomaticSize = Enum.AutomaticSize.XY
			WM_Sep.TextTransparency = 1 - (wm_cfg.Opacity or 1)
			WM_Sep.ZIndex = 101
		end
		local WM_TextLbl = Instance.new("TextLabel")
		WM_TextLbl.Name = "Text"
		WM_TextLbl.Parent = WatermarkFrame
		WM_TextLbl.BackgroundTransparency = 1
		WM_TextLbl.Text = wm_cfg.Text or ""
		WM_TextLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
		WM_TextLbl.TextSize = wm_cfg.Size or 14
		WM_TextLbl.Font = Enum.Font.GothamBold
		WM_TextLbl.AutomaticSize = Enum.AutomaticSize.XY
		WM_TextLbl.TextTransparency = 1 - (wm_cfg.Opacity or 1)
		WM_TextLbl.ZIndex = 101
	end
	UICorner.Parent = Main
	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(1, 0, 0, 50)
	Line.Name = "Line"
	Line.Parent = Top
	Line.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Line.BackgroundTransparency = 0.500
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 1, - 1)
	Line.Size = UDim2.new(1, 0, 0, 1)
	Left.Name = "Left"
	Left.Parent = Top
	NameHub.Name = "NameHub"
	NameHub.Parent = Left
	NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameHub.BackgroundTransparency = 1.000
	NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NameHub.BorderSizePixel = 0
	NameHub.Position = UDim2.new(0, 60, 0, 10)
	NameHub.Size = UDim2.new(0, 470, 0, 20)
	NameHub.Font = Enum.Font.GothamBold
	NameHub.Text = ConfigWindow.Title
	NameHub.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameHub.RichText = true
	NameHub.TextSize = 14.000
	NameHub.TextXAlignment = Enum.TextXAlignment.Left
	LogoHub.Name = "LogoHub"
	LogoHub.Parent = Left
	LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoHub.BackgroundTransparency = 1.000
	LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogoHub.BorderSizePixel = 0
	LogoHub.Position = UDim2.new(0, 10, 0, 5)
	LogoHub.Size = UDim2.new(0, 40, 0, 35)
	LogoHub.Image = ConfigWindow.Icon
	local UICornerForLogoHub = Instance.new("UICorner")
	UICornerForLogoHub.Parent = LogoHub
	Desc.Name = "Desc"
	Desc.Parent = Left
	Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Desc.BackgroundTransparency = 1.000
	Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Desc.BorderSizePixel = 0
	Desc.Position = UDim2.new(0, 60, 0, 27)
	Desc.Size = UDim2.new(0, 470, 1, - 30)
	Desc.Font = Enum.Font.GothamBold
	Desc.Text = ConfigWindow.Description
	Desc.TextColor3 = Color3.fromRGB(100, 100, 100)
	Desc.TextSize = 12.000
	Desc.RichText = true
	Desc.TextXAlignment = Enum.TextXAlignment.Left
	Desc.TextYAlignment = Enum.TextYAlignment.Top
	Right.Name = "Right"
	Right.Parent = Top
	Frame.Parent = Right
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(1, - 110, 0, 0)
	Frame.Size = UDim2.new(0, 110, 1, 0)
	UIListLayout.Parent = Frame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)
	UIPadding.Parent = Frame
	UIPadding.PaddingTop = UDim.new(0, 10)
	Minize.Name = "Minize"
	Minize.Parent = Frame
	Minize.Active = false
	Minize.AnchorPoint = Vector2.new(0, 0.5)
	Minize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minize.BackgroundTransparency = 1.000
	Minize.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minize.BorderSizePixel = 0
	Minize.Selectable = false
	Minize.Size = UDim2.new(0, 30, 0, 30)
	Minize.Text = ""
	local TweenService = game:GetService("TweenService")

local rpnBtn_cfgs = ConfigWindow.ReopenButton
local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"].ResetOnSpawn = false;

G2L["2"] = Instance.new("ImageButton", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"].Visible = true

self:MakeDraggable(G2L["2"], G2L["2"])

G2L["2"]["BackgroundColor3"] = rpnBtn_cfgs.ButtonBackgroundColor;
G2L["2"]["Image"] = rpnBtn_cfgs.ButtonIcon;
G2L["2"]["Size"] = rpnBtn_cfgs.ButtonSize;
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = rpnBtn_cfgs.ButtonPosition;

G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 8);

G2L["4"] = Instance.new("UIStroke", G2L["2"]);
G2L["4"]["Thickness"] = 2;
G2L["4"]["Color"] = rpnBtn_cfgs.ButtonColorStroke;

local originalSize = G2L["2"].Size
local shrinkSize = UDim2.new(
	originalSize.X.Scale * 0.9,
	originalSize.X.Offset * 0.9,
	originalSize.Y.Scale * 0.9,
	originalSize.Y.Offset * 0.9
)

local shrinkTween = TweenService:Create(
	G2L["2"],
	TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{Size = shrinkSize}
)

local expandTween = TweenService:Create(
	G2L["2"],
	TweenInfo.new(0.12, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
	{Size = originalSize}
)

G2L["2"].MouseButton1Down:Connect(function()
	shrinkTween:Play()
end)

G2L["2"].MouseButton1Up:Connect(function()
	expandTween:Play()
end)

G2L["2"].MouseButton1Click:Connect(function()
	vui.Enabled = not vui.Enabled
end)

Minize.MouseButton1Click:Connect(function()
	vui.Enabled = false
end)
	Icon.Name = "Icon"
	Icon.Parent = Minize
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0, 20, 0, 20)
	Icon.Image = "rbxassetid://136452605242985"
	Icon.ImageRectOffset = Vector2.new(288, 672)
	Icon.ImageRectSize = Vector2.new(96, 96)
	local OriginalSize = DropShadowHolder.Size
	local OriginalPosition = DropShadowHolder.Position
	local IsFull = false
	Large.Name = "Large"
	Large.Parent = Frame
	Large.Active = false
	Large.AnchorPoint = Vector2.new(0, 0.5)
	Large.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Large.BackgroundTransparency = 1.000
	Large.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Large.BorderSizePixel = 0
	Large.Selectable = false
	Large.Size = UDim2.new(0, 30, 0, 30)
	Large.Text = ""
	Large.MouseButton1Down:Connect(function()
		local TweenService = game:GetService("TweenService")
		local TweenData = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
		if not IsFull then
			IsFull = true
			TweenService:Create(DropShadowHolder, TweenData, {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0)
			}):Play()
			TweenService:Create(Main, TweenData, {
				Size = UDim2.new(1, 0, 1, 0)
			}):Play()
			TweenService:Create(DropShadow, TweenData, {
				ImageTransparency = 1
			}):Play()
		else
			IsFull = false
			TweenService:Create(DropShadowHolder, TweenData, {
				Size = OriginalSize,
				Position = OriginalPosition
			}):Play()
			TweenService:Create(Main, TweenData, {
				Size = UDim2.new(0, 555, 0, 350)
			}):Play()
			TweenService:Create(DropShadow, TweenData, {
				ImageTransparency = 0.5
			}):Play()
		end
	end)
	Icon_2.Name = "Icon"
	Icon_2.Parent = Large
	Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_2.BackgroundTransparency = 1.000
	Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_2.BorderSizePixel = 0
	Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_2.Size = UDim2.new(0, 18, 0, 18)
	Icon_2.Image = "rbxassetid://136452605242985"
	Icon_2.ImageRectOffset = Vector2.new(580, 194)
	Icon_2.ImageRectSize = Vector2.new(96, 96)
	Close.Name = "Close"
	Close.Parent = Frame
	Close.Active = false
	Close.AnchorPoint = Vector2.new(0, 0.5)
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Selectable = false
	Close.Size = UDim2.new(0, 30, 0, 30)
	Close.Text = ""
	Close.MouseButton1Down:Connect(function()
		DropdownZone.Visible = true
		local tat_ = Instance.new("Frame", DropdownZone);
		tat_["BorderSizePixel"] = 0;
		tat_["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
		tat_["AnchorPoint"] = Vector2.new(0.5, 0.5);
		tat_["Size"] = UDim2.new(0, 400, 0, 150);
		tat_["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		tat_["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		tat_["Name"] = [[Tat]];
		local suacc = Instance.new("UIStroke", tat_);
		suacc["Transparency"] = 0;
		suacc["Thickness"] = 1.5;
		suacc["Color"] = Color3.fromRGB(255, 0, 0);
		local suacc = Instance.new("UICorner", tat_);
		suacc["CornerRadius"] = UDim.new(0, 5);
		local suacc2 = Instance.new("TextLabel", tat_);
		suacc2["BorderSizePixel"] = 0;
		suacc2["TextSize"] = 22;
		suacc2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		suacc2["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		suacc2["TextColor3"] = Color3.fromRGB(255, 255, 255);
		suacc2["BackgroundTransparency"] = 1;
		suacc2["Size"] = UDim2.new(0, 400, 0, 35);
		suacc2["Position"] = UDim2.new(0, 0, 0, 8);
		suacc2["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		suacc2["Text"] = [[Are you sure?]];
		local desc = Instance.new("TextLabel", tat_);
		desc["BorderSizePixel"] = 0;
		desc["TextSize"] = 15;
		desc["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		desc["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
		desc["TextColor3"] = Color3.fromRGB(170, 170, 170);
		desc["BackgroundTransparency"] = 1;
		desc["Size"] = UDim2.new(0, 340, 0, 40);
		desc["Position"] = UDim2.new(0.5, - 170, 0, 45);
		desc["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		desc["TextWrapped"] = true;
		desc["Text"] = [[Are you want to close this UI. This will close the UI fully!]];
		local btnyes = Instance.new("TextButton", tat_);
		btnyes["BorderSizePixel"] = 0;
		btnyes["TextSize"] = 25;
		btnyes["TextColor3"] = Color3.fromRGB(255, 255, 255);
		btnyes["BackgroundColor3"] = Color3.fromRGB(10, 10, 10);
		btnyes["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		btnyes["AnchorPoint"] = Vector2.new(0, 1);
		btnyes["Size"] = UDim2.new(0, 150, 0, 50);
		btnyes["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		btnyes["Text"] = [[Yes]];
		btnyes["Position"] = UDim2.new(0, 40, 1, - 20);
		btnyes.MouseButton1Down:Connect(function()
			vui:Destroy()
			G2L["1"]:Destroy()
		end)
		local thuaaa = Instance.new("UICorner", btnyes);
		local thuaaa = Instance.new("UIStroke", btnyes);
		thuaaa["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		thuaaa["Thickness"] = 1.2;
		thuaaa["Color"] = Color3.fromRGB(255, 0, 0);
		local btnno = Instance.new("TextButton", tat_);
		btnno["BorderSizePixel"] = 0;
		btnno["TextSize"] = 25;
		btnno["TextColor3"] = Color3.fromRGB(255, 255, 255);
		btnno["BackgroundColor3"] = Color3.fromRGB(10, 10, 10);
		btnno["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		btnno["AnchorPoint"] = Vector2.new(1, 1);
		btnno["Size"] = UDim2.new(0, 150, 0, 50);
		btnno["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		btnno["Text"] = [[No]];
		btnno["Position"] = UDim2.new(1, - 40, 1, - 20);
		btnno.MouseButton1Down:Connect(function()
			tat_:Destroy()
			DropdownZone.Visible = false
		end)
		local thuaa = Instance.new("UICorner", btnno);
		local thuaa = Instance.new("UIStroke", btnno);
		thuaa["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		thuaa["Thickness"] = 1.2;
		thuaa["Color"] = Color3.fromRGB(255, 0, 0);
	end)
	Icon_3.Name = "Icon"
	Icon_3.Parent = Close
	Icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_3.BackgroundTransparency = 1.000
	Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_3.BorderSizePixel = 0
	Icon_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_3.Size = UDim2.new(0, 20, 0, 20)
	Icon_3.Image = "rbxassetid://105957381820378"
	Icon_3.ImageRectOffset = Vector2.new(480, 0)
	Icon_3.ImageRectSize = Vector2.new(96, 96)
	UIStroke.Color = Color3.fromRGB(255, 0, 0)
	UIStroke.Transparency = 0.5
	UIStroke.Parent = Main
	TabFrame.Name = "TabFrame"
	TabFrame.Parent = Main
	TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabFrame.BackgroundTransparency = 1.000
	TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0, 0, 0, 50)
	TabFrame.Size = UDim2.new(0, 144, 1, - 50)
	Line_2.Name = "Line"
	Line_2.Parent = TabFrame
	Line_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Line_2.BackgroundTransparency = 0.500
	Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line_2.BorderSizePixel = 0
	Line_2.Position = UDim2.new(1, - 1, 0, 0)
	Line_2.Size = UDim2.new(0, 1, 1, 0)
	SearchFrame.Name = "SearchFrame"
	SearchFrame.Parent = TabFrame
	SearchFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchFrame.BackgroundTransparency = 0.950
	SearchFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SearchFrame.BorderSizePixel = 0
	SearchFrame.Position = UDim2.new(0, 7, 0, 10)
	SearchFrame.Size = UDim2.new(1, - 14, 0, 30)
	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = SearchFrame
	IconSearch.Name = "IconSearch"
	IconSearch.Parent = SearchFrame
	IconSearch.AnchorPoint = Vector2.new(0, 0.5)
	IconSearch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IconSearch.BackgroundTransparency = 1.000
	IconSearch.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IconSearch.BorderSizePixel = 0
	IconSearch.Position = UDim2.new(0, 5, 0.5, 0)
	IconSearch.Size = UDim2.new(0, 15, 0, 15)
	IconSearch.Image = "rbxassetid://71309835376233"
	SearchBox.Name = "SearchBox"
	SearchBox.Parent = SearchFrame
	SearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchBox.BackgroundTransparency = 1.000
	SearchBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SearchBox.BorderSizePixel = 0
	SearchBox.ClipsDescendants = true
	SearchBox.Position = UDim2.new(0, 23, 0, 0)
	SearchBox.Size = UDim2.new(1, - 25, 1, 0)
	SearchBox.Font = Enum.Font.GothamBold
	SearchBox.PlaceholderText = "Search components"
	SearchBox.Text = ""
	SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	SearchBox.TextSize = 13.000
	SearchBox.TextXAlignment = Enum.TextXAlignment.Left
	ScrollingTab.Name = "ScrollingTab"
	ScrollingTab.Parent = TabFrame
	ScrollingTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingTab.BackgroundTransparency = 1.000
	ScrollingTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingTab.BorderSizePixel = 0
	ScrollingTab.Position = UDim2.new(0, 0, 0, 50)
	ScrollingTab.Selectable = false
	ScrollingTab.Size = UDim2.new(1, 0, 1, - 50)
	ScrollingTab.ScrollBarThickness = 0
	self:UpdateScrolling(ScrollingTab, UIListLayout_2)
	UIPadding_2.Parent = ScrollingTab
	UIPadding_2.PaddingBottom = UDim.new(0, 3)
	UIPadding_2.PaddingLeft = UDim.new(0, 7)
	UIPadding_2.PaddingRight = UDim.new(0, 7)
	UIPadding_2.PaddingTop = UDim.new(0, 3)
	UIListLayout_2.Parent = ScrollingTab
	UIListLayout_2.Padding = UDim.new(0, 5)
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	LayoutFrame.Name = "LayoutFrame"
	LayoutFrame.Parent = Main
	LayoutFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LayoutFrame.BackgroundTransparency = 1.000
	LayoutFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LayoutFrame.BorderSizePixel = 0
	LayoutFrame.Position = UDim2.new(0, 144, 0, 50)
	LayoutFrame.Size = UDim2.new(1, - 144, 1, - 50)
	LayoutFrame.ClipsDescendants = true
	RealLayout.Name = "RealLayout"
	RealLayout.Parent = LayoutFrame
	RealLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RealLayout.BackgroundTransparency = 1.000
	RealLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RealLayout.BorderSizePixel = 0
	RealLayout.Position = UDim2.new(0, 0, 0, 40)
	RealLayout.Size = UDim2.new(1, 0, 1, - 40)
	LayoutList.Name = "Layout List"
	LayoutList.Parent = RealLayout
	UIPageLayout.Parent = LayoutList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.TweenTime = 0.300
	LayoutName.Name = "LayoutName"
	LayoutName.Parent = LayoutFrame
	LayoutName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LayoutName.BackgroundTransparency = 1.000
	LayoutName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LayoutName.BorderSizePixel = 0
	LayoutName.Size = UDim2.new(1, 0, 0, 40)
	TextLabel.Parent = LayoutName
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 10, 0, 0)
	TextLabel.Size = UDim2.new(1, - 10, 1, 0)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = ""
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 20.000
	TextLabel.RichText = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	DropdownZone.Name = "DropdownZone"
	DropdownZone.Parent = Main
	DropdownZone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	DropdownZone.BackgroundTransparency = 1
	DropdownZone.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DropdownZone.BorderSizePixel = 0
	DropdownZone.Size = UDim2.new(1, 0, 1, 0)
	DropdownZone.Visible = false
	self:MakeDraggable(Top, DropShadowHolder)
	local AllLayouts = 0
	local Tab = {}
	function Tab:AddTab(cfTab)
		local cfTab = Library:MakeConfig({
			Title = "Tab < Missing Title >",
			Border = true,
			Icon = ""
		}, cfTab or {})
		local t = cfTab.Title
		local TabDisable = Instance.new("Frame")
		local Choose_2 = Instance.new("Frame")
		local UICorner_4 = Instance.new("UICorner")
		local NameTab_2 = Instance.new("TextLabel")
		local Click_Tab_2 = Instance.new("TextButton")
		local Layout = Instance.new("ScrollingFrame")
		local UIPadding_3 = Instance.new("UIPadding")
		local UIListLayout_3 = Instance.new("UIListLayout")
		local TabIcon = Instance.new("ImageLabel")
		local TabStroke = Instance.new("UIStroke")
		local TabUICorner = Instance.new("UICorner")
		TabDisable.Name = "TabDisable"
		TabDisable.Parent = ScrollingTab
		TabDisable.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		TabDisable.BackgroundTransparency = 1
		TabDisable.BorderSizePixel = 0
		TabDisable.Size = UDim2.new(1, 0, 0, 30)
		TabUICorner.Name = "TabUICorner"
		TabUICorner.Parent = TabDisable
		TabUICorner.CornerRadius = UDim.new(0, 4)
		TabStroke.Parent = TabDisable
		TabStroke.Thickness = 1
		TabStroke.Color = Color3.fromRGB(120, 120, 120)
		TabStroke.Transparency = 0.85
		TabStroke.Enabled = cfTab.Border
		Choose_2.Name = "Choose"
		Choose_2.Parent = TabDisable
		Choose_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Choose_2.BorderSizePixel = 0
		Choose_2.Position = UDim2.new(0, 2, 0, 7)
		Choose_2.Size = UDim2.new(0, 3, 0, 16)
		Choose_2.Visible = false
		UICorner_4.CornerRadius = UDim.new(1, 0)
		UICorner_4.Parent = Choose_2
		local iconAsset = GetIcon(cfTab.Icon)
		if iconAsset then
			TabIcon.Name = "TabIcon"
			TabIcon.Parent = TabDisable
			TabIcon.BackgroundTransparency = 1
			TabIcon.Position = UDim2.new(0, 12, 0, 7)
			TabIcon.Size = UDim2.new(0, 16, 0, 16)
			TabIcon.Image = iconAsset
			TabIcon.ImageTransparency = 0.3
			NameTab_2.Position = UDim2.new(0, 35, 0, 0)
			NameTab_2.Size = UDim2.new(1, - 35, 1, 0)
		else
			NameTab_2.Position = UDim2.new(0, 15, 0, 0)
			NameTab_2.Size = UDim2.new(1, - 15, 1, 0)
		end
		NameTab_2.Name = "NameTab"
		NameTab_2.Parent = TabDisable
		NameTab_2.BackgroundTransparency = 1
		NameTab_2.Font = Enum.Font.GothamBold
		NameTab_2.Text = t
		NameTab_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		NameTab_2.TextSize = 12
		NameTab_2.TextTransparency = 0.3
		NameTab_2.RichText = true
		NameTab_2.TextXAlignment = Enum.TextXAlignment.Left
		Click_Tab_2.Name = "Click_Tab"
		Click_Tab_2.Parent = TabDisable
		Click_Tab_2.BackgroundTransparency = 1
		Click_Tab_2.Size = UDim2.new(1, 0, 1, 0)
		Click_Tab_2.Text = ""
		Layout.Name = "Layout"
		Layout.Parent = LayoutList
		Layout.BackgroundTransparency = 1
		Layout.BorderSizePixel = 0
		Layout.Size = UDim2.new(1, 0, 1, 0)
		Layout.CanvasSize = UDim2.new(0, 0, 0, 0)
		Layout.ScrollBarThickness = 0
		Layout.LayoutOrder = AllLayouts
		Library:UpdateScrolling(Layout, UIListLayout_3)
		UIPadding_3.Parent = Layout
		UIPadding_3.PaddingBottom = UDim.new(0, 7)
		UIPadding_3.PaddingLeft = UDim.new(0, 10)
		UIPadding_3.PaddingRight = UDim.new(0, 7)
		UIListLayout_3.Parent = Layout
		UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_3.Padding = UDim.new(0, 10)
		if AllLayouts == 0 then
			NameTab_2.TextTransparency = 0
			if TabIcon then
				TabIcon.ImageTransparency = 0
			end
			Choose_2.Visible = true
			TabStroke.Color = Color3.fromRGB(255, 0, 0)
			TabStroke.Transparency = 0.2
			TabStroke.Thickness = 2
			UIPageLayout:JumpToIndex(0)
			TextLabel.Text = t
		end
		Click_Tab_2.Activated:Connect(function()
			TextLabel.Text = t
			for i, v in next, ScrollingTab:GetChildren() do
				if v:IsA("Frame") and v:FindFirstChild("NameTab") then
					Library:TweenInstance(v.NameTab, 0.3, "TextTransparency", 0.3)
					if v:FindFirstChild("TabIcon") then
						Library:TweenInstance(v.TabIcon, 0.3, "ImageTransparency", 0.3)
					end
					if v:FindFirstChildOfClass("UIStroke") then
						Library:TweenInstance(v:FindFirstChildOfClass("UIStroke"), 0.25, "Transparency", 0.85)
						Library:TweenInstance(v:FindFirstChildOfClass("UIStroke"), 0.25, "Thickness", 1)
						Library:TweenInstance(v:FindFirstChildOfClass("UIStroke"), 0.25, "Color", Color3.fromRGB(120, 120, 120))
					end
					v.Choose.Visible = false
				end
			end
			Library:TweenInstance(NameTab_2, 0.2, "TextTransparency", 0)
			if TabIcon then
				Library:TweenInstance(TabIcon, 0.2, "ImageTransparency", 0)
			end
			Library:TweenInstance(TabStroke, 0.25, "Transparency", 0.2)
			Library:TweenInstance(TabStroke, 0.25, "Thickness", 2)
			Library:TweenInstance(TabStroke, 0.25, "Color", Color3.fromRGB(255, 0, 0))
			UIPageLayout:JumpToIndex(Layout.LayoutOrder)
			Choose_2.Visible = true
		end)
		AllLayouts = AllLayouts + 1
		local TabFunc = {}
		function TabFunc:AddSection(cfsection)
			local cfsection = Library:MakeConfig({
				Title = "Section < Missing Title >",
				Opened = false,
				Collapsible = true,
				Icon = ""
			}, cfsection or {})
			local IsCollapsed = not cfsection.Opened
			local Section = Instance.new("Frame")
			local UICorner_5 = Instance.new("UICorner")
			local UIStroke_2 = Instance.new("UIStroke")
			local NameSection = Instance.new("TextButton")
			local Title = Instance.new("TextLabel")
			local Line_3 = Instance.new("Frame")
			local UIGradient = Instance.new("UIGradient")
			local SectionList = Instance.new("Frame")
			local UIPadding_4 = Instance.new("UIPadding")
			local UIListLayout_4 = Instance.new("UIListLayout")
			local LeftIcon = Instance.new("ImageLabel")
			local RightArrow = Instance.new("ImageLabel")
			Section.Name = "Section"
			Section.Parent = Layout
			Section.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Section.BackgroundTransparency = 1.000
			Section.BorderSizePixel = 0
			Section.ClipsDescendants = true
			Section.Size = UDim2.new(1, 0, 0, 32)
			UICorner_5.CornerRadius = UDim.new(0, 4)
			UICorner_5.Parent = Section
			UIStroke_2.Color = Color3.fromRGB(100, 100, 100)
			UIStroke_2.Thickness = 1
			UIStroke_2.Transparency = 0.8
			UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke_2.Parent = Section
			NameSection.Name = "NameSection"
			NameSection.Parent = Section
			NameSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NameSection.BackgroundTransparency = 1.000
			NameSection.Size = UDim2.new(1, 0, 0, 30)
			NameSection.Text = ""
			NameSection.AutoButtonColor = false
			LeftIcon.Name = "LeftIcon"
			LeftIcon.Parent = NameSection
			LeftIcon.AnchorPoint = Vector2.new(0, 0.5)
			LeftIcon.BackgroundTransparency = 1.000
			LeftIcon.Position = UDim2.new(0, 10, 0.5, 0)
			LeftIcon.Size = UDim2.new(0, 16, 0, 16)
			LeftIcon.Image = cfsection.Icon
			LeftIcon.Visible = (cfsection.Icon ~= "")
			Title.Name = "Title"
			Title.Parent = NameSection
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0, (LeftIcon.Visible and 32 or 10), 0, 0)
			Title.Size = UDim2.new(1, (LeftIcon.Visible and - 42 or - 20), 1, 0)
			Title.Font = Enum.Font.GothamBold
			Title.Text = cfsection.Title
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 13.000
			Title.RichText = true
			Title.TextXAlignment = Enum.TextXAlignment.Left
			RightArrow.Name = "RightArrow"
			RightArrow.Parent = NameSection
			RightArrow.AnchorPoint = Vector2.new(1, 0.5)
			RightArrow.BackgroundTransparency = 1.000
			RightArrow.Position = UDim2.new(1, - 10, 0.5, 0)
			RightArrow.Size = UDim2.new(0, 18, 0, 18)
			RightArrow.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=100136819093667"
			RightArrow.Visible = cfsection.Collapsible
			RightArrow.Rotation = IsCollapsed and - 90 or 0
			Line_3.Name = "Line"
			Line_3.Parent = NameSection
			Line_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Line_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Line_3.BorderSizePixel = 0
			Line_3.Position = UDim2.new(0, 0, 1, - 2)
			Line_3.Size = UDim2.new(1, 0, 0, 2)
			UIGradient.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 25)),
				ColorSequenceKeypoint.new(0.52, Color3.fromRGB(255, 0, 0)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(24, 24, 25))
			}
			UIGradient.Transparency = NumberSequence.new{
				NumberSequenceKeypoint.new(0.00, 0.53),
				NumberSequenceKeypoint.new(0.51, 0.00),
				NumberSequenceKeypoint.new(1.00, 0.51)
			}
			UIGradient.Parent = Line_3
			SectionList.Name = "SectionList"
			SectionList.Parent = Section
			SectionList.BackgroundTransparency = 1.000
			SectionList.Position = UDim2.new(0, 0, 0, 32)
			SectionList.Size = UDim2.new(1, 0, 0, 0)
			SectionList.AutomaticSize = Enum.AutomaticSize.Y
			SectionList.ClipsDescendants = true
			SectionList.Visible = not IsCollapsed
			UIPadding_4.Parent = SectionList
			UIPadding_4.PaddingBottom = UDim.new(0, 8)
			UIPadding_4.PaddingLeft = UDim.new(0, 8)
			UIPadding_4.PaddingRight = UDim.new(0, 8)
			UIPadding_4.PaddingTop = UDim.new(0, 8)
			UIListLayout_4.Parent = SectionList
			UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_4.Padding = UDim.new(0, 6)
			local function UpdateSize()
				local TargetSize = IsCollapsed and 32 or (UIListLayout_4.AbsoluteContentSize.Y + 45)
				if not IsCollapsed then
					SectionList.Visible = true
					Line_3.Visible = true
				end
				game:GetService("TweenService"):Create(Section, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
					Size = UDim2.new(1, 0, 0, TargetSize)
				}):Play()
				task.delay(0.3, function()
					if IsCollapsed then
						SectionList.Visible = false
						Line_3.Visible = false
					end
				end)
			end
			UIListLayout_4:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				if not IsCollapsed then
					UpdateSize()
				end
			end)
			if cfsection.Collapsible then
				NameSection.MouseButton1Click:Connect(function()
					IsCollapsed = not IsCollapsed
					local targetRot = IsCollapsed and - 90 or 0
					game:GetService("TweenService"):Create(RightArrow, TweenInfo.new(0.3), {
						Rotation = targetRot
					}):Play()
					UpdateSize()
				end)
			end
			if not IsCollapsed then
				task.spawn(function()
					task.wait()
					UpdateSize()
				end)
			end
			function TabFunc:AddSpaceTab(space)
				local Space2 = Instance.new("Frame")
				Space2.Name = "Space"
				Space2.Parent = Layout
				Space2.BackgroundTransparency = 1.000
				Space2.BorderSizePixel = 0
				Space2.Size = UDim2.new(1, 0, 0, space or 5)
			end
			function TabFunc:AddDividerTab()
				local DividerLine_2 = Instance.new("Frame")
				local UIGradientttt_2 = Instance.new("UIGradient")
				DividerLine_2.Name = "Line"
				DividerLine_2.Parent = Layout
				DividerLine_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DividerLine_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DividerLine_2.BorderSizePixel = 0
				DividerLine_2.Position = UDim2.new(0, 0, 1, - 2)
				DividerLine_2.Size = UDim2.new(1, 0, 0, 2)
				UIGradientttt_2.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 25)),
					ColorSequenceKeypoint.new(0.52, Color3.fromRGB(255, 0, 0)),
					ColorSequenceKeypoint.new(1.00, Color3.fromRGB(24, 24, 25))
				}
				UIGradientttt_2.Transparency = NumberSequence.new{
					NumberSequenceKeypoint.new(0.00, 0.53),
					NumberSequenceKeypoint.new(0.51, 0.00),
					NumberSequenceKeypoint.new(1.00, 0.51)
				}
				UIGradientttt_2.Parent = DividerLine_2
			end
			local SectionFunc = {}
			function SectionFunc:AddToggle(cftoggle)
				local cftoggle = Library:MakeConfig({
					Title = "Toggle",
					Description = "",
					Default = false,
					Type = "Toggle",
					Locked = false,
					Risky = false,
					iOS = true,
					Callback = function()
					end
				}, cftoggle or {})
				local TweenService = game:GetService("TweenService")
				local Toggle = Instance.new("Frame")
				local ToggleCorner = Instance.new("UICorner")
				local ToggleTitle = Instance.new("TextLabel")
				local ToggleDesc = Instance.new("TextLabel")
				local ToggleButton = Instance.new("TextButton")
				local ToggleSwitch = Instance.new("Frame")
				local ToggleSwitchCorner = Instance.new("UICorner")
				local ToggleCircle = Instance.new("Frame")
				local ToggleCircleCorner = Instance.new("UICorner")
				local CheckBox = Instance.new("Frame")
				local CheckBoxCorner = Instance.new("UICorner")
				local CheckMark = Instance.new("TextLabel")
				local ToggleStroke = Instance.new("UIStroke")
				local ToggleFunc = {
					Value = cftoggle.Default
				}
				Toggle.Name = "Toggle"
				Toggle.Parent = SectionList
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 0.950
				Toggle.BorderSizePixel = 0
				Toggle.Size = UDim2.new(1, 0, 0, 35)
				Toggle.AutomaticSize = Enum.AutomaticSize.Y
				ToggleCorner.CornerRadius = UDim.new(0, 4)
				ToggleCorner.Parent = Toggle
				ToggleStroke.Parent = Toggle
				ToggleStroke.Color = Color3.fromRGB(40, 40, 40)
				ToggleStroke.Thickness = 1
				ToggleStroke.Transparency = 0.8
				ToggleTitle.Name = "ToggleTitle"
				ToggleTitle.Parent = Toggle
				ToggleTitle.BackgroundTransparency = 1
				ToggleTitle.Position = UDim2.new(0, 10, 0, 7)
				ToggleTitle.Size = UDim2.new(1, - 70, 0, 16)
				ToggleTitle.Font = Enum.Font.GothamBold
				ToggleTitle.Text = cftoggle.Title
				ToggleTitle.TextColor3 = cftoggle.Risky and Color3.fromRGB(255, 120, 120) or Color3.fromRGB(255, 255, 255)
				ToggleTitle.TextSize = 13
				ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
				ToggleDesc.Name = "ToggleDesc"
				ToggleDesc.Parent = Toggle
				ToggleDesc.BackgroundTransparency = 1
				ToggleDesc.Position = UDim2.new(0, 10, 0, 25)
				ToggleDesc.Size = UDim2.new(1, - 70, 0, 0)
				ToggleDesc.AutomaticSize = Enum.AutomaticSize.Y
				ToggleDesc.Font = Enum.Font.GothamBold
				ToggleDesc.Text = cftoggle.Description
				ToggleDesc.TextColor3 = Color3.fromRGB(100, 100, 100)
				ToggleDesc.TextSize = 12
				ToggleDesc.TextWrapped = true
				ToggleDesc.TextXAlignment = Enum.TextXAlignment.Left
				ToggleDesc.TextYAlignment = Enum.TextYAlignment.Top
				ToggleButton.Name = "ToggleButton"
				ToggleButton.Parent = Toggle
				ToggleButton.BackgroundTransparency = 1
				ToggleButton.Size = UDim2.new(1, 0, 1, 0)
				ToggleButton.Text = ""
				ToggleButton.ZIndex = 10
				if cftoggle.Type == "Toggle" then
					ToggleSwitch.Name = "ToggleSwitch"
					ToggleSwitch.Parent = Toggle
					ToggleSwitch.AnchorPoint = Vector2.new(0, 0.5)
					ToggleSwitch.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
					ToggleSwitch.BorderSizePixel = 0
					if cftoggle.iOS then
						ToggleSwitch.Size = UDim2.new(0, 55, 0, 22)
						ToggleSwitch.Position = UDim2.new(1, - 62, 0.5, 0)
					else
						ToggleSwitch.Size = UDim2.new(0, 40, 0, 22)
						ToggleSwitch.Position = UDim2.new(1, - 50, 0.5, 0)
					end
					ToggleSwitchCorner.CornerRadius = UDim.new(1, 0)
					ToggleSwitchCorner.Parent = ToggleSwitch
					ToggleCircle.Name = "ToggleCircle"
					ToggleCircle.Parent = ToggleSwitch
					ToggleCircle.AnchorPoint = Vector2.new(0, 0.5)
					ToggleCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ToggleCircle.BorderSizePixel = 0
					if cftoggle.iOS then
						ToggleCircle.Size = UDim2.new(0, 30, 0, 16)
					else
						ToggleCircle.Size = UDim2.new(0, 16, 0, 16)
					end
					ToggleCircle.Position = UDim2.new(0, 3, 0.5, 0)
					ToggleCircleCorner.CornerRadius = UDim.new(1, 0)
					ToggleCircleCorner.Parent = ToggleCircle
				else
					CheckBox.Name = "CheckBox"
					CheckBox.Parent = Toggle
					CheckBox.AnchorPoint = Vector2.new(0, 0.5)
					CheckBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					CheckBox.BorderSizePixel = 0
					CheckBox.Position = UDim2.new(1, - 42, 0.5, 0)
					CheckBox.Size = UDim2.new(0, 30, 0, 30)
					CheckBoxCorner.CornerRadius = UDim.new(0, 4)
					CheckBoxCorner.Parent = CheckBox
					CheckMark.Name = "CheckMark"
					CheckMark.Parent = CheckBox
					CheckMark.BackgroundTransparency = 1
					CheckMark.Size = UDim2.new(1, 0, 1, 0)
					CheckMark.Font = Enum.Font.GothamBold
					CheckMark.Text = "✓"
					CheckMark.TextColor3 = Color3.fromRGB(255, 255, 255)
					CheckMark.TextSize = 20
					CheckMark.TextTransparency = 1
				end
				local function UpdateSize()
					local HasDesc = ToggleDesc.Text ~= ""
					Toggle.Size = UDim2.new(1, 0, 0, HasDesc and 52 or 35)
				end
				function ToggleFunc:Set(Value)
					if cftoggle.Locked then
						return
					end
					self.Value = Value
					if cftoggle.Type == "Toggle" then
						local OnPos
						local OffPos = UDim2.new(0, 3, 0.5, 0)
						if cftoggle.iOS then
							OnPos = UDim2.new(0, 22, 0.5, 0)
						else
							OnPos = UDim2.new(1, - 19, 0.5, 0)
						end
						if Value then
							TweenService:Create(
					ToggleSwitch, TweenInfo.new(0.2), {
								BackgroundColor3 = Color3.fromRGB(255, 0, 0)
							}):Play()
							TweenService:Create(
					ToggleCircle, TweenInfo.new(0.2), {
								Position = OnPos
							}):Play()
						else
							TweenService:Create(
					ToggleSwitch, TweenInfo.new(0.2), {
								BackgroundColor3 = Color3.fromRGB(60, 60, 60)
							}):Play()
							TweenService:Create(
					ToggleCircle, TweenInfo.new(0.2), {
								Position = OffPos
							}):Play()
						end
					else
						if Value then
							TweenService:Create(
					CheckBox, TweenInfo.new(0.2), {
								BackgroundColor3 = Color3.fromRGB(255, 0, 0)
							}):Play()
							TweenService:Create(
					CheckMark, TweenInfo.new(0.2), {
								TextTransparency = 0
							}):Play()
						else
							TweenService:Create(
					CheckBox, TweenInfo.new(0.2), {
								BackgroundColor3 = Color3.fromRGB(25, 25, 25)
							}):Play()
							TweenService:Create(
					CheckMark, TweenInfo.new(0.2), {
								TextTransparency = 1
							}):Play()
						end
					end
					cftoggle.Callback(Value)
				end
				function ToggleFunc:SetTitle(text)
					ToggleTitle.Text = tostring(text)
				end
				function ToggleFunc:SetDescription(text)
					ToggleDesc.Text = tostring(text)
					UpdateSize()
				end
				function ToggleFunc:Lock()
					cftoggle.Locked = true
					Toggle.BackgroundTransparency = 0.97
				end
				function ToggleFunc:Unlock()
					cftoggle.Locked = false
					Toggle.BackgroundTransparency = 0.95
				end
				function ToggleFunc:Get()
					return self.Value
				end
				ToggleButton.Activated:Connect(function()
					ToggleFunc:Set(not ToggleFunc.Value)
				end)
				UpdateSize()
				ToggleFunc:Set(ToggleFunc.Value)
				return ToggleFunc
			end
			function SectionFunc:AddButton(cfbutton)
				local cfbutton = Library:MakeConfig({
					Title = "Button < Missing Title >",
					Description = "",
					ButtonIcon = "rbxassetid://85905776508942",
					Callback = function()
					end
				}, cfbutton or {})
				local Button = Instance.new("Frame")
				local UICorner_9 = Instance.new("UICorner")
				local Title_3 = Instance.new("TextLabel")
				local Button_Click = Instance.new("TextButton")
				local Content_2 = Instance.new("TextLabel")
				local ImageLabel = Instance.new("ImageLabel")
				local ButtFunc = {}
				Button.Name = "Button"
				Button.Parent = SectionList
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 0.950
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(1, 0, 0, 35)
				Button.AutomaticSize = Enum.AutomaticSize.Y
				UICorner_9.CornerRadius = UDim.new(0, 3)
				UICorner_9.Parent = Button
				Title_3.Name = "Title"
				Title_3.Parent = Button
				Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_3.BackgroundTransparency = 1.000
				Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_3.BorderSizePixel = 0
				Title_3.Position = UDim2.new(0, 10, 0, 7)
				Title_3.Size = UDim2.new(1, - 60, 0, 16)
				Title_3.Font = Enum.Font.GothamBold
				Title_3.Text = cfbutton.Title
				Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title_3.TextSize = 13.000
				Title_3.TextXAlignment = Enum.TextXAlignment.Left
				Button_Click.Name = "Button_Click"
				Button_Click.Parent = Button
				Button_Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button_Click.BackgroundTransparency = 1.000
				Button_Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button_Click.BorderSizePixel = 0
				Button_Click.Size = UDim2.new(1, 0, 1, 0)
				Button_Click.Font = Enum.Font.SourceSans
				Button_Click.Text = ""
				Button_Click.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button_Click.TextSize = 14.000
				Button_Click.ZIndex = 5
				Content_2.Name = "Content"
				Content_2.Parent = Button
				Content_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Content_2.BackgroundTransparency = 1.000
				Content_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Content_2.BorderSizePixel = 0
				Content_2.Position = UDim2.new(0, 10, 0, 25)
				Content_2.Size = UDim2.new(1, - 60, 0, 0)
				Content_2.AutomaticSize = Enum.AutomaticSize.Y
				Content_2.Font = Enum.Font.GothamBold
				Content_2.Text = cfbutton.Description
				Content_2.TextColor3 = Color3.fromRGB(100, 100, 100)
				Content_2.TextSize = 12.000
				Content_2.TextXAlignment = Enum.TextXAlignment.Left
				Content_2.TextYAlignment = Enum.TextYAlignment.Top
				Content_2.TextWrapped = true
				ImageLabel.Parent = Button
				ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel.BackgroundTransparency = 1.000
				ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ImageLabel.BorderSizePixel = 0
				ImageLabel.Position = UDim2.new(1, - 35, 0.5, 0)
				ImageLabel.Size = UDim2.new(0, 24, 0, 24)
				ImageLabel.Image = cfbutton.ButtonIcon
				local function UpdatePadding()
					local hasDesc = Content_2.Text ~= ""
					Button.Size = UDim2.new(1, 0, 0, hasDesc and 45 or 35)
				end
				Button_Click.Activated:Connect(function()
					Button.BackgroundTransparency = 0.970
					cfbutton.Callback()
					Library:TweenInstance(Button, 0.2, "BackgroundTransparency", 0.950)
				end)
				function ButtFunc:SetTitle(text)
					Title_3.Text = text
				end
				function ButtFunc:SetDescription(text)
					Content_2.Text = text
					UpdatePadding()
				end
				function ButtFunc:SetIcon(id)
					ImageLabel.Image = id
				end
				UpdatePadding()
				return ButtFunc
			end
			function SectionFunc:AddDropdown(cfdropdown)
				local cfdropdown = Library:MakeConfig({
					Title = "Dropdown",
					Description = "",
					Values = {},
					Default = "",
					Callback = function()
					end
				}, cfdropdown or {})
				local Dropdown = Instance.new("Frame")
				local UICorner_19 = Instance.new("UICorner")
				local Title_8 = Instance.new("TextLabel")
				local Content_6 = Instance.new("TextLabel")
				local Selects = Instance.new("Frame")
				local UICorner_20 = Instance.new("UICorner")
				local SelectText = Instance.new("TextLabel")
				local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
				local Drop_Click = Instance.new("TextButton")
				local ImageLabel_2 = Instance.new("ImageLabel")
				local DropdownList = Instance.new("Frame")
				local UIStroke_3 = Instance.new("UIStroke")
				local UICorner_24 = Instance.new("UICorner")
				local Topbar = Instance.new("Frame")
				local Title_10 = Instance.new("TextLabel")
				local SearchFrame_2 = Instance.new("Frame")
				local UICorner_25 = Instance.new("UICorner")
				local UIStroke_4 = Instance.new("UIStroke")
				local IconSearch_2 = Instance.new("ImageLabel")
				local TextBox = Instance.new("TextBox")
				local Click_Dropdown = Instance.new("TextButton")
				local Icon_4 = Instance.new("ImageLabel")
				local Real_List = Instance.new("ScrollingFrame")
				local UICorner_26 = Instance.new("UICorner")
				local UIListLayout_5 = Instance.new("UIListLayout")
				local UIPadding_5 = Instance.new("UIPadding")
				Dropdown.Name = "Dropdown"
				Dropdown.Parent = SectionList
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 0.950
				Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Dropdown.BorderSizePixel = 0
				Dropdown.Size = UDim2.new(1, 0, 0, 35)
				UICorner_19.CornerRadius = UDim.new(0, 3)
				UICorner_19.Parent = Dropdown
				Title_8.Name = "Title"
				Title_8.Parent = Dropdown
				Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_8.BackgroundTransparency = 1.000
				Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_8.BorderSizePixel = 0
				Title_8.Position = UDim2.new(0, 10, 0, 0)
				Title_8.Size = UDim2.new(1, - 60, 1, 0)
				Title_8.Font = Enum.Font.GothamBold
				Title_8.Text = cfdropdown.Title
				Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title_8.TextSize = 13.000
				Title_8.TextXAlignment = Enum.TextXAlignment.Left
				Content_6.Name = "Content"
				Content_6.Parent = Dropdown
				Content_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Content_6.BackgroundTransparency = 1.000
				Content_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Content_6.BorderSizePixel = 0
				Content_6.Position = UDim2.new(0, 10, 0, 22)
				Content_6.Size = UDim2.new(1, - 60, 1, 0)
				Content_6.Font = Enum.Font.GothamBold
				Content_6.Text = cfdropdown.Description
				Content_6.TextColor3 = Color3.fromRGB(100, 100, 100)
				Content_6.TextSize = 12.000
				Content_6.TextXAlignment = Enum.TextXAlignment.Left
				Content_6.TextYAlignment = Enum.TextYAlignment.Top
				Selects.Name = "Selects"
				Selects.Parent = Dropdown
				Selects.AnchorPoint = Vector2.new(0, 0.5)
				Selects.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				Selects.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Selects.BorderSizePixel = 0
				Selects.Position = UDim2.new(1, - 90, 0.5, 0)
				Selects.Size = UDim2.new(0, 80, 0, 25)
				UICorner_20.CornerRadius = UDim.new(0, 5)
				UICorner_20.Parent = Selects
				SelectText.Name = "SelectText"
				SelectText.Parent = Selects
				SelectText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SelectText.BackgroundTransparency = 1.000
				SelectText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SelectText.BorderSizePixel = 0
				SelectText.Position = UDim2.new(0, 3, 0, 0)
				SelectText.Size = UDim2.new(1, - 25, 1, 0)
				SelectText.Font = Enum.Font.GothamBold
				SelectText.Text = ""
				SelectText.TextColor3 = Color3.fromRGB(255, 255, 255)
				SelectText.TextScaled = true
				SelectText.TextSize = 1.000
				SelectText.TextWrapped = true
				UITextSizeConstraint.Parent = SelectText
				UITextSizeConstraint.MaxTextSize = 12
				Drop_Click.Name = "Drop_Click"
				Drop_Click.Parent = Selects
				Drop_Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Drop_Click.BackgroundTransparency = 1.000
				Drop_Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Drop_Click.BorderSizePixel = 0
				Drop_Click.Size = UDim2.new(1, 0, 1, 0)
				Drop_Click.Font = Enum.Font.SourceSans
				Drop_Click.Text = ""
				Drop_Click.TextColor3 = Color3.fromRGB(0, 0, 0)
				Drop_Click.TextSize = 14.000
				ImageLabel_2.Parent = Selects
				ImageLabel_2.AnchorPoint = Vector2.new(0, 0.5)
				ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel_2.BackgroundTransparency = 1.000
				ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ImageLabel_2.BorderSizePixel = 0
				ImageLabel_2.Position = UDim2.new(1, - 20, 0.5, 0)
				ImageLabel_2.Size = UDim2.new(0, 15, 0, 15)
				ImageLabel_2.Image = "rbxassetid://80845745785361"
				Library:UpdateContent(Content_6, Title_8, Dropdown)
				DropdownList.Name = "DropdownList"
				DropdownList.Parent = DropdownZone
				DropdownList.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownList.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
				DropdownList.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropdownList.BorderSizePixel = 0
				DropdownList.Position = UDim2.new(0.5, 0, 0.5, 0)
				DropdownList.Size = UDim2.new(0, 400, 0, 250)
				DropdownList.Visible = false
				UIStroke_3.Color = Color3.fromRGB(100, 100, 100)
				UIStroke_3.Transparency = 0.5
				UIStroke_3.Parent = DropdownList
				UICorner_24.CornerRadius = UDim.new(0, 5)
				UICorner_24.Parent = DropdownList
				Topbar.Name = "Topbar"
				Topbar.Parent = DropdownList
				Topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Topbar.BackgroundTransparency = 1.000
				Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Topbar.BorderSizePixel = 0
				Topbar.Size = UDim2.new(1, 0, 0, 50)
				Title_10.Name = "Title"
				Title_10.Parent = Topbar
				Title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_10.BackgroundTransparency = 1.000
				Title_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_10.BorderSizePixel = 0
				Title_10.Position = UDim2.new(0, 15, 0, 0)
				Title_10.Size = UDim2.new(1, - 200, 1, - 5)
				Title_10.Font = Enum.Font.GothamBold
				Title_10.Text = cfdropdown.Title
				Title_10.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title_10.TextSize = 14.000
				Title_10.TextWrapped = true
				Title_10.TextXAlignment = Enum.TextXAlignment.Left
				SearchFrame_2.Name = "SearchFrame"
				SearchFrame_2.Parent = Topbar
				SearchFrame_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				SearchFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SearchFrame_2.BorderSizePixel = 0
				SearchFrame_2.Position = UDim2.new(1, - 150, 0, 8)
				SearchFrame_2.Size = UDim2.new(0, 100, 0, 30)
				UICorner_25.CornerRadius = UDim.new(0, 5)
				UICorner_25.Parent = SearchFrame_2
				UIStroke_4.Color = Color3.fromRGB(100, 100, 100)
				UIStroke_4.Transparency = 0.7400000095367432
				UIStroke_4.Parent = SearchFrame_2
				IconSearch_2.Name = "IconSearch"
				IconSearch_2.Parent = SearchFrame_2
				IconSearch_2.AnchorPoint = Vector2.new(0, 0.5)
				IconSearch_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				IconSearch_2.BackgroundTransparency = 1.000
				IconSearch_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				IconSearch_2.BorderSizePixel = 0
				IconSearch_2.Position = UDim2.new(0, 10, 0.5, 0)
				IconSearch_2.Size = UDim2.new(0, 15, 0, 15)
				IconSearch_2.Image = "rbxassetid://71309835376233"
				TextBox.Parent = SearchFrame_2
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.BackgroundTransparency = 1.000
				TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0, 35, 0, 0)
				TextBox.Size = UDim2.new(1, - 35, 1, 0)
				TextBox.Font = Enum.Font.GothamBold
				TextBox.PlaceholderText = "Search..."
				TextBox.Text = ""
				TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.TextSize = 12.000
				TextBox.TextXAlignment = Enum.TextXAlignment.Left
				Click_Dropdown.Name = "Click_Dropdown"
				Click_Dropdown.Parent = Topbar
				Click_Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Click_Dropdown.BackgroundTransparency = 1.000
				Click_Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Click_Dropdown.BorderSizePixel = 0
				Click_Dropdown.Position = UDim2.new(1, - 40, 0, 8)
				Click_Dropdown.Size = UDim2.new(0, 30, 0, 30)
				Click_Dropdown.Text = ""
				Icon_4.Name = "Icon"
				Icon_4.Parent = Click_Dropdown
				Icon_4.AnchorPoint = Vector2.new(0.5, 0.5)
				Icon_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Icon_4.BackgroundTransparency = 1.000
				Icon_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Icon_4.BorderSizePixel = 0
				Icon_4.Position = UDim2.new(0.5, 0, 0.5, 0)
				Icon_4.Size = UDim2.new(0, 20, 0, 20)
				Icon_4.Image = "rbxassetid://105957381820378"
				Icon_4.ImageRectOffset = Vector2.new(480, 0)
				Icon_4.ImageRectSize = Vector2.new(96, 96)
				Real_List.Name = "Real_List"
				Real_List.Parent = DropdownList
				Real_List.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
				Real_List.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Real_List.BorderSizePixel = 0
				Real_List.Position = UDim2.new(0, 10, 0, 50)
				Real_List.Selectable = false
				Real_List.ScrollBarThickness = 0
				Real_List.Size = UDim2.new(1, - 20, 1, - 60)
				Library:UpdateScrolling(Real_List, UIListLayout_5)
				UICorner_26.CornerRadius = UDim.new(0, 5)
				UICorner_26.Parent = Real_List
				UIListLayout_5.Parent = Real_List
				UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_5.Padding = UDim.new(0, 5)
				UIPadding_5.Parent = Real_List
				UIPadding_5.PaddingBottom = UDim.new(0, 7)
				UIPadding_5.PaddingLeft = UDim.new(0, 7)
				UIPadding_5.PaddingRight = UDim.new(0, 7)
				UIPadding_5.PaddingTop = UDim.new(0, 7)
				local UICorner_29 = Instance.new("UICorner")
				UICorner_29.Parent = DropdownZone
				Drop_Click.Activated:Connect(function()
					DropdownZone.Visible = true
					DropdownList.Visible = true
					Library:TweenInstance(DropdownZone, 0.3, "BackgroundTransparency", 0.3)
				end)
				Click_Dropdown.Activated:Connect(function()
					DropdownList.Visible = false
					Library:TweenInstance(DropdownZone, 0.3, "BackgroundTransparency", 1)
					wait(0.3)
					DropdownZone.Visible = false
				end)
				local DropFunc = {
					Value = cfdropdown.Default
				}
				function DropFunc:Set(cc)
					DropFunc.Value = cc or DropFunc.Value
					for i, v in next, Real_List:GetChildren() do
						if v:IsA("Frame") then
							if table.find(DropFunc.Value, v.Title.Text) then
								Library:TweenInstance(v, 0.3, "BackgroundTransparency", 0)
								Library:TweenInstance(v.Title, 0.3, "TextTransparency", 0)
							else
								Library:TweenInstance(v, 0.3, "BackgroundTransparency", 0.98)
								Library:TweenInstance(v.Title, 0.3, "TextTransparency", 0.5)
							end
						end
					end
					local DropValue = table.concat(DropFunc.Value, ",")
					if DropValue == "" then
						SelectText.Text = ""
					else
						SelectText.Text = DropValue
					end
					cfdropdown.Callback(cfdropdown.Multi and DropFunc.Value or table.concat(DropFunc.Value, ""))
				end
				TextBox:GetPropertyChangedSignal("Text"):Connect(function()
					local query = string.lower(TextBox.Text)
					for _, v in next, Real_List:GetChildren() do
						if v:IsA("Frame") and v:FindFirstChild("Title") then
							local text = string.lower(v.Title.Text)
							v.Visible = query == "" or string.find(text, query) ~= nil
						end
					end
				end)
				function DropFunc:Add(v)
					local Option2 = Instance.new("Frame")
					local UICorner_28 = Instance.new("UICorner")
					local Option2_Click = Instance.new("TextButton")
					local Title_12 = Instance.new("TextLabel")
					local UIGradient_3 = Instance.new("UIGradient")
					Option2.Name = "Option 2"
					Option2.Parent = Real_List
					Option2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Option2.BackgroundTransparency = 0.980
					Option2.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Option2.BorderSizePixel = 0
					Option2.Size = UDim2.new(1, 0, 0, 35)
					UICorner_28.CornerRadius = UDim.new(0, 4)
					UICorner_28.Parent = Option2
					Option2_Click.Name = "Option2_Click"
					Option2_Click.Parent = Option2
					Option2_Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Option2_Click.BackgroundTransparency = 1.000
					Option2_Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Option2_Click.BorderSizePixel = 0
					Option2_Click.Size = UDim2.new(1, 0, 1, 0)
					Option2_Click.Font = Enum.Font.SourceSans
					Option2_Click.Text = ""
					Option2_Click.TextColor3 = Color3.fromRGB(0, 0, 0)
					Option2_Click.TextSize = 14.000
					Title_12.Name = "Title"
					Title_12.Parent = Option2
					Title_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Title_12.BackgroundTransparency = 1.000
					Title_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Title_12.BorderSizePixel = 0
					Title_12.Size = UDim2.new(1, 0, 1, 0)
					Title_12.Font = Enum.Font.GothamBold
					Title_12.Text = v
					Title_12.TextColor3 = Color3.fromRGB(255, 255, 255)
					Title_12.TextSize = 13.000
					Title_12.TextTransparency = 0.500
					UIGradient_3.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)),
						ColorSequenceKeypoint.new(0.51, Color3.fromRGB(255, 0, 0)),
						ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))
					}
					UIGradient_3.Rotation = 0.9900000095367432
					UIGradient_3.Transparency = NumberSequence.new{
						NumberSequenceKeypoint.new(0.00, 0.50),
						NumberSequenceKeypoint.new(0.50, 0.49),
						NumberSequenceKeypoint.new(1.00, 0.44)
					}
					UIGradient_3.Parent = Option2
					Option2_Click.Activated:Connect(function()
						if cfdropdown.Multi then
							if Option2.BackgroundTransparency < 0.950 then
								for i, v in next, DropFunc.Value do
									if v == Title_12.Text then
										table.remove(DropFunc.Value, i)
									end
								end
								DropFunc:Set(DropFunc.Value)
							else
								table.insert(DropFunc.Value, Title_12.Text)
								DropFunc:Set(DropFunc.Value)
							end
						else
							DropFunc.Value = {
								Title_12.Text
							}
							DropFunc:Set(DropFunc.Value)
						end
					end)
				end
				function DropFunc:Clear()
					for i, v in next, Real_List:GetChildren() do
						if v:IsA("Frame") then
							v:Destroy()
						end
					end
				end
				function DropFunc:Refresh(NewList)
					self:Clear()
					for i, v in next, NewList do
						self:Add(v)
					end
				end
				DropFunc:Refresh(cfdropdown.Values)
				DropFunc:Set(typeof(cfdropdown.Default) == "string" and {
					cfdropdown.Default
				} or cfdropdown.Default)
				return DropFunc
			end
			function SectionFunc:AddInput(cfinput)
				local cfinput = Library:MakeConfig({
					Title = "Input",
					Description = "",
					Placeholder = "",
					Default = "",
					ClearTextOnFocus = false,
					Numeric = false,
					MaxLength = nil,
					Callback = function()
					end
				}, cfinput or {})
				local Input = Instance.new("Frame")
				local InputCorner = Instance.new("UICorner")
				local InputTitle = Instance.new("TextLabel")
				local InputDesc = Instance.new("TextLabel")
				local InputBoxFrame = Instance.new("Frame")
				local InputBoxCorner = Instance.new("UICorner")
				local InputBoxStroke = Instance.new("UIStroke")
				local InputBox = Instance.new("TextBox")
				local InputFunc = {}
				Input.Name = "Input"
				Input.Parent = SectionList
				Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Input.BackgroundTransparency = 0.950
				Input.BorderSizePixel = 0
				Input.Size = UDim2.new(1, 0, 0, 35)
				InputCorner.CornerRadius = UDim.new(0, 3)
				InputCorner.Parent = Input
				InputTitle.Name = "InputTitle"
				InputTitle.Parent = Input
				InputTitle.BackgroundTransparency = 1
				InputTitle.Position = UDim2.new(0, 10, 0, 0)
				InputTitle.Size = UDim2.new(1, - 160, 0, 16)
				InputTitle.Font = Enum.Font.GothamBold
				InputTitle.Text = cfinput.Title
				InputTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				InputTitle.TextSize = 13
				InputTitle.TextXAlignment = Enum.TextXAlignment.Left
				InputDesc.Name = "InputDesc"
				InputDesc.Parent = Input
				InputDesc.BackgroundTransparency = 1
				InputDesc.Position = UDim2.new(0, 10, 0, 22)
				InputDesc.Size = UDim2.new(1, - 160, 0, 14)
				InputDesc.Font = Enum.Font.GothamBold
				InputDesc.Text = cfinput.Description
				InputDesc.TextColor3 = Color3.fromRGB(100, 100, 100)
				InputDesc.TextSize = 12
				InputDesc.TextXAlignment = Enum.TextXAlignment.Left
				InputDesc.TextYAlignment = Enum.TextYAlignment.Top
				Library:UpdateContent(InputDesc, InputTitle, Input)
				InputBoxFrame.Name = "InputBoxFrame"
				InputBoxFrame.Parent = Input
				InputBoxFrame.AnchorPoint = Vector2.new(0, 0.5)
				InputBoxFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				InputBoxFrame.BorderSizePixel = 0
				InputBoxFrame.Position = UDim2.new(1, - 140, 0.5, 0)
				InputBoxFrame.Size = UDim2.new(0, 130, 0, 28)
				InputBoxCorner.CornerRadius = UDim.new(0, 4)
				InputBoxCorner.Parent = InputBoxFrame
				InputBoxStroke.Parent = InputBoxFrame
				InputBoxStroke.Color = Color3.fromRGB(40, 40, 40)
				InputBoxStroke.Thickness = 1
				InputBox.Name = "InputBox"
				InputBox.Parent = InputBoxFrame
				InputBox.BackgroundTransparency = 1
				InputBox.Position = UDim2.new(0, 10, 0, 0)
				InputBox.Size = UDim2.new(1, - 20, 1, 0)
				InputBox.ClearTextOnFocus = cfinput.ClearTextOnFocus
				InputBox.Font = Enum.Font.GothamBold
				InputBox.PlaceholderText = cfinput.Placeholder
				InputBox.Text = tostring(cfinput.Default)
				InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				InputBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
				InputBox.TextSize = 12
				InputBox.TextXAlignment = Enum.TextXAlignment.Left
				InputBox.Focused:Connect(function()
					game:GetService("TweenService"):Create(
			InputBoxStroke, TweenInfo.new(0.15), {
						Color = Color3.fromRGB(255, 0, 0)
					}):Play()
				end)
				InputBox.FocusLost:Connect(function()
					game:GetService("TweenService"):Create(
			InputBoxStroke, TweenInfo.new(0.15), {
						Color = Color3.fromRGB(40, 40, 40)
					}):Play()
					local Text = InputBox.Text
					if cfinput.Numeric then
						Text = Text:gsub("[^%d%.%-]", "")
						InputBox.Text = Text
					end
					if cfinput.MaxLength then
						Text = string.sub(Text, 1, cfinput.MaxLength)
						InputBox.Text = Text
					end
					cfinput.Callback(Text)
				end)
				InputBox:GetPropertyChangedSignal("Text"):Connect(function()
					local Text = InputBox.Text
					if cfinput.Numeric then
						local Filtered = Text:gsub("[^%d%.%-]", "")
						if Filtered ~= Text then
							InputBox.Text = Filtered
						end
					end
					if cfinput.MaxLength and # Text > cfinput.MaxLength then
						InputBox.Text = string.sub(Text, 1, cfinput.MaxLength)
					end
				end)
				function InputFunc:SetTitle(text)
					InputTitle.Text = tostring(text)
				end
				function InputFunc:SetDesc(text)
					InputDesc.Text = tostring(text)
				end
				function InputFunc:SetText(text)
					InputBox.Text = tostring(text)
				end
				function InputFunc:GetText()
					return InputBox.Text
				end
				function InputFunc:Clear()
					InputBox.Text = ""
				end
				cfinput.Callback(InputBox.Text)
				return InputFunc
			end
			function SectionFunc:AddSlider(cfslider)
				local cfslider = Library:MakeConfig({
					Title = "Slider < Missing Title >",
					Description = "",
					Max = 100,
					Min = 1,
					Increment = 1,
					Default = 1,
					iOS = true,
					Tooltip = true,
					Callback = function()
					end
				}, cfslider or {})
				local Slider = Instance.new("Frame")
				local SliderCorner = Instance.new("UICorner")
				local SliderTitle = Instance.new("TextLabel")
				local SliderDesc = Instance.new("TextLabel")
				local SliderFrame = Instance.new("Frame")
				local SliderFrameCorner = Instance.new("UICorner")
				local SliderDrag = Instance.new("Frame")
				local SliderDragCorner = Instance.new("UICorner")
				local SliderCircle = Instance.new("Frame")
				local SliderCircleCorner = Instance.new("UICorner")
				local SliderValue = Instance.new("TextBox")
				local SliderValueCorner = Instance.new("UICorner")
				Slider.Name = "Slider"
				Slider.Parent = SectionList
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 0.950
				Slider.BorderSizePixel = 0
				Slider.Size = UDim2.new(1, 0, 0, 35)
				SliderCorner.CornerRadius = UDim.new(0, 3)
				SliderCorner.Parent = Slider
				SliderTitle.Name = "SliderTitle"
				SliderTitle.Parent = Slider
				SliderTitle.BackgroundTransparency = 1
				SliderTitle.Position = UDim2.new(0, 10, 0, 0)
				SliderTitle.Size = UDim2.new(1, - 60, 1, 0)
				SliderTitle.Font = Enum.Font.GothamBold
				SliderTitle.Text = cfslider.Title
				SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderTitle.TextSize = 13
				SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
				SliderDesc.Name = "SliderDesc"
				SliderDesc.Parent = Slider
				SliderDesc.BackgroundTransparency = 1
				SliderDesc.Position = UDim2.new(0, 10, 0, 22)
				SliderDesc.Size = UDim2.new(1, - 160, 1, 0)
				SliderDesc.Font = Enum.Font.GothamBold
				SliderDesc.Text = cfslider.Description
				SliderDesc.TextColor3 = Color3.fromRGB(100, 100, 100)
				SliderDesc.TextSize = 12
				SliderDesc.TextXAlignment = Enum.TextXAlignment.Left
				SliderDesc.TextYAlignment = Enum.TextYAlignment.Top
				Library:UpdateContent(SliderDesc, SliderTitle, Slider)
				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = Slider
				SliderFrame.AnchorPoint = Vector2.new(0, 0.5)
				SliderFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(1, - 145, 0.5, 0)
				SliderFrame.Size = UDim2.new(0, 130, 0, 8)
				SliderFrameCorner.CornerRadius = UDim.new(1, 0)
				SliderFrameCorner.Parent = SliderFrame
				SliderDrag.Name = "SliderDrag"
				SliderDrag.Parent = SliderFrame
				SliderDrag.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				SliderDrag.BorderSizePixel = 0
				SliderDrag.Size = UDim2.new(0, 0, 1, 0)
				SliderDragCorner.CornerRadius = UDim.new(1, 0)
				SliderDragCorner.Parent = SliderDrag
				SliderCircle.Name = "SliderCircle"
				SliderCircle.Parent = SliderDrag
				SliderCircle.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderCircle.BorderSizePixel = 0
				SliderCircle.Position = UDim2.new(1, 0, 0.5, 0)
				if cfslider.iOS == true then
					SliderCircle.Size = UDim2.new(0, 18, 0, 10)
				else
					SliderCircle.Size = UDim2.new(0, 14, 0, 14)
				end
				SliderCircleCorner.CornerRadius = UDim.new(1, 0)
				SliderCircleCorner.Parent = SliderCircle
				SliderValue.Name = "SliderValue"
				SliderValue.Parent = Slider
				SliderValue.AnchorPoint = Vector2.new(0, 0.5)
				SliderValue.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				SliderValue.BorderSizePixel = 0
				SliderValue.Position = UDim2.new(1, - 195, 0.5, 0)
				SliderValue.Size = UDim2.new(0, 35, 0, 20)
				SliderValue.Font = Enum.Font.GothamBold
				SliderValue.PlaceholderText = "..."
				SliderValue.Text = ""
				SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.TextSize = 11
				SliderValueCorner.CornerRadius = UDim.new(0, 2)
				SliderValueCorner.Parent = SliderValue
				if not cfslider.Tooltip then
					SliderValue.Visible = false
					SliderFrame.Position = UDim2.new(1, - 145, 0.5, 0)
				else
					SliderFrame.Position = UDim2.new(1, - 145, 0.5, 0)
				end
				local SliderFunc = {
					Value = cfslider.Default
				}
				local Dragging = false
				local function Round(Number, Factor)
					local Result = math.floor(Number / Factor + (math.sign(Number) * 0.5)) * Factor
					return Result < 0 and Result + Factor or Result
				end
				function SliderFunc:Set(Value)
					Value = math.clamp(Round(Value, cfslider.Increment), cfslider.Min, cfslider.Max)
					SliderFunc.Value = Value
					SliderValue.Text = tostring(Value)
					local Percent = (Value - cfslider.Min) / (cfslider.Max - cfslider.Min)
					game:GetService("TweenService"):Create(
			SliderDrag, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = UDim2.fromScale(Percent, 1)
					}):Play()
				end
				SliderFrame.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						Dragging = true
						local SizeScale = math.clamp((Input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1)
						SliderFunc:Set(cfslider.Min + ((cfslider.Max - cfslider.Min) * SizeScale))
					end
				end)
				game:GetService("UserInputService").InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						if Dragging then
							Dragging = false
							cfslider.Callback(SliderFunc.Value)
						end
					end
				end)
				game:GetService("UserInputService").InputChanged:Connect(function(Input)
					if Dragging and (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
						local SizeScale = math.clamp((Input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1)
						SliderFunc:Set(cfslider.Min + ((cfslider.Max - cfslider.Min) * SizeScale))
					end
				end)
				SliderValue.FocusLost:Connect(function()
					local Number = tonumber(SliderValue.Text)
					if Number then
						SliderFunc:Set(Number)
						cfslider.Callback(SliderFunc.Value)
					else
						SliderValue.Text = tostring(SliderFunc.Value)
					end
				end)
				SliderFunc:Set(cfslider.Default)
				return SliderFunc
			end
			function SectionFunc:AddSeperator(args)
				local cfg = Library:MakeConfig({
					Title = "",
					Border = true,
					TextAlignment = "Left",
					Icon = ""
				}, args or {})
				local SepRoot = Instance.new("Frame")
				local SepCorner = Instance.new("UICorner")
				local SepStroke = Instance.new("UIStroke")
				local SepLayout = Instance.new("UIListLayout")
				local SepIcon = Instance.new("ImageLabel")
				local SepTitle = Instance.new("TextLabel")
				SepRoot.Name = "SepRoot"
				SepRoot.Parent = SectionList
				SepRoot.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				SepRoot.BackgroundTransparency = 0.6
				SepRoot.BorderSizePixel = 0
				SepRoot.Size = UDim2.new(1, 0, 0, 22)
				SepCorner.CornerRadius = UDim.new(0, 3)
				SepCorner.Parent = SepRoot
				SepStroke.Parent = SepRoot
				SepStroke.Color = Color3.fromRGB(100, 100, 100)
				SepStroke.Thickness = 1
				SepStroke.Enabled = cfg.Border
				SepStroke.Transparency = 0.8
				SepLayout.Parent = SepRoot
				SepLayout.FillDirection = Enum.FillDirection.Horizontal
				SepLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				SepLayout.SortOrder = Enum.SortOrder.LayoutOrder
				SepLayout.Padding = UDim.new(0, 6)
				SepIcon.Name = "SepIcon"
				SepIcon.Parent = SepRoot
				SepIcon.BackgroundTransparency = 1
				SepIcon.Size = UDim2.new(0, 14, 0, 14)
				SepIcon.Image = cfg.Icon
				SepIcon.Visible = cfg.Icon ~= ""
				SepTitle.Name = "SepTitle"
				SepTitle.Parent = SepRoot
				SepTitle.BackgroundTransparency = 1
				SepTitle.Font = Enum.Font.GothamBold
				SepTitle.Text = cfg.Title
				SepTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				SepTitle.TextSize = 13
				SepTitle.AutomaticSize = Enum.AutomaticSize.X
				SepTitle.Size = UDim2.new(0, 0, 1, 0)
				if cfg.TextAlignment == "Left" then
					SepLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
				elseif cfg.TextAlignment == "Middle" then
					SepLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				elseif cfg.TextAlignment == "Right" then
					SepLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
				end
			end
			function SectionFunc:AddDivider()
				local DividerLine = Instance.new("Frame")
				local UIGradientttt = Instance.new("UIGradient")
				DividerLine.Name = "Line"
				DividerLine.Parent = SectionList
				DividerLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DividerLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DividerLine.BorderSizePixel = 0
				DividerLine.Position = UDim2.new(0, 0, 1, - 2)
				DividerLine.Size = UDim2.new(1, 0, 0, 2)
				UIGradientttt.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 25)),
					ColorSequenceKeypoint.new(0.52, Color3.fromRGB(255, 0, 0)),
					ColorSequenceKeypoint.new(1.00, Color3.fromRGB(24, 24, 25))
				}
				UIGradientttt.Transparency = NumberSequence.new{
					NumberSequenceKeypoint.new(0.00, 0.53),
					NumberSequenceKeypoint.new(0.51, 0.00),
					NumberSequenceKeypoint.new(1.00, 0.51)
				}
				UIGradientttt.Parent = DividerLine
			end
			function SectionFunc:AddParagraph(cfpara)
				local cfpara = Library:MakeConfig({
					Title = "Paragraph < Missing Title >",
					Content = ""
				}, cfpara or {})
				local Paragraph = Instance.new("Frame")
				local UICorner_16 = Instance.new("UICorner")
				local Title_6 = Instance.new("TextLabel")
				local Content_4 = Instance.new("TextLabel")
				local UIPadding = Instance.new("UIPadding")
				local ParaFunc = {}
				Paragraph.Name = "Paragraph"
				Paragraph.Parent = SectionList
				Paragraph.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Paragraph.BackgroundTransparency = 0.950
				Paragraph.BorderSizePixel = 0
				Paragraph.Size = UDim2.new(1, 0, 0, 0)
				Paragraph.AutomaticSize = Enum.AutomaticSize.Y
				UICorner_16.CornerRadius = UDim.new(0, 3)
				UICorner_16.Parent = Paragraph
				UIPadding.Parent = Paragraph
				UIPadding.PaddingLeft = UDim.new(0, 10)
				UIPadding.PaddingRight = UDim.new(0, 10)
				UIPadding.PaddingTop = UDim.new(0, 7)
				UIPadding.PaddingBottom = UDim.new(0, 10)
				Title_6.Name = "Title"
				Title_6.Parent = Paragraph
				Title_6.BackgroundTransparency = 1.000
				Title_6.Size = UDim2.new(1, 0, 0, 16)
				Title_6.Font = Enum.Font.GothamBold
				Title_6.Text = cfpara.Title
				Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title_6.TextSize = 13.000
				Title_6.RichText = true
				Title_6.TextXAlignment = Enum.TextXAlignment.Left
				Title_6.TextWrapped = true
				Content_4.Name = "Content"
				Content_4.Parent = Paragraph
				Content_4.BackgroundTransparency = 1.000
				Content_4.Position = UDim2.new(0, 0, 0, 18)
				Content_4.Size = UDim2.new(1, 0, 0, 0)
				Content_4.AutomaticSize = Enum.AutomaticSize.Y
				Content_4.Font = Enum.Font.GothamBold
				Content_4.Text = cfpara.Content
				Content_4.TextColor3 = Color3.fromRGB(100, 100, 100)
				Content_4.TextSize = 12.000
				Content_4.RichText = true
				Content_4.TextXAlignment = Enum.TextXAlignment.Left
				Content_4.TextYAlignment = Enum.TextYAlignment.Top
				Content_4.TextWrapped = true
				function ParaFunc:SetTitle(args)
					Title_6.Text = args
				end
				function ParaFunc:SetDesc(args)
					Content_4.Text = args
				end
				return ParaFunc
			end
			function SectionFunc:AddSpace(space)
				local Space = Instance.new("Frame")
				Space.Name = "Space"
				Space.Parent = SectionList
				Space.BackgroundTransparency = 1.000
				Space.BorderSizePixel = 0
				Space.Size = UDim2.new(1, 0, 0, space or 5)
			end
			function SectionFunc:AddList(cflist)
				local cflist = Library:MakeConfig({
					Title = "List < Missing Title >",
					Content = {}
				}, cflist or {})
				local List = Instance.new("Frame")
				local UICorner_169 = Instance.new("UICorner")
				local UIPadding839 = Instance.new("UIPadding")
				local Title_76 = Instance.new("TextLabel")
				local ContentHolder = Instance.new("ScrollingFrame")
				local UIListLayoutOur = Instance.new("UIListLayout")
				local ListFunc = {}
				List.Name = "List"
				List.Parent = SectionList
				List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				List.BackgroundTransparency = 0.950
				List.BorderSizePixel = 0
				List.Size = UDim2.new(1, 0, 0, 0)
				List.AutomaticSize = Enum.AutomaticSize.Y
				UICorner_169.CornerRadius = UDim.new(0, 3)
				UICorner_169.Parent = List
				UIPadding839.Parent = List
				UIPadding839.PaddingLeft = UDim.new(0, 10)
				UIPadding839.PaddingRight = UDim.new(0, 10)
				UIPadding839.PaddingTop = UDim.new(0, 7)
				UIPadding839.PaddingBottom = UDim.new(0, 10)
				Title_76.Name = "Title"
				Title_76.Parent = List
				Title_76.BackgroundTransparency = 1
				Title_76.Size = UDim2.new(1, 0, 0, 16)
				Title_76.Font = Enum.Font.GothamBold
				Title_76.Text = cflist.Title
				Title_76.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title_76.TextSize = 13
				Title_76.RichText = true
				Title_76.TextXAlignment = Enum.TextXAlignment.Left
				Title_76.TextWrapped = true
				ContentHolder.Name = "ContentHolder"
				ContentHolder.Parent = List
				ContentHolder.BackgroundTransparency = 1
				ContentHolder.BorderSizePixel = 0
				ContentHolder.Position = UDim2.new(0, 0, 0, 22)
				ContentHolder.Size = UDim2.new(1, 0, 0, 64)
				ContentHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
				ContentHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
				ContentHolder.ScrollBarThickness = 3
				ContentHolder.ScrollBarImageColor3 = Color3.fromRGB(120, 120, 120)
				ContentHolder.ScrollingDirection = Enum.ScrollingDirection.Y
				UIListLayoutOur.Parent = ContentHolder
				UIListLayoutOur.Padding = UDim.new(0, 2)
				UIListLayoutOur.SortOrder = Enum.SortOrder.LayoutOrder
				local function RefreshList()
					for _, v in ipairs(ContentHolder:GetChildren()) do
						if v:IsA("TextLabel") then
							v:Destroy()
						end
					end
					for _, text in ipairs(cflist.Content) do
						local Item = Instance.new("TextLabel")
						Item.Parent = ContentHolder
						Item.BackgroundTransparency = 1
						Item.Size = UDim2.new(1, - 4, 0, 14)
						Item.Font = Enum.Font.GothamBold
						Item.Text = tostring(text)
						Item.TextColor3 = Color3.fromRGB(100, 100, 100)
						Item.TextSize = 12
						Item.RichText = true
						Item.TextWrapped = false
						Item.TextXAlignment = Enum.TextXAlignment.Left
					end
				end
				RefreshList()
				function ListFunc:SetTitle(args)
					Title_76.Text = args
				end
				function ListFunc:SetList(args)
					cflist.Content = args or {}
					RefreshList()
				end
				function ListFunc:Add(args)
					table.insert(cflist.Content, tostring(args))
					RefreshList()
				end
				function ListFunc:Clear()
					table.clear(cflist.Content)
					RefreshList()
				end
				return ListFunc
			end
			function SectionFunc:AddStats(cfstats)
				local cfstats = Library:MakeConfig({
					Title = "Stats < Missing Title >",
					StatsList = {}
				}, cfstats or {})
				local Stats = Instance.new("Frame")
				local StatsCorner = Instance.new("UICorner")
				local StatsPadding = Instance.new("UIPadding")
				local StatsTitle = Instance.new("TextLabel")
				local StatsHolder = Instance.new("Frame")
				local UIListLayout = Instance.new("UIListLayout")
				local StatsFunc = {}
				local StatObjects = {}
				Stats.Name = "Stats"
				Stats.Parent = SectionList
				Stats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Stats.BackgroundTransparency = 0.950
				Stats.BorderSizePixel = 0
				Stats.Size = UDim2.new(1, 0, 0, 0)
				Stats.AutomaticSize = Enum.AutomaticSize.Y
				StatsCorner.CornerRadius = UDim.new(0, 3)
				StatsCorner.Parent = Stats
				StatsPadding.Parent = Stats
				StatsPadding.PaddingLeft = UDim.new(0, 10)
				StatsPadding.PaddingRight = UDim.new(0, 10)
				StatsPadding.PaddingTop = UDim.new(0, 7)
				StatsPadding.PaddingBottom = UDim.new(0, 10)
				StatsTitle.Name = "Title"
				StatsTitle.Parent = Stats
				StatsTitle.BackgroundTransparency = 1
				StatsTitle.Size = UDim2.new(1, 0, 0, 16)
				StatsTitle.Font = Enum.Font.GothamBold
				StatsTitle.Text = cfstats.Title
				StatsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				StatsTitle.TextSize = 13
				StatsTitle.RichText = true
				StatsTitle.TextXAlignment = Enum.TextXAlignment.Left
				StatsTitle.TextWrapped = true
				StatsHolder.Name = "StatsHolder"
				StatsHolder.Parent = Stats
				StatsHolder.BackgroundTransparency = 1
				StatsHolder.Position = UDim2.new(0, 0, 0, 22)
				StatsHolder.Size = UDim2.new(1, 0, 0, 0)
				StatsHolder.AutomaticSize = Enum.AutomaticSize.Y
				UIListLayout.Parent = StatsHolder
				UIListLayout.Padding = UDim.new(0, 4)
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				local function CreateStat(id, data)
					local Row = Instance.new("Frame")
					local NameLabel = Instance.new("TextLabel")
					local ValueLabel = Instance.new("TextLabel")
					Row.Name = id
					Row.Parent = StatsHolder
					Row.BackgroundTransparency = 1
					Row.Size = UDim2.new(1, 0, 0, 14)
					NameLabel.Name = "Name"
					NameLabel.Parent = Row
					NameLabel.BackgroundTransparency = 1
					NameLabel.Size = UDim2.new(0.5, 0, 1, 0)
					NameLabel.Font = Enum.Font.GothamBold
					NameLabel.Text = data.Name or id
					NameLabel.TextColor3 = Color3.fromRGB(100, 100, 100)
					NameLabel.TextSize = 12
					NameLabel.TextXAlignment = Enum.TextXAlignment.Left
					ValueLabel.Name = "Value"
					ValueLabel.Parent = Row
					ValueLabel.BackgroundTransparency = 1
					ValueLabel.Position = UDim2.new(0.5, 0, 0, 0)
					ValueLabel.Size = UDim2.new(0.5, 0, 1, 0)
					ValueLabel.Font = Enum.Font.GothamBold
					ValueLabel.Text = data.Value or ""
					ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					ValueLabel.TextSize = 12
					ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
					StatObjects[id] = {
						Row = Row,
						Name = NameLabel,
						Value = ValueLabel
					}
				end
				for id, data in pairs(cfstats.StatsList) do
					CreateStat(id, data)
				end
				function StatsFunc:SetTitle(text)
					StatsTitle.Text = text
				end
				function StatsFunc:SetValue(id, value)
					if StatObjects[id] then
						StatObjects[id].Value.Text = tostring(value)
					end
				end
				function StatsFunc:SetName(id, name)
					if StatObjects[id] then
						StatObjects[id].Name.Text = tostring(name)
					end
				end
				function StatsFunc:AddStat(id, data)
					if not StatObjects[id] then
						CreateStat(id, data)
					end
				end
				function StatsFunc:RemoveStat(id)
					if StatObjects[id] then
						StatObjects[id].Row:Destroy()
						StatObjects[id] = nil
					end
				end
				return StatsFunc
			end
			function SectionFunc:AddChangelogs(cfchangelogs)
				local cfchangelogs = Library:MakeConfig({
					Title = "Changelogs",
					Description = "",
					PrevVersion = "v0.0",
					NewVersion = "v0.1",
					Hint = "[+] Added [-] Removed [/] Fixed [*] Changed",
					Lines = {}
				}, cfchangelogs or {})
				local Changelogs = Instance.new("Frame")
				local ChangelogCorner = Instance.new("UICorner")
				local ChangelogPadding = Instance.new("UIPadding")
				local ChangelogTitle = Instance.new("TextLabel")
				local ChangelogDesc = Instance.new("TextLabel")
				local VersionLabel = Instance.new("TextLabel")
				local HintLabel = Instance.new("TextLabel")
				local LogsHolder = Instance.new("ScrollingFrame")
				local LogsLayout = Instance.new("UIListLayout")
				local LogsCorner = Instance.new("UICorner")
				local LogsPadding = Instance.new("UIPadding")
				local ChangelogFunc = {}
				Changelogs.Name = "Changelogs"
				Changelogs.Parent = SectionList
				Changelogs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Changelogs.BackgroundTransparency = 0.95
				Changelogs.BorderSizePixel = 0
				Changelogs.Size = UDim2.new(1, 0, 0, 0)
				Changelogs.AutomaticSize = Enum.AutomaticSize.Y
				ChangelogCorner.CornerRadius = UDim.new(0, 3)
				ChangelogCorner.Parent = Changelogs
				ChangelogPadding.Parent = Changelogs
				ChangelogPadding.PaddingLeft = UDim.new(0, 10)
				ChangelogPadding.PaddingRight = UDim.new(0, 10)
				ChangelogPadding.PaddingTop = UDim.new(0, 7)
				ChangelogPadding.PaddingBottom = UDim.new(0, 10)
				ChangelogTitle.Name = "ChangelogTitle"
				ChangelogTitle.Parent = Changelogs
				ChangelogTitle.BackgroundTransparency = 1
				ChangelogTitle.Size = UDim2.new(0.5, 0, 0, 16)
				ChangelogTitle.Font = Enum.Font.GothamBold
				ChangelogTitle.Text = cfchangelogs.Title
				ChangelogTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				ChangelogTitle.TextSize = 13
				ChangelogTitle.TextXAlignment = Enum.TextXAlignment.Left
				ChangelogDesc.Name = "ChangelogDesc"
				ChangelogDesc.Parent = Changelogs
				ChangelogDesc.BackgroundTransparency = 1
				ChangelogDesc.Position = UDim2.new(0, 0, 0, 18)
				ChangelogDesc.Size = UDim2.new(1, - 120, 0, 14)
				ChangelogDesc.Font = Enum.Font.GothamBold
				ChangelogDesc.Text = cfchangelogs.Description
				ChangelogDesc.TextColor3 = Color3.fromRGB(120, 120, 120)
				ChangelogDesc.TextSize = 12
				ChangelogDesc.TextXAlignment = Enum.TextXAlignment.Left
				ChangelogDesc.TextWrapped = true
				VersionLabel.Name = "VersionLabel"
				VersionLabel.Parent = Changelogs
				VersionLabel.BackgroundTransparency = 1
				VersionLabel.Position = UDim2.new(0.5, 0, 0, 0)
				VersionLabel.Size = UDim2.new(0.5, 0, 0, 16)
				VersionLabel.Font = Enum.Font.GothamBold
				VersionLabel.Text = cfchangelogs.PrevVersion .. " >> " .. cfchangelogs.NewVersion
				VersionLabel.TextColor3 = Color3.fromRGB(100, 100, 100)
				VersionLabel.TextSize = 12
				VersionLabel.TextXAlignment = Enum.TextXAlignment.Right
				HintLabel.Name = "HintLabel"
				HintLabel.Parent = Changelogs
				HintLabel.BackgroundTransparency = 1
				HintLabel.Position = UDim2.new(0, 0, 0, 34)
				HintLabel.Size = UDim2.new(1, 0, 0, 12)
				HintLabel.Font = Enum.Font.GothamBold
				HintLabel.Text = cfchangelogs.Hint
				HintLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
				HintLabel.TextSize = 10
				HintLabel.TextXAlignment = Enum.TextXAlignment.Left
				LogsHolder.Name = "LogsHolder"
				LogsHolder.Parent = Changelogs
				LogsHolder.BackgroundTransparency = 0.92
				LogsHolder.BorderSizePixel = 0
				LogsHolder.Position = UDim2.new(0, 0, 0, 50)
				LogsHolder.Size = UDim2.new(1, 0, 0, 90)
				LogsHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
				LogsHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
				LogsHolder.ScrollBarThickness = 2
				LogsHolder.ScrollBarImageColor3 = Color3.fromRGB(140, 140, 140)
				LogsHolder.ScrollingDirection = Enum.ScrollingDirection.Y
				LogsCorner.CornerRadius = UDim.new(0, 3)
				LogsCorner.Parent = LogsHolder
				LogsPadding.Parent = LogsHolder
				LogsPadding.PaddingTop = UDim.new(0, 6)
				LogsPadding.PaddingLeft = UDim.new(0, 6)
				LogsPadding.PaddingRight = UDim.new(0, 6)
				LogsPadding.PaddingBottom = UDim.new(0, 6)
				LogsLayout.Parent = LogsHolder
				LogsLayout.Padding = UDim.new(0, 3)
				LogsLayout.SortOrder = Enum.SortOrder.LayoutOrder
				local function GetPrefix(t)
					if t == "Add" then
						return "<font color='rgb(0,255,0)'>[+]</font>"
					elseif t == "Remove" then
						return "<font color='rgb(255,0,0)'>[-]</font>"
					elseif t == "Fix" then
						return "<font color='rgb(0,170,255)'>[/]</font>"
					elseif t == "Change" then
						return "<font color='rgb(255,170,0)'>[*]</font>"
					end
					return "[?]"
				end
				for _, v in ipairs(cfchangelogs.Lines) do
					local Log = Instance.new("TextLabel")
					Log.Parent = LogsHolder
					Log.BackgroundTransparency = 1
					Log.AutomaticSize = Enum.AutomaticSize.Y
					Log.Size = UDim2.new(1, 0, 0, 14)
					Log.Font = Enum.Font.GothamBold
					Log.RichText = true
					Log.Text = GetPrefix(v.Type) .. " " .. tostring(v.Desc)
					Log.TextColor3 = Color3.fromRGB(220, 220, 220)
					Log.TextSize = 12
					Log.TextXAlignment = Enum.TextXAlignment.Left
					Log.TextWrapped = true
				end
				LogsLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					LogsHolder.CanvasSize = UDim2.new(0, 0, 0, LogsLayout.AbsoluteContentSize.Y + 6)
				end)
				function ChangelogFunc:SetTitle(text)
					ChangelogTitle.Text = tostring(text)
				end
				function ChangelogFunc:SetDescription(text)
					ChangelogDesc.Text = tostring(text)
				end
				function ChangelogFunc:SetVersions(oldV, newV)
					VersionLabel.Text = tostring(oldV) .. " >> " .. tostring(newV)
				end
				function ChangelogFunc:AddLine(v)
					local Log = Instance.new("TextLabel")
					Log.Parent = LogsHolder
					Log.BackgroundTransparency = 1
					Log.AutomaticSize = Enum.AutomaticSize.Y
					Log.Size = UDim2.new(1, 0, 0, 14)
					Log.Font = Enum.Font.GothamBold
					Log.RichText = true
					Log.Text = GetPrefix(v.Type) .. " " .. tostring(v.Desc)
					Log.TextColor3 = Color3.fromRGB(220, 220, 220)
					Log.TextSize = 12
					Log.TextXAlignment = Enum.TextXAlignment.Left
					Log.TextWrapped = true
				end
				return ChangelogFunc
			end
			function SectionFunc:AddKeybind(cfkeybind)
				local cfkeybind = Library:MakeConfig({
					Title = "Keybind",
					Desc = "",
					Default = Enum.KeyCode.RightShift,
					Callback = function()
					end
				}, cfkeybind or {})
				local UIS = game:GetService("UserInputService")
				local Keybind = Instance.new("Frame")
				local KeybindCorner = Instance.new("UICorner")
				local KeybindPadding = Instance.new("UIPadding")
				local KeyTitle = Instance.new("TextLabel")
				local KeyDesc = Instance.new("TextLabel")
				local BindButton = Instance.new("TextButton")
				local KeybindFunc = {}
				local CurrentKey = cfkeybind.Default
				local Listening = false
				Keybind.Name = "Keybind"
				Keybind.Parent = SectionList
				Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Keybind.BackgroundTransparency = 0.950
				Keybind.BorderSizePixel = 0
				Keybind.Size = UDim2.new(1, 0, 0, 45)
				Keybind.AutomaticSize = Enum.AutomaticSize.Y
				KeybindCorner.CornerRadius = UDim.new(0, 3)
				KeybindCorner.Parent = Keybind
				KeybindPadding.Parent = Keybind
				KeybindPadding.PaddingLeft = UDim.new(0, 10)
				KeybindPadding.PaddingRight = UDim.new(0, 10)
				KeybindPadding.PaddingTop = UDim.new(0, 6)
				KeybindPadding.PaddingBottom = UDim.new(0, 6)
				KeyTitle.Name = "Title"
				KeyTitle.Parent = Keybind
				KeyTitle.BackgroundTransparency = 1
				KeyTitle.Size = UDim2.new(0.5, 0, 0, 16)
				KeyTitle.Font = Enum.Font.GothamBold
				KeyTitle.Text = cfkeybind.Title
				KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				KeyTitle.TextSize = 13
				KeyTitle.TextXAlignment = Enum.TextXAlignment.Left
				KeyDesc.Name = "Desc"
				KeyDesc.Parent = Keybind
				KeyDesc.BackgroundTransparency = 1
				KeyDesc.Position = UDim2.new(0, 0, 0, 18)
				KeyDesc.Size = UDim2.new(0.5, 0, 0, 14)
				KeyDesc.Font = Enum.Font.GothamBold
				KeyDesc.Text = cfkeybind.Desc
				KeyDesc.TextColor3 = Color3.fromRGB(120, 120, 120)
				KeyDesc.TextSize = 12
				KeyDesc.TextXAlignment = Enum.TextXAlignment.Left
				BindButton.Name = "BindButton"
				BindButton.Parent = Keybind
				BindButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				BindButton.BorderSizePixel = 0
				BindButton.Position = UDim2.new(1, - 80, 0.5, - 10)
				BindButton.Size = UDim2.new(0, 80, 0, 20)
				BindButton.Font = Enum.Font.GothamBold
				BindButton.Text = CurrentKey.Name
				BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				BindButton.TextSize = 12
				local BindCorner = Instance.new("UICorner")
				BindCorner.CornerRadius = UDim.new(0, 3)
				BindCorner.Parent = BindButton
				BindButton.MouseButton1Click:Connect(function()
					if Listening then
						return
					end
					Listening = true
					BindButton.Text = "..."
					local Connection
					Connection = UIS.InputBegan:Connect(function(input, gameProcessed)
						if gameProcessed then
							return
						end
						if input.UserInputType == Enum.UserInputType.Keyboard then
							CurrentKey = input.KeyCode
							BindButton.Text = CurrentKey.Name
							Listening = false
							Connection:Disconnect()
						end
					end)
				end)
				UIS.InputBegan:Connect(function(input, gameProcessed)
					if gameProcessed then
						return
					end
					if input.KeyCode == CurrentKey then
						cfkeybind.Callback()
					end
				end)
				function KeybindFunc:SetTitle(text)
					KeyTitle.Text = tostring(text)
				end
				function KeybindFunc:SetDesc(text)
					KeyDesc.Text = tostring(text)
				end
				function KeybindFunc:SetKey(key)
					CurrentKey = key
					BindButton.Text = key.Name
				end
				function KeybindFunc:GetKey()
					return CurrentKey
				end
				return KeybindFunc
			end
			return SectionFunc
		end
		return TabFunc
	end
	return Tab
end
return Library
