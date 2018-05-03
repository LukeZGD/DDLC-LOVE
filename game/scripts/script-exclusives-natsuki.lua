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
	elseif ch0ln == 428 then
		nc = 'x'
		ch0t = 'Natsuki'
		ch0a = '"Freaking Monika..."'
	elseif ch0ln == 429 then
		ch0a = '"She never puts my stuff back in the right spot!"'
	elseif ch0ln == 430 then
		ch0a = '"What\'s the point in keeping your collection '
		ch0b = 'organized if someone else is just gonna mess it '
		ch0c = 'up?"'
	elseif ch0ln == 431 then
		ch0t = ''
		ch0a = "Natsuki slides a bunch of stacked books and boxes"
		ch0b = "across the shelf."
	elseif ch0ln == 432 then
		ch0t = player
		ch0a = '"Manga..."'
	elseif ch0ln == 433 then
		updateNatsuki('1l','2r','c')
		ch0t = 'Natsuki'
		ch0a = '"You read manga, right?"'
	elseif ch0ln == 434 then
		ch0t = player
		ch0a = '"Ah - "'
	elseif ch0ln == 435 then
		ch0a = '"...Sometimes..."'
	elseif ch0ln == 436 then
		ch0t = ''
		ch0a = "Manga is one of those things where you can't "
		ch0b = "admit you're really into it until you figure out"
		ch0c = "where the other person stands."
	elseif ch0ln == 437 then
		ch0t = player
		ch0a = '"...How did you know, anyway?"'
	elseif ch0ln == 438 then
		nc = 'k'
		ch0t = 'Natsuki'
		ch0a = '"I heard you bring it up at some point."'
	elseif ch0ln == 439 then
		ch0a = '"Besides, it\'s kind of written on your face."'
	elseif ch0ln == 440 then
		ch0t = ''
		ch0a = "What's that supposed to mean...?"
	elseif ch0ln == 441 then
		ch0t = player
		ch0a = '"I-I see..."'
	elseif ch0ln == 442 then
		ch0a = "There's a lone volume of manga amidst a stack of"
		ch0b = "various books on the side of one of the shelves."
	elseif ch0ln == 443 then
		ch0a = "Curious, I pull it out of the stack."
	elseif ch0ln == 444 then
		updateNatsuki('1l','1r','b')
		ch0t = 'Natsuki'
		ch0a = '"There it is!"'
	elseif ch0ln == 445 then
		ch0t = ''
		ch0a = "Natsuki snatches it out of my hand."
	elseif ch0ln == 446 then
		ch0a = "She then turns to a box of manga and slips the "
		ch0b = "volume right into the middle of the rest."
	elseif ch0ln == 447 then
		updateNatsuki('2l','2r','d')
		ch0t = 'Natsuki'
		ch0a = '"Aah, much better!"'
	elseif ch0ln == 448 then
		ch0a = '"Seeing a box set with one book missing is '
		ch0b = 'probably the most irritating sight in the world."'
	elseif ch0ln == 449 then
		ch0t = player
		ch0a = '"I know that feel..."'
	elseif ch0ln == 450 then
		ch0t = ''
		ch0a = "I get a closer look at the box set she's admiring."
	elseif ch0ln == 451 then
		ch0t = player
		ch0a = '"Parfait Girls...?"'
	elseif ch0ln == 452 then
		ch0t = ''
		ch0a = "It's a series I've never heard of in my life."
	elseif ch0ln == 453 then
		ch0a = "That probably means it's either way out of my"
		ch0b = "demographic, or it's simply terrible."
	elseif ch0ln == 454 then
		updateNatsuki('3','','g')
		ch0t = 'Natsuki'
		ch0a = '"If you\'re gonna judge, you can go do it '
		ch0b = 'through the glass on that door."'
	elseif ch0ln == 455 then
		ch0t = ''
		ch0a = "She points to the classroom door."
	elseif ch0ln == 456 then
		ch0t = player
		ch0a = '"H-Hey, I wasn\'t judging anything...!"'
	elseif ch0ln == 457 then
		ch0a = '"I didn\'t even say anything."'
	elseif ch0ln == 458 then
		nc = 'c'
		ch0t = 'Natsuki'
		ch0a = '"It was the tone of your voice."'
	elseif ch0ln == 459 then
		ch0a = '"But I\'ll tell you one thing, '..player..'."'
	elseif ch0ln == 460 then
		updateNatsuki('2l','2r','l')
		ch0a = '"Consider this a lesson straight from the '
		ch0b = 'Literature Club: Don\'t judge a book by its'
		ch0c = 'cover!"'
	elseif ch0ln == 461 then
		ch0a = '"In fact--"'
	elseif ch0ln == 462 then
		ch0t = ''
		ch0a = '"Natsuki pulls out the first volume of Parfait'
		ch0b = 'Girls from the box."'
	elseif ch0ln == 463 then
		ch0t = 'Natsuki'
		ch0a = '"I\'m gonna show you exactly why!"'
	elseif ch0ln == 464 then
		ch0t = ''
		ch0a = "She shoves the book right into my hands."
	elseif ch0ln == 465 then
		ch0t = player
		ch0a = '"Ah..."'
	elseif ch0ln == 466 then
		ch0t = ''
		ch0a = "I stare at the cover."
	elseif ch0ln == 467 then
		ch0a = "It features four girls in colorful attire"
		ch0b = "striking animated feminine poses."
	elseif ch0ln == 468 then
		ch0a = "It's...exceedingly \"moe\"."
	elseif ch0ln == 469 then
		nc = 'b'
		ch0t = 'Natsuki'
		ch0a = '"Don\'t just stand there!"'
	elseif ch0ln == 470 then
		ch0t = player
		ch0a = '"Uwa--"'
	elseif ch0ln == 471 then
		hideNatsuki()
		ch0a = "Natsuki grabs my arm and pulls me out of the "
		ch0b = "closet."
	elseif ch0ln == 472 then
		ch0a = "She then takes a seat against the wall, beneath"
		ch0b = "the windowsills."
	elseif ch0ln == 473 then
		ch0a = "She pats on the ground next to her, signaling"
		ch0b = "me to sit there."
	elseif ch0ln == 474 then
		bgUpdate('club')
		updateNatsuki('1l','2r','a')
		ch0t = player
		ch0a = '"Wouldn\'t chairs be more comfortable...?"'
	elseif ch0ln == 475 then
		ch0t = ''
		ch0a = "I take my seat."
	elseif ch0ln == 476 then
		nc = 'k'
		ch0t = 'Natsuki'
		ch0a = '"Chairs wouldn\'t work."'
	elseif ch0ln == 477 then
		ch0a = '"We can\'t read at the same time like that."'
	elseif ch0ln == 478 then
		ch0t = player
		ch0a = '"Eh? Why\'s that?"'
	elseif ch0ln == 479 then
		ch0a = '"Ah...I guess it\'s easier to be close together'
		ch0b = 'like this..."'
	elseif ch0ln == 480 then
		nc = 'o'
		ch0t = 'Natsuki'
		ch0a = '"--!"'
	elseif ch0ln == 481 then
		updateNatsuki('3','','r')
		ch0a = '"D-Don\'t just say that!"'
	elseif ch0ln == 482 then
		ch0a = '"You\'ll make me feel weird about it!"'
	elseif ch0ln == 483 then
		ch0t = ''
		ch0a = 'Natsuki crosses her arms and scootches an inch'
		ch0b = 'away from me.'
	elseif ch0ln == 484 then
		ch0t = player
		ch0a = '"Sorry..."'
	elseif ch0ln == 485 then
		nc = 'g'
		ch0t = ''
		ch0a = "I didn't exactly expect to be sitting this close"
		ch0b = "to her, either..."
	elseif ch0ln == 486 then
		ch0a = "Not that I can say it's a particularly bad thing."
	elseif ch0ln == 487 then
		ch0a = "I open the book."
	elseif ch0ln == 488 then
		ch0a = "It's only a few seconds before Natsuki once"
		ch0b = "again inches closer, reclaiming the additional "
		ch0c = "space while she hopes I won't notice."
	elseif ch0ln == 489 then
		ch0a = "I can feel her peering over my shoulder, much "
		ch0b = "more eager to begin reading than I am."
	elseif ch0ln == 490 then
		updateNatsuki('1l','1r','k')
		ch0t = 'Natsuki'
		ch0a = '"Wow, how long has it been since I read the'
		ch0b = 'beginning...?"'
	elseif ch0ln == 491 then
		ch0t = player
		ch0a = '"Hm?"'
	elseif ch0ln == 492 then
		ch0a = '"You don\'t go back and flip through the older'
		ch0b = 'volumes every now and then?"'
	elseif ch0ln == 493 then
		updateNatsuki('1l','2r','k')
		ch0t = 'Natsuki'
		ch0a = '"Not really."'
	elseif ch0ln == 494 then
		ch0a = '"Maybe sometimes after I\'ve already finished '
		ch0b = 'the series."'
	elseif ch0ln == 495 then
		nc = 'c'
		ch0a = '"Hey, are you paying attention?"'
	elseif ch0ln == 496 then
		ch0t = player
		ch0a = '"Uh..."'
	elseif ch0ln == 497 then
		ch0t = ''
		ch0a = "I am, but nothing's really happened yet, so I can"
		ch0b = "talk at the same time."
	elseif ch0ln == 498 then
		ch0a = "It looks like it's about a bunch of friends in "
		ch0b = "high school."
	elseif ch0ln == 499 then
		ch0a = "Typical slice-of-life affair."
	elseif ch0ln == 500 then
		ch0a = "I kind of grew out of these, since it's rare for"
		ch0b = "the writing to be entertaining enough to make up"
		ch0c = "for the lack of plot."
	elseif ch0ln == 501 then
		ch0t = player
		ch0a = '"So..."'
	elseif ch0ln == 502 then
		ch0a = '"What should I expect from this?"'
	elseif ch0ln == 503 then
		ch0a = '"Is there going to be plot?"'
	elseif ch0ln == 504 then
		updateNatsuki('2l','2r','w')
		ch0t = 'Natsuki'
		ch0a = '"Well, obviously!"'
	elseif ch0ln == 505 then
		ch0a = '"You think I would enjoy something that didn\'t'
		ch0b = 'have a plot?"'
	elseif ch0ln == 506 then
		nc = 'c'
		ch0a = '"I mean..."'
	elseif ch0ln == 507 then 
		updateNatsuki('1l','2r','c')
		ch0a = '"Well, I guess I know what you\'re saying..."'
	elseif ch0ln == 508 then
		nc = 'k'
		ch0a = '"A lot of the beginning is about simple things..."'
	elseif ch0ln == 509 then
		ch0a = '"Like there\'s a really funny chapter where they\'re'
		ch0b = 'obsessed with a guy at the ice cream shop..."'
	elseif ch0ln == 510 then
		nc = 'c'
		ch0a = '"But that just helps you get to know the '
		ch0b = 'characters!"'
	elseif ch0ln == 511 then
		ch0a = '"And besides, it\'s still entertaining."'
	elseif ch0ln == 512 then
		nc = 'd'
		ch0a = '"But later on, there\'s all kinds of drama..."'
	elseif ch0ln == 513 then
		ch0a = '"Like when they get into all their backstories,'
		ch0b = 'and when some of the romance starts to happen..."'
	elseif ch0ln == 514 then
		ch0a = '"That\'s really what makes it so good."'
	elseif ch0ln == 515 then
		nc = 'a'
		ch0a = '"There are so many touching parts."'
	elseif ch0ln == 516 then
		ch0t = player
		ch0a = '"Ah, is that so?"'
	elseif ch0ln == 517 then
		ch0a = '"It sounds like you really know what you\'re'
		ch0b = 'talking about."'
	elseif ch0ln == 518 then
		ch0a = '"Maybe I underestimated you."'
	elseif ch0ln == 519 then
		nc = 'z'
		ch0t = 'Natsuki'
		ch0a = '"Ehehe."'
	elseif ch0ln == 520  then
		updateNatsuki('1l','1r','f')
		ch0a = '"...Hey, wait!"'
	elseif ch0ln == 521 then
		ch0a = '"What\'s that supposed to mean?!"'
	elseif ch0ln == 522 then
		ch0t = player
		ch0a = '"Uwa--"'
	elseif ch0ln == 523 then
		ch0t = ''
		ch0a = "Natsuki gives me a little shove."
	elseif ch0ln == 524 then
		ch0t = player
		ch0a = '"I just meant that I haven\'t yet seen you at'
		ch0b = 'your full power..."'
	elseif ch0ln == 525 then
		updateNatsuki('3','','s')
		ch0t = 'Natsuki'
		ch0a = '"Hmph. Good save."'
	elseif ch0ln == 526 then
		ch0t = player
		ch0a = '"Ah... This chapter seems like it\'s about'
		ch0b = 'baking."'
	elseif ch0ln == 527 then
		ch0a = '"This is just a guess, but is there a lot of '
		ch0b = 'baking in this manga?"'
	elseif ch0ln == 528 then
		nc = 'b'
		ch0t = 'Natsuki'
		ch0a = '"Well--"'
	elseif ch0ln == 529 then
		ch0t = ''
		ch0a = "Natsuki pauses for a moment, as if she doesn't "
		ch0b = "want to admit something."
	elseif ch0ln == 530 then
		updateNatsuki('1l','2r','q')
		ch0t = 'Natsuki'
		ch0a = '"...Yeah."'
	elseif ch0ln == 531 then
		ch0a = '"Why does that matter?"'
	elseif ch0ln == 532 then
		ch0t = player
		ch0a = '"It doesn\'t, I was just curious..."'
	elseif ch0ln == 533 then
		ch0a = '"Since you enjoy baking too, right?"'
	elseif ch0ln == 534 then
		updateNatsuki('1l','1r','o')
		ch0t = 'Natsuki'
		ch0a = '"That\'s - "'
	elseif ch0ln == 535 then
		ch0a = '"Just a coincidence!"'
	elseif ch0ln == 536 then
		nc = 't'
		ch0a = '"I just happened to get into baking around the '
		ch0b = 'same time I got this manga."'
	elseif ch0ln == 537 then
		ch0a = '"Like I would ever get into anything because '
		ch0b = 'it\'s in a manga."'
	elseif ch0ln == 538 then
		updateNatsuki('2l','2r','y')
		ch0a = '"I feel bad for anyone that impressionable."'
	elseif ch0ln == 539 then
		ch0a = '"Ahaha!"'
	elseif ch0ln == 540 then
		ch0t = ''
		ch0a = "Definitely not a coincidence..."
	elseif ch0ln == 541 then
		ch0a = "I guess that explains Natsuki's interest in baking."
	elseif ch0ln == 542 then
		ch0a = "Still, of all the hobbies to pick up from a "
		ch0b = "manga, that's definitely one of the better ones."
	elseif ch0ln == 543 then
		ch0a = "Not to mention she's really good at it, so who"
		ch0b = "am I to judge?"
	elseif ch0ln == 544 then
		hideNatsuki()
		bgUpdate('n_cg1_base')
		ch0a = "..."
	elseif ch0ln == 545 then
		ch0a = "We read on for a few more minutes."
    elseif ch0ln == 546 then
		ch0a = "I've finished a couple chapters at this point."
    elseif ch0ln == 547 then
		ch0t = player
		ch0a = '"..."'
	elseif ch0ln == 548 then
		ch0a = '"...Are you sure this isn\'t boring for you?"'
	elseif ch0ln == 549 then
		ch0t = 'Natsuki'
		ch0a = '"It\'s not!"'
	elseif ch0ln == 550 then
		ch0t = player
		ch0a = '"Even though you\'re just watching me read?"'
	elseif ch0ln == 551 then
		ch0t = 'Natsuki'
		ch0a = '"Well...!"'
	elseif ch0ln == 552 then
		ch0a = '"I\'m...fine with that."'
	elseif ch0ln == 553 then
		ch0t = player
		ch0a = '"If you say so..."'
	elseif ch0ln == 554 then
		ch0a = '"...I guess it\'s fun sharing something you like '
		ch0b = 'with someone else."'
	elseif ch0ln == 555 then
		ch0a = '"I always get excited when I convince any of my '
		ch0b = 'friends to pick up a series I enjoy."'
	elseif ch0ln == 556 then
		ch0a = '"You know what I mean?"'
	elseif ch0ln == 557 then
		ch0t = 'Natsuki'
		ch0a = '"...?"'
	elseif ch0ln == 558 then
		ch0t = player
		ch0a = '"Hm?"'
	elseif ch0ln == 559 then
		ch0a = '"You don\'t?"'
	elseif ch0ln == 560 then
		cgUpdate('n_cg1_exp2')
		ch0t = 'Natsuki'
		ch0a = '"Um..."'
	elseif ch0ln == 561 then
		ch0a = '"That\'s not..."'
	elseif ch0ln == 562 then
		ch0a = '"Well, I wouldn\'t really know."'
		--ch0a = 'Sayori is vice president of the Literature Club.' (for reference on how long the lines should be)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
    
	end
end