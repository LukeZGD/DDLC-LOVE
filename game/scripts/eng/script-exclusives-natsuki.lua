function Natsuki_exclusive_1()
	if cl == 423 then
		cw('n',"Ugh...!")
	elseif cl == 424 then
		cw('bl',"I hear Natsuki utter an exasperated sigh from within the closet.")
	elseif cl == 425 then
		cw('bl',"She seems to be annoyed by something.")
	elseif cl == 426 then
		cw('bl',"I approach her, in case she needs a hand.")
	elseif cl == 427 then
		bgUpdate('closet')
		audioUpdate('6')
		updateNatsuki('4','r',80)
		cw('mc',"You looking for something in there?")
	elseif cl == 428 then
		updateNatsuki('4','x')
		cw('n',"Freaking Monika...")
	elseif cl == 429 then
		cw('n',"She never puts my stuff back in the right spot!")
	elseif cl == 430 then
		cw('n',"What's the point in keeping your collection organized if someone else is just gonna mess it up?")
	elseif cl == 431 then
		cw('bl',"Natsuki slides a bunch of stacked books and boxes across the shelf.")
	elseif cl == 432 then
		cw('mc',"Manga...")
	elseif cl == 433 then
		updateNatsuki('2','c')
		cw('n',"You read manga, right?")
	elseif cl == 434 then
		cw('mc',"Ah - ")
	elseif cl == 435 then
		cw('mc',"...Sometimes...")
	elseif cl == 436 then
		cw('bl',"Manga is one of those things where you can't admit you're really into it until you figure out where the other person stands.")
	elseif cl == 437 then
		cw('mc',"...How did you know, anyway?")
	elseif cl == 438 then
		updateNatsuki('4','k')
		cw('n',"I heard you bring it up at some point.")
	elseif cl == 439 then
		cw('n',"Besides, it's kind of written on your face.")
	elseif cl == 440 then
		cw('bl',"What's that supposed to mean...?")
	elseif cl == 441 then
		cw('mc',"I-I see...")
	elseif cl == 442 then
		cw('bl',"There's a lone volume of manga amidst a stack of various books on the side of one of the shelves.")
	elseif cl == 443 then
		cw('bl',"Curious, I pull it out of the stack.")
	elseif cl == 444 then
		updateNatsuki('1','b')
		cw('n',"There it is!")
	elseif cl == 445 then
		cw('bl',"Natsuki snatches it out of my hand.")
	elseif cl == 446 then
		cw('bl',"She then turns to a box of manga and slips the volume right into the middle of the rest.")
	elseif cl == 447 then
		updateNatsuki('4','d')
		cw('n',"Aah, much better!")
	elseif cl == 448 then
		cw('n',"Seeing a box set with one book missing is probably the most irritating sight in the world.")
	elseif cl == 449 then
		cw('mc',"I know that feel...")
	elseif cl == 450 then
		cw('bl',"I get a closer look at the box set she's admiring.")
	elseif cl == 451 then
		cw('mc',"Parfait Girls...?")
	elseif cl == 452 then
		cw('bl',"It's a series I've never heard of in my life.")
	elseif cl == 453 then
		cw('bl',"That probably means it's either way out of my demographic, or it's simply terrible.")
	elseif cl == 454 then
		updateNatsuki('5','g')
		cw('n',"If you're gonna judge, you can go do it through the glass on that door.")
	elseif cl == 455 then
		cw('bl',"She points to the classroom door.")
	elseif cl == 456 then
		cw('mc',"H-Hey, I wasn't judging anything...!")
	elseif cl == 457 then
		cw('mc',"I didn't even say anything.")
	elseif cl == 458 then
		updateNatsuki('5','c')
		cw('n',"It was the tone of your voice.")
	elseif cl == 459 then
		cw('n',"But I'll tell you one thing, "..player..".")
	elseif cl == 460 then
		updateNatsuki('4','l')
		cw('n',"Consider this a lesson straight from the Literature Club: Don't judge a book by its cover!")
	elseif cl == 461 then
		cw('n',"In fact--")
	elseif cl == 462 then
		cw('bl',"Natsuki pulls out the first volume of Parfait Girls from the box.")
	elseif cl == 463 then
		cw('n',"I'm gonna show you exactly why!")
	elseif cl == 464 then
		cw('bl',"She shoves the book right into my hands.")
	elseif cl == 465 then
		cw('mc',"Ah...")
	elseif cl == 466 then
		cw('bl',"I stare at the cover.")
	elseif cl == 467 then
		cw('bl',"It features four girls in colorful attire striking animated feminine poses.")
	elseif cl == 468 then
		cw('bl',"It's...exceedingly \"moe\".")
	elseif cl == 469 then
		updateNatsuki('4','b')
		cw('n',"Don't just stand there!")
	elseif cl == 470 then
		cw('mc',"Uwa--")
	elseif cl == 471 then
		hideNatsuki()
		cw('bl',"Natsuki grabs my arm and pulls me out of the closet.")
	elseif cl == 472 then
		cw('bl',"She then takes a seat against the wall, beneath the windowsills.")
	elseif cl == 473 then
		cw('bl',"She pats on the ground next to her, signaling me to sit there.")
	elseif cl == 474 then
		bgUpdate('club')
		updateNatsuki('2','a',80)
		cw('mc',"Wouldn't chairs be more comfortable...?")
	elseif cl == 475 then
		cw('bl',"I take my seat.")
	elseif cl == 476 then
		updateNatsuki('2','k')
		cw('n',"Chairs wouldn't work.")
	elseif cl == 477 then
		cw('n',"We can't read at the same time like that.")
	elseif cl == 478 then
		cw('mc',"Eh? Why's that?")
	elseif cl == 479 then
		cw('mc',"Ah...I guess it's easier to be close together like this...")
	elseif cl == 480 then
		updateNatsuki('2','o')
		cw('n',"--!")
	elseif cl == 481 then
		updateNatsuki('5','r')
		cw('n',"D-Don't just say that!")
	elseif cl == 482 then
		cw('n',"You'll make me feel weird about it!")
	elseif cl == 483 then
		cw('bl','Natsuki crosses her arms and scootches an inch away from me.')
	elseif cl == 484 then
		cw('mc',"Sorry...")
	elseif cl == 485 then
		updateNatsuki('5','g')
		cw('bl',"I didn't exactly expect to be sitting this close to her, either...")
	elseif cl == 486 then
		cw('bl',"Not that I can say it's a particularly bad thing.")
	elseif cl == 487 then
		cw('bl',"I open the book.")
	elseif cl == 488 then
		cw('bl',"It's only a few seconds before Natsuki once again inches closer, reclaiming the additional space while she hopes I won't notice.")
	elseif cl == 489 then
		cw('bl',"I can feel her peering over my shoulder, much more eager to begin reading than I am.")
	elseif cl == 490 then
		updateNatsuki('1','k')
		cw('n',"Wow, how long has it been since I read the beginning...?")
	elseif cl == 491 then
		cw('mc',"Hm?")
	elseif cl == 492 then
		cw('mc',"You don't go back and flip through the older volumes every now and then?")
	elseif cl == 493 then
		updateNatsuki('2','k')
		cw('n',"Not really.")
	elseif cl == 494 then
		cw('n',"Maybe sometimes after I've already finished the series.")
	elseif cl == 495 then
		updateNatsuki('2','c')
		cw('n',"Hey, are you paying attention?")
	elseif cl == 496 then
		cw('mc',"Uh...")
	elseif cl == 497 then
		cw('bl',"I am, but nothing's really happened yet, so I can talk at the same time.")
	elseif cl == 498 then
		cw('bl',"It looks like it's about a bunch of friends in high school.")
	elseif cl == 499 then
		cw('bl',"Typical slice-of-life affair.")
	elseif cl == 500 then
		cw('bl',"I kind of grew out of these, since it's rare for the writing to be entertaining enough to make up for the lack of plot.")
	elseif cl == 501 then
		cw('mc',"So...")
	elseif cl == 502 then
		cw('mc',"What should I expect from this?")
	elseif cl == 503 then
		cw('mc',"Is there going to be plot?")
	elseif cl == 504 then
		updateNatsuki('4','w')
		cw('n',"Well, obviously!")
	elseif cl == 505 then
		cw('n',"You think I would enjoy something that didn't have a plot?")
	elseif cl == 506 then
		updateNatsuki('4','c')
		cw('n',"I mean...")
	elseif cl == 507 then 
		updateNatsuki('2','c')
		cw('n',"Well, I guess I know what you're saying...")
	elseif cl == 508 then
		updateNatsuki('2','k')
		cw('n',"A lot of the beginning is about simple things...")
	elseif cl == 509 then
		cw('n',"Like there's a really funny chapter where they're obsessed with a guy at the ice cream shop...")
	elseif cl == 510 then
		updateNatsuki('2','c')
		cw('n',"But that just helps you get to know the characters!")
	elseif cl == 511 then
		cw('n',"And besides, it's still entertaining.")
	elseif cl == 512 then
		updateNatsuki('2','d')
		cw('n',"But later on, there's all kinds of drama...")
	elseif cl == 513 then
		cw('n',"Like when they get into all their backstories, and when some of the romance starts to happen...")
	elseif cl == 514 then
		cw('n',"That's really what makes it so good.")
	elseif cl == 515 then
		updateNatsuki('2','a')
		cw('n',"There are so many touching parts.")
	elseif cl == 516 then
		cw('mc',"Ah, is that so?")
	elseif cl == 517 then
		cw('mc',"It sounds like you really know what you're talking about.")
	elseif cl== 518 then
		cw('mc',"Maybe I underestimated you.")
	elseif cl == 519 then
		updateNatsuki('2','z')
		cw('n',"Ehehe.")
	elseif cl == 520  then
		updateNatsuki('1','f')
		cw('n',"...Hey, wait!")
	elseif cl == 521 then
		cw('n',"What's that supposed to mean?!")
	elseif cl == 522 then
		cw('mc',"Uwa--")
	elseif cl == 523 then
		cw('bl',"Natsuki gives me a little shove.")
	elseif cl == 524 then
		cw('mc',"I just meant that I haven't yet seen you at your full power...")
	elseif cl == 525 then
		updateNatsuki('5','s')
		cw('n',"Hmph. Good save.")
	elseif cl == 526 then
		cw('mc',"Ah... This chapter seems like it's about baking.")
	elseif cl == 527 then
		cw('mc',"This is just a guess, but is there a lot of baking in this manga?")
	elseif cl == 528 then
		updateNatsuki('5','b')
		cw('n',"Well--")
	elseif cl == 529 then
		cw('bl',"Natsuki pauses for a moment, as if she doesn't want to admit something.")
	elseif cl == 530 then
		updateNatsuki('2','q')
		cw('n',"...Yeah.")
	elseif cl == 531 then
		cw('n',"Why does that matter?")
	elseif cl == 532 then
		cw('mc',"It doesn't, I was just curious...")
	elseif cl == 533 then
		cw('mc',"Since you enjoy baking too, right?")
	elseif cl == 534 then
		updateNatsuki('1','o')
		cw('n',"That's - ")
	elseif cl == 535 then
		cw('n',"Just a coincidence!")
	elseif cl == 536 then
		updateNatsuki('1','t')
		cw('n',"I just happened to get into baking around the same time I got this manga.")
	elseif cl == 537 then
		cw('n',"Like I would ever get into anything because it's in a manga.")
	elseif cl == 538 then
		updateNatsuki('4','y')
		cw('n',"I feel bad for anyone that impressionable.")
	elseif cl == 539 then
		cw('n',"Ahaha!")
	elseif cl == 540 then
		cw('bl',"Definitely not a coincidence...")
	elseif cl == 541 then
		cw('bl',"I guess that explains Natsuki's interest in baking.")
	elseif cl == 542 then
		cw('bl',"Still, of all the hobbies to pick up from a manga, that's definitely one of the better ones.")
	elseif cl == 543 then
		cw('bl',"Not to mention she's really good at it, so who am I to judge?")
	elseif cl == 544 then
		hideAll()
		bgUpdate('cg/n_cg1_base')
		persistent.clear[1] = 1
		if xaload == 1 then
			savepersistent()
		end
		cw('bl',"...")
	elseif cl == 545 then
		cw('bl',"We read on for a few more minutes.")
	elseif cl == 546 then
		cw('bl',"I've finished a couple chapters at this point.")
	elseif cl == 547 then
		cw('mc',"...")
	elseif cl == 548 then
		cw('mc',"...Are you sure this isn't boring for you?")
	elseif cl == 549 then
		cw('n',"It's not!")
	elseif cl == 550 then
		cw('mc',"Even though you're just watching me read?")
	elseif cl == 551 then
		cw('n',"Well...!")
	elseif cl == 552 then
		cw('n',"I'm...fine with that.")
	elseif cl == 553 then
		cw('mc',"If you say so...")
	elseif cl == 554 then
		cw('mc',"...I guess it's fun sharing something you like with someone else.")
	elseif cl == 555 then
		cw('mc',"I always get excited when I convince any of my friends to pick up a series I enjoy.")
	elseif cl == 556 then
		cw('mc',"You know what I mean?")
	elseif cl == 557 then
		cw('n',"...?")
	elseif cl == 558 then
		cw('mc',"Hm?")
	elseif cl == 559 then
		cw('mc',"You don't?")
	elseif cl == 560 then
		cgUpdate('n_cg1_exp2')
		cw('n',"Um...")
	elseif cl == 561 then
		cw('n',"That's not...")
	elseif cl == 562 then
		cw('n',"Well, I wouldn't really know.")
	elseif cl == 563 then
		cw('mc',"...What do you mean?")
	elseif cl == 564 then
		cw('mc',"Don't you share your manga with your friends?")
	elseif cl == 565 then
		cgUpdate('n_cg1_exp3')
		cw('n',"Could you not rub it in?")
	elseif cl == 566 then
		cw('n',"Jeez...")
	elseif cl == 567 then
		cw('mc',"Ah... Sorry...")
	elseif cl == 568 then
		cw('n',"Hmph.")
	elseif cl == 569 then
		cw('n',"Like I could ever get my friends to read this...")
	elseif cl == 570 then
		cw('n',"They just think manga is for kids.")
	elseif cl == 571 then	
		cw('n',"I can't even bring it up without them being all like...")
	elseif cl == 572 then
		cw('n',"'Eh? You still haven't grown out of that yet?\'")
	elseif cl == 573 then
		cw('n',"Makes me want to punch them in the face...")
	elseif cl == 574 then
		cw('mc',"Urgh, I know those kinds of people...")
	elseif cl == 575 then
		cw('mc',"Honestly, it takes a lot of effort to find friends who don't judge, much less friends who are also into it...")
	elseif cl == 576 then
		cw('mc',"I'm already kind of a loser, so I guess I gravitated toward the other losers over time.")
	elseif cl == 577 then
		cw('mc',"But it's probably harder for someone like you...")
	elseif cl == 578 then
		cgHide()
		cw('n',"Hm.")
	elseif cl == 579 then
		cw('n',"Yeah, that's pretty accurate.")
	elseif cl == 580 then
		cw('bl',"...Wait, which part??")
	elseif cl == 581 then
		cw('n',"I mean, I feel like I can't even keep it in my own room...")
	elseif cl == 582 then
		cw('n',"I don't even know what my dad would do if he found this.")
	elseif cl == 583 then
		cw('n',"At least it's safe here in the clubroom.")
	elseif cl == 584 then
		cgUpdate('n_cg1_exp3')
		cw('n',"'Cept Monika was kind of a jerk about it...")
	elseif cl == 585 then
		cw('n',"Ugh! I just can't win, can I?")
	elseif cl == 586 then
		cw('mc',"Well, it paid off in the end, didn't it?")
	elseif cl == 587 then
		cw('mc',"I mean, here I am, reading it.")
	elseif cl == 588 then
		cw('n',"Well, it's not like that solves any of my problems.")
	elseif cl == 589 then
		cw('mc',"Maybe...")
	elseif cl == 590 then
		cw('mc',"But at least you're enjoying yourself, right?")
	elseif cl == 591 then
		cgUpdate('n_cg1_exp2')
		cw('n',"--")
	elseif cl == 592 then
		cw('n',"...")
	elseif cl == 593 then
		cw('n',"...So?")
	elseif cl == 594 then
		cw('mc',"Ahaha.")
	elseif cl == 595 then
		cgUpdate('n_cg1_exp3')
		cw('n',"Jeez, that's enough!")
	elseif cl == 596 then
		cw('n',"Are you gonna keep reading, or what?")
	elseif cl == 597 then
		cw('mc',"Yeah, yeah...")
	elseif cl == 598 then
		cw('bl',"I flip the page.")
	elseif cl == 599 then
		cw('bl',"Suddenly, Natsuki starts laughing.")
	elseif cl == 600 then
		cgUpdate('n_cg1_exp1')
		cw('n',"Ahahaha!")
	elseif cl == 601 then
		cw('n',"I totally forgot that happens!")
	elseif cl == 602 then
		cw('bl',"Natsuki puts her finger on one of the panels.")
	elseif cl == 603 then
		cw('n',"Minori is my favorite character.")
	elseif cl == 604 then
		cw('n',"You always feel a little bad for her, since she's so unlucky.")
	elseif cl == 605 then
		cw('n',"But it gets especially bad when--")
	elseif cl == 606 then
		cgHide()
		cw('n',"Uu...")
	elseif cl == 607 then
		cw('n',"I shouldn't be talking about that yet!")
	elseif cl == 608 then
		cw('n',"Just finish this chapter!")
	elseif cl == 609 then
		bgUpdate('club')
		cw('bl',"Natsuki's voice sparkles with excitement.")
	elseif cl == 610 then
		cw('bl',"It's a stark contrast to her usual bossy tone.")
	elseif cl == 611 then
		cw('bl',"But if she's not used to sharing her favorite manga with her friends, I can understand why.")
	elseif cl == 612 then
		cw('bl',"It's hard to express in words the feeling you get when connecting with someone like that.")
	elseif cl == 613 then	
		cw('bl',"And being able to provide that to Natsuki, for whom it's a rare experience...")
	elseif cl == 614 then
		cw('bl',"The thought makes me smile a little to myself.")
	elseif cl == 615 then
		updateMonika('3','b',10)
		cw('m',"Okay everyone!")
	elseif cl == 616 then
		cw('mc',"Eh?")
	elseif cl == 617 then
		cw('m',"Are you all ready with today's poems?")
	elseif cl == 618 then
		cw('mc',"...")
	elseif cl == 619 then
		updateNatsuki('4','w',150)
		cw('n',"Oh, come on!")
	elseif cl == 620 then
		cw('n',"Could your timing be any worse?")
	elseif cl == 621 then
		updateMonika('5a','')
		cw('m',"Sorry~!")
	elseif cl == 622 then
		cw('m',"I just need to make sure we have enough time.")
	elseif cl == 623 then
		cw('m',"Though you do look pretty cozy over there. Ahaha!")
	elseif cl == 624 then
		updateNatsuki('4','o')
		cw('n',"Eh...?")
	elseif cl == 625 then
		updateNatsuki('1','p')
		cw('n',"A-Ah!")
	elseif cl == 626 then
		cw('bl',"Natsuki suddenly notices how close she's gotten to me.")
	elseif cl == 627 then
		cw('bl',"She hastily slides herself a good twelve inches away from me.")
	elseif cl == 628 then
		hideMonika()
		updateNatsuki('1','p',80)
		cw('mc',"Alright...")
	elseif cl == 629 then
		cw('mc',"Guess I'll stop here for now.")
	elseif cl == 630 then
		cw('bl',"I close the book and hand it towards Natsuki.")
	elseif cl == 631 then
		updateNatsuki('2','m')
		cw('n',"You're just giving it back...?")
	elseif cl == 632 then
		cw('n',"Don't you want to know what happens?")
	elseif cl == 633 then
		cw('mc',"Ah... Yeah, but...")
	elseif cl == 634 then
		cw('mc',"Monika just said--")
	elseif cl == 635 then
		updateNatsuki('2','u')
		cw('n',"Don't be dumb.")
	elseif cl == 636 then
		cw('n',"Just take it home with you.")
	elseif cl == 637 then
		cw('mc',"Eh?")
	elseif cl == 638 then
		cw('mc',"...Is that really alright?")
	elseif cl == 639 then
		cw('bl',"I say that mostly because I really didn't plan on using my spare time to read this...")
	elseif cl == 640 then
		updateNatsuki('4','h')
		cw('n',"Well, of course.")
	elseif cl == 641 then
		cw('n',"It would take forever to finish if you didn't take it home.")
	elseif cl == 642 then
		cw('n',"Just finish that one before tomorrow, so we can start the next one.")
	elseif cl == 643 then
		updateNatsuki('4','g')
		cw('n',"And if it gets bent, I'll kill you.")
	elseif cl == 644 then
		cw('mc',"By tomorrow...?")
	elseif cl == 645 then
		hideNatsuki()
		cw('bl',"I only got partway through the volume so far.")
	elseif cl == 646 then
		cw('bl',"I might fall behind on some shows if I try to get through this...")
	elseif cl == 647 then 
		cw('bl',"But I suppose that's a necessary sacrifice in exchange for seeing Natsuki's enthusiastic face.")
	elseif cl == 648 then
		cw('bl',"Or am I more scared of what will happen if I don't finish it...?")
	elseif cl == 649 then
		cw('bl',"Alright, then!")
	elseif cl == 650 then
		cw('bl',"I stand up.")
	elseif cl == 651 then
		cw('bl',"I return to where I put my stuff and carefully slip the book into my bag.")
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
	elseif cl == 1359 then
		scriptJump(423)
	end
end

function Natsuki_exclusive_2()
	if cl == 1359 then
		savevalue = 'n'
		audioUpdate('6')
		updateNatsuki('4','c',80)
		cw('n',"...")
	elseif cl == 1360 then
		cw('bl',"It's not long before Natsuki comes up to me expectantly.")
	elseif cl == 1361 then
		cw('mc',"Yeah, yeah.")
	elseif cl == 1362 then
		cw('mc',"Don't worry, I kept my promise.")
	elseif cl >= 1363 then
		Natsuki_exclusive_2_ch3()
	end
end
function Natsuki_exclusive_2_ch3()
	if cl < 1364 then
		cl = 1364
	elseif cl == 1364 then
		cw('bl',"I pull the first volume of Parfait Girls out from my bag.")
	elseif cl == 1365 then
		cw('bl',"Natsuki takes it from my hands, then quickly turns it over, presumably to check for wrinkles.")
	elseif cl == 1366 then
		cw('mc',"Hey, I'm not that careless...")
	elseif cl == 1367 then
		cw('mc',"I handle manga all the time, you know.")
	elseif cl == 1368 then
		updateNatsuki('1','m')
		cw('n',"I just wanted to make sure!")
	elseif cl == 1369 then
		updateNatsuki('1','c')
		cw('n',"Can you blame me for being paranoid?")
	elseif cl == 1370 then
		cw('n',"I don't give people my manga every day, you know.")
	elseif cl == 1371 then
		cw('mc',"That's true...")
	elseif cl == 1372 then
		cw('mc',"I don't blame you.")
	elseif cl == 1373 then
		updateNatsuki('2','j')
		cw('n',"Well anyway, let me put this one back.")
	elseif cl == 1374 then
		cw('n',"I'm gonna get the next one, okay?")
	elseif cl == 1375 then
		hideNatsuki()
		cw('bl',"Natsuki makes her way to the closet.")
	elseif cl == 1376 then
		cw('bl',"I follow.")
	elseif cl == 1377 then
		bgUpdate('closet')
		updateNatsuki('2','l',80)
		cw('n',"So you're gonna tell me everything you thought, right??")
	elseif cl == 1378 then
		updateNatsuki('2','k')
		cw('n',"Where did this volume leave off again? I forget.")
	elseif cl == 1379 then
		cw('mc',"Ah, the chapter ended when Minori and Alice found--")
	elseif cl == 1380 then
		updateNatsuki('1','e')
		cw('n',"Monika!!")
	elseif cl == 1381 then
		cw('bl',"Natsuki's voice resonates out from inside the closet.")
	elseif cl == 1382 then
		cw('mc',"Eh...?")
	elseif cl == 1383 then
		cw('bl',"I peer inside.")
	elseif cl == 1384 then
		cw('bl',"All of Natsuki's books are lined up on the top shelf.")
	elseif cl == 1385 then
		cw('n',"Did you move my manga again?!")
	elseif cl == 1386 then
		updateMonika('3','l',-50)
		cw('m',"Ah, sorry, sorry!")
	elseif cl == 1387 then
		cw('m',"The teacher got mad at me for taking up so much space in her closet...")
	elseif cl == 1388 then
		cw('m',"So I had to move some stuff around and clean up a little bit.")
	elseif cl == 1389 then
		updateMonika('3','b')
		cw('m',"It's all still there, I just had to organize it a bit!")
	elseif cl == 1390 then
		hideMonika()
		updateNatsuki('1','r')
		cw('n',"Ugh...")
	elseif cl == 1391 then
		cw('bl',"The top shelf is far above Natsuki's head.")
	elseif cl == 1392 then
		cw('bl',"She makes a futile hop, trying to figure out how to reach her manga.")
	elseif cl == 1393 then
		updateNatsuki('1','q')
		cw('n',"Jeez...!")
	elseif cl == 1394 then
		cw('n',"This is so inconvenient!")
	elseif cl == 1395 then
		updateNatsuki('1','c')
		cw('n',"I'm moving these all back down.")
	elseif cl == 1396 then
		cw('n',"There's plenty of room on these shelves.")
	elseif cl == 1397 then
		cw('n',"And besides...")
	elseif cl == 1398 then
		updateNatsuki('4','w')
		cw('n',"They're really pretty to look at when they're all lined up!")
	elseif cl == 1399 then
		cw('n',"Why would you waste that on the top shelf?")
	elseif cl == 1400 then
		cw('mc',"Ah, Natsuki...")
	elseif cl == 1401 then
		cw('mc',"There's a stool on the wall there.")
	elseif cl == 1402 then
		cw('bl',"In the closet, there's a collapsible stool that's hanging on the wall.")
	elseif cl == 1403 then
		cw('mc',"If you want, I can reach up there and hand them to you...")
	elseif cl == 1404 then
		updateNatsuki('1','g')
		cw('n',"I can get them myself!")
	elseif cl == 1405 then
		cw('bl',"Natsuki grabs the stool from the wall and unfolds it.")
	elseif cl == 1406 then
		cw('n',"You think I'm too short or something?")
	elseif cl == 1407 then
		cw('mc',"I mean--")
	elseif cl == 1408 then
		updateNatsuki('5','x')
		cw('n',"I knew it!")
	elseif cl == 1409 then
		updateNatsuki('5','w')
		cw('n',"Well, you know what?")
	elseif cl == 1410 then
		cw('n',"Just watch me!")
	elseif cl == 1411 then
		cw('bl',"Natsuki hops onto the stool, which ends up being a little wobbly because of its collapsible design.")
	elseif cl == 1412 then
		updateNatsuki('1','f')
		cw('n',"A-Ah...")
	elseif cl == 1413 then
		cw('mc',"Careful...")
	elseif cl == 1414 then
		updateNatsuki('1','r')
		cw('n',"I know what I'm doing!!")
	elseif cl == 1415 then
		cw('bl',"Standing on the stool, Natsuki's fingertips reach the top shelf.")
	elseif cl == 1416 then
		cw('bl',"The stool would be enough for me to easily grab the books, but Natsuki is being stubborn as usual.")
	elseif cl == 1417 then
		cw('n',"U-Uuuh...")
	elseif cl == 1418 then
		cw('bl',"Natsuki uses her fingers to scoot one of the smaller boxes to the edge of the shelf.")
	elseif cl == 1419 then
		updateNatsuki('1','t')
		cw('n',"See...?")
	elseif cl == 1420 then
		updateNatsuki('1','v')
		cw('n',"Kyah--!")
	elseif cl == 1421 then
		cw('bl',"The box suddenly tips.")
	elseif cl == 1422 then
		cw('bl',"Natuki barely catches it before it falls to the floor.")
	elseif cl == 1423 then
		cw('bl',"The stool wobbles.")
	elseif cl == 1424 then
		cw('n',"Wawaa--")
	elseif cl == 1425 then
		cw('bl',"Losing balance, Natsuki hops off the stool.")
	elseif cl == 1426 then
		cw('bl',"Thankfully, she was able to stay on her feet.")
	elseif cl == 1427 then
		cw('bl',"She holds the box triumphantly.")
	elseif cl == 1428 then
		updateNatsuki('4','y')
		cw('n',"T-There!")
	elseif cl == 1429 then
		cw('bl',"Having almost fell, Natsuki is a bit shaken up.")
	elseif cl == 1430 then
		cw('mc',"Jeez...")
	elseif cl == 1431 then
		cw('mc',"No need to prove yourself to me.")
	elseif cl == 1432 then
		cw('mc',"There's no way you'll be able to get the bigger boxes like that.")
	elseif cl == 1433 then
		cw('mc',"I can reach them, so just--")
	elseif cl == 1434 then
		updateNatsuki('2','h')
		cw('n',"I said I can do it!")
	elseif cl == 1435 then
		cw('n',"I don't want your help, okay?")
	elseif cl == 1436 then
		cw('mc',"Sigh...")
	elseif cl == 1437 then
		cw('n',"I'm gonna get a chair, so just hang on.")
	elseif cl == 1438 then
		hideNatsuki()
		cw('bl',"Natsuki forces her way past me out of the closet.")
	elseif cl == 1439 then
		cw('n',"Let's see...")
	elseif cl == 1440 then
		cw('bl',"The classroom chairs have the desks attached, so they're too inconvenient to fit into the closet.")
	elseif cl == 1441 then
		cw('n',"Aha!")
	elseif cl == 1442 then
		cw('bl',"Natsuki trots over to the teacher's desk, which has a computer chair behind it.")
	elseif cl == 1443 then
		cw('bl',"She rolls it on its wheels back over to the closet.")
	elseif cl == 1444 then
		updateNatsuki('4','a',80)
		cw('mc',"Ah--")
	elseif cl == 1445 then
		cw('bl',"It's a little dangerous, since the chair swivels and rolls.")
	elseif cl == 1446 then
		cw('bl',"But I've already learned my lesson, so I keep my mouth shut.")
	elseif cl == 1447 then
		updateNatsuki('1','a')
		cw('n',"Ush--")
	elseif cl == 1448 then
		cw('bl',"Natsuki climbs onto the chair, then slowly balances onto her feet.")
	elseif cl == 1449 then
		cw('bl',"Since she refuses my help, I take a seat with my back against the side of the doorway and simply watch.")
	elseif cl == 1450 then
		hideAll()
		bgUpdate('cg/n_cg2_base')
		persistent.clear[2] = 1
		if xaload == 1 then
			savepersistent()
		end
		cw('n',"Aha! There we go!")
	elseif cl == 1451 then
		cw('n',"See? I can easily do it now.")
	elseif cl == 1452 then
		cw('n',"Natsuki grabs a stack of manga and bends down to put it on the shelf below.")
	elseif cl == 1453 then
		cw('n',"W-Wahh--")
	elseif cl == 1454 then
		cw('bl',"The chair swivels.")
	elseif cl == 1455 then
		cw('bl',"Natsuki catches herself on the shelf.")
	elseif cl == 1456 then
		cgUpdate('n_cg2_exp1')
		cw('n',"What are you doing??")
	elseif cl == 1457 then
		cw('n',"Can you at least hold the chair steady instead of sitting and doing nothing?")
	elseif cl == 1458 then
		cw('bl',"(Who was it who told me not to help...?)")
	elseif cl == 1459 then
		cw('mc',"Yeah, yeah...I got you.")
	elseif cl == 1460 then
		cgHide()
		cw('bl',"I hold the chair while Natsuki reaches back up.")
	elseif cl == 1461 then
		cw('mc',"--!")
	elseif cl == 1462 then
		cw('bl',"I can...")
	elseif cl == 1463 then
		cw('bl',"I can almost see up her skirt?!")
	elseif cl == 1464 then
		cw('mc',"Guh--")
	elseif cl == 1465 then
		cw('bl',"I force myself to turn away.")
	elseif cl == 1466 then
		cw('bl',"Natsuki seriously didn't think this through...!")
	elseif cl == 1467 then
		cw('bl',"Once she realizes, I'll be dead!")
	elseif cl == 1468 then
		cw('n',"Hup--")
	elseif cl == 1469 then
		cw('bl',"Natsuki wraps her arms around the Parfait Girls box set, easily the largest one on the shelf.")
	elseif cl == 1470 then
		cw('n',"Uu...heavy...")
	elseif cl == 1471 then
		cgUpdate('n_cg2_exp1')
		cw('n',"Hey, "..player.."...")
	elseif cl == 1472 then
		cw('n',"I-I don't think I can bend down without falling...!")
	elseif cl == 1473 then
		cw('n',"Hurry and take this one...")
	elseif cl == 1474 then
		cw('mc',"Eh?")
	elseif cl == 1475 then
		cw('mc',"But then I have to let go of the chair...")
	elseif cl == 1476 then
		cw('n',"That's fine...!")
	elseif cl == 1477 then
		cw('n',"Just for a second!")
	elseif cl == 1478 then
		cw('n',"Hurry up...")
	elseif cl == 1479 then
		cw('mc',"Alright...!")
	elseif cl == 1480 then
		cw('mc',"Let me just stand up.")
	elseif cl == 1481 then
		cw('bl',"I slowly release my grip from the chair.")
	elseif cl == 1482 then
		cw('n',"What do you mean 'stand up'?")
	elseif cl == 1483 then
		cw('bl',"Natsuki looks down at me.")
	elseif cl == 1484 then
		cw('n',"Why are you all the way back--")
	elseif cl == 1485 then
		audioUpdate('0')
		cw('n',"E-Eh...?")
	elseif cl == 1486 then
		cw('bl',"Natsuki looks like she just realized something, but she'll lose her balance if she moves.")
	elseif cl == 1487 then
		cw('mc',"Natsuki, the box--")
	elseif cl == 1488 then
		audioUpdate('7')
		cgUpdate('n_cg2_exp2')
		cw('n',"W-What are you looking at?!")
	elseif cl == 1489 then
		cw('mc',"--!")
	elseif cl == 1490 then
		cw('n',"You're trying to look at my...m-my...")
	elseif cl == 1491 then
		cw('bl',"Natsuki's legs shake.")
	elseif cl == 1492 then
		cw('mc',"I-I'm not! I was just--")
	elseif cl == 1493 then
		cw('mc',"--Natsuki, don't try to move!")
	elseif cl == 1494 then
		cw('mc',"Just give me the box!")
	elseif cl == 1495 then
		cw('n',"You...you perv!")
	elseif cl == 1496 then
		cw('n',"You set me up!!")
	elseif cl == 1497 then
		cw('n',"Go away!")
	elseif cl == 1498 then
		cw('n',"Get out!")
	elseif cl == 1499 then
		cw('mc',"But--")
	elseif cl == 1500 then
		cw('n',"I'll do it myself!!")
	elseif cl == 1501 then
		cgHide()
		cw('n',"A-Ah--")
	elseif cl == 1502 then
		cw('bl',"The chair suddenly swivels beneath Natsuki's feet.")
	elseif cl == 1503 then
		cw('mc',"Natsuki--!")
	elseif cl == 1504 then
		cgUpdate('n_cg2_exp2')
		cw('n',"Kyaaaaa!")
	elseif cl == 1505 then
		cw('bl',"The scene turns to chaos in a split second.")
	elseif cl == 1506 then
		cw('bl',"The chair flies from under Natsuki's feet.")
	elseif cl == 1507 then
		cw('bl',"Frantically, I try to catch her.")
	elseif cl == 1508 then
		cw('bl',"The box topples out of her hands, and the books go flying.")
	elseif cl == 1509 then
		cw('mc',"I got you--")
	elseif cl == 1510 then
		cgHide()
		bgUpdate('black')
		audioUpdate('0')
		sfxplay('fall2')
		cw('bl',"Crash!")
	elseif cl == 1511 then
		cw('bl',"The full force of Natsuki's body against me throws me to the ground.")
	elseif cl == 1512 then
		cw('bl',"A whole bunch of books pelt me in the face.")
	elseif cl == 1513 then
		cw('bl',"Natsuki tries to shield herself with her own arms as her face lands straight on my chest.")
	elseif cl == 1514 then
		cw('mc',"Ungh...")
	elseif cl == 1515 then
		cw('bl',"My right arm and my back seriously felt the impact.")
	elseif cl == 1516 then
		audioUpdate('8')
		bgUpdate('closet')
		updateNatsuki('f_1','f_v',80) --show natsuki 1v at face
		cw('n',"U-Uu...")
	elseif cl == 1517 then
		cw('bl',"Slowly, Natsuki comes to her senses.")
	elseif cl == 1518 then
		cw('mc',"Ghk--!")
	elseif cl == 1519 then
		cw('bl',"She presses her arms straight into me to prop herself up.")
	elseif cl == 1520 then
		updateNatsuki('f_1','f_h') --1h at face
		cw('n',"Eh...?")
	elseif cl == 1521 then
		cw('bl',"Natsuki seems to realize that it's not the floor that's beneath her.")
	elseif cl == 1522 then
		updateNatsuki('f_1','f_o') --1o at face
		cw('n',"G-Guuuuu...!!")
	elseif cl == 1523 then
		cw('n',"Gross! Gross!")
	elseif cl == 1524 then
		cw('mc',"Ghak--!")
	elseif cl == 1525 then
		cw('bl',"A fist pounds into my chest.")
	elseif cl == 1526 then
		cw('bl',"Natsuki then hoists herself to her feet.")
	elseif cl == 1527 then
		updateNatsuki('1','x')
		cw('n',"What were you thinking?!")
	elseif cl == 1528 then
		cw('n',"You sicko!")
	elseif cl == 1529 then
		updateMonika('1','d',-50)
		cw('m',"Everything okay over there...?")
	elseif cl == 1530 then
		cw('m',"I heard a loud noise...")
	elseif cl == 1531 then
		cw('bl',"Monika suddenly peers in.")
	elseif cl == 1532 then
		updateNatsuki('1','e')
		cw('n',"Monika!")
	elseif cl == 1533 then
		cw('n',"See what happens when you put the manga on the top shelf?!")
	elseif cl == 1534 then
		updateNatsuki('1','w')
		cw('n',"Are you trying to kill your club members or something?")
	elseif cl == 1535 then
		cw('n',"Jeez!")
	elseif cl == 1536 then
		updateMonika('5a')
		cw('m',"S-Sorry, sorry!")
	elseif cl == 1537 then
		cw('m',"Ahaha...")
	elseif cl == 1538 then
		updateNatsuki('5','r')
		cw('n',"Oh, and one more thing.")
	elseif cl == 1539 then
		cw('n',"It seems like your most recent club member is a total pervert.")
	elseif cl == 1540 then
		cw('n',"So I hope you're happy.")
	elseif cl == 1541 then
		cw('mc',"I didn't--!")
	elseif cl == 1542 then
		cw('bl',"Somehow, it's impossible for me to explain this whole bizarre situation to Monika.")
	elseif cl == 1543 then
		cw('mc',"I didn't do anything, I swear...!")
	elseif cl == 1544 then
		updateMonika('1','l')
		cw('m',"I know, I know, don't worry~")
	elseif cl == 1545 then
		hideMonika()
		cw('bl',"Monika says that quietly to me.")
	elseif cl == 1546 then
		cw('bl',"Looks like I'm off the hook...")
	elseif cl == 1547 then
		audioUpdate('0')
		updateNatsuki('1','p')
		cw('n',"Oh no...!")
	elseif cl == 1548 then
		cw('n',"My...my...")
	elseif cl == 1549 then
		updateNatsuki('1','m')
		cw('mc',"Eh?")
	elseif cl == 1550 then
		cw('bl',"I look down.")
	elseif cl == 1551 then
		cw('bl',"Natsuki is kneeling on the floor, holding one of the books that are scattered all over.")
	elseif cl == 1552 then
		cw('bl',"There's a large diagonal crease along the page that she's desperately trying to smooth out.")
	elseif cl == 1553 then
		cw('mc',"Ah, it must have landed on the page...")
	elseif cl == 1554 then
		cw('bl',"Natsuki tries a bit more to fix the crease, but she can't get it out.")
	elseif cl == 1555 then
		updateNatsuki('1','2b')
		cw('bl',"Suddenly, she gives up and slams the book shut, then throws it to the floor.")
	elseif cl == 1556 then
		cw('bl',"Instead of continuing to yell, she just lowers her head.")
	elseif cl == 1557 then
		audioUpdate('9')
		updateNatsuki('1','2d')
		cw('n',"*Sob*")
	elseif cl == 1558 then
		cw('mc',"...Natsuki, are you--")
	elseif cl == 1559 then
		updateNatsuki('1','2f')
		cw('n',"No!")
	elseif cl == 1560 then
		cw('bl',"Natsuki's voice squeaks.")
	elseif cl == 1561 then
		cw('bl',"I see tears on her face.")
	elseif cl == 1562 then
		cw('mc',"Ah...")
	elseif cl == 1563 then
		cw('mc',"I'll help get the crease out, okay?")
	elseif cl == 1564 then
		cw('mc',"It's partially my fault, so...")
	elseif cl == 1565 then
		cw('bl',"Natsuki shakes her head, still looking down.")
	elseif cl == 1566 then
		cw('n',"No...")
	elseif cl == 1567 then
		cw('n',"I don't even care that much...")
	elseif cl == 1568 then
		cw('n',"I'm just...")
	elseif cl == 1569 then
		cw('n',"Having a really bad day today...")
	elseif cl == 1570 then
		cw('bl',"Natsuki sobs again.")
	elseif cl == 1571 then
		updateNatsuki('1','2i')
		cw('n',"I didn't mean to take it out on you...")
	elseif cl == 1572 then
		cw('n',"I really didn't mean to!")
	elseif cl == 1573 then
		cw('mc',"It's...it's fine.")
	elseif cl == 1574 then
		cw('mc',"...Is there anything you want to talk about?")
	elseif cl == 1575 then
		updateNatsuki('1','2f')
		cw('n',"Natsuki shakes her head.")
	elseif cl == 1576 then
		cw('n',"Just...")
	elseif cl == 1577 then
		cw('n',"Every day...")
	elseif cl == 1578 then
		cw('n',"...is...so hard.")
	elseif cl == 1579 then
		cw('n',"I just want to...")
	elseif cl == 1580 then
		cw('n',"...come to the club and...")
	elseif cl == 1581 then
		cw('n',"...")
	elseif cl == 1582 then
		cw('bl',"Natsuki falls silent again.")
	elseif cl == 1583 then
		cw('bl',"I can't press her, so I can only do what I know how to do.")
	elseif cl == 1584 then
		cw('mc',"Alright...")
	elseif cl == 1585 then
		cw('mc',"Well, I'll help clean this up.")
	elseif cl == 1586 then
		cw('mc',"And I'll move the rest of your manga for you.")
	elseif cl == 1587 then
		cw('mc',"Ah.")
	elseif cl == 1588 then
		cw('bl',"I pick up volume 2 of Parfait Girls.")
	elseif cl == 1589 then
		cw('mc',"We'll set this one aside.")
	elseif cl == 1590 then
		cw('mc',"This'll help cheer you up a bit, right?")
	elseif cl == 1591 then
		cw('mc',"We can get started on it once I'm done here.")
	elseif cl == 1592 then
		updateNatsuki('1','2h')
		cw('n',"Natsuki looks up with her glossy eyes.")
	elseif cl == 1593 then
		cw('bl',"Her lip quivers.")
	elseif cl == 1594 then
		cw('n',"You're...")
	elseif cl == 1595 then
		cw('n',"You're really nice to me...")
	elseif cl == 1596 then
		cw('mc',"Eh?")
	elseif cl == 1597 then
		cw('bl',"That sounds really strange, coming from Natsuki.")
	elseif cl == 1598 then
		cw('bl',"I didn't expect it at all.")
	elseif cl == 1599 then
		cw('mc',"Well...")
	elseif cl == 1600 then
		cw('mc',"I'm just treating you like a friend, you know?")
	elseif cl == 1601 then
		updateNatsuki('1','2f')
		cw('n',"Nn...")
	elseif cl == 1602 then
		hideAll()
		cw('bl',"Natsuki lowers her head and stifles another sob.")
	elseif cl == 1603 then
		cw('bl',"I'm not sure what happened to her today, but being nice is the least I could do.")
	elseif cl == 1604 then
		cw('bl',"The next couple minutes are silent between us as I begin gathering the scattered books.")
	elseif cl == 1605 then
		cw('bl',"I make sure to slip them into the box in their correct order.")
	elseif cl == 1606 then
		cw('bl',"After a little bit, Natsuki starts helping.")
	elseif cl == 1607 then
		cw('bl',"It isn't long before we're done, and I hoist the box onto the shelf where Natsuki wanted to put it.")
	elseif cl == 1608 then
		cw('bl',"Then, I get on the stool and quickly finish moving the rest of her books from the top shelf.")
	elseif cl == 1609 then
		cw('mc',"Alright--!")
	elseif cl == 1610 then
		cw('mc',"That should do it.")
	elseif cl == 1611 then
		cw('bl',"I hop off the stool.")
	elseif cl == 1612 then
		cw('bl',"Natsuki averts her gaze.")
	elseif cl == 1613 then
		updateNatsuki('5','u',80)
		cw('n',"T-Thanks...")
	elseif cl == 1614 then
		cw('mc',"Ahaha...")
	elseif cl == 1615 then
		cw('mc',"It's nothing.")
	elseif cl == 1616 then
		cw('mc',"Natsuki is holding the volume I set aside in her hands.")
	elseif cl == 1617 then
		cw('mc',"Alright, I'm ready.")
	elseif cl == 1618 then
		updateNatsuki('2','n')
		cw('n',"Good.")
	elseif cl == 1619 then
		cw('n',"Even if you weren't, I'd make you anyway.")
	elseif cl == 1620 then
		updateNatsuki('2','u')
		cw('n',"You're taking responsibility for what you said.")
	elseif cl == 1621 then
		cw('n',"The thing about cheering me up.")
	elseif cl == 1622 then
		cw('mc',"If you insist!")
	elseif cl == 1623 then
		audioUpdate('8')
		bgUpdate('club')
		hideNatsuki()
		cw('bl',"We sit in the same spot as last time, and I open the second volume.")
	elseif cl == 1624 then
		cw('bl',"Natsuki's mood quickly improves, laughing and pointing things out to me.")
	elseif cl == 1625 then
		cw('bl',"She's surprisingly sharp, making note of a lot of subtle repeated jokes and background elements.")
	elseif cl == 1626 then
		cw('bl',"In the end, I'm pretty impressed by how everything ties together in this manga.")
	elseif cl == 1627 then
		cw('bl',"I guess Natsuki has good taste after all.")
	elseif cl == 1628 then
		cw('bl',"After some time, Monika gets our attention as usual, and it's time to share poems again.")
	elseif cl == 1629 then
		updateNatsuki('2','j',80)
		cw('mc',"Guess I'll be holding onto this for now.")
	elseif cl == 1630 then
		cw('n',"Yep!")
	elseif cl == 1631 then
		cw('n',"Even you sound more enthusiastic this time.")
	elseif cl == 1632 then
		cw('mc',"Well, I'm starting to get into it, you know.")
	elseif cl == 1633 then
		updateNatsuki('4','z')
		cw('n',"Ehehe.")
	elseif cl == 1634 then
		cw('n',"Told you.")
	elseif cl == 1635 then
		cw('mc',"Yeah, yeah...")
	elseif cl == 1636 then
		hideNatsuki()
		cw('bl',"I return to my seat and slip the book into my bag.")
	elseif cl == 1637 then
		poeminitialize()
	end
end
