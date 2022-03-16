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
TopbarIcons.Name = "TopbarIcons"
TopbarIcons.Parent = Player:WaitForChild("PlayerGui")
TopbarIcons.IgnoreGuiInset = true
TopbarIcons.DisplayOrder = 999999999

function module:CreateButton(Name, Icon, ChatOffset, ChatDisabledOffset)
	
	local TopbarIcon = ButtonTemplate:Clone()
	TopbarIcon.Parent = TopbarIcons
	TopbarIcon.IconId.Value = Icon -- The image on your icon
	TopbarIcon.IconName.Value = Name -- The way your icon can be found
	TopbarIcon.ChatOffset.Value = ChatOffset -- The default chat offset is 44, set to 0 if chat is disabled
	TopbarIcon.ChatDisabledOffset.Value = ChatDisabledOffset
	TopbarIcon.ReadyForUse.Value = true
	
end

function module:UIServiceInitiate(TopbarEnabled) -- For canary client, should not be used outside of it.
	
	if TopbarEnabled == true then
		
		local TopbarUI = Player:WaitForChild("PlayerGui"):WaitForChild("TopbarIcons")
		
		TopbarUI.Enabled = true
		
	else
		
		local TopbarUI = Player:WaitForChild("PlayerGui"):WaitForChild("TopbarIcons")

		TopbarUI.Enabled = false
		
	end
	
end

return module
