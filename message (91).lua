-- // this was not made by ray! credits to: xn90ubwbzuqegtn aka vfishyturtle \\ --

local LegitBotCard = Instance.new('ScreenGui', gethui())

function createCard()
	
	local healthCard = {}
	local mouse = game:GetService('Players').LocalPlayer:GetMouse()
	local Main = Instance.new('Frame', LegitBotCard)
	local MainStroke = Instance.new('UIStroke', Main)
	local MainCorner = Instance.new('UICorner', Main)
	local HeadBehind = Instance.new('Frame', Main)
	local PlayerCorner = Instance.new('UICorner', HeadBehind)
	local PlayerCorner = Instance.new('UICorner', PlayerCorner)
	local PlayerHead = Instance.new('ImageLabel', HeadBehind)
	local HealthBg = Instance.new('Frame', Main)
	local HBGConer = Instance.new('UICorner', HealthBg)
	local HBGStroke = Instance.new('UIStroke', HealthBg)
	local HealthMain = Instance.new('Frame', HealthBg)
	local HealthMainCorner = Instance.new('UICorner', HealthMain)
	local PlayerName = Instance.new('TextLabel', Main)

	LegitBotCard.Name = "LegitBotCard"
	LegitBotCard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Main.Name = "Main"
	Main.Position = UDim2.new(0.4126,0,0.3246,0)
	Main.Size = UDim2.new(0,259,0,99)
	Main.BackgroundColor3 = Color3.new(0,0,0)
	Main.BackgroundTransparency = 0.4
	Main.BorderSizePixel = 0
	Main.BorderColor3 = Color3.new(0,0,0)
	MainStroke.Color = Color3.new(0.6235,0.0863,0.0941)
	MainCorner.CornerRadius = UDim.new(0,6)
	HeadBehind.Name = "HeadBehind"
	HeadBehind.Position = UDim2.new(0.0477,0,0.1452,0)
	HeadBehind.Size = UDim2.new(0,70,0,70)
	HeadBehind.BackgroundColor3 = Color3.new(0,0,0)
	HeadBehind.BackgroundTransparency = 0.5
	HeadBehind.BorderSizePixel = 0
	HeadBehind.BorderColor3 = Color3.new(0,0,0)
	PlayerCorner.CornerRadius = UDim.new(0,4)
	PlayerCorner.CornerRadius = UDim.new(0,6)
	PlayerHead.Name = "PlayerHead"
	PlayerHead.Position = UDim2.new(0.14,0,0.1291,0)
	PlayerHead.Size = UDim2.new(0,50,0,50)
	PlayerHead.BackgroundColor3 = Color3.new(0,0,0)
	PlayerHead.BackgroundTransparency = 1
	PlayerHead.BorderSizePixel = 0
	PlayerHead.BorderColor3 = Color3.new(0,0,0)
	PlayerHead.Image = "rbxassetid://15562675340"
	PlayerHead.ZIndex = 13
	HealthBg.Name = "HealthBg"
	HealthBg.Position = UDim2.new(0.3595,0,0.3775,0)
	HealthBg.Size = UDim2.new(0,152,0,4)
	HealthBg.BackgroundColor3 = Color3.new(0,0,0)
	HealthBg.BackgroundTransparency = 0.5
	HealthBg.BorderSizePixel = 0
	HealthBg.BorderColor3 = Color3.new(0,0,0)
	HBGConer.CornerRadius = UDim.new(0,6)
	HBGStroke.Transparency = 0.36
	HealthMain.Name = "HealthMain"
	HealthMain.Size = UDim2.new(0,122,0,4)
	HealthMain.BackgroundColor3 = Color3.new(0.0784,0.7804,0.4039)
	HealthMain.BorderSizePixel = 0
	HealthMain.BorderColor3 = Color3.new(0,0,0)
	HealthMainCorner.CornerRadius = UDim.new(0,6)
	PlayerName.Name = "PlayerName"
	PlayerName.Position = UDim2.new(0.3595,0,0.1414,0)
	PlayerName.Size = UDim2.new(0,94,0,22)
	PlayerName.BackgroundColor3 = Color3.new(1,1,1)
	PlayerName.BackgroundTransparency = 1
	PlayerName.BorderSizePixel = 0
	PlayerName.BorderColor3 = Color3.new(0,0,0)
	PlayerName.Text = "1auta"
	PlayerName.TextColor3 = Color3.new(1,1,1)
	PlayerName.Font = Enum.Font.SourceSans
	PlayerName.TextSize = 14
	PlayerName.TextXAlignment = Enum.TextXAlignment.Left
	
	function healthCard:UpdateName(name)
		PlayerName.Text = tostring(name)
	end
	
	function healthCard:UpdateHealth(maxHealth, value)
		value = tonumber(value)
		maxHealth = tonumber(maxHealth)
		HealthMain.Size = UDim2.fromScale(((value - 0) / (maxHealth - 0)), 1)
	end
	
	function healthCard:UpdateIcon(userId)
		local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

		local good, bad = pcall(function()
			PlayerHead.Image = (isReady and content)
		end)

		if not good then
			PlayerHead.Image = game:GetService("Players"):GetUserThumbnailAsync(1,  Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		end
	end

	return healthCard
end

--[[

local healthCard = createCard()

healthCard:UpdateName("HappyFish")
healthCard:UpdateIcon(5615662055)
healthCard:UpdateHealth(150, 40)
healthCard:UpdateHealth(150, 100)
]]
