function ch1natsuki()
	if ch0ln == 423 then
		ch0t = 'Natsuki'
		ch0a = '"Ugh...!"'
    elseif ch0ln == 424 then
		ch0t = ''
		ch0a = "I hear Natsuki utter an exasperated sigh from "
		ch0b = "within the closet."
    elseif ch0ln == 425 then
		ch0a = "She seems to be annoyed by something."
	elseif ch0ln == 426 then
		ch0a = "I approach her, in case she needs a hand."
	elseif ch0ln == 427 then
		bgUpdate('closet')
		audioUpdate('6')
		nx = 80
		updateNatsuki('2l','2r','r')
		ch0t = player
		ch0a = '"You looking for something in there?"'
		--ch0a = 'Sayori is vice president of the Literature Club.' (for reference on how long the lines should be)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
    
	end
end