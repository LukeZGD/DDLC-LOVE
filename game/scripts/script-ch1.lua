function ch1script()
	
	if cl == 348 then
		chapter = 1
		bgUpdate('club')
		audioUpdate('2')
		updateMonika('5a','')
		mx = 80
		ct = 'Monika'
		ca = '"Hi again, '..player..'!"'
	elseif cl == 349 then
		ca = '"Glad to see you didn\'t run away on us. Hahaha!"'
    elseif cl == 350 then
		ct = player
		ca = '"Nah, don\'t worry."'
	elseif cl == 351 then
		ca = '"This might be a little strange for me, but I at'
		cb = 'least keep my word."'
    elseif cl == 352 then
		hideMonika()
		ct = ''
		ca = "Well, I'm back at the Literature Club."
    elseif cl == 353 then
		ca = "I was the last to come in, so everyone else is"
		cb = "already hanging out."
    elseif cl == 354 then
		yx = 80
		updateYuri('1','a')
		ct = 'Yuri'
		ca = '"Thanks for keeping your promise, '..player..'."'
	elseif cl == 355 then
		ca = '"I hope this isn\'t too overwhelming of a'
		cb = 'commitment for you."'
	elseif cl == 356 then
		yb = 'u'
		ca = '"Making you dive headfirst into literature when'
		cb = 'you\'re not accustomed to it..."'
	elseif cl == 357 then
		nx = 200
		updateNatsuki('4','b')
		ct = 'Natsuki'
		ca = '"Oh, come on! Like he deserves any slack."'
	elseif cl == 358 then
		ca = '"Sayori told me you didn\'t even want to join'
		cb = 'any clubs this year."'
	elseif cl == 359 then
		ca = '"And last year, too!"'
	elseif cl == 360 then
		nc = 'c'
		ca = '"I don\'t know if you plan to just come here'
		cb = 'and hang out, or what..."'
	elseif cl == 361 then
		ca = '"But if you don\'t take us seriously, then'
		cb = 'you won\'t see the end of it."'
	elseif cl == 362 then
		updateMonika('2','b')
		mx = 0-40
		ct = 'Monika'
		ca = '"Natsuki, you certainly have a big mouth for'
		cb = 'someone who keeps her manga collection in the'
		cc = 'clubroom."'
	elseif cl == 363 then
		nc = 'o'
		ct = 'Natsuki'
		ca = '"M-M-M...!!"'
    elseif cl == 364 then
		hideMonika()
		ct = ''
		ca = '"Natsuki finds herself stuck between saying'
		cb = '\"Monika\" and \"Manga\"."'
	elseif cl == 365 then
		updateNatsuki('1','v')
		ct = 'Natsuki'
		ca = '"Manga is literature!!"'
	elseif cl == 366 then
		hideNatsuki()
		ct = ''
		ca = "Swiftly defeated, Natsuki plops back into her "
		cb = "seat."
	elseif cl == 367 then
		updateSayori('2','x')
		sx = 10
		yx = 150
		ct = 'Sayori'
		ca = '"Don\'t worry, guys~"'
	elseif cl == 368 then
		ca = '"' .. player .. " always gives it his best as long as"
		cb = '"he\'s having fun."'
	elseif cl == 369 then
		ca = '"He helps me with busywork without me even'
		cb = 'asking."'
	elseif cl == 370 then
		ca = '"Like cooking, cleaning my room..."'
	elseif cl == 371 then
		sb = 'a'
		updateYuri('2','m')
		ct = 'Yuri'
		ca = '"How dependable..."'
	elseif cl == 372 then
		ct = player
		ca = '"Sayori, that\'s because your room is so messy'
		cb = 'it\'s distracting."'
	elseif cl == 373 then
		ca = '"And you almost set your house on fire once."'
	elseif cl == 374 then
		updateSayori('5a','')
		ct = 'Sayori'
		ca = '"Is that so... Ehehe..."'
	elseif cl == 375 then
		updateYuri('1','s')
		ct = 'Yuri'
		ca = '"You two are really good friends, aren\'t you?"'
	elseif cl == 376 then
		ca = '"I might be a little jealous..."'
	elseif cl == 377 then
		updateSayori('1','a')
		ct = 'Sayori'
		ca = '"How come? You and '.. player .. ' can become'
		cb = 'good friends too!"'
	elseif cl == 378 then
		updateYuri('4','b2')
		ct = 'Yuri'
		ca = '"U-Um..."'
	elseif cl == 379 then
		ct = player
		ca = '"S-Sayori--"'
	elseif cl == 380 then
		ct = 'Sayori'
		ca = '"Hmm?"'
	elseif cl == 381 then
		ct = player
		ca = '"..."'
	elseif cl == 382 then
		ct = ''
		ca = 'As usual, Sayori seems oblivious to the weird'
		cb = 'situation she just put me into.'
	elseif cl == 383 then
		updateSayori('4','x')
		ct = 'Sayori'
		ca = '"Oh, oh! Yuri even brought you something today,'
		cb = 'you know~"'
	elseif cl == 384 then
		updateYuri('3','n')
		ct = 'Yuri'
		ca = '"W-Wait! Sayori..."'
	elseif cl == 385 then
		ct = player
		ca = '"Eh? Me?"'
	elseif cl == 386 then
		yb = 'o'
		ct = 'Yuri'
		ca = '"Um... Not really..."'
	elseif cl == 387 then
		sb = 'r'
		ct = 'Sayori'
		ca = '"Don\'t be shy~"'
	elseif cl == 388 then
		ct = 'Yuri'
		ca = '"It\'s really nothing..."'
	elseif cl == 389 then
		ct = player
		ca = '"What is it?"'
	elseif cl == 390 then
		updateYuri('4','c2')
		ct = 'Yuri'
		ca = '"N-Never mind!"'
	elseif cl == 391 then
		ca = '"Sayori made it sound like a big deal when it\'s'
		cb = 'really not..."'
	elseif cl == 392 then
		ca = '"Uuuuh, what do I do..."'
	elseif cl == 393 then
		updateSayori('1','g')
		ct = 'Sayori'
		ca = '"Eh? I\'m sorry, Yuri, I wasn\'t thinking..."'
	elseif cl == 394 then
		hideSayori()
		yx = 80
		ct = ''
		ca = "I guess that means it's up to me to rescue this"
		cb = "situation..."
	elseif cl == 395 then
		ct = player
		ca = '"Hey, don\'t worry about it."'
	elseif cl == 396 then
		ca = '"First of all, I wasn\'t expecting anything'
		cb = 'in the first place."'
	elseif cl == 397 then
		ca = '"So any nice gesture from you is a pleasant '
		cb = 'surprise."'
    elseif cl == 398 then
		ca = '"It\'ll make me happy no matter what."'
	elseif cl == 399 then
		updateYuri('3','v')
		ct = 'Yuri'
		ca = '"I-Is that so..."'
	elseif cl == 400 then
		ct = player
		ca = '"Yeah. I won\'t make it a big deal if you don\'t'
		cb = 'want it to be."'
	elseif cl == 401 then
		ct = 'Yuri'
		ca = '"Alright..."'
	elseif cl == 402 then	
		updateYuri('1','a')
		ca = '"Well, here."'
	elseif cl == 403 then
		ct = ''
		ca = '"Yuri reaches into her bag and pulls out a book."'
	elseif cl == 404 then
		ct = 'Yuri'
		ca = '"I didn\'t want you to feel left out..."'
	elseif cl == 405 then
		ca = '"So I picked out a book that I thought you might'
		cb = 'enjoy."'
	elseif cl == 406 then
		ca = '"It\'s a short read, so it should keep your'
		cb = 'attention, even if you don\'t usually read."'
	elseif cl == 407 then
		ca = '"And we could, you know..."'
	elseif cl == 408 then
		updateYuri('4','b2')
		ct = 'Yuri'
		ca = '"Discuss it...if you wanted..."'
	elseif cl == 409 then
		ct = ''
		ca = "Th-This is..."
    elseif cl == 410 then
		ca = "How is this girl accidentally being so cute?"
	elseif cl == 411 then
		ca = "She even picked out a book she thinks I'll like, "
		cb = "despite me not reading much..."
	elseif cl == 412 then
		ct = player
		ca = '"Yuri, thank you! I\'ll definitely read this!"'
	elseif cl == 413 then
		ct = ''
		ca = "I enthusiastically take the book."
    elseif cl == 414 then
		updateYuri('2','m')
		ct = 'Yuri'
		ca = '"Phew..."'
	elseif cl == 415 then
		yb = 'a'
		ca = '"Well, you can read it at your own pace."'
	elseif cl == 416 then
		ca = '"I look forward to hearing what you think."'
	elseif cl == 417 then
		hideYuri()
		ct = ''
		ca = "Now that everyone's settled in, I expected Monika"
		cb = "to kick off some scheduled activities for the club."
	elseif cl == 418 then
		ca = "But that doesn't seem to be the case."
    elseif cl == 419 then
		ca = "Sayori and Monika are having a cheery"
		cb = "conversation in the corner."
	elseif cl == 420 then
		ca = "Yuri's face is already buried in a book."
	elseif cl == 421 then
		ca = "I can't help but notice her intense expression,"
		cb = "like she was waiting for this chance."
	elseif cl == 422 then
		ca = "Meanwhile, Natsuki is rummaging around in the "
		cb = "closet."
	elseif cl >= 423 then
		if poemwinner == 'sayori' then
			ch1sayori()
		elseif poemwinner == 'natsuki' then
			ch1natsuki()
		elseif poemwinner == 'yuri' then
			ch1yuri()
		end
	end
	
	if cl == 653 then
		mx = 10
		updateMonika('1','a')
		ct = 'Monika'
		ca = '"By the way, did you remember to write a poem'
		cb = 'last night?"'
	elseif cl == 654 then
		ct = player
		ca = '"Y-Yeah..."'
	elseif cl == 655 then
		ct = '' 
		ca = "My relaxation ends."
	elseif cl == 656 then
		ca = "I can't believe I agreed to do something so"
		cb = "embarrassing."
	elseif cl == 657 then
		ca = "I couldn't really find much inspiration, since I've"
		cb = "never really done this before."
	elseif cl == 658 then
		ct = 'Monika'
		ca = '"Well, now that everyone\'s ready, why don\'t you'
		cb = 'find someone to share with?"'
	elseif cl == 659 then
		sx = 150
		updateSayori('4','q')
		ct = 'Sayori'
		ca = '"I can\'t wait~!"'
	elseif cl == 660 then
		hideSayori()
		hideMonika()
		ct = ''
		ca = "Sayori and Monika enthusiastically pull out their"
		cb = "poems."
	elseif cl == 661 then
		ca = "Sayori's is on a wrinkled sheet of loose leaf torn"
		cb = "from a spiral notebook."
	elseif cl == 662 then
		ca = "On the other hand, Monika wrote hers in a"
		cb = "composition notebook."
	elseif cl == 663 then
		ca = "I can already see Monika's pristine handwriting"
		cb = "from where I sit."
	elseif cl == 664 then
		ca = "Natsuki and Yuri reluctantly comply as well,"
		cb = "reaching into their bags."
	elseif cl == 665 then
		ca = "I do the same, myself."
		poeminitialize()
	end

	if cl == 800 then
	
	elseif cl == 801 then
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220	
	end
end