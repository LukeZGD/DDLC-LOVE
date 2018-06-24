function ch10script()
	if cl > 50 then
		scriptJump(1)
	elseif cl == 1 then
		bgUpdate('black')
		audioUpdate('0')
		bl "This is the end of DDLC-3DS v0.1.0 for now!"
	elseif cl == 2 then
		bl "Act 2 will be in the next version."
	elseif cl == 3 then
		updateMonika('1','a',80)
		m "See you there!"
	elseif cl == 4 then
		changeState('title')
	end
end