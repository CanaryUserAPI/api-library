--[[

	Instructions:
	What number should I make the chat offset?
	To be next to the chat, make it 44, and keep multiplying the number you get by 2 to add more.
	What number should I make the chat offset to be next to the leaderboard buttons?
	To replace the leaderboard button, make the chat offset 984, to make the icon next to it, make the chat offset 940.
	To add more buttons next to it, keep subtracting the number you get by 44.
	
	If you disable the chat, then make the ChatDisabledOffset subtract 44 by ChatOffset. If chat is enabled, then make it 0
	
	Please do not remove the ButtonTemplate object, unless you really know what you are doing.
	
	Make sure to move the module to StarterPlayerScripts in StarterPlayer.
	
	Also make sure to only require the module with LocalScripts, we need to get the players PlayerGui.
	
	TODO:
	If you plan to put some icons on the right, make sure the ChatDisabledOffset is the same number as your chat offset EXP (ChatOffset: 984, ChatDisabledOffset: 984), this does not apply to icons on the left.
	TODO:
	Only use the advice above if you plan to have the chat disabled.
	
--]]


local module = {}
local ButtonTemplate = script.ButtonTemplate
local TopbarIcons = Instance.new("ScreenGui")
local Player = game.Players.LocalPlayer

if not Player then

	error("UIShelf could not start due to not being local")

end

TopbarIcons.Name = "TopbarIcons"
TopbarIcons.Parent = Player:WaitForChild("PlayerGui")
TopbarIcons.IgnoreGuiInset = true

function module:CreateButton(Name : string, IconId : number, ChatOffset : number, ChatDisabledOffset : number)
	
	local TopbarIcon = ButtonTemplate:Clone()
	TopbarIcon.Parent = TopbarIcons
	TopbarIcon.IconId.Value = IconId -- The image on your icon
	TopbarIcon.IconName.Value = Name -- The way your icon can be found
	TopbarIcon.ChatOffset.Value = ChatOffset -- The default chat offset is 44, set to 0 if chat is disabled
	TopbarIcon.ChatDisabledOffset.Value = ChatDisabledOffset
	TopbarIcon.ReadyForUse.Value = true
	
end

function module.OnMouse1Click(ButtonName : string, callbackFunction : any)
	
	TopbarIcons:WaitForChild(ButtonName).MouseButton1Up:Connect(callbackFunction)
	
end

function module.Hovered(ButtonName : string, callbackFunction : any)
	
	TopbarIcons:WaitForChild(ButtonName).MouseEnter:Connect(callbackFunction)
	
end

function module.OnRemoved(ButtonName : string, callbackFunction : any)
	
	TopbarIcons:WaitForChild(ButtonName).Destroying:Connect(callbackFunction)
	
end

function module.HoverEnded(ButtonName : string, callbackFunction : any)
	
	TopbarIcons:WaitForChild(ButtonName).MouseLeave:Connect(callbackFunction)
	
end

function module.OnMouseMoved(ButtonName : string, callbackFunction : any)
	
	TopbarIcons:WaitForChild(ButtonName).MouseMoved:Connect(callbackFunction)
	
end

function module.OnMouse2Click(ButtonName : string, callbackFunction : any)
	
	TopbarIcons:WaitForChild(ButtonName).MouseButton2Up:Connect(callbackFunction)
	
end

function module:HideTopbar(Enabled : boolean)
	
	TopbarIcons.Enabled = Enabled
	
end

function module.OnTopbarDisabled(callbackFunction : any)
	
	TopbarIcons:GetPropertyChangedSignal("Enabled"):Connect(callbackFunction)
	
end

function module.OnTopbarEnabled(callbackFunction : any)
	
	TopbarIcons:GetPropertyChangedSignal("Enabled"):Connect(callbackFunction)
	
end

function module.OnButtonPropertyChanged(ButtonName : string, Property : string, callbackFunction : any)
	
	TopbarIcons:WaitForChild(ButtonName):GetPropertyChangedSignal(Property):Connect(callbackFunction)
	
end

return module
