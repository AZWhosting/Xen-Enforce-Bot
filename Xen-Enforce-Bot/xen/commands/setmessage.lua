﻿COMMAND.name = "/xsetmessage"
COMMAND.RequireAdmin = true 

function COMMAND:Execute(gc,msg,VFD,doubt, args) 
	if (not args[1]) then 
		msg:replySendMessage("!") 
		return 
	end 
	local txmsg = table.concat(args," ")
	if (not string.find(txmsg,"ACTURL")) then 
		msg:replySendMessage(Localization.getStringLocalized(gc:getString("language"), "config/messageHelp",args[1])) 
		return
	end 
	gc:modify("verifymessage",txmsg)
	msg:replySendMessage(Localization.getStringLocalized(gc:getString("language"), "config/messageSet",args[1])) 
	gc.invalidated = true
end 