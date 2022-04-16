local StarterGui = game:GetService("StarterGui")
local Button = script.Parent

local function UpdateTopBar()
	
	local TopBarOffset = 16
	local IconPadding = 12
	local IconMenuSize = 32
	local TopBarSize = game:GetService("GuiService"):GetGuiInset().Y
	local ChatOffset = (StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat) and script.Parent.ChatOffset.Value) or script.Parent.ChatDisabledOffset.Value
	local position = UDim2.new(0, TopBarOffset + IconMenuSize + IconPadding + ChatOffset, 0, TopBarSize)
	Button:TweenPosition(position, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
	Button.Position = position
	
end

while task.wait(0.1) do
	
	UpdateTopBar()
	
end
