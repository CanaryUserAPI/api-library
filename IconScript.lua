local IconIdValue = script.Parent.IconId
local NameValue = script.Parent.IconName
local Ready = script.Parent.ReadyForUse
local Icon = script.Parent.Icon
local GuiService = game:GetService("GuiService")

GuiService.MenuOpened:Connect(function()
	
	script.Parent.Visible = false
	
end)

GuiService.MenuClosed:Connect(function()
	
	script.Parent.Visible = true
	
end)

while task.wait(0.1) do
	
	if Ready.Value == true then
		
		Icon.Image = "rbxassetid://"..IconIdValue.Value
		script.Parent.Name = NameValue.Value
		break
		
	end
	
end
