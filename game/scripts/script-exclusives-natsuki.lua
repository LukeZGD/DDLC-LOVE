function ch1natsuki()
	if cl == 423 then
		ct = 'Natsuki'
		ca = '"Ugh...!"'
    elseif cl == 424 then
		ct = ''
		ca = "I hear Natsuki utter an exasperated sigh from "
		cb = "within the closet."
    elseif cl == 425 then
		ca = "She seems to be annoyed by something."
	elseif cl == 426 then
		ca = "I approach her, in case she needs a hand."
	elseif cl == 427 then
		bgUpdate('closet')
		audioUpdate('6')
		nx = 80
		updateNatsuki('4','r')
		ct = player
		ca = '"You looking for something in there?"'
	elseif cl == 428 then
		nc = 'x'
		ct = 'Natsuki'
		ca = '"Freaking Monika..."'
	elseif cl == 429 then
		ca = '"She never puts my stuff back in the right spot!"'
	elseif cl == 430 then
		ca = '"What\'s the point in keeping your collection '
		cb = 'organized if someone else is just gonna mess it '
		cc = 'up?"'
	elseif cl == 431 then
		ct = ''
		ca = "Natsuki slides a bunch of stacked books and boxes"
		cb = "across the shelf."
	elseif cl == 432 then
		ct = player
		ca = '"Manga..."'
	elseif cl == 433 then
		updateNatsuki('2','c')
		ct = 'Natsuki'
		ca = '"You read manga, right?"'
	elseif cl == 434 then
		ct = player
		ca = '"Ah - "'
	elseif cl == 435 then
		ca = '"...Sometimes..."'
	elseif cl == 436 then
		ct = ''
		ca = "Manga is one of those things where you can't "
		cb = "admit you're really into it until you figure out"
		cc = "where the other person stands."
	elseif cl == 437 then
		ct = player
		ca = '"...How did you know, anyway?"'
	elseif cl == 438 then
		nc = 'k'
		ct = 'Natsuki'
		ca = '"I heard you bring it up at some point."'
	elseif cl == 439 then
		ca = '"Besides, it\'s kind of written on your face."'
	elseif cl == 440 then
		ct = ''
		ca = "What's that supposed to mean...?"
	elseif cl == 441 then
		ct = player
		ca = '"I-I see..."'
	elseif cl == 442 then
		ca = "There's a lone volume of manga amidst a stack of"
		cb = "various books on the side of one of the shelves."
	elseif cl == 443 then
		ca = "Curious, I pull it out of the stack."
	elseif cl == 444 then
		updateNatsuki('1','b')
		ct = 'Natsuki'
		ca = '"There it is!"'
	elseif cl == 445 then
		ct = ''
		ca = "Natsuki snatches it out of my hand."
	elseif cl == 446 then
		ca = "She then turns to a box of manga and slips the "
		cb = "volume right into the middle of the rest."
	elseif cl == 447 then
		updateNatsuki('4','d')
		ct = 'Natsuki'
		ca = '"Aah, much better!"'
	elseif cl == 448 then
		ca = '"Seeing a box set with one book missing is '
		cb = 'probably the most irritating sight in the world."'
	elseif cl == 449 then
		ct = player
		ca = '"I know that feel..."'
	elseif cl == 450 then
		ct = ''
		ca = "I get a closer look at the box set she's admiring."
	elseif cl == 451 then
		ct = player
		ca = '"Parfait Girls...?"'
	elseif cl == 452 then
		ct = ''
		ca = "It's a series I've never heard of in my life."
	elseif cl == 453 then
		ca = "That probably means it's either way out of my"
		cb = "demographic, or it's simply terrible."
	elseif cl == 454 then
		updateNatsuki('5','g')
		ct = 'Natsuki'
		ca = '"If you\'re gonna judge, you can go do it '
		cb = 'through the glass on that door."'
	elseif cl == 455 then
		ct = ''
		ca = "She points to the classroom door."
	elseif cl == 456 then
		ct = player
		ca = '"H-Hey, I wasn\'t judging anything...!"'
	elseif cl == 457 then
		ca = '"I didn\'t even say anything."'
	elseif cl == 458 then
		nc = 'c'
		ct = 'Natsuki'
		ca = '"It was the tone of your voice."'
	elseif cl == 459 then
		ca = '"But I\'ll tell you one thing, '..player..'."'
	elseif cl == 460 then
		updateNatsuki('4','l')
		ca = '"Consider this a lesson straight from the '
		cb = 'Literature Club: Don\'t judge a book by its'
		cc = 'cover!"'
	elseif cl == 461 then
		ca = '"In fact--"'
	elseif cl == 462 then
		ct = ''
		ca = '"Natsuki pulls out the first volume of Parfait'
		cb = 'Girls from the box."'
	elseif cl == 463 then
		ct = 'Natsuki'
		ca = '"I\'m gonna show you exactly why!"'
	elseif cl == 464 then
		ct = ''
		ca = "She shoves the book right into my hands."
	elseif cl == 465 then
		ct = player
		ca = '"Ah..."'
	elseif cl == 466 then
		ct = ''
		ca = "I stare at the cover."
	elseif cl == 467 then
		ca = "It features four girls in colorful attire"
		cb = "striking animated feminine poses."
	elseif cl == 468 then
		ca = "It's...exceedingly \"moe\"."
	elseif cl == 469 then
		nc = 'b'
		ct = 'Natsuki'
		ca = '"Don\'t just stand there!"'
	elseif cl == 470 then
		ct = player
		ca = '"Uwa--"'
	elseif cl == 471 then
		hideNatsuki()
		ca = "Natsuki grabs my arm and pulls me out of the "
		cb = "closet."
	elseif cl == 472 then
		ca = "She then takes a seat against the wall, beneath"
		cb = "the windowsills."
	elseif cl == 473 then
		ca = "She pats on the ground next to her, signaling"
		cb = "me to sit there."
	elseif cl == 474 then
		bgUpdate('club')
		updateNatsuki('2','a')
		ct = player
		ca = '"Wouldn\'t chairs be more comfortable...?"'
	elseif cl == 475 then
		ct = ''
		ca = "I take my seat."
	elseif cl == 476 then
		nc = 'k'
		ct = 'Natsuki'
		ca = '"Chairs wouldn\'t work."'
	elseif cl == 477 then
		ca = '"We can\'t read at the same time like that."'
	elseif cl == 478 then
		ct = player
		ca = '"Eh? Why\'s that?"'
	elseif cl == 479 then
		ca = '"Ah...I guess it\'s easier to be close together'
		cb = 'like this..."'
	elseif cl == 480 then
		nc = 'o'
		ct = 'Natsuki'
		ca = '"--!"'
	elseif cl == 481 then
		updateNatsuki('5','r')
		ca = '"D-Don\'t just say that!"'
	elseif cl == 482 then
		ca = '"You\'ll make me feel weird about it!"'
	elseif cl == 483 then
		ct = ''
		ca = 'Natsuki crosses her arms and scootches an inch'
		cb = 'away from me.'
	elseif cl == 484 then
		ct = player
		ca = '"Sorry..."'
	elseif cl == 485 then
		nc = 'g'
		ct = ''
		ca = "I didn't exactly expect to be sitting this close"
		cb = "to her, either..."
	elseif cl == 486 then
		ca = "Not that I can say it's a particularly bad thing."
	elseif cl == 487 then
		ca = "I open the book."
	elseif cl == 488 then
		ca = "It's only a few seconds before Natsuki once"
		cb = "again inches closer, reclaiming the additional "
		cc = "space while she hopes I won't notice."
	elseif cl == 489 then
		ca = "I can feel her peering over my shoulder, much "
		cb = "more eager to begin reading than I am."
	elseif cl == 490 then
		updateNatsuki('1','k')
		ct = 'Natsuki'
		ca = '"Wow, how long has it been since I read the'
		cb = 'beginning...?"'
	elseif cl == 491 then
		ct = player
		ca = '"Hm?"'
	elseif cl == 492 then
		ca = '"You don\'t go back and flip through the older'
		cb = 'volumes every now and then?"'
	elseif cl == 493 then
		updateNatsuki('2','k')
		ct = 'Natsuki'
		ca = '"Not really."'
	elseif cl == 494 then
		ca = '"Maybe sometimes after I\'ve already finished '
		cb = 'the series."'
	elseif cl == 495 then
		nc = 'c'
		ca = '"Hey, are you paying attention?"'
	elseif cl == 496 then
		ct = player
		ca = '"Uh..."'
	elseif cl == 497 then
		ct = ''
		ca = "I am, but nothing's really happened yet, so I can"
		cb = "talk at the same time."
	elseif cl == 498 then
		ca = "It looks like it's about a bunch of friends in "
		cb = "high school."
	elseif cl == 499 then
		ca = "Typical slice-of-life affair."
	elseif cl == 500 then
		ca = "I kind of grew out of these, since it's rare for"
		cb = "the writing to be entertaining enough to make up"
		cc = "for the lack of plot."
	elseif cl == 501 then
		ct = player
		ca = '"So..."'
	elseif cl == 502 then
		ca = '"What should I expect from this?"'
	elseif cl == 503 then
		ca = '"Is there going to be plot?"'
	elseif cl == 504 then
		updateNatsuki('4','w')
		ct = 'Natsuki'
		ca = '"Well, obviously!"'
	elseif cl == 505 then
		ca = '"You think I would enjoy something that didn\'t'
		cb = 'have a plot?"'
	elseif cl == 506 then
		nc = 'c'
		ca = '"I mean..."'
	elseif cl == 507 then 
		updateNatsuki('2','c')
		ca = '"Well, I guess I know what you\'re saying..."'
	elseif cl == 508 then
		nc = 'k'
		ca = '"A lot of the beginning is about simple things..."'
	elseif cl == 509 then
		ca = '"Like there\'s a really funny chapter where they\'re'
		cb = 'obsessed with a guy at the ice cream shop..."'
	elseif cl == 510 then
		nc = 'c'
		ca = '"But that just helps you get to know the '
		cb = 'characters!"'
	elseif cl == 511 then
		ca = '"And besides, it\'s still entertaining."'
	elseif cl == 512 then
		nc = 'd'
		ca = '"But later on, there\'s all kinds of drama..."'
	elseif cl == 513 then
		ca = '"Like when they get into all their backstories,'
		cb = 'and when some of the romance starts to happen..."'
	elseif cl == 514 then
		ca = '"That\'s really what makes it so good."'
	elseif cl == 515 then
		nc = 'a'
		ca = '"There are so many touching parts."'
	elseif cl == 516 then
		ct = player
		ca = '"Ah, is that so?"'
	elseif cl == 517 then
		ca = '"It sounds like you really know what you\'re'
		cb = 'talking about."'
	elseif cl == 518 then
		ca = '"Maybe I underestimated you."'
	elseif cl == 519 then
		nc = 'z'
		ct = 'Natsuki'
		ca = '"Ehehe."'
	elseif cl == 520  then
		updateNatsuki('1','f')
		ca = '"...Hey, wait!"'
	elseif cl == 521 then
		ca = '"What\'s that supposed to mean?!"'
	elseif cl == 522 then
		ct = player
		ca = '"Uwa--"'
	elseif cl == 523 then
		ct = ''
		ca = "Natsuki gives me a little shove."
	elseif cl == 524 then
		ct = player
		ca = '"I just meant that I haven\'t yet seen you at'
		cb = 'your full power..."'
	elseif cl == 525 then
		updateNatsuki('5','s')
		ct = 'Natsuki'
		ca = '"Hmph. Good save."'
	elseif cl == 526 then
		ct = player
		ca = '"Ah... This chapter seems like it\'s about'
		cb = 'baking."'
	elseif cl == 527 then
		ca = '"This is just a guess, but is there a lot of '
		cb = 'baking in this manga?"'
	elseif cl == 528 then
		nc = 'b'
		ct = 'Natsuki'
		ca = '"Well--"'
	elseif cl == 529 then
		ct = ''
		ca = "Natsuki pauses for a moment, as if she doesn't "
		cb = "want to admit something."
	elseif cl == 530 then
		updateNatsuki('2','q')
		ct = 'Natsuki'
		ca = '"...Yeah."'
	elseif cl == 531 then
		ca = '"Why does that matter?"'
	elseif cl == 532 then
		ct = player
		ca = '"It doesn\'t, I was just curious..."'
	elseif cl == 533 then
		ca = '"Since you enjoy baking too, right?"'
	elseif cl == 534 then
		updateNatsuki('1','o')
		ct = 'Natsuki'
		ca = '"That\'s - "'
	elseif cl == 535 then
		ca = '"Just a coincidence!"'
	elseif cl == 536 then
		nc = 't'
		ca = '"I just happened to get into baking around the '
		cb = 'same time I got this manga."'
	elseif cl == 537 then
		ca = '"Like I would ever get into anything because '
		cb = 'it\'s in a manga."'
	elseif cl == 538 then
		updateNatsuki('4','y')
		ca = '"I feel bad for anyone that impressionable."'
	elseif cl == 539 then
		ca = '"Ahaha!"'
	elseif cl == 540 then
		ct = ''
		ca = "Definitely not a coincidence..."
	elseif cl == 541 then
		ca = "I guess that explains Natsuki's interest in baking."
	elseif cl == 542 then
		ca = "Still, of all the hobbies to pick up from a "
		cb = "manga, that's definitely one of the better ones."
	elseif cl == 543 then
		ca = "Not to mention she's really good at it, so who"
		cb = "am I to judge?"
	elseif cl == 544 then
		hideNatsuki()
		bgUpdate('n_cg1_base')
		ca = "..."
	elseif cl == 545 then
		ca = "We read on for a few more minutes."
    elseif cl == 546 then
		ca = "I've finished a couple chapters at this point."
    elseif cl == 547 then
		ct = player
		ca = '"..."'
	elseif cl == 548 then
		ca = '"...Are you sure this isn\'t boring for you?"'
	elseif cl == 549 then
		ct = 'Natsuki'
		ca = '"It\'s not!"'
	elseif cl == 550 then
		ct = player
		ca = '"Even though you\'re just watching me read?"'
	elseif cl == 551 then
		ct = 'Natsuki'
		ca = '"Well...!"'
	elseif cl == 552 then
		ca = '"I\'m...fine with that."'
	elseif cl == 553 then
		ct = player
		ca = '"If you say so..."'
	elseif cl == 554 then
		ca = '"...I guess it\'s fun sharing something you like '
		cb = 'with someone else."'
	elseif cl == 555 then
		ca = '"I always get excited when I convince any of my '
		cb = 'friends to pick up a series I enjoy."'
	elseif cl == 556 then
		ca = '"You know what I mean?"'
	elseif cl == 557 then
		ct = 'Natsuki'
		ca = '"...?"'
	elseif cl == 558 then
		ct = player
		ca = '"Hm?"'
	elseif cl == 559 then
		ca = '"You don\'t?"'
	elseif cl == 560 then
		cgUpdate('n_cg1_exp2')
		ct = 'Natsuki'
		ca = '"Um..."'
	elseif cl == 561 then
		ca = '"That\'s not..."'
	elseif cl == 562 then
		ca = '"Well, I wouldn\'t really know."'
	elseif cl == 563 then
		ct = player
		ca = '"...What do you mean?"'
	elseif cl == 564 then
		ca = '"Don\'t you share your manga with your friends?"'
	elseif cl == 565 then
		cgUpdate('n_cg1_exp3')
		ct = 'Natsuki'
		ca = '"Could you not rub it in?"'
	elseif cl == 566 then
		ca = '"Jeez..."'
	elseif cl == 567 then
		ct = player
		ca = '"Ah... Sorry..."'
	elseif cl == 568 then
		ct = 'Natsuki'
		ca = '"Hmph."'
	elseif cl == 569 then
		ca = '"Like I could ever get my friends to read '
		cb = 'this..."'
	elseif cl == 570 then
		ca = '"They just think manga is for kids."'
	elseif cl == 571 then	
		ca = '"I can\'t even bring it up without them being '
		cb = 'all like..."'
	elseif cl == 572 then
		ca = '"\'Eh? You still haven\'t grown out of that'
		cb = 'yet?\'"'
	elseif cl == 573 then
		ca = '"Makes me want to punch them in the face..."'
	elseif cl == 574 then
		ct = player
		ca = '"Urgh, I know those kinds of people..."'
	elseif cl == 575 then
		ca = '"Honestly, it takes a lot of effort to find'
		cb = 'friends who don\'t judge, much less friends who'
		cc = 'are also into it..."'
	elseif cl == 576 then
		ca = '"I\'m already kind of a loser, so I guess I '
		cb = 'gravitated toward the other losers over time."'
	elseif cl == 577 then
		ca = '"But it\'s probably harder for someone like '
		cb = 'you..."'
	elseif cl == 578 then
		cgHide()
		ct = 'Natsuki'
		ca = '"Hm."'
	elseif cl == 579 then
		ca = '"Yeah, that\'s pretty accurate."'
	elseif cl == 580 then
		ct = ''
		ca = "...Wait, which part??"
	elseif cl == 581 then
		ct = 'Natsuki'
		ca = '"I mean, I feel like I can\'t even keep it'
		cb = 'in my own room..."'
	elseif cl == 582 then
		ca = '"I don\'t even know what my dad would do if'
		cb = 'he found this."'
	elseif cl == 583 then
		ca = '"At least it\'s safe here in the clubroom."'
	elseif cl == 584 then
		cgUpdate('n_cg1_exp3')
		ca = '"\'Cept Monika was kind of a jerk about it..."'
	elseif cl == 585 then
		ca = '"Ugh! I just can\'t win, can I?"'
	elseif cl == 586 then
		ct = player
		ca = '"Well, it paid off in the end, didn\'t it?"'
	elseif cl == 587 then
		ca = '"I mean, here I am, reading it."'
	elseif cl == 588 then
		ct = 'Natsuki'
		ca = '"Well, it\'s not like that solves any of my'
		cb = 'problems."'
	elseif cl == 589 then
		ct = player
		ca = '"Maybe..."'
	elseif cl == 590 then
		ca = '"But at least you\'re enjoying yourself, right?"'
	elseif cl == 591 then
		cgUpdate('n_cg1_exp2')
		ct = 'Natsuki'
		ca = '"--"'
	elseif cl == 592 then
		ca = '"..."'
	elseif cl == 593 then
		ca = '"...So?"'
	elseif cl == 594 then
		ct = player
		ca = '"Ahaha."'
	elseif cl == 595 then
		cgUpdate('n_cg1_exp3')
		ct = 'Natsuki'
		ca = '"Jeez, that\'s enough!"'
	elseif cl == 596 then
		ca = '"Are you gonna keep reading, or what?"'
	elseif cl == 597 then
		ct = player
		ca = '"Yeah, yeah..."'
	elseif cl == 598 then
		ct = ''
		ca = '"I flip the page."'
	elseif cl == 599 then
		ca = '"Suddenly, Natsuki starts laughing."'
	elseif cl == 600 then
		cgUpdate('n_cg1_exp1')
		ct = 'Natsuki'
		ca = '"Ahahaha!"'
	elseif cl == 601 then
		ca = '"I totally forgot that happens!"'
	elseif cl == 602 then
		ct = ''
		ca = '"Natsuki puts her finger on one of the panels."'
	elseif cl == 603 then
		ct = 'Natsuki'
		ca = '"Minori is my favorite character."'
	elseif cl == 604 then
		ca = '"You always feel a little bad for her, since'
		cb = 'she\'s so unlucky."'
	elseif cl == 605 then
		ca = '"But it gets especially bad when--"'
	elseif cl == 606 then
		cgHide()
		ca = '"Uu..."'
	elseif cl == 607 then
		ca = '"I shouldn\'t be talking about that yet!"'
	elseif cl == 608 then
		ca = '"Just finish this chapter!"'
	elseif cl == 609 then
		bgUpdate('club')
		ct = ''
		ca = "Natsuki's voice sparkles with excitement."
	elseif cl == 610 then
		ca = "It's a stark contrast to her usual bossy tone."
	elseif cl == 611 then
		ca = "But if she's not used to sharing her favorite"
		cb = "manga with her friends, I can understand why."
	elseif cl == 612 then
		ca = "It's hard to express in words the feeling you get"
		cb = "when connecting with someone like that."
	elseif cl == 613 then	
		ca = "And being able to provide that to Natsuki,"
		cb = "for whom it's a rare experience..."
	elseif cl == 614 then
		ca = "The thought makes me smile a little to myself."
	elseif cl == 615 then
		mx = 10
		updateMonika('3','b')
		ct = 'Monika'
		ca = '"Okay everyone!"'
	elseif cl == 616 then
		ct = player
		ca = '"Eh?"'
	elseif cl == 617 then
		ct = 'Monika'
		ca = '"Are you all ready with today\'s poems?"'
	elseif cl == 618 then
		ct = player
		ca = '"..."'
	elseif cl == 619 then
		nx = 150
		updateNatsuki('4','w')
		ct = 'Natsuki'
		ca = '"Oh, come on!"'
	elseif cl == 620 then
		ca = '"Could your timing be any worse?"'
    elseif cl == 621 then
		updateMonika('5a','')
		ct = 'Monika'
		ca = '"Sorry~!"'
	elseif cl == 622 then
		ca = '"I just need to make sure we have enough time."'
	elseif cl == 623 then
		ca = '"Though you do look pretty cozy over there.'
		cb = 'Ahaha!"'
	elseif cl == 624 then
		updateNatsuki('4','o')
		ct = 'Natsuki'
		ca = '"Eh...?"'
	elseif cl == 625 then
		updateNatsuki('1','p')
		ca = '"A-Ah!"'
	elseif cl == 626 then
		ct = ''
		ca = "Natsuki suddenly notices how close she's"
		cb = 'gotten to me."'
	elseif cl == 627 then
		ca = "She hastily slides herself a good twelve inches"
		cb = "away from me."
    elseif cl == 628 then
		hideMonika()
		nx = 80
		ct = player
		ca = '"Alright..."'
	elseif cl == 629 then
		ca = '"Guess I\'ll stop here for now."'
	elseif cl == 630 then
		ct = ''
		ca = "I close the book and hand it towards Natsuki."
	elseif cl == 631 then
		updateNatsuki('2','m')
		ct = 'Natsuki'
		ca = '"You\'re just giving it back...?"'
	elseif cl == 632 then
		ca = '"Don\'t you want to know what happens?"'
	elseif cl == 633 then
		ct = player
		ca = '"Ah... Yeah, but..."'
	elseif cl == 634 then
		ca = '"Monika just said--"'
	elseif cl == 635 then
		nc = 'u'
		ct = 'Natsuki'
		ca = '"Don\'t be dumb."'
	elseif cl == 636 then
		ca = '"Just take it home with you."'
	elseif cl == 637 then
		ct = player
		ca = '"Eh?"'
	elseif cl == 638 then
		ca = '"...Is that really alright?"'
	elseif cl == 639 then
		ct = ''
		ca = "I say that mostly because I really didn't plan "
		cb = "on using my spare time to read this..."
	elseif cl == 640 then
		updateNatsuki('4','h')
		ct = 'Natsuki'
		ca = '"Well, of course."'
	elseif cl == 641 then
		ca = '"It would take forever to finish if you didn\'t"'
		cb = 'take it home."'
	elseif cl == 642 then
		ca = '"Just finish that one before tomorrow, so we can'
		cb = 'start the next one."'
	elseif cl == 643 then
		nc = 'g'
		ca = '"And if it gets bent, I\'ll kill you."'
	elseif cl == 644 then
		ct = player
		ca = '"By tomorrow...?"'
	elseif cl == 645 then
		ct = ''
		ca = "I only got partway through the volume so far."
	elseif cl == 646 then
		ca = "I might fall behind on some shows if I try to get"
		cb = "through this..."
    elseif cl == 647 then 
		ca = "But I suppose that's a necessary sacrifice in "
		cb = "exchange for seeing Natsuki's enthusiastic face."
	elseif cl == 648 then
		ca = "Or am I more scared of what will happen if I "
		cb = "don't finish it...?"
    elseif cl == 649 then
		ca = "Alright, then!"
    elseif cl == 650 then
		ca = "I stand up."
    elseif cl == 651 then
		ca = "I return to where I put my stuff and carefully"
		cb = "slip the book into my bag."
	elseif cl == 652 then
		cl = 653
		--ca = 'Sayori is vice president of the Literature Club.' (for reference on how long the lines should be)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
    
	end
end