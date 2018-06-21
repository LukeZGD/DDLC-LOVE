function ch4script()
	if cl >= 2397 then
		scriptJump(1)
	elseif cl == 1 then
		audioUpdate('6')
		bgUpdate('residential')
		cw('bl',"It's already Sunday.")
	elseif cl > 1 and cl < 10 then
		if ch4_name == "Natsuki" then
			if cl == 2 then
				cw('bl',"I've been getting increasingly anxious about Natsuki's upcoming visit.")
			elseif cl == 3 then
				cw('bl',"I keep telling myself there's no reason to be nervous, but it doesn't help much.")
			elseif cl == 4 then
				cw('bl',"I wonder if she'll act any different when it's just the two of us?")
			elseif cl == 5 then
				cw('bl',"Meanwhile, she's been texting me a lot.")
			elseif cl == 6 then
				cw('bl',"We sent each other one after exchanging numbers to double-check, but it turned into conversation.")
			elseif cl == 7 then
				cw('bl',"She's almost a different personality on the phone, using tons of emoji and cute language.")
			elseif cl == 8 then
				cw('bl',"She also really likes complaining about things, but I kind of saw that one coming.")
			elseif cl == 9 then
				cw('bl',"But putting Natsuki aside...")
			end
		else
			if cl == 2 then
				cw('bl',"I've been getting increasingly anxious about Yuri's upcoming visit.")
			elseif cl == 3 then
				cw('bl',"I keep telling myself there's no reason to be nervous, but it doesn't help much.")
			elseif cl == 4 then
				cw('bl',"Yuri is clearly an introvert and also an intimate person in general.")
			elseif cl == 5 then
				cw('bl',"There's no doubt that she'll open up a little bit when it's just the two of us.")
			elseif cl == 6 then
				cw('bl',"Meanwhile, we've even been texting occasionally.")
			elseif cl == 7 then
				cw('bl',"She was extremely apprehensive at first, but it wasn't long before I was already learning more about her.")
			elseif cl == 8 then
				cw('bl',"But putting Yuri aside...")
			elseif cl == 9 then
				scriptJump(10)
			end
		end
	elseif cl == 10 then
		cw('bl',"I haven't heard a thing from Sayori since she left club early the other day.")
	elseif cl >= 11 then
		cw('bl', "END for now")
	end
end