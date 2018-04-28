function ch1script()
	
	if ch0ln == 348 then
		bgUpdate('club')
		audioUpdate('2')
		updateMonika('3a','','')
		mx = 80
		ch0t = 'Monika'
		ch0a = '"Hi again, '..player..'!"'
	elseif ch0ln == 349 then
		ch0a = '"Glad to see you didn\'t run away on us. Hahaha!"'
    elseif ch0ln == 350 then
		ch0t = player
		ch0a = '"Nah, don\'t worry."'
	elseif ch0ln == 351 then
		ch0a = '"This might be a little strange for me, but I at'
		ch0b = 'least keep my word."'
    elseif ch0ln == 352 then
		hideMonika()
		ch0t = ''
		ch0a = "Well, I'm back at the Literature Club."
    elseif ch0ln == 353 then
		ch0a = "I was the last to come in, so everyone else is"
		ch0b = "already hanging out."
    elseif ch0ln == 354 then
		yx = 80
		updateYuri('1l','1r','a')
		ch0t = 'Yuri'
		ch0a = '"Thanks for keeping your promise, '..player..'."'
	elseif ch0ln == 355 then
		ch0a = '"I hope this isn\'t too overwhelming of a'
		ch0b = 'commitment for you."'
	elseif ch0ln == 356 then
		yc = 'u'
		ch0a = '"Making you dive headfirst into literature when'
		ch0b = 'you\'re not accustomed to it..."'
	elseif ch0ln == 357 then
		nx = 200
		updateNatsuki('2l','2r','b')
		ch0t = 'Natsuki'
		ch0a = '"Oh, come on! Like he deserves any slack."'
	elseif ch0ln == 358 then
		ch0a = '"Sayori told me you didn\'t even want to join'
		ch0b = 'any clubs this year."'
	elseif ch0ln == 359 then
		ch0a = '"And last year, too!"'
	elseif ch0ln == 360 then
		ch0a = '"I don\'t know if you plan to just come here'
		ch0b = 'and hang out, or what..."'
	elseif ch0ln == 361 then
		nc = 'c'
		ch0a = '"But if you don\'t take us seriously, then'
		ch0b = 'you won\'t see the end of it."'
	elseif ch0ln == 362 then
		updateMonika('1l','2r','b')
		mx = 0-40
		ch0t = 'Monika'
		ch0a = '"Natsuki, you certainly have a big mouth for'
		ch0b = 'someone who keeps her manga collection in the'
		ch0c = 'clubroom."'
	elseif ch0ln == 363 then
		nc = 'o'
		ch0t = 'Natsuki'
		ch0a = '"M-M-M...!!"'
    elseif ch0ln == 364 then
		hideMonika()
		ch0t = ''
		ch0a = '"Natsuki finds herself stuck between saying'
		ch0b = '\"Monika\" and \"Manga\"."'
	elseif ch0ln == 365 then
		updateNatsuki('1l','1r','v')
		ch0t = 'Natsuki'
		ch0a = '"Manga is literature!!"'
		
		--ch0a = 'Sayori is vice president of the Literature Club.' (for reference..?)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
		
	end
end