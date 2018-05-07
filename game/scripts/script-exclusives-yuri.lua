function ch1yuri()
	if ch0ln == 423 then
		 ch0t = ''
		 ch0a = "I\'m really curious to talk to Yuri a little"
		 ch0b = "bit more..."
	elseif ch0ln == 424 then
		ch0a = "But at the same time, I would feel bad for "
		ch0b = "distracting her from reading."
	elseif ch0ln == 425 then
		ch0a = "I catch a glimpse of the cover of her book."
	elseif ch0ln == 426 then
		ch0a = "It looks like the same book that she lent to"
		ch0b = "me..."
	elseif ch0ln == 427 then
		ch0a = "More than that, she seems to be on the first"
		ch0b = "few pages."
    elseif ch0ln == 428 then
		audioUpdate('6')
		yx = 80
		updateYuri('3','','a')
		ch0t = 'Yuri'
		ch0a = '"Ah..."'
	elseif ch0ln == 429 then
		ch0t = ''
		ch0a = '"Crap--"'
		--ch0a = 'Sayori is vice president of theLiteratureClub.' (for reference on how long the lines should be)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
	end
end