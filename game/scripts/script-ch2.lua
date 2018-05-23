function ch2script()
	if cl == 1149 then
		bgUpdate('club')
		audioUpdate('2')
		cw('bl',"Another day passes, and it's time for the club meeting already.")
	elseif cl == 1150 then
		cw('bl',"I've gotten a little more comfortable here over the past couple days.")
	elseif cl == 1151 then
		cw('bl',"Entering the clubroom, the usual scene greets me.")
	elseif cl == 1152 then
		updateSayori('2','x',80)
		cw('s',"Hi "..player.."~")
	elseif cl == 1153 then	
		cw('mc',"Yo, Sayori.")
	elseif cl == 1154 then
		cw('mc',"Looks like you're in a good mood today.")
	elseif cl == 1155 then
		updateSayori('1','q')
		cw('s',"Ehehe~")
	elseif cl == 1156 then
		cw('s',"I'm just still not used to you being in the club, that's all.")
	elseif cl == 1157 then
		cw('mc',"I see...")
	elseif cl == 1158 then
		cw('mc',"...That's a pretty simple thing to get you in a good mood.")
	elseif cl == 1159 then
		cw('mc',"But I guess it's always the simple things with you, anyway.")
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
	end
end