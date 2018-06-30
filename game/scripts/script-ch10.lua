function ch10script()
	if cl > 50 then
		scriptJump(1)
	elseif cl == 1 then
		bgUpdate('black')
		audioUpdate('0')
		bl "This is the end of DDLC-3DS v0.1.2 for now!"
	elseif cl == 2 then
		bl "Act 2 will be included in the next big release when it's done."
	elseif cl == 3 then
		updateMonika('1','a',80)
		m "For more updates, go to:"
		cb = "https://github.com/LukeZGD/DDLC-3DS or"
		cc = "https://twitter.com/lukee_gd_"
	elseif cl == 4 then
		changeState('title')
	end
end