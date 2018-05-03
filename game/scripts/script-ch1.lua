function ch1script()
	
	if ch0ln == 348 then
		chapter = 1
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
		nc = 'c'
		ch0a = '"I don\'t know if you plan to just come here'
		ch0b = 'and hang out, or what..."'
	elseif ch0ln == 361 then
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
	elseif ch0ln == 366 then
		hideNatsuki()
		ch0t = ''
		ch0a = "Swiftly defeated, Natsuki plops back into her "
		ch0b = "seat."
	elseif ch0ln == 367 then
		updateSayori('1l','2r','x')
		sx = 10
		yx = 150
		ch0t = 'Sayori'
		ch0a = '"Don\'t worry, guys~"'
	elseif ch0ln == 368 then
		ch0a = '"' .. player .. " always gives it his best as long as"
		ch0b = '"he\'s having fun."'
	elseif ch0ln == 369 then
		ch0a = '"He helps me with busywork without me even'
		ch0b = 'asking."'
	elseif ch0ln == 370 then
		ch0a = '"Like cooking, cleaning my room..."'
	elseif ch0ln == 371 then
		sc = 'a'
		updateYuri('1l','2r','m')
		ch0t = 'Yuri'
		ch0a = '"How dependable..."'
	elseif ch0ln == 372 then
		ch0t = player
		ch0a = '"Sayori, that\'s because your room is so messy'
		ch0b = 'it\'s distracting."'
	elseif ch0ln == 373 then
		ch0a = '"And you almost set your house on fire once."'
	elseif ch0ln == 374 then
		updateSayori('3a','','')
		ch0t = 'Sayori'
		ch0a = '"Is that so... Ehehe..."'
	elseif ch0ln == 375 then
		updateYuri('1l','1r','s')
		ch0t = 'Yuri'
		ch0a = '"You two are really good friends, aren\'t you?"'
	elseif ch0ln == 376 then
		ch0a = '"I might be a little jealous..."'
	elseif ch0ln == 377 then
		updateSayori('1l','1r','a')
		ch0t = 'Sayori'
		ch0a = '"How come? You and '.. player .. 'can become'
		ch0b = 'good friends too!"'
	elseif ch0ln == 378 then
		updateYuri('3','','b2')
		ch0t = 'Yuri'
		ch0a = '"U-Um..."'
	elseif ch0ln == 379 then
		ch0t = player
		ch0a = '"S-Sayori--"'
	elseif ch0ln == 380 then
		ch0t = 'Sayori'
		ch0a = '"Hmm?"'
	elseif ch0ln == 381 then
		ch0t = player
		ch0a = '"..."'
	elseif ch0ln == 382 then
		ch0t = ''
		ch0a = 'As usual, Sayori seems oblivious to the weird'
		ch0b = 'situation she just put me into.'
	elseif ch0ln == 383 then
		updateSayori('2l','2r','x')
		ch0t = 'Sayori'
		ch0a = '"Oh, oh! Yuri even brought you something today,'
		ch0b = 'you know~"'
	elseif ch0ln == 384 then
		updateYuri('2l','2r','n')
		ch0t = 'Yuri'
		ch0a = '"W-Wait! Sayori..."'
	elseif ch0ln == 385 then
		ch0t = player
		ch0a = '"Eh? Me?"'
	elseif ch0ln == 386 then
		yc = 'o'
		ch0t = 'Yuri'
		ch0a = '"Um... Not really..."'
	elseif ch0ln == 387 then
		sc = 'r'
		ch0t = 'Sayori'
		ch0a = '"Don\'t be shy~"'
	elseif ch0ln == 388 then
		ch0t = 'Yuri'
		ch0a = '"It\'s really nothing..."'
	elseif ch0ln == 389 then
		ch0t = player
		ch0a = '"What is it?"'
	elseif ch0ln == 390 then
		updateYuri('3','','c2')
		ch0t = 'Yuri'
		ch0a = '"N-Never mind!"'
	elseif ch0ln == 391 then
		ch0a = '"Sayori made it sound like a big deal when it\'s'
		ch0b = 'really not..."'
	elseif ch0ln == 392 then
		ch0a = '"Uuuuh, what do I do..."'
	elseif ch0ln == 393 then
		updateSayori('1l','1r','g')
		ch0t = 'Sayori'
		ch0a = '"Eh? I\'m sorry, Yuri, I wasn\'t thinking..."'
	elseif ch0ln == 394 then
		hideSayori()
		yx = 80
		ch0t = ''
		ch0a = "I guess that means it's up to me to rescue this"
		ch0b = "situation..."
	elseif ch0ln == 395 then
		ch0t = player
		ch0a = '"Hey, don\'t worry about it."'
	elseif ch0ln == 396 then
		ch0a = '"First of all, I wasn\'t expecting anything'
		ch0b = 'in the first place."'
	elseif ch0ln == 397 then
		ch0a = '"So any nice gesture from you is a pleasant '
		ch0b = 'surprise."'
    elseif ch0ln == 398 then
		ch0a = '"It\'ll make me happy no matter what."'
	elseif ch0ln == 399 then
		updateYuri('2l','2r','v')
		ch0t = 'Yuri'
		ch0a = '"I-Is that so..."'
	elseif ch0ln == 400 then
		ch0t = player
		ch0a = '"Yeah. I won\'t make it a big deal if you don\'t'
		ch0b = 'want it to be."'
	elseif ch0ln == 401 then
		ch0t = 'Yuri'
		ch0a = '"Alright..."'
	elseif ch0ln == 402 then	
		updateYuri('1l','1r','a')
		ch0a = '"Well, here."'
	elseif ch0ln == 403 then
		ch0t = ''
		ch0a = '"Yuri reaches into her bag and pulls out a book."'
	elseif ch0ln == 404 then
		ch0t = 'Yuri'
		ch0a = '"I didn\'t want you to feel left out..."'
	elseif ch0ln == 405 then
		ch0a = '"So I picked out a book that I thought you might'
		ch0b = 'enjoy."'
	elseif ch0ln == 406 then
		ch0a = '"It\'s a short read, so it should keep your'
		ch0b = 'attention, even if you don\'t usually read."'
	elseif ch0ln == 407 then
		ch0a = '"And we could, you know..."'
	elseif ch0ln == 408 then
		updateYuri('3','','b2')
		ch0t = 'Yuri'
		ch0a = '"Discuss it...if you wanted..."'
	elseif ch0ln == 409 then
		ch0t = ''
		ch0a = "Th-This is..."
    elseif ch0ln == 410 then
		ch0a = "How is this girl accidentally being so cute?"
	elseif ch0ln == 411 then
		ch0a = "She even picked out a book she thinks I'll like, "
		ch0b = "despite me not reading much..."
	elseif ch0ln == 412 then
		ch0t = player
		ch0a = '"Yuri, thank you! I\'ll definitely read this!"'
	elseif ch0ln == 413 then
		ch0t = ''
		ch0a = "I enthusiastically take the book."
    elseif ch0ln == 414 then
		updateYuri('1l','2r','m')
		ch0t = 'Yuri'
		ch0a = '"Phew..."'
	elseif ch0ln == 415 then
		yc = 'a'
		ch0a = '"Well, you can read it at your own pace."'
	elseif ch0ln == 416 then
		ch0a = '"I look forward to hearing what you think."'
	elseif ch0ln == 417 then
		hideYuri()
		ch0t = ''
		ch0a = "Now that everyone's settled in, I expected Monika"
		ch0b = "to kick off some scheduled activities for the club."
	elseif ch0ln == 418 then
		ch0a = "But that doesn't seem to be the case."
    elseif ch0ln == 419 then
		ch0a = "Sayori and Monika are having a cheery"
		ch0b = "conversation in the corner."
	elseif ch0ln == 420 then
		ch0a = "Yuri's face is already buried in a book."
	elseif ch0ln == 421 then
		ch0a = "I can't help but notice her intense expression,"
		ch0b = "like she was waiting for this chance."
	elseif ch0ln == 422 then
		ch0a = "Meanwhile, Natsuki is rummaging around in the "
		ch0b = "closet."
	elseif ch0ln >= 423 then
		if poemwinner == 'sayori' then
			ch1sayori()
		elseif poemwinner == 'natsuki' then
			ch1natsuki()
		elseif poemwinner == 'yuri' then
			ch1yuri()
		end
		--ch0a = 'Sayori is vice president of the Literature Club.' (for reference on how long the lines should be)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
		
	end
end