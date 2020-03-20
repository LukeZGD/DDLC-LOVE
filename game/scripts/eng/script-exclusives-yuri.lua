function Yuri_exclusive_1()
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
		updateYuri('4','a2',80)
		cw('y',"Ah...")
	elseif cl == 429 then
		cw('bl',"Crap--")
	elseif cl == 430 then
		cw('bl',"I think she noticed me looking at her...")
	elseif cl == 431 then
		cw('bl',"She sneaks another glance at me, and our eyes meet for a split second.")
	elseif cl == 432 then
		updateYuri('4','b2')
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
		updateYuri('1','a')
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
		updateYuri('2','c')
		cw('y',"It's a very engaging and relatable story.")
	elseif cl == 457 then
		cw('mc',"Is that so...?")
	elseif cl == 458 then
		cw('mc',"What's it about, anyway?")
	elseif cl == 459 then
		updateYuri('1','f')
		cw('y',"Well...")
	elseif cl == 460 then
		cw('y',"Mmm...")
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
		updateYuri('1','m')
		cw('y',"She gets targeted by these people who escaped from a human experiment prison...")
	elseif cl == 469 then
		cw('y',"And while her life is in danger, she needs to desperately choose who to trust.")
	elseif cl == 470 then
		updateYuri('1','i')
		cw('y', "No matter what she does, she ends up destroying most of her relationships and her life starts to fall apart...")
	elseif cl == 471 then
		cw('mc',"That's kind of--!")
	elseif cl == 472 then
		cw('bl',"That's kind of dark, isn't it?")
	elseif cl == 473 then
		cw('bl',"Yuri made it sound like it was going to be a nice story, so that dark turn came from nowhere.")
	elseif cl == 474 then
		updateYuri('1','c')
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
		updateYuri('2','a')
		cw('y',"They challenge you to look at life from a strange new perspective.")
	elseif cl == 484 then
		cw('y',"When horrible things happen not just because someone wants to be evil...")
	elseif cl == 485 then
		updateYuri('2','m')
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
		updateYuri('4','a2')
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
		updateYuri('3','n')
		cw('y',"Y-You don't have to!")
	elseif cl == 511 then
		cw('mc',"Ahaha, what are you saying?")
	elseif cl == 512 then
		cw('mc',"Just a moment ago, you said you were looking forward to it.")
	elseif cl == 513 then
		updateYuri('3', 'o')
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
		updateYuri('3','n')
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
		updateYuri('4','b2')
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
		updateYuri('3','n',80)
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
		updateYuri('4','c2')
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
		hideAll()
		bgUpdate('cg/y_cg1_base')
		persistent.clear[3] = 1
		if xaload == 1 then
			savepersistent()
		end
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
		cw('mc', "Thanks.")
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
		updateYuri('2','t',80)
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
		updateMonika('4','a',-50)
		cw('m',"Okay, everyone!")
	elseif cl == 610 then
		cw('y',"...!")
	elseif cl == 611 then
		cw('m',"I think it's about time we share today's poems with each other.")
	elseif cl == 612 then
		cw('m', "We might not have enough time if we wait too long.")
	elseif cl == 613 then
		updateYuri('3','w')
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
		updateYuri('3','v')
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
		updateYuri('2','a')
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
		if chapter == 1 then
			scriptJump(652)
		elseif chapter >= 2 then
			poeminitialize()
		end
	elseif cl == 1359 then
		scriptJump(423)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
	end
end

function Yuri_exclusive_2()
	if cl == 1359 then
		savevalue = 'y'
		audioUpdate('6')
		cw('mc',"Hey, Yuri.")
	elseif cl == 1360 then
		updateYuri('2','f',80)
		cw('y',"Eh?")
	elseif cl == 1361 then
		cw('mc',"Ah...")
	elseif cl == 1362 then
		cw('bl',"I suddenly notice that Yuri is reading a different book from the one we've been reading together.")
	elseif cl == 1363 then
		cw('mc',"Sorry! I didn't mean to interrupt...")
	elseif cl == 1364 then
		updateYuri('2','m')
		cw('y',"Ah, no...")
	elseif cl == 1365 then
		cw('y',"I was kind of just waiting for you...")
	elseif cl == 1366 then
		updateYuri('2','a')
		cw('mc',"Ah, if that's the case...")
	elseif cl >= 1367 then
		Yuri_exclusive_2_ch3()
	end
end
function Yuri_exclusive_2_ch3()
	if cl == 1367 then
		cw('mc',"Why don't we go ahead and get started?")
	elseif cl == 1368 then
		updateYuri('2','c')
		cw('y',"Yes, let's!")
	elseif cl == 1369 then
		updateYuri('3','a')
		cw('y',"Actually, I have a request...")
	elseif cl == 1370 then
		cw('y',"...Do you mind if I make some tea first?")
	elseif cl == 1371 then
		cw('mc',"Not at all.")
	elseif cl == 1372 then
		updateYuri('1','c')
		cw('y',"Thanks very much.")
	elseif cl == 1373 then
		updateYuri('1','a')
		cw('y',"If there's one thing that can make my reading time here any better, it's a nice cup of tea.")
	elseif cl == 1374 then
		cw('y',"Not to mention for yourself, as well.")
	elseif cl == 1375 then
		hideYuri()
		cw('bl',"Yuri stands up and makes her way to the closet.")
	elseif cl == 1376 then
		cw('bl',"I follow and watch as she retrieves a small water pitcher from the shelf - the kind with a filter inside.")
	elseif cl == 1377 then
		updateYuri('1','f',80)
		cw('y',"Can you hold this for a second?")
	elseif cl == 1378 then
		cw('mc',"Sure...")
	elseif cl == 1379 then
		cw('bl',"Yuri hands me the water pitcher and also fetches an electric kettle.")
	elseif cl == 1380 then
		cw('y',"I'm going to plug this in at the teacher's desk, and then we'll go get some water.")
	elseif cl == 1381 then
		hideYuri()
		cw('bl',"She walks past me and sets the kettle down on the teacher's desk.")
	elseif cl == 1382 then
		cw('bl',"I simply watch her movements.")
	elseif cl == 1383 then
		cw('bl',"To my surprise, the way she moves really contrasts her speaking mannerisms.")
	elseif cl == 1384 then
		cw('bl',"Especially because of her long legs, Yuri appears elegant and methodical.")
	elseif cl == 1385 then
		updateYuri('1','f',80)
		cw('y',"Okay, may I have the water pitcher?")
	elseif cl == 1386 then
		updateYuri('1','a')
		cw('y',"Thanks. I'll be right back.")
	elseif cl == 1387 then
		cw('mc',"Ah, I might as well walk with you...")
	elseif cl == 1388 then
		updateYuri('1','s')
		cw('y',"Yeah...why not?")
	elseif cl == 1389 then
		cw('y',"Shall we go, then?")
	elseif cl == 1390 then
		cw('mc',"Yeah...")
	elseif cl == 1391 then
		updateMonika('2','a',-50)
		cw('m',"Hm? Where are you two off to?")
	elseif cl == 1391 then
		updateYuri('2','e')
		cw('mc',"Eh?")
	elseif cl == 1392 then
		cw('mc',"We're just...Yuri was going to make some tea, so...")
	elseif cl == 1393 then
		cw('bl',"I suddenly realize how weird it sounds to explain this to Monika.")
	elseif cl == 1394 then
		cw('mc',"We're just filling the water pitcher...")
	elseif cl == 1395 then
		cw('m',"Ah, okay!")
	elseif cl == 1396 then
		updateMonika('4','j')
		cw('m',"Sorry, I was just a bit curious...")
	elseif cl == 1397 then
		cw('m',"That's kind of a one-person job, isn't it?")
	elseif cl == 1398 then
		updateMonika('4','a')
		cw('mc',"That's--")
	elseif cl == 1399 then
		updateYuri('1','k')
		cw('y',"Monika, please mind your own business for once.")
	elseif cl == 1400 then
		cw('y',"Or do you want to tell me there's something wrong with helping involve "..player.." in club activities?")
	elseif cl == 1401 then
		updateMonika('1','g')
		cw('m',"E-Eh...?")
	elseif cl == 1402 then
		cw('mc',"--!")
	elseif cl == 1403 then
		cw('bl',"My mouth gapes.")
	elseif cl == 1404 then
		updateMonika('5a')
		cw('m',"I...")
	elseif cl == 1405 then
		cw('m',"I suppose there's nothing wrong with that...")
	elseif cl == 1406 then
		updateYuri('2','l')
		cw('y',"Hmph...")
	elseif cl == 1407 then
		cw('y',"Then let's go, "..player..".")
	elseif cl == 1408 then
		cw('mc',"Ah...")
	elseif cl == 1409 then
		cw('bl',"Yuri quickly exits the room, and I follow.")
	elseif cl == 1410 then
		audioUpdate('0')
		bgUpdate('corridor')
		hideMonika()
		updateYuri('4','c2')
		cw('bl',"Once in the hallway, she suddenly puts her forehead against the wall.")
	elseif cl == 1411 then
		cw('y',"I spoke without thinking...")
	elseif cl == 1412 then
		cw('y',"How could I say something like that...?")
	elseif cl == 1413 then
		cw('mc',"Yuri...")
	elseif cl == 1414 then
		updateYuri('4','b2')
		cw('y',"I just...")
	elseif cl == 1415 then
		cw('y',"Something about the way she said that...")
	elseif cl == 1416 then
		cw('y',"It made me feel so...irritated.")
	elseif cl == 1417 then
		cw('y',"What's wrong with me...?")
	elseif cl == 1418 then
		cw('mc',"No, Yuri.")
	elseif cl == 1419 then
		cw('mc',"I think...you did the right thing!")
	elseif cl == 1420 then
		cw('mc',"I wasn't expecting it, but...")
	elseif cl == 1421 then
		cw('mc',"It's also not right for Monika to judge people like that.")
	elseif cl == 1422 then
		audioUpdate('9')
		updateYuri('4','a2')
		cw('y',player.."...")
	elseif cl == 1423 then
		cw('y',"How come even when I do something bad...")
	elseif cl == 1424 then
		cw('y',"You're being nice to me?")
	elseif cl == 1425 then
		cw('mc',"Because.")
	elseif cl == 1426 then
		cw('mc',"Nothing that you do is as bad as you make it seem in your head.")
	elseif cl == 1427 then
		cw('mc',"Nobody's perfect.")
	elseif cl == 1428 then
		cw('mc',"We have emotions, and we can't always hide them away.")
	elseif cl == 1429 then
		cw('mc',"But you always amplify things in your head...")
	elseif cl == 1430 then
		cw('mc',"Your mind turns a light rain shower into a hurricane.")
	elseif cl == 1431 then
		updateYuri('3','q')
		cw('y',"Ah...")
	elseif cl == 1432 then
		cw('y',"N-No...")
	elseif cl == 1433 then
		cw('y',"Wouldn't you hate me for something as terrible as that...?")
	elseif cl == 1434 then
		cw('mc',"Why would I hate you?")
	elseif cl == 1435 then
		cw('mc',"I can't hate someone for having emotions...")
	elseif cl == 1436 then
		cw('mc',"What kind of friend would do that?")
	elseif cl == 1437 then
		updateYuri('4','c2')
		cw('y',"Friend...you say?")
	elseif cl == 1438 then
		cw('y',"Ah...um...")
	elseif cl == 1439 then
		cw('bl',"Yuri lifts her head.")
	elseif cl == 1440 then
		updateYuri('3','t')
		cw('y',player.."...")
	elseif cl == 1441 then
		updateYuri('3','t')
		cw('y',"I really like...being friends with you!")
	elseif cl == 1442 then
		cw('mc',"Ahaha...")
	elseif cl == 1443 then
		cw('mc',"Thanks, Yuri.")
	elseif cl == 1444 then
		cw('mc',"I like being friends with you too...")
	elseif cl == 1445 then
		cw('bl',"I feel kind of awkward saying something like that...")
	elseif cl == 1446 then
		cw('bl',"But I'm doing my best to help Yuri feel better.")
	elseif cl == 1447 then
		cw('mc',"Anyway...!")
	elseif cl == 1448 then
		updateYuri('3','u')
		cw('y',"Ah-- Yeah...")
	elseif cl == 1449 then
		cw('y',"Shall we go?")
	elseif cl == 1450 then
		cw('mc',"Yeah.")
	elseif cl == 1451 then
		hideYuri()
		cw('bl',"Yuri and I walk to the nearest water fountain.")
	elseif cl == 1452 then
		cw('bl',"Once we fill up the water pitcher, we return to the classroom.")
	elseif cl == 1453 then
		scriptJump(1454)
	elseif cl == 1454 then
		audioUpdate('6')
		bgUpdate('club')
		updateYuri('1','a',80)
		cw('y',player..", do you like oolong tea?")	
	elseif cl == 1455 then
		cw('mc',"Ah, yeah.")
	elseif cl == 1456 then
		cw('mc',"Anything is fine.")
	elseif cl == 1457 then
		cw('y',"Very well.")
	elseif cl == 1458 then
		cw('bl',"Yuri sets the temperature on the kettle to 200 degrees.")
	elseif cl == 1459 then
		updateYuri('1','f')
		cw('y',"Now it's time to get the teapot.")
	elseif cl == 1460 then
		cw('mc',"You really do this properly, don't you?")
	elseif cl == 1461 then
		updateYuri('1','u')
		cw('y',"Of course...")
	elseif cl == 1462 then
		cw('y',"I shouldn't do any less when I'm making tea for others.")
	elseif cl == 1463 then
		cw('mc',"Even if I'm not an expert on tea or anything...?")
	elseif cl == 1464 then
		updateYuri('2','m')
		cw('y',"Huhu.")
	elseif cl == 1465 then
		updateYuri('2','a')
		cw('y',"In that case, you'll only be even more impressed.")
	elseif cl == 1466 then
		cw('mc',"Ah...perhaps I will!")
	elseif cl == 1467 then
		hideYuri()
		cw('bl',"Yuri fetches the teapot and begins measuring the tea leaves.")
	elseif cl == 1468 then
		cw('bl',"To my surprise, she even starts humming a little to herself.")
	elseif cl == 1469 then
		updateYuri('1','c',80)
		cw('mc',"You must be in a good mood now...")
	elseif cl == 1470 then
		updateYuri('1','a')
		cw('y',"Is that so?")
	elseif cl == 1471 then
		cw('y',"I was letting it show...")
	elseif cl == 1472 then
		cw('y',"And you noticed.")
	elseif cl == 1473 then
		updateYuri('2','u')
		cw('y',"I was doing a bit of thinking...")
	elseif cl == 1474 then
		cw('y',"And I decided that I would try expressing myself a little bit more.")
	elseif cl == 1475 then
		cw('y',"It turns out it's not very hard for me to do...")
	elseif cl == 1476 then
		updateYuri('1','c')
		cw('y',"When it's you who's around, anyway.")
	elseif cl == 1477 then
		cw('mc',"Ah...")
	elseif cl == 1478 then
		cw('mc',"That's great, Yuri!")
	elseif cl == 1479 then
		cw('mc',"Just don't push yourself too much.")
	elseif cl == 1480 then
		updateYuri('3','u')
		cw('y',"You're always worrying about me, "..player.."...")
	elseif cl == 1481 then
		cw('y',"It's very endearing.")
	elseif cl == 1482 then
		cw('mc',"That's...")
	elseif cl == 1483 then
		cw('bl',"Yuri wasn't kidding...")
	elseif cl == 1484 then
		cw('bl',"I don't even know if I can keep up with this...!")
	elseif cl == 1485 then
		cw('bl',"I watch Yuri pour a cup of tea for each of us.")
	elseif cl == 1486 then
		updateYuri('1','a')
		cw('y',player..", I have another request.")
	elseif cl == 1487 then
		cw('y',"Do you mind if we sit on the floor today?")
	elseif cl == 1488 then
		cw('mc',"Eh? Why's that?")
	elseif cl == 1489 then
		updateYuri('1','b')
		cw('y',"It's a little bit easier on my back...")
	elseif cl == 1490 then
		cw('y',"I can read with my back against the wall rather than bending over at my desk.")
	elseif cl == 1491 then
		cw('mc',"Ah, sorry, I didn't realize.")
	elseif cl == 1492 then
		updateYuri('1','a')
		cw('y',"No worries.")
	elseif cl == 1493 then
		cw('y',"I just have back pain fairly regularly, so I do my best to manage it.")
	elseif cl == 1494 then
		cw('mc',"Is that so?")
	elseif cl == 1495 then
		cw('mc',"I wonder why that is...")
	elseif cl == 1496 then
		updateYuri('1','f')
		cw('y',"It's most likely because my--")
	elseif cl == 1497 then
		updateYuri('1','n')
		cw('y',"Ah--")
	elseif cl == 1498 then
		updateYuri('1','o')
		cw('y',"M-My...")
	elseif cl == 1499 then
		cw('mc',"Your posture, right?")
	elseif cl == 1500 then
		cw('mc',"Always hunched over like that while reading...")
	elseif cl == 1501 then
		updateYuri('2','p')
		cw('y',"Yes!")
	elseif cl == 1502 then
		updateYuri('2','q')
		cw('y',"I have terrible reading posture!")
	elseif cl == 1503 then
		cw('y',"So that's why we should sit on the floor.")
	elseif cl == 1504 then
		cw('mc',"Fair enough.")
	elseif cl == 1505 then
		cw('mc',"I'll go ahead and get the book.")
	elseif cl == 1506 then
		hideYuri()
		cw('bl',"I retrieve the book from my bag.")
	elseif cl == 1507 then
		cw('mc',"Ah, I have some chocolate as well...")
	elseif cl == 1508 then
		cw('bl',"It's a bag of small chocolate candies that I kept hidden from Sayori's candy radar.")
	elseif cl == 1509 then
		cw('bl',"I take it, since it'll go well with the tea.")
	elseif cl == 1510 then
		cw('bl',"Yuri and I then sit against the wall, teacups at our sides.")
	elseif cl == 1511 then
		cw('bl',"As if in sync, we assume the same reading position as last time, each holding one half of the book.")
	elseif cl == 1512 then
		cw('bl',"Except this time...")
	elseif cl == 1513 then
		cw('bl',"Our bodies are even closer to each other.")
	elseif cl == 1514 then
		updateYuri('2','h',80)
		cw('y',"I can't see too well...")
	elseif cl == 1515 then
		cw('mc',"--!")
	elseif cl == 1516 then
		updateYuri('2','e')
		cw('bl',"Yuri slides closer until our shoulders are touching.")
	elseif cl == 1517 then
		cw('bl',"How am I supposed to focus on reading like this...?!")
	elseif cl == 1518 then
		cw('bl',"Yuri was always kind of cute, but...")
	elseif cl == 1519 then
		cw('bl',"When she's being less apprehensive, it's almost more than I can handle!")
	elseif cl == 1520 then
		updateYuri('2','f')
		cw('y',"Your teacup...")
	elseif cl == 1521 then
		cw('bl',"Yuri hands me my teacup.")
	elseif cl == 1522 then
		cw('bl',"Holding it with my hand that's not holding the book, I end up in a position that makes it even harder to focus.")
	elseif cl == 1523 then
		cw('bl',"Because now I need to worry about making sure I don't accidentally touch her chest...!")
	elseif cl == 1524 then
		cw('bl',"Meanwhile, Yuri hasn't noticed a single thing.")
	elseif cl == 1525 then
		cw('bl',"She wears her intense reading expression, and I can only presume the world around her has faded away.")
	elseif cl == 1526 then
		cw('bl',"I use all of my willpower to focus on reading.")
	elseif cl == 1527 then
		cw('bl',"...")
	elseif cl == 1528 then
		cw('bl',"After a few minutes, I finally manage to relax a little.")
	elseif cl == 1529 then
		cw('bl',"I put the teacup between my legs and fumble with the chocolate wrapper.")
	elseif cl == 1530 then
		cw('mc',"Ah, sorry...")
	elseif cl == 1531 then
		cw('bl',"I briefly let go of the book to finish opening the wrapper.")
	elseif cl == 1532 then
		cw('mc',"You can have as much as you want.")
	elseif cl == 1533 then
		updateYuri('2','s')
		cw('y',"Ah, that's...")
	elseif cl == 1534 then
		cw('y',"That's okay, I won't take any...")
	elseif cl == 1535 then
		cw('mc',"Eh? Are you sure?")
	elseif cl == 1536 then
		updateYuri('2','v')
		cw('y',"Well...")
	elseif cl == 1537 then
		cw('y',"If I touch it, then it might get smudges on the pages...")
	elseif cl == 1538 then
		cw('mc',"Ah, you're right...")
	elseif cl == 1539 then
		cw('mc',"I didn't even think about that.")
	elseif cl == 1540 then
		cw('mc',"My bad...")
	elseif cl == 1541 then
		updateYuri('2','a')
		cw('y',"No need to apologize.")
	elseif cl == 1542 then
		cw('y',"I'll hold the book, okay?")
	elseif cl == 1543 then
		cw('mc',"Are you sure...?")
	elseif cl == 1544 then
		cw('y',"Of course.")
	elseif cl == 1545 then
		hideAll()
		bgUpdate('cg/y_cg2_nochoc')
		persistent.clear[4] = 1
		if xaload == 1 then
			savepersistent()
		end
		cw('bl',"Yuri opens the book with both hands.")
	elseif cl == 1546 then
		cw('bl',"She holds it so that I don't have any harder of a time reading from it.")
	elseif cl == 1547 then
		cw('bl',"But as a result, her left arm is practically resting on top of my leg.")
	elseif cl == 1548 then
		cw('mc',"Well, in that case...")
	elseif cl == 1549 then
		cw('bl',"Yuri is already totally focused on reading again.")
	elseif cl == 1550 then
		cw('bl',"I take a chocolate candy and pop it into my mouth.")
	elseif cl == 1551 then
		cw('bl',"Then, I take another chocolate...")
	elseif cl == 1552 then
		cw('bl',"And I hold it up to Yuri.")
	elseif cl == 1553 then
		cw('bl',"She doesn't even look away from the book.")
	elseif cl == 1554 then
		cw('bl',"She simply parts her lips, as if this situation was completely natural.")
	elseif cl == 1555 then
		cw('bl',"But that means I can't stop here!")
	elseif cl == 1556 then
		bgUpdate('cg/y_cg2')
		cw('bl',"I apprehensively place the chocolate in her mouth.")
	elseif cl == 1557 then
		cw('bl',"Just like that, Yuri closes her lips over it.")
	elseif cl == 1558 then
		cw('y',"Eh...?")
	elseif cl == 1559 then
		cgUpdate('y_cg2_exp2')
		cw('bl',"Yuri's expression suddenly breaks.")
	elseif cl == 1560 then
		cw('y',"Did...")
	elseif cl == 1561 then
		cw('y',"Did I just...")
	elseif cl == 1562 then
		cw('bl',"Yuri looks at me like she needs to confirm what just happened.")
	elseif cl == 1563 then
		bgUpdate('cg/y_cg2_nochoc')
		cgUpdate('y_cg2_exp3')
		cw('y',"U-Um...")
	elseif cl == 1564 then
		cw('y',player.."...")
	elseif cl == 1565 then
		cw('mc',"S-Sorry!")
	elseif cl == 1566 then
		cw('mc',"I guess I shouldn't have done that...")
	elseif cl == 1567 then
		cw('y',"Ah, that's...")
	elseif cl == 1568 then
		cw('y',"Well...")
	elseif cl == 1569 then
		cw('y',"Y-You were just helping...")
	elseif cl == 1570 then
		cw('y',"That's something that...friends do...")
	elseif cl == 1571 then
		cw('y',"...Right?")
	elseif cl == 1572 then
		cw('mc',"I mean...")
	elseif cl == 1573 then
		cw('bl',"Not really in this kind of context, but...")
	elseif cl == 1574 then
		cw('mc',"Yeah...")
	elseif cl == 1575 then
		cw('mc',"...That's all it was.")
	elseif cl == 1576 then
		cw('y',"Yeah...")
	elseif cl == 1577 then
		cw('y',"Then...")
	elseif cl == 1578 then
		cw('y',"You don't need to stop or anything...")
	elseif cl == 1579 then
		cw('y',"I-I see...")
	elseif cl == 1580 then
		cgHide()
		cw('bl',"The situation has gotten really tense...")
	elseif cl == 1581 then
		cw('bl',"Yuri tries to return to the book.")
	elseif cl == 1582 then
		cw('bl',"But I can tell just by her expression that even she can't focus now.")
	elseif cl == 1583 then
		cw('bl',"My heart is pounding...")
	elseif cl == 1584 then
		cw('bl',"I nervously take another chocolate between my fingers.")
	elseif cl == 1585 then
		cw('bl',"But this time, Yuri's eyes meet mine.")
	elseif cl == 1586 then
		cgUpdate('y_cg2_exp3')
		cw('y',"...")
	elseif cl == 1587 then
		cw('bl',"How did it even come to this...?")
	elseif cl == 1588 then
		cw('bl',"Yuri doesn't avert her gaze.")
	elseif cl == 1589 then
		cw('bl',"I notice her chest rising and falling to the rhythm of her breaths.")
	elseif cl == 1590 then
		cw('bl',"I raise my arm...")
	elseif cl == 1591 then
		cw('y',"Ah...")
	elseif cl == 1592 then
		cw('bl',"Like before, Yuri parts her lips.")
	elseif cl == 1593 then
		cw('bl',"But...it's different this time.")
	elseif cl == 1594 then
		bgUpdate('cg/y_cg2')
		cw('bl',"I take the chocolate and place it in her mouth.")
	elseif cl == 1595 then
		cw('bl',"I feel her hot breath on my fingers.")
	elseif cl == 1596 then
		audioUpdate('0')
		bgUpdate('club')
		updateMonika('4','b',80)
		cgHide()
		cw('m',"Okay, everyone!")
	elseif cl == 1597 then
		cw('mc',"Uwa--")
	elseif cl == 1598 then
		updateMonika('4','b',150)
		updateYuri('3','p',10)
		cw('y',"A-Ah!")
	elseif cl == 1599 then
		audioUpdate('3')
		cw('bl',"Yuri jolts back.")
	elseif cl == 1600 then
		updateYuri('3','n')
		cw('m',"It's time to share poems!")
	elseif cl == 1601 then
		cw('m',player..", you can help Yuri put away the tea stuff, right?")
	elseif cl == 1602 then
		cw('mc',"Y-Yeah...of course.")
	elseif cl == 1603 then
		cw('m',"Okay, thanks!")
	elseif cl == 1604 then
		hideMonika()
		cw('bl',"The spell is abruptly broken.")
	elseif cl == 1605 then
		updateYuri('4','c2')
		cw('y',"I'll...")
	elseif cl == 1606 then
		cw('y',"I'll take care of the cups...")
	elseif cl == 1607 then
		cw('mc',"Yeah...")
	elseif cl == 1608 then
		hideYuri()
		cw('bl',"Yuri picks up the teacups from the floor.")
	elseif cl == 1609 then
		cw('bl',"I pick up the bag of chocolates.")
	elseif cl == 1610 then
		cw('bl',"In the end, we hastily clean up without so much as a word between us.")
	elseif cl == 1611 then
		cw('bl',"I get the feeling this is something neither of us will have the courage to bring up...")
	elseif cl == 1612 then
		poeminitialize()
	end
end
