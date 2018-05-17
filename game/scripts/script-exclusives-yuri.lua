function ch1yuri()
	if cl == 423 then
		cw('bl',"I'm really curious to talk to Yuri a little bit more...")
	elseif cl == 424 then
		cw('bl',"But at the same time, I would feel bad for distracting her from reading.")
	elseif cl == 425 then
		cw('bl',"I catch a glimpse of the cover of her book.")
	elseif cl == 426 then
		cw('bl',"It looks like the same book that she lent to me...")
	elseif cl == 427 then
		cw('bl',"More than that, she seems to be on the first few pages.")
    elseif cl == 428 then
		audioUpdate('6')
		yx = 80
		updateYuri('4','a2')
		cw('y',"Ah...")
	elseif cl == 429 then
		cw('bl',"Crap--")
	elseif cl == 430 then
		cw('bl',"I think she noticed me looking at her...")
    elseif cl == 431 then
		cw('bl',"She sneaks another glance at me, and our eyes meet for a split second.")
	elseif cl == 432 then
		yb = 'b2'
		cw('y',"...")
	elseif cl == 433 then
		cw('bl',"But that only makes her hide her face deeper in her book.")
	elseif cl == 434 then
		cw('mc',"Sorry...")
	elseif cl == 435 then
		cw('mc',"I was just spacing out...")
	elseif cl == 436 then
		cw('bl','I mutter this, sensing I made her uncomfortable.')
	elseif cl == 437 then
		updateYuri('1','i')
		cw('y',"Oh...")
	elseif cl == 438 then
		cw('y',"It's fine...")
	elseif cl == 439 then
		yb = 'a'
		cw('y',"If I was focused, then I probably wouldn't have noticed in the first place.")
	elseif cl == 440 then
		cw('y',"But I'm just re-reading a bit of this, so...")
	elseif cl == 441 then
		cw('mc',"That's the book that you gave me, right?")
	elseif cl == 442 then
		cw('y',"Mhm.")
	elseif cl == 443 then
		cw('y',"I wanted to re-read some of it.")
	elseif cl == 444 then
		updateYuri('2','q')
		cw('y',"Not for any particular reason...!")
	elseif cl == 445 then
		cw('mc',"Just curious, how come you have two copies of the same book?")
	elseif cl == 446 then
		cw('y',"Ah...")
	elseif cl == 447 then
		cw('y',"Well, when I stopped at the bookstore yesterday--")
	elseif cl == 448 then
		updateYuri('3','o')
		cw('y',"Ah, that's not what I meant...")
	elseif cl == 449 then
		cw('y',"I mean--")
	elseif cl == 450 then
		updateYuri('1','w')
		cw('y',"I...just happened to buy two of them.")
	elseif cl == 451 then
		cw('mc',"Ah, I see.")
	elseif cl == 452 then
		cw('bl',"There's something fairly obvious here that Yuri isn't telling me, but I decide to let it go.")
	elseif cl == 453 then
		cw('mc',"I'll definitely start reading it soon!")
	elseif cl == 454 then
		updateYuri('2','u')
		cw('y',"I'm glad to hear...")
	elseif cl == 455 then
		cw('y',"Once it starts to pick up, you might have a hard time putting it down.")
	elseif cl == 456 then
		yb = 'c'
		cw('y',"It's a very engaging and relatable story.")
	elseif cl == 457 then
		cw('mc',"Is that so...?")
	elseif cl == 458 then
		cw('mc',"What's it about, anyway?")
	elseif cl == 459 then
		updateYuri('1','f')
		cw('y',"Well...")
	elseif cl == 460 then
		ca = "Mmm..."
	elseif cl == 461 then
		cw('bl',"Yuri closes the book and scans her eyes over the back.")
	elseif cl == 462 then
		cw('bl',"The book is titled \"Portrait of Markov\".")
	elseif cl == 463 then
		cw('bl',"There's an ominous-looking eye symbol on the front cover.")
	elseif cl == 464 then
		updateYuri('1','a')
		cw('y',"Alright...")
	elseif cl == 465 then
		cw('y',"I just wanted to make sure I don't accidentally give anything away.")
	elseif cl == 466 then
		cw('y',"Basically, it's about this girl in high school who moves in with her long-lost younger sister...")
	elseif cl == 467 then
		cw('y',"But as soon as she does so, her life gets really strange.")
	elseif cl == 468 then
		yb = 'm'
		cw('y',"She gets targeted by these people who escaped from a human experiment prison...")
	elseif cl == 469 then
		cw('y',"And while her life is in danger, she needs to desperately choose who to trust.")
	elseif cl == 470 then
		yb = 'i'
		cw('y', "No matter what she does, she ends up destroying most of her relationships and her life starts to fall apart...")
	elseif cl == 471 then
		cw('mc',"That's kind of--!")
	elseif cl == 472 then
		cw('bl',"That's kind of dark, isn't it?")
	elseif cl == 473 then
		cw('bl',"Yuri made it sound like it was going to be a nice story, so that dark turn came from nowhere.")
	elseif cl == 474 then
		yb = 'c'
		cw('y',"Ahaha.")
	elseif cl == 475 then
		cw('bl',"Yuri gently giggles, all of a sudden.")
	elseif cl == 476 then
		cw('y',"Are you not a fan of that sort of thing, "..player.."?")
	elseif cl == 477 then
		cw('mc',"No, it's not that...")
	elseif cl == 478 then
		cw('mc',"I mean, I can definitely enjoy those kinds of stories, so don't worry.")
	elseif cl == 479 then
		updateYuri('2','u')
		cw('y',"I hope so...")
	elseif cl == 480 then
		cw('bl',"Yeah... I totally forgot that Yuri is into those things.")
	elseif cl == 481 then
		cw('bl', "She's so shy and reclusive on the outside, but her mind seems to be completely different.")
	elseif cl == 482 then
		cw('y',"It's just that those kinds of stories...")
	elseif cl == 483 then
		yb = 'a'
		cw('y',"They challenge you to look at life from a strange new perspective.")
	elseif cl == 484 then
		cw('y',"When horrible things happen not just because someone wants to be evil...")
	elseif cl == 485 then
		yb = 'm'
		cw('y',"But because they have their own goals, or their own philosophy that they believe in.")
	elseif cl == 486 then
		cw('y',"Then suddenly, when you thought you related to the protagonist...")
	elseif cl == 487 then
		cw('y', "They're made out to be the naive one for letting their one-sided morals interfere with the villain's plans.")
	elseif cl == 488 then
		updateYuri('3','v')
		cw('y',"I'm...I'm rambling, aren't I...?")
	elseif cl == 489 then
		cw('y',"Not again...")
	elseif cl == 490 then
		updateYuri('4','b2')
		cw('y',"I'm sorry...")
	elseif cl == 491 then
		cw('mc',"Hey, don't apologize...!")
	elseif cl == 492 then
		cw('mc',"I haven't lost interest or anything.")
	elseif cl == 493 then
		cw('y',"Well...")
	elseif cl == 494 then
		cw('y', "I guess it's alright, then...")
	elseif cl == 495 then
		yb = 'a2'
		cw('y',"But I feel like I should let you know that I have this problem...")
	elseif cl == 496 then
		cw('y',"When I let things like books and writing fill my thoughts...")
	elseif cl == 497 then	
		cw('y', "I kind of forget to pay attention to other people...")
	elseif cl == 498 then
		updateYuri('3','t')
		cw('y', "So I'm sorry if I end up saying something strange!")
	elseif cl == 499 then
		cw('y', "And please stop me if I start talking too much!")
	elseif cl == 500 then
		cw('mc',"That's--")
	elseif cl == 501 then
		cw('mc', "I really don't think you need to worry...")
	elseif cl == 502 then
		cw('mc',"That just means you're passionate about reading.")
	elseif cl == 503 then
		cw('mc', "The least I can do is listen.")
	elseif cl == 504 then
		cw('mc', "It's a literature club, after all...")
	elseif cl == 505 then
		updateYuri('3','a')
		cw('y',"Ah--")
	elseif cl == 506 then
		cw('y', "That's...")
	elseif cl == 507 then
		cw('y', "Well, that's true...")
	elseif cl == 508 then
		cw('mc',"In fact...")
	elseif cl == 509 then
		cw('mc', "I might as well get started reading it, right?")
	elseif cl == 510 then
		yb = 'n'
		cw('y',"Y-You don't have to!")
	elseif cl == 511 then
		cw('mc',"Ahaha, what are you saying?")
	elseif cl == 512 then
		cw('mc',"Just a moment ago, you said you were looking forward to it.")
	elseif cl == 513 then
		yb = 'o'
		cw('y',"...")
	elseif cl == 514 then
		cw('mc',"Let me just get the book...")
	elseif cl == 515 then
		cw('bl',"I quickly retrieve the book that I had put into my bag.")
	elseif cl == 516 then
		cw('mc',"Alright...it's fine if I sit here, right?")
	elseif cl == 517 then
		cw('bl',"I slip into the seat next to Yuri's.")
	elseif cl == 518 then
		yb = 'n'
		cw('y',"Ah...!")
	elseif cl == 519 then
		cw('y',"Yeah...")
	elseif cl == 520 then
		cw('mc',"Are you sure?")
	elseif cl == 521 then
		cw('mc',"You seem a little apprehensive...")
	elseif cl == 522 then
		cw('y',"That's...")
	elseif cl == 523 then
		updateYuri('3','','b2')
		cw('y',"I'm sorry...")
	elseif cl == 524 then
		cw('y',"It's not that I don't want you to!")
	elseif cl == 525 then
		cw('y',"It's just something I'm not very used to...")
	elseif cl == 526 then
		cw('y', "That is, reading in company with someone.")
	elseif cl == 527 then
		cw('mc',"I see...")
	elseif cl == 528 then
		cw('mc', "Well, just tell me if I end up distracting you or anything.")
	elseif cl == 529 then
		cw('y',"A-Alright...")
	elseif cl == 530 then
		hideYuri()
		cw('bl',"I open the book and start the prologue.")
	elseif cl == 531 then
		cw('bl',"I soon understand what Yuri means about reading in company.")
	elseif cl == 532 then
		cw('bl',"It's as if I can feel her presence over my shoulder as I read.")
	elseif cl == 533 then
		cw('bl',"It's not a particularly bad thing.")
	elseif cl == 534 then
		cw('bl',"Maybe a little distracting, but the feeling is somewhat comforting.")
	elseif cl == 535 then
		cw('bl',"Yuri is in the corner of my eye.")
	elseif cl == 536 then
		cw('bl',"I realize that she's not actually looking at her own book.")
	elseif cl == 537 then
		cw('bl',"I glance over.")
	elseif cl == 538 then
		cw('bl',"It looks like she's reading from my book instead--")
	elseif cl == 539 then
		updateYuri('3','n')
		cw('y',"S-Sorry!")
	elseif cl == 540 then
		cw('y', "I was just--!")
	elseif cl == 541 then
		cw('mc',"Yuri, you really apologize a lot, don't you?")
	elseif cl == 542 then
		cw('y',"I...I do?")
	elseif cl == 543 then
		updateYuri('4','a2')
		cw('y', "I don't really mean to...")
	elseif cl == 544 then
		cw('y', "Sorry...")
	elseif cl == 545 then
		yb = 'c2'
		cw('y',"I mean--!")
	elseif cl == 546 then
		cw('mc',"Ahaha.")
	elseif cl == 547 then
		cw('mc',"Here, this should work, right?")
	elseif cl == 548 then
		cw('bl', "I slide my desk until it's up against Yuri's, then hold my book more between the two of them.")
	elseif cl == 549 then
		updateYuri('2','v')
		cw('y',"Ah...")
	elseif cl == 550 then
		cw('y', "I suppose so...")
	elseif cl == 551 then
		cw('bl',"Yuri timidly closes her own copy.")
	elseif cl == 552 then
		cw('bl', "Once we each lean in a little bit, our shoulders are almost touching.")
	elseif cl == 553 then
		cw('bl',"It feels like my left arm is in the way, so instead I use my right hand to hold the book open.")
	elseif cl == 554 then
		cw('mc',"Ah, I guess that makes it kind of difficult to turn the page...")
	elseif cl == 555 then
		cw('y',"Here...")
	elseif cl == 556 then
		hideYuri()
		bgUpdate('y_cg1_base')
		cw('bl',"Yuri takes her left arm and holds the left side of the book between her thumb and forefinger.")
	elseif cl == 557 then
		cw('mc',"Ah...")
	elseif cl == 558 then
		cw('bl',"I do the same with my right arm, on the right side of the book.")
	elseif cl == 559 then
		cw('bl', "That way, I turn a page, and Yuri slides it under her thumb after it flips to her side.")
	elseif cl == 560 then
		cw('bl', "But in holding it like this...")
	elseif cl == 561 then
		cw('bl',"We're huddled even closer together than before.")
	elseif cl == 562 then
		cw('bl', "It's actually kind of distracting me...!")
	elseif cl == 563 then
		cw('bl', "It's as if I can feel the warmth of Yuri's face, and she's in the corner of my vision...")
	elseif cl == 564 then
		cgUpdate('y_cg1_exp1')
		cw('y',"...Are you ready?")
	elseif cl == 565 then
		cw('mc',"Eh?")
	elseif cl == 566 then
		cw('y',"To turn the page...")
	elseif cl == 567 then
		cw('mc',"Ah...sorry!")
	elseif cl == 568 then
		cw('mc',"I think I got a bit distracted for a second...")
	elseif cl == 569 then
		cw('bl',"I glance over at Yuri's face again, and our eyes meet.")
	elseif cl == 570 then
		cw('bl', "I don't know how I'll be able to keep up with her...")
	elseif cl == 571 then
		cw('y',"Ah...")
	elseif cl == 572 then
		cgUpdate('y_cg1_exp2')
		cw('y',"That's okay.")
	elseif cl == 573 then
		cw('y', "You're not as used to reading, right?")
	elseif cl == 574 then
		cw('y', "I don't mind being patient if it takes you a bit longer...")
	elseif cl == 575 then
		cw('y',"It's probably the least I can do...")
	elseif cl == 576 then
		cw('y', "Since you've been so patient with me...")
	elseif cl == 577 then
		cw('mc',"Y-Yeah...")
	elseif cl == 578 then
		cw('y', "Thanks.")
	elseif cl == 579 then
		cgHide()
		cw('bl',"We continue reading.")
	elseif cl == 580 then
		cw('bl', "Yuri no longer asks me if I'm ready to turn the page.")
	elseif cl == 581 then
		cw('bl', "Instead, I just assume that she finishes the page before me, so I turn it by my own volition.")
	elseif cl == 582 then
		cw('bl', "We continue the first chapter in silence.")
	elseif cl == 583 then
		cw('bl', "Even so, turning each page almost feels like an intimate exchange...")
	elseif cl == 584 then
		cw('bl', "My thumb gently letting go of the page, letting it flutter over to her side as she catches it under her own thumb.")
	elseif cl == 585 then
		cw('mc',"Hey, Yuri...")
	elseif cl == 586 then
		cw('mc',"This might be a silly thought, but...")
	elseif cl == 587 then
		cw('mc', "The main character kind of reminds me of you a little bit.")
	elseif cl == 588 then
		cgUpdate('y_cg1_exp1')
		cw('y',"You...think so?")
	elseif cl == 589 then
		cw('y', "How does she?")
	elseif cl == 590 then
		cw('mc',"Well, I guess she's more blunt in a lot of ways...")
	elseif cl == 591 then
		cw('mc', "But she also second-guesses all of the things that she says and does.")
	elseif cl == 592 then
		cw('mc',"Like she's afraid she'll do something wrong.")
	elseif cl == 593 then	
		cw('mc', "It's not like I can see into your head or anything...")
	elseif cl == 594 then
		cw('mc',"But they're kind of reminiscent of some of your mannerisms.")
	elseif cl == 595 then
		cw('y',"I-I see...")
	elseif cl == 596 then
		cgHide()
		bgUpdate('club')
		updateYuri('2','t')
		cw('bl',"Yuri remains silent for a moment.")
	elseif cl == 597 then
		cw('y',"But "..player.."...")
    elseif cl == 598 then
		cw('y',"That's probably...")
	elseif cl == 599 then
		cw('y', "...a terrible thing to have in common with her!")
	elseif cl == 600 then
		updateYuri('4','b2')
		cw('y', "Uuuh, that's so embarrassing that you think that...")
	elseif cl == 601 then
		cw('mc',"W-Wait!")
	elseif cl == 602 then
		cw('mc', "I didn't mean it in a bad way or anything!")
	elseif cl == 603 then
		cw('mc', "Sorry, I really didn't know you were self-conscious about that sort of thing...")
	elseif cl == 604 then
		cw('y',"...")
	elseif cl == 605 then
		cw('mc',"I guess I more meant that it's kind of cute...")
	elseif cl == 606 then
		updateYuri('3','q')
		cw('y',"A-Ah--")
	elseif cl == 607 then
		cw('y',"What are you saying all of a sudden...?")
	elseif cl == 608 then
		cw('y',"I...!")
	elseif cl == 609 then
		mx = -50
		updateMonika('4','a')
		cw('m',"Okay, everyone!")
	elseif cl == 610 then
		cw('y',"...!")
	elseif cl == 611 then
		cw('m',"I think it's about time we share today's poems with each other.")
	elseif cl == 612 then
		cw('m', "We might not have enough time if we wait too long.")
	elseif cl == 613 then
		yb = 'w'
		cw('y',"Ah...")
	elseif cl == 614 then
		cw('bl',"Yuri exhales, spared from finishing her thought.")
	elseif cl == 615 then
		updateMonika('1','a')
		cw('m',"Is that alright, Yuri?")
	elseif cl == 616 then
		cw('m', "You look kind of down...")
	elseif cl == 617 then
		cw('m',"I'm sorry if you haven't been looking forward to this...")
	elseif cl == 618 then
		yb = 'v'
		cw('y',"Ah, it's not...")
	elseif cl == 619 then
		cw('y', "...It's fine.")
	elseif cl == 620 then
		hideMonika()
		cw('bl',"Yuri releases her hand from the book, causing it to close on top of my thumb.")
	elseif cl == 621 then
		cw('mc',"Alright...")
	elseif cl == 622 then
		cw('mc', "I guess I'll do some more reading tonight.")
	elseif cl == 623 then
		cw('mc', "Or would you prefer I only read it with you?")
	elseif cl == 624 then
		updateYuri('2','f')
		cw('y',"Um...!")
	elseif cl == 625 then
		cw('y', "I...guess I don't have too much of a preference either way...")
	elseif cl == 626 then
		cw('mc',"Hmm...")
	elseif cl == 627 then
		cw('mc', "In that case, I'll read a little more tonight.")
	elseif cl == 628 then
		cw('mc',"It'll be more fun to read with you after it picks up a bit, you know?")
	elseif cl == 629 then
		yb = 'a'
		cw('y',"That's good reasoning.")
	elseif cl == 630 then
		cw('y',"In that case, feel free to finish the first two chapters in your own time.")
	elseif cl == 631 then
		cw('mc',"Alright!")
	elseif cl == 632 then
		hideYuri()
		cw('bl',"I stand up.")
	elseif cl == 633 then
		cw('bl',"I make a mental note of where I left off in the book, then slip it back into my bag.")
	elseif cl == 634 then
		cl = 653
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
	end
end