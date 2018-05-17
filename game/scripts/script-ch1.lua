function ch1script()
	
	if cl == 348 then
		chapter = 1
		bgUpdate('club')
		audioUpdate('2')
		updateMonika('5a','')
		mx = 80
		cw('m',"Hi again, "..player.."!")
	elseif cl == 349 then
		cw('m',"Glad to see you didn't run away on us. Hahaha!")
    elseif cl == 350 then
		cw('mc',"Nah, don't worry.")
	elseif cl == 351 then
		cw('mc',"This might be a little strange for me, but I at least keep my word.")
    elseif cl == 352 then
		hideMonika()
		cw('bl',"Well, I'm back at the Literature Club.")
    elseif cl == 353 then
		cw('bl',"I was the last to come in, so everyone else is already hanging out.")
    elseif cl == 354 then
		yx = 80
		updateYuri('1','a')
		cw('y',"Thanks for keeping your promise, "..player..".")
	elseif cl == 355 then
		cw('y',"I hope this isn't too overwhelming of a commitment for you.")
	elseif cl == 356 then
		yb = 'u'
		cw('y',"Making you dive headfirst into literature when you're not accustomed to it...")
	elseif cl == 357 then
		nx = 200
		updateNatsuki('4','b')
		cw('n',"Oh, come on! Like he deserves any slack.")
	elseif cl == 358 then
		cw('n',"Sayori told me you didn't even want to join any clubs this year.")
	elseif cl == 359 then
		cw('n',"And last year, too!")
	elseif cl == 360 then
		nc = 'c'
		cw('n',"I don't know if you plan to just come here and hang out, or what...")
	elseif cl == 361 then
		cw('n',"But if you don't take us seriously, then you won't see the end of it.")
	elseif cl == 362 then
		updateMonika('2','b')
		mx = 0-40
		cw('m',"Natsuki, you certainly have a big mouth for someone who keeps her manga collection in the           clubroom.")
	elseif cl == 363 then
		nc = 'o'
		cw('n',"M-M-M...!!")
    elseif cl == 364 then
		hideMonika()
		cw('bl',"Natsuki finds herself stuck between saying \"Monika\" and \"Manga\".")
	elseif cl == 365 then
		updateNatsuki('1','v')
		cw('n',"Manga is literature!!")
	elseif cl == 366 then
		hideNatsuki()
		cw('bl',"Swiftly defeated, Natsuki plops back into her seat.")
	elseif cl == 367 then
		updateSayori('2','x')
		sx = 10
		yx = 150
		cw('s',"Don't worry, guys~")
	elseif cl == 368 then
		cw('s',player .. " always gives it his best as long as he's having fun.")
	elseif cl == 369 then
		cw('s',"He helps me with busywork without me even asking.")
	elseif cl == 370 then
		cw('s',"Like cooking, cleaning my room...")
	elseif cl == 371 then
		sb = 'a'
		updateYuri('2','m')
		cw('y',"How dependable...")
	elseif cl == 372 then
		cw('mc',"Sayori, that's because your room is so messy it's distracting.")
	elseif cl == 373 then
		cw('mc',"And you almost set your house on fire once.")
	elseif cl == 374 then
		updateSayori('5a','')
		cw('s',"Is that so... Ehehe...")
	elseif cl == 375 then
		updateYuri('1','s')
		cw('y',"You two are really good friends, aren't you?")
	elseif cl == 376 then
		cw('y',"I might be a little jealous...")
	elseif cl == 377 then
		updateSayori('1','a')
		cw('s','How come? You and '.. player .. ' can become good friends too!')
	elseif cl == 378 then
		updateYuri('4','b2')
		cw('y',"U-Um...")
	elseif cl == 379 then
		cw('mc',"S-Sayori--")
	elseif cl == 380 then
		cw('s',"Hmm?")
	elseif cl == 381 then
		cw('mc',"...")
	elseif cl == 382 then
		cw('bl','As usual, Sayori seems oblivious to the weird situation she just put me into.')
	elseif cl == 383 then
		updateSayori('4','x')
		cw('s',"Oh, oh! Yuri even brought you something today, you know~")
	elseif cl == 384 then
		updateYuri('3','n')
		cw('y',"W-Wait! Sayori...")
	elseif cl == 385 then
		cw('mc',"Eh? Me?")
	elseif cl == 386 then
		yb = 'o'
		cw('y',"Um... Not really...")
	elseif cl == 387 then
		sb = 'r'
		cw('s',"Don't be shy~")
	elseif cl == 388 then
		cw('y',"It's really nothing...")
	elseif cl == 389 then
		cw('mc',"What is it?")
	elseif cl == 390 then
		updateYuri('4','c2')
		cw('y',"N-Never mind!")
	elseif cl == 391 then
		cw('y',"Sayori made it sound like a big deal when it's really not...")
	elseif cl == 392 then
		cw('y',"Uuuuh, what do I do...")
	elseif cl == 393 then
		updateSayori('1','g')
		cw('s',"Eh? I'm sorry, Yuri, I wasn't thinking...")
	elseif cl == 394 then
		hideSayori()
		yx = 80
		cw('bl',"I guess that means it's up to me to rescue this situation...")
	elseif cl == 395 then
		cw('mc',"Hey, don't worry about it.")
	elseif cl == 396 then
		cw('mc',"First of all, I wasn't expecting anything in the first place.")
	elseif cl == 397 then
		cw('mc',"So any nice gesture from you is a pleasant surprise.")
    elseif cl == 398 then
		cw('mc',"It'll make me happy no matter what.")
	elseif cl == 399 then
		updateYuri('3','v')
		cw('y',"I-Is that so...")
	elseif cl == 400 then
		cw('mc',"Yeah. I won't make it a big deal if you don't want it to be.")
	elseif cl == 401 then
		cw('y',"Alright...")
	elseif cl == 402 then	
		updateYuri('1','a')
		cw('y',"Well, here.")
	elseif cl == 403 then
		cw('bl',"Yuri reaches into her bag and pulls out a book.")
	elseif cl == 404 then
		cw('y',"I didn't want you to feel left out...")
	elseif cl == 405 then
		cw('y',"So I picked out a book that I thought you might enjoy.")
	elseif cl == 406 then
		cw('y',"It's a short read, so it should keep your attention, even if you don't usually read.")
	elseif cl == 407 then
		cw('y',"And we could, you know...")
	elseif cl == 408 then
		updateYuri('4','b2')
		cw('y',"Discuss it...if you wanted...")
	elseif cl == 409 then
		cw('bl',"Th-This is...")
    elseif cl == 410 then
		cw('bl',"How is this girl accidentally being so cute?")
	elseif cl == 411 then
		cw('bl',"She even picked out a book she thinks I'll like, despite me not reading much...")
	elseif cl == 412 then
		cw('mc',"Yuri, thank you! I'll definitely read this!")
	elseif cl == 413 then
		cw('bl',"I enthusiastically take the book.")
    elseif cl == 414 then
		updateYuri('2','m')
		cw('y',"Phew...")
	elseif cl == 415 then
		yb = 'a'
		cw('y',"Well, you can read it at your own pace.")
	elseif cl == 416 then
		cw('y',"I look forward to hearing what you think.")
	elseif cl == 417 then
		hideYuri()
		cw('bl',"Now that everyone's settled in, I expected Monika to kick off some scheduled activities for the club.")
	elseif cl == 418 then
		cw('bl',"But that doesn't seem to be the case.")
    elseif cl == 419 then
		cw('bl',"Sayori and Monika are having a cheery conversation in the corner.")
	elseif cl == 420 then
		cw('bl',"Yuri's face is already buried in a book.")
	elseif cl == 421 then
		cw('bl',"I can't help but notice her intense expression, like she was waiting for this chance.")
	elseif cl == 422 then
		cw('bl',"Meanwhile, Natsuki is rummaging around in the closet.")
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
		cw('m',"By the way, did you remember to write a poem last night?")
	elseif cl == 654 then
		cw('mc',"Y-Yeah...")
	elseif cl == 655 then
		cw('bl',"My relaxation ends.")
	elseif cl == 656 then
		cw('bl',"I can't believe I agreed to do something so embarrassing.")
	elseif cl == 657 then
		cw('bl',"I couldn't really find much inspiration, since I've never really done this before.")
	elseif cl == 658 then
		cw('m',"Well, now that everyone's ready, why don't you find someone to share with?")
	elseif cl == 659 then
		sx = 150
		updateSayori('4','q')
		cw('s',"I can't wait~!")
	elseif cl == 660 then
		hideSayori()
		hideMonika()
		cw('bl',"Sayori and Monika enthusiastically pull out their poems.")
	elseif cl == 661 then
		cw('bl',"Sayori's is on a wrinkled sheet of loose leaf torn from a spiral notebook.")
	elseif cl == 662 then
		cw('bl',"On the other hand, Monika wrote hers in a composition notebook.")
	elseif cl == 663 then
		cw('bl',"I can already see Monika's pristine handwriting from where I sit.")
	elseif cl == 664 then
		cw('bl',"Natsuki and Yuri reluctantly comply as well, reaching into their bags.")
	elseif cl == 665 then
		cw('bl',"I do the same, myself.")
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