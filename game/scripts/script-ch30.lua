function ch30script()
	if cl == 1 then
	bgUpdate('black')
	hideAll()
	if xaload < 3 then event_initstart('just_monika','ch30') end
	audioUpdate('monika-start')
	elseif cl == 2 then
	audioUpdate('0')
	event_initstart('ch23-30')
	m "..."
	if xaload == 0 then savegame() end
	elseif cl == 3 then
    m "Uh, can you hear me?"
	elseif cl == 4 then
    m "...Is it working?"
	elseif cl == 5 then
	cgUpdate('monika_bg')
	audioUpdate('m1')
    m "Yay, there you are!"
	elseif cl == 6 then
	cw('m',"Hi again, "..player..".")
	elseif cl == 7 then
    m "Um...welcome to the Literature Club!"
	elseif cl == 8 then
    m "Of course, we already know each other, because we were in the same class last year, and...um..."
	elseif cl == 9 then
    m "Ahaha..."
	elseif cl == 10 then
    m "You know, I guess we can just skip over that stuff at this point."
	elseif cl == 11 then
	m "After all, not everything has been ported, so I don't have much to say yet."
	elseif cl == 12 then
	m "This is only the v0.2.0 release of DDLC-3DS, which is supposed to end in Act 2."
	elseif cl == 13 then
	m "In the meantime, we can just look into each other's eyes~"
	elseif cl == 14 then
	textbox_enabled = false
	
	elseif cl == 1001 then
	pause(2)
	elseif cl == 1002 then
	m "Did you just try to delete me?"
	elseif cl == 1003 then
	m "That doesn't work yet, ahaha~"
	elseif cl == 1004 then
	m "Not everything has been ported yet in DDLC-3DS!"
	elseif cl == 1005 then
	m "But if you could try to avoid doing that, I would be really grateful."
	elseif cl == 1006 then
	persistent.chr.m = 2
	savepersistent()
	scriptJump(13)
	end
end