/*
  ____ _   _           _      
 / ___| \ | | ___   __| | ___ 
| |  _|  \| |/ _ \ / _` |/ _ \
| |_| | |\  | (_) | (_| |  __/
 \____|_| \_|\___/ \__,_|\___| (Steam_0:1:70711393)

 This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/.
Credit to the author must be given when using/sharing this work or derivative work from it.

*/

if CLIENT then
function GNODE_ACT_MENU_GMOD( )
	local GNODE_ACT_MENU_GMOD = vgui.Create( "DFrame",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_MENU_GMOD:SetSize( 450,450 )
	GNODE_ACT_MENU_GMOD:SetTitle( "Act Menu" )
	GNODE_ACT_MENU_GMOD:Center( )
	GNODE_ACT_MENU_GMOD:SetVisible( true )
	GNODE_ACT_MENU_GMOD:ShowCloseButton( true )
	GNODE_ACT_MENU_GMOD:MakePopup( )
	GNODE_ACT_MENU_GMOD.Paint = function( )
		draw.RoundedBox(8, 0, 0, GNODE_ACT_MENU_GMOD:GetWide(), GNODE_ACT_MENU_GMOD:GetTall(), Color(61, 52, 52, 255))
	end
	local GNODE_ACT_CHEER = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_CHEER:SetPos( 120,20 )
	GNODE_ACT_CHEER:SetSize( 200,20 )
	GNODE_ACT_CHEER:SetText( "CHEER" )
	GNODE_ACT_CHEER.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_CHEER:GetWide(), GNODE_ACT_CHEER:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_CHEER.DoClick = function( )
		LocalPlayer():ConCommand("act cheer")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now cheering!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_LAUGH = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_LAUGH:SetPos( 120,40 )
	GNODE_ACT_LAUGH:SetSize( 200,20 )
	GNODE_ACT_LAUGH:SetText( "LAUGH" )
	GNODE_ACT_LAUGH.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_LAUGH:GetWide(), GNODE_ACT_LAUGH:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_LAUGH.DoClick = function( )
		LocalPlayer():ConCommand("act laugh")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now laughing!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_MUSCLE = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_MUSCLE:SetPos( 120,60 )
	GNODE_ACT_MUSCLE:SetSize( 200,20 )
	GNODE_ACT_MUSCLE:SetText( "MUSCLE" )
	GNODE_ACT_MUSCLE.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_MUSCLE:GetWide(), GNODE_ACT_MUSCLE:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_MUSCLE.DoClick = function( )
		LocalPlayer():ConCommand("act muscle")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now flexing!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_ZOMBIE = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_ZOMBIE:SetPos( 120,80 )
	GNODE_ACT_ZOMBIE:SetSize( 200,20 )
	GNODE_ACT_ZOMBIE:SetText( "ZOMBIE" )
	GNODE_ACT_ZOMBIE.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_ZOMBIE:GetWide(), GNODE_ACT_ZOMBIE:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_ZOMBIE.DoClick = function( )
		LocalPlayer():ConCommand("act zombie")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now acting like a zombie!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_ROBOT = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_ROBOT:SetPos( 120,100 )
	GNODE_ACT_ROBOT:SetSize( 200,20 )
	GNODE_ACT_ROBOT:SetText( "ROBOT" )
	GNODE_ACT_ROBOT.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_ROBOT:GetWide(), GNODE_ACT_ROBOT:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_ROBOT.DoClick = function( )
		LocalPlayer():ConCommand("act robot")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now doing the robot!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_DANCE = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_DANCE:SetPos( 120,120 )
	GNODE_ACT_DANCE:SetSize( 200,20 )
	GNODE_ACT_DANCE:SetText( "DANCE" )
	GNODE_ACT_DANCE.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_DANCE:GetWide(), GNODE_ACT_DANCE:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_DANCE.DoClick = function( )
		LocalPlayer():ConCommand("act dance")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now dancing!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_AGREE = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_AGREE:SetPos( 120,140 )
	GNODE_ACT_AGREE:SetSize( 200,20 )
	GNODE_ACT_AGREE:SetText( "AGREE" )
	GNODE_ACT_AGREE.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_AGREE:GetWide(), GNODE_ACT_AGREE:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_AGREE.DoClick = function( )
		LocalPlayer():ConCommand("act agree")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now agreeing!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_BECON = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_BECON:SetPos( 120,160 )
	GNODE_ACT_BECON:SetSize( 200,20 )
	GNODE_ACT_BECON:SetText( "BECON" )
	GNODE_ACT_BECON.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_BECON:GetWide(), GNODE_ACT_BECON:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_BECON.DoClick = function( )
		LocalPlayer():ConCommand("act becon")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now beckoning!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_DISAGREE = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_DISAGREE:SetPos( 120,180 )
	GNODE_ACT_DISAGREE:SetSize( 200,20 )
	GNODE_ACT_DISAGREE:SetText( "DISAGREE" )
	GNODE_ACT_DISAGREE.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_DISAGREE:GetWide(), GNODE_ACT_DISAGREE:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_DISAGREE.DoClick = function( )
		LocalPlayer():ConCommand("act disagree")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now disagreeing!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_SALUTE = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_SALUTE:SetPos( 120,200 )
	GNODE_ACT_SALUTE:SetSize( 200,20 )
	GNODE_ACT_SALUTE:SetText( "SALUTE" )
	GNODE_ACT_SALUTE.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_SALUTE:GetWide(), GNODE_ACT_SALUTE:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_SALUTE.DoClick = function( )
		LocalPlayer():ConCommand("act salute")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now saluting!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_WAVE = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_WAVE:SetPos( 120,220 )
	GNODE_ACT_WAVE:SetSize( 200,20 )
	GNODE_ACT_WAVE:SetText( "WAVE" )
	GNODE_ACT_WAVE.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_WAVE:GetWide(), GNODE_ACT_WAVE:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_WAVE.DoClick = function( )
		LocalPlayer():ConCommand("act wave")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now waving!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_FORWARD = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_FORWARD:SetPos( 120,240 )
	GNODE_ACT_FORWARD:SetSize( 200,20 )
	GNODE_ACT_FORWARD:SetText( "FORWARD" )
	GNODE_ACT_FORWARD.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_FORWARD:GetWide(), GNODE_ACT_FORWARD:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_FORWARD.DoClick = function( )
		LocalPlayer():ConCommand("act forward")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now motioning forward!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
	local GNODE_ACT_PERS = vgui.Create( "DButton",GNODE_ACT_MENU_GMOD )
	GNODE_ACT_PERS:SetPos( 120,260 )
	GNODE_ACT_PERS:SetSize( 200,20 )
	GNODE_ACT_PERS:SetText( "PERS" )
	GNODE_ACT_PERS.Paint = function()
		draw.RoundedBox(8, 0, 0, GNODE_ACT_PERS:GetWide(), GNODE_ACT_PERS:GetTall(), Color(0, 0, 0, 150))
	end
	GNODE_ACT_PERS.DoClick = function( )
		LocalPlayer():ConCommand("act pers")
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "Act Menu", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "you are now posing!")
		surface.PlaySound("player/suit_sprint.wav")
		GNODE_ACT_MENU_GMOD:Close( )
	end
end
concommand.Add( "ACT_MENU",GNODE_ACT_MENU_GMOD )
end