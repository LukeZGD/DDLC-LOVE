function ch1yuri()
	if cl == 423 then
		 ct = ''
		 ca = "I\'m really curious to talk to Yuri a little"
		 cb = "bit more..."
	elseif cl == 424 then
		ca = "But at the same time, I would feel bad for "
		cb = "distracting her from reading."
	elseif cl == 425 then
		ca = "I catch a glimpse of the cover of her book."
	elseif cl == 426 then
		ca = "It looks like the same book that she lent to"
		cb = "me..."
	elseif cl == 427 then
		ca = "More than that, she seems to be on the first"
		cb = "few pages."
    elseif cl == 428 then
		audioUpdate('6')
		yx = 80
		updateYuri('3','','a2')
		ct = 'Yuri'
		ca = '"Ah..."'
	elseif cl == 429 then
		ct = ''
		ca = '"Crap--"'
	elseif cl == 430 then
		ca = "I think she noticed me looking at her..."
    elseif cl == 431 then
		ca = "She sneaks another glance at me, and our eyes"
		cb = "meet for a split second."
	elseif cl == 432 then
		yc = 'b2'
		ct = 'Yuri'
		ca = '"..."'
	elseif cl == 433 then
		ct = ''
		ca = "But that only makes her hide her face deeper"
		cb = "in her book."
	elseif cl == 434 then
		ct = player
		ca = '"Sorry..."'
	elseif cl == 435 then
		ca = '"I was just spacing out..."'
	elseif cl == 436 then
		ct = ''
		ca = 'I mutter this, sensing I made her uncomfortable.'
	elseif cl == 437 then
		updateYuri('1l','1r','i')
		ct = 'Yuri'
		ca = '"Oh..."'
	elseif cl == 438 then
		ca = '"It\'s fine..."'
	elseif cl == 439 then
		yc = 'a'
		ca = '"If I was focused, then I probably wouldn\'t '
		cb = 'have noticed in the first place."'
	elseif cl == 440 then
		ca = '"But I\'m just re-reading a bit of this,'
		cb = 'so..."'
	elseif cl == 441 then
		ct = player
		ca = '"That\'s the book that you gave me, right?"'
	elseif cl == 442 then
		ct = 'Yuri'
		ca = '"Mhm."'
	elseif cl == 443 then
		ca = '"I wanted to re-read some of it."'
	elseif cl == 444 then
		updateYuri('1l','2r','q')
		ca = '"Not for any particular reason...!"'
	elseif cl == 445 then
		ct = player
		ca = '"Just curious, how come you have two copies '
		cb = 'of the same book?"'
	elseif cl == 446 then
		ct = 'Yuri'
		ca = '"Ah..."'
	elseif cl == 447 then
		ca = '"Well, when I stopped at the bookstore '
		cb = 'yesterday--"'
	elseif cl == 448 then
		updateYuri('2l','2r','o')
		ca = '"Ah, that\'s not what I meant..."'
	elseif cl == 449 then
		ca = '"I mean--"'
	elseif cl == 450 then
		updateYuri('1l','1r','w')
		ca = '"I...just happened to buy two of them."'
	elseif cl == 451 then
		ct = player
		ca = '"Ah, I see."'
	elseif cl == 452 then
		ct = ''
		ca = "There's something fairly obvious here that"
		cb = "Yuri isn't telling me, but I decide to let"
		cc = "it go."
	elseif cl == 453 then
		ct = player
		ca = '"I\'ll definitely start reading it soon!"'
	elseif cl == 454 then
		updateYuri('1l','2r','u')
		ct = 'Yuri'
		ca = '"I\'m glad to hear..."'
	elseif cl == 455 then
		ca = '"Once it starts to pick up, you might have a '
		cb = 'hard time putting it down."'
	elseif cl == 456 then
		yc = 'c'
		ca = '"It\'s a very engaging and relatable story."'
	elseif cl == 457 then
		ct = player
		ca = '"Is that so...?"'
	elseif cl == 458 then
		ca = '"What\'s it about, anyway?"'
	elseif cl == 459 then
		updateYuri('1l','1r','f')
		ct = 'Yuri'
		ca = '"Well..."'
	elseif cl == 460 then
		ca = '"Mmm..."'
	elseif cl == 461 then
		ct = ''
		ca = "Yuri closes the book and scans her eyes over "
		cb = "the back."
	elseif cl == 462 then
		ca = "The book is titled \"Portrait of Markov\"."
	elseif cl == 463 then
		ca = "There's an ominous-looking eye symbol on the "
		cb = "front cover."
	elseif cl == 464 then
		updateYuri('1l','1r','a')
		ct = 'Yuri'
		ca = '"Alright..."'
	elseif cl == 465 then
		ca = '"I just wanted to make sure I don\'t accidentally'
		cb = 'give anything away."'
	elseif cl == 466 then
		ca = '"Basically, it\'s about this girl in high school'
		cb = 'who moves in with her long-lost younger sister..."'
	elseif cl == 467 then
		ca = '"But as soon as she does so, her life gets really'
		cb = 'strange."'
	elseif cl == 468 then
		yc = 'm'
		ca = '"She gets targeted by these people who escaped'
		cb = 'from a human experiment prison..."'
	elseif cl == 469 then
		ca = '"And while her life is in danger, she needs to'
		cb = 'desperately choose who to trust."'
	elseif cl == 470 then
		yc = 'i'
		ca = '"No matter what she does, she ends up destroying'
		cb = 'most of her relationships and her life starts to'
		ch0x = 'fall apart..."'
	elseif cl == 471 then
		ct = player
		ca = '"That\'s kind of--!"'
	elseif cl == 472 then
		ct = ''
		ca = "That's kind of dark, isn't it?"
	elseif cl == 473 then
		ca = "Yuri made it sound like it was going to be a nice"
		cb = "story, so that dark turn came from nowhere."
	elseif cl == 474 then
		yc = 'c'
		ct = 'Yuri'
		ca = '"Ahaha."'
	elseif cl == 475 then
		ct = ''
		ca = "Yuri gently giggles, all of a sudden."
	elseif cl == 476 then
		ct = 'Yuri'
		ca = '"Are you not a fan of that sort of thing, '
		cb = player .. '?"'
	elseif cl == 477 then
		ct = player
		ca = '"No, it\'s not that..."'
	elseif cl == 478 then
		ca = '"I mean, I can definitely enjoy those kinds of'
		cb = 'stories, so don\'t worry."'
	elseif cl == 479 then
		updateYuri('1l','2r','u')
		ct = 'Yuri'
		ca = '"I hope so..."'
	elseif cl == 480 then
		ct = ''
		ca = "Yeah... I totally forgot that Yuri is into "
		cb = "those things."
	elseif cl == 481 then
		ca = "She's so shy and reclusive on the outside, but"
		cb = "her mind seems to be completely different."
	elseif cl == 482 then
		ct = 'Yuri'
		ca = '"It\'s just that those kinds of stories..."'
	elseif cl == 483 then
		yc = 'a'
		ca = '"They challenge you to look at life from a'
		cb = 'strange new perspective."'
	elseif cl == 484 then
		ca = '"When horrible things happen not just because '
		cb = 'someone wants to be evil..."'
	elseif cl == 485 then
		yc = 'm'
		ca = '"But because they have their own goals, or their'
		ca = 'own philosophy that they believe in."'
	elseif cl == 486 then
		ca = '"Then suddenly, when you thought you related to'
		cb = 'the protagonist..."'
	elseif cl == 487 then
		ca = '"They\'re made out to be the naive one for '
		cb = 'letting their one-sided morals interfere with '
		cc = 'the villain\'s plans."'
	elseif cl == 488 then
		updateYuri('2l','2r','v')
		ca = '"I\'m...I\'m rambling, aren\'t I...?"'
	elseif cl == 489 then
		ca = '"Not again..."'
	elseif cl == 490 then
		updateYuri('3','','b2')
		ca = '"I\'m sorry..."'
	elseif cl == 491 then
		ct = player
		ca = '"Hey, don\'t apologize...!"'
	elseif cl == 492 then
		ca = '"I haven\'t lost interest or anything."'
	elseif cl == 493 then
		ct = 'Yuri'
		ca = '"Well..."'
	elseif cl == 494 then
		ca = '"I guess it\'s alright, then..."'
	elseif cl == 495 then
		yc = 'a2'
		ca = '"But I feel like I should let you know that I have '
		cb = 'this problem..."'
	elseif cl == 496 then
		ca = '"When I let things like books and writing fill my '
		cb = 'thoughts..."'
	elseif cl == 497 then	
		ca = '"I kind of forget to pay attention to other'
		cb = 'people..."'
	elseif cl == 498 then
		updateYuri('2l','2r','t')
		ca = '"So I\'m sorry if I end up saying something '
		cb = 'strange!"'
	elseif cl == 499 then
		ca = '"And please stop me if I start talking too much!"'
	elseif cl == 500 then
		ct = player
		ca = '"That\'s--"'
	elseif cl == 501 then
		ca = '"I really don\'t think you need to worry..."'
	elseif cl == 502 then
		ca = '"That just means you\'re passionate about '
		cb = 'reading."'
	elseif cl == 503 then
		ca = '"The least I can do is listen."'
	elseif cl == 504 then
		ca = '"It\'s a literature club, after all..."'
	elseif cl == 505 then
		updateYuri('2l','2r','a')
		ct = 'Yuri'
		ca = '"Ah--"'
	elseif cl == 506 then
		ca = '"That\'s..."'
	elseif cl == 507 then
		ca = '"Well, that\'s true..."'
	elseif cl == 508 then
		ct = player
		ca = '"In fact..."'
	elseif cl == 509 then
		ca = '"I might as well get started reading it, right?"'
	elseif cl == 510 then
		updateYuri('2l','2r','n')
		ct = 'Yuri'
		ca = '"Y-You don\'t have to!"'
	elseif cl == 511 then
		ct = player
		ca = '"Ahaha, what are you saying?"'
	elseif cl == 512 then
		ca = '"Just a moment ago, you said you were looking'
		cb = 'forward to it."'
	elseif cl == 513 then
		yc = 'o'
		ct = 'Yuri'
		ca = '"..."'
	elseif cl == 514 then
		ct = player
		ca = '"Let me just get the book..."'
	elseif cl == 515 then
		ct = ''
		ca = 'I quickly retrieve the book that I had put '
		cb = "into my bag."
	elseif cl == 516 then
		ct = player
		ca = '"Alright...it\'s fine if I sit here, right?"'
	elseif cl == 517 then
		ct = ''
		ca = "I slip into the seat next to Yuri's."
	elseif cl == 518 then
		yc = 'n'
		ct = 'Yuri'
		ca = '"Ah...!"'
	elseif cl == 519 then
		ca = '"Yeah..."'
	elseif cl == 520 then
		ct = player
		ca = '"Are you sure?"'
	elseif cl == 521 then
		ca = '"You seem a little apprehensive..."'
	elseif cl == 522 then
		ct = 'Yuri'
		ca = '"That\'s..."'
	elseif cl == 523 then
		updateYuri('3','','b2')
		ca = '"I\'m sorry..."'
	elseif cl == 524 then
		ca = '"It\'s not that I don\'t want you to!"'
	elseif cl == 525 then
		ca = '"It\'s just something I\'m not very used to..."'
	elseif cl == 526 then
		ca = '"That is, reading in company with someone."'
	elseif cl == 527 then
		ct = player
		ca = '"I see..."'
	elseif cl == 528 then
		ca = '"Well, just tell me if I end up distracting you'
		cb = 'or anything."'
	elseif cl == 529 then
		ct = 'Yuri'
		ca = '"A-Alright..."'
	elseif cl == 530 then
		hideYuri()
		ct = ''
		ca = "I open the book and start the prologue."
	elseif cl == 531 then
		ca = "I soon understand what Yuri means about reading"
		cb = "in company."
	elseif cl == 532 then
		ca = "It's as if I can feel her presence over my "
		cb = "shoulder as I read."
	elseif cl == 533 then
		ca = "It's not a particularly bad thing."
	elseif cl == 534 then
		ca = "Maybe a little distracting, but the feeling is"
		cb = "somewhat comforting."
	elseif cl == 535 then
		ca = "Yuri is in the corner of my eye."
	elseif cl == 536 then
		ca = "I realize that she's not actually looking at her"
		cb = "own book."
	elseif cl == 537 then
		ca = "I glance over."
	elseif cl == 538 then
		ca = "It looks like she's reading from my book"
		cb = "instead--"
	elseif cl == 539 then
		updateYuri('2l','2r','n')
		ct = 'Yuri'
		ca = '"S-Sorry!"'
	elseif cl == 540 then
		ca = '"I was just--!"'
	elseif cl == 541 then
		ct = player
		ca = '"Yuri, you really apologize a lot, don\'t you?"'
	elseif cl == 542 then
		ct = 'Yuri'
		ca = '"I...I do?"'
	elseif cl == 543 then
		updateYuri('3','','a2')
		ca = '"I don\'t really mean to..."'
	elseif cl == 544 then
		ca = '"Sorry..."'
	elseif cl == 545 then
		yc = 'c2'
		ca = '"I mean--!"'
	elseif cl == 546 then
		ct = player
		ca = '"Ahaha."'
	elseif cl == 547 then
		ca = '"Here, this should work, right?"'
	elseif cl == 548 then
		ca = "I slide my desk until it's up against Yuri's, then"
		cb = "hold my book more between the two of them."
	elseif cl == 549 then
		updateYuri('1l','2r','v')
		ct = 'Yuri'
		ca = '"Ah..."'
	elseif cl == 550 then
		ca = '"I suppose so..."'
	elseif cl == 551 then
		ct = ''
		ca = '"Yuri timidly closes her own copy."'
	elseif cl == 552 then
		ca = "Once we each lean in a little bit, our shoulders"
		cb = "are almost touching."
	elseif cl == 553 then
		ca = "It feels like my left arm is in the way, so instead"
		cb = "I use my right hand to hold the book open."
	elseif cl == 554 then
		ct = player
		ca = '"Ah, I guess that makes it kind of difficult to '
		cb = 'turn the page..."'
	elseif cl == 555 then
		ct = 'Yuri'
		ca = '"Here..."'
	elseif cl == 556 then
		hideYuri()
		bgUpdate('y_cg1_base')
		ct = ''
		ca = "Yuri takes her left arm and holds the left side "
		cb = "of the book between her thumb and forefinger."
	elseif cl == 557 then
		ct = player
		ca = '"Ah..."'
	elseif cl == 558 then
		ct = ''
		ca = "I do the same with my right arm, on the right "
		cb = "side of the book."
	elseif cl == 559 then
		ca = "That way, I turn a page, and Yuri slides it under"
		cb = "her thumb after it flips to her side."
	elseif cl == 560 then
		ca = "But in holding it like this..."
	elseif cl == 561 then
		ca = "We're huddled even closer together than before."
	elseif cl == 562 then
		ca = "It's actually kind of distracting me...!"
	elseif cl == 563 then
		ca = "It's as if I can feel the warmth of Yuri's face,"
		cb = "and she's in the corner of my vision..."
	elseif cl == 564 then
		cgUpdate('y_cg1_exp1')
		ct = 'Yuri'
		ca = '"...Are you ready?"'
	elseif cl == 565 then
		ct = player
		ca = '"Eh?"'
	elseif cl == 566 then
		ct = 'Yuri'
		ca = '"To turn the page..."'
	elseif cl == 567 then
		ct = player
		ca = '"Ah...sorry!"'
	elseif cl == 568 then
		ca = '"I think I got a bit distracted for a second..."'
	elseif cl == 569 then
		ct = ''
		ca = "I glance over at Yuri's face again, and our eyes "
		cb = "meet."
	elseif cl == 570 then
		ca = "I don't know how I'll be able to keep up with"
		cb = "her..."
	elseif cl == 571 then
		ct = 'Yuri'
		ca = '"Ah..."'
	elseif cl == 572 then
		cgUpdate('y_cg1_exp2')
		ca = '"That\'s okay."'
	elseif cl == 573 then
		ca = '"You\'re not as used to reading, right?"'
	elseif cl == 574 then
		ca = '"I don\'t mind being patient if it takes you a bit'
		cb = 'longer..."'
	elseif cl == 575 then
		ca = '"It\'s probably the least I can do..."'
	elseif cl == 576 then
		ca = '"Since you\'ve been so patient with me..."'
	elseif cl == 577 then
		ct = player
		ca = '"Y-Yeah..."'
	elseif cl == 578 then
		ca = '"Thanks."'
	elseif cl == 579 then
		cgHide()
		ct = ''
		ca = "We continue reading."
	elseif cl == 580 then
		ca = "Yuri no longer asks me if I'm ready to turn the "
		cb = "page."
	elseif cl == 581 then
		ca = "Instead, I just assume that she finishes the page"
		cb = "before me, so I turn it by my own volition."
	elseif cl == 582 then
		ca = "We continue the first chapter in silence."
	elseif cl == 583 then
		ca = "Even so, turning each page almost feels like an"
		cb = "intimate exchange..."
	elseif cl == 584 then
		ca = "My thumb gently letting go of the page, letting it"
		cb = "flutter over to her side as she catches it under "
		cc = "her own thumb."
	elseif cl == 585 then
		ct = player
		ca = '"Hey, Yuri..."'
	elseif cl == 586 then
		ca = '"This might be a silly thought, but..."'
	elseif cl == 587 then
		ca = '"The main character kind of reminds me of you a '
		cb = 'little bit."'
	elseif cl == 588 then
		cgUpdate('y_cg1_exp1')
		ct = 'Yuri'
		ca = '"You...think so?"'
	elseif cl == 589 then
		ca = '"How does she?"'
	elseif cl == 590 then
		ct = player
		ca = '"Well, I guess she\'s more blunt in a lot of '
		cb = 'ways..."'
	elseif cl == 591 then
		ca = '"But she also second-guesses all of the things that'
		cb = 'she says and does."'
	elseif cl == 592 then
		ca = '"Like she\'s afraid she\'ll do something wrong."'
	elseif cl == 593 then
		ca = '"It\'s not like I can see into your head or'
		cb = 'anything..."'
	elseif cl == 594 then
		ca = '"But they\'re kind of reminiscent of some of your'
		cb = 'mannerisms."'
	elseif cl == 595 then
		ct = 'Yuri'
		ca = '"I-I see..."'
	elseif cl == 596 then
		cgHide()
		bgUpdate('club')
		updateYuri('1l','2r','t')
		ct = ''
		ca = "Yuri remains silent for a moment."
	elseif cl == 597 then
		ct = 'Yuri'
		ca = '"But '..player..'..."'
    elseif cl == 598 then
		ca = '"That\'s probably..."'
	elseif cl == 599 then
		ca = '"...a terrible thing to have in common with her!"'
	elseif cl == 600 then
		updateYuri('3','','b2')
		ca = '"Uuuh, that\'s so embarrassing that you think'
		cb = 'that..."'
	elseif cl == 601 then
		ct = player
		ca = '"W-Wait!"'
	elseif cl == 602 then
		ca = '"I didn\'t mean it in a bad way or anything!"'
	elseif cl == 603 then
		ca = '"Sorry, I really didn\'t know you were'
		cb = 'self-conscious about that sort of thing..."'
	elseif cl == 604 then
		ct = 'Yuri'
		ca = '"..."'
	elseif cl == 605 then
		ct = player
		ca = '"I guess I more meant that it\'s kind of cute..."'
	elseif cl == 606 then
		updateYuri('2l','2r','q')
		ct = 'Yuri'
		ca = '"A-Ah--"'
	elseif cl == 607 then
		ca = '"What are you saying all of a sudden...?"'
	elseif cl == 608 then
		ca = '"I...!"'
	elseif cl == 609 then
		mx = -50
		updateMonika('2l','2r','a')
		ct = 'Monika'
		ca = '"Okay, everyone!"'
	elseif cl == 610 then
		ct = 'Yuri'
		ca = '"...!"'
	elseif cl == 611 then
		ct = 'Monika'
		ca = '"I think it\'s about time we share today\'s '
		cb = 'poems with each other."'
	elseif cl == 612 then
		ca = '"We might not have enough time if we wait too'
		cb = 'long."'
	elseif cl == 613 then
		yc = 'w'
		ct = 'Yuri'
		ca = '"Ah..."'
	elseif cl == 614 then
		ct = ''
		ca = "Yuri exhales, spared from finishing her thought."
	elseif cl == 615 then
		updateMonika('1l','1r','a')
		ct = 'Monika'
		ca = '"Is that alright, Yuri?"'
	elseif cl == 616 then
		ca = '"You look kind of down..."'
	elseif cl == 617 then
		ca = '"I\'m sorry if you haven\'t been looking forward to'
		cb = 'this..."'
	elseif cl == 618 then
		yc = 'v'
		ct = 'Yuri'
		ca = '"Ah, it\'s not..."'
	elseif cl == 619 then
		ca = '"...It\'s fine."'
	elseif cl == 620 then
		hideMonika()
		ct = ''
		ca = "Yuri releases her hand from the book, causing it to"
		cb = "close on top of my thumb."
	elseif cl == 621 then
		ct = player
		ca = '"Alright..."'
	elseif cl == 622 then
		ca = '"I guess I\'ll do some more reading tonight."'
	elseif cl == 623 then
		ca = '"Or would you prefer I only read it with you?"'
	elseif cl == 624 then
		updateYuri('1l','2r','f')
		ct = 'Yuri'
		ca = '"Um...!"'
	elseif cl == 625 then
		ca = '"I...guess I don\'t have too much of a preference'
		cb = 'either way..."'
	elseif cl == 626 then
		ct = player
		ca = '"Hmm..."'
	elseif cl == 627 then
		ca = '"In that case, I\'ll read a little more tonight."'
	elseif cl == 628 then
		ca = '"It\'ll be more fun to read with you after it picks'
		cb = 'up a bit, you know?"'
	elseif cl == 629 then
		yc = 'a'
		ct = 'Yuri'
		ca = '"That\'s good reasoning."'
	elseif cl == 630 then
		ca = '"In that case, feel free to finish the first two'
		cb = 'chapters in your own time."'
	elseif cl == 631 then
		ct = player
		ca = '"Alright!"'
	elseif cl == 632 then
		hideYuri()
		ct = ''
		ca = "I stand up."
	elseif cl == 633 then
		ca = "I make a mental note of where I left off in the"
		cb = "book, then slip it back into my bag."
	elseif cl == 634 then
		cl = 653
		--ca = 'Sayori is vice president of theLiteratureClub.' (for reference on how long the lines should be)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
	end
end