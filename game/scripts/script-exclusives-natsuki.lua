function natsuki_exclusive_1()
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
		ca = "...Sometimes..."
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
		bgUpdate('n_cg1_base')
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
		cw('n',"You don't?")
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
	elseif cl == 652 then
		if chapter == 1 then 
			cl = 653
		end
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
    
	end
end