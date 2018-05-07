function ch1sayori()
	if ch0ln == 423 then
		ch0t = ''
		ch0a = "Man..."
    elseif ch0ln == 424 then
		ch0a = "It looks like no one wants to be bothered today."
    elseif ch0ln == 425 then
		ch0a = "I slump down into the nearest desk."
	elseif ch0ln == 426 then
		ch0a = "How am I supposed to occupy myself with "
		ch0b = "something literature-related by myself like"
		ch0c = "this?"
	elseif ch0ln == 427 then
		ch0a = "I guess I could always read some of the book Yuri"
		ch0b = "gave me..."
    elseif ch0ln == 428 then
		ch0a = "...But I'm feeling a little too tired to read."
	elseif ch0ln == 429 then
		ch0a = "I could probably fall asleep right now."
	elseif ch0ln == 430 then
		ch0a = "I close my eyes and end up listening in on "
		ch0b = "Sayori's conversation with Monika."
	elseif ch0ln == 431 then
		sx = 10	
		updateSayori('1l','1r','g')
		ch0t = 'Sayori'
		ch0a = '"We\'re probably gonna seem really lame '
		ch0b = 'compared to all the other clubs, though..."'
	elseif ch0ln == 432 then
		mx = 150
		updateMonika('1l','2r','r')
		ch0t = 'Monika'
		ch0a = '"Hmm..."'
	elseif ch0ln == 433 then
		mc = 'b'
		ch0a = '"Well, we can\'t give up."'
	elseif ch0ln == 434 then
		ch0a = '"The festival is our chance to show everyone'
		ch0b = 'what literature is all about!"'
	elseif ch0ln == 435 then
		mc = 'd'
		ch0a = '"The problem is that the idea of a literature '
		ch0b = 'club sounds too dense and intellectual..."'
	elseif ch0ln == 436 then
		ch0a = '"But it\'s not like that at all, you know?"'
	elseif ch0ln == 437 then
		mc = 'a'
		ch0a = '"We just need a way of showing that to '
		ch0b = 'everyone..."'
	elseif ch0ln == 438 then
		ch0a = '"Something that speaks to their creative'
		ch0b = 'minds."'
    elseif ch0ln == 439 then
		sc = 'i'
		ch0t = 'Sayori'
		ch0a = '"Mmmmmmmmmmm....."'
	elseif ch0ln == 440 then
		ch0a = '"That doesn\'t solve the problem, though!"'
	elseif ch0ln == 441 then
		mc = 'd'
		ch0t = 'Monika'
		ch0a = '"Eh? What do you mean?"'
	elseif ch0ln == 442 then
		sc = 'c'
		ch0t = 'Sayori'
		ch0a = '"Even if we come up with the most fun thing'
		ch0b = 'ever..."'
	elseif ch0ln == 443 then
		ch0a = '"Nobody will come in the first place if it\'s'
		ch0b = 'a literature event."'
	elseif ch0ln == 444 then
		ch0a = '"So it\'s more important to figure out how'
		ch0b = 'to get people to show up in the first place,'
		ch0c = 'you know?"'
	elseif ch0ln == 445 then
		sc = 'a'
		ch0a = '"And after they come, we can do the thing to'
		ch0b = 'speak to their creative minds."'
	elseif ch0ln == 446 then
		ch0t = ''
		ch0a = "...What's this?"
	elseif ch0ln == 447 then
		ch0a = "Sayori is taking this really seriously."
	elseif ch0ln == 448 then
		ch0a = "It's rare to hear her deliberating like this."
	elseif ch0ln == 449 then
		mc = 'a'
		ch0t = 'Monika'
		ch0a = '"Huh, that\'s a good point..."'
	elseif ch0ln == 450 then
		ch0a = '"In that case, do you think food will do the'
		ch0b = 'trick?"'
	elseif ch0ln == 451 then
		sc = 'n'
		ch0t = 'Sayori'
		ch0a = '"W-What kind?!"'
	elseif ch0ln == 452 then
		mc = 'b'
		ch0t = 'Monika'
		ch0a = '"Ah... Well, I guess we could--"'
	elseif ch0ln == 453 then
		ch0t = 'Sayori'
		ch0a = '"Cupcakes!"'
	elseif ch0ln == 454 then
		ch0t = 'Monika'
		ch0a = '"Ahaha. Good thinking."'
	elseif ch0ln == 455 then
		updateMonika('1l','1r','a')
		ch0a = '"Natsuki would love to do that."'
	elseif ch0ln == 456 then
		updateSayori('2l','2r','x')
		ch0t = 'Sayori'
		ch0a = '"Ah! You\'re right!"'
	elseif ch0ln == 457 then
		ch0a = '"Natsuki makes the best cupcakes!"'
    elseif ch0ln == 458 then
		ch0a = '"That works out perfectly~"'
	elseif ch0ln == 459 then
		mc = 'd'
		ch0t = 'Monika'
		ch0a = '"That wasn\'t why you suggested it...?"'
	elseif ch0ln == 460 then
		sc = 'q'
		ch0t = 'Sayori'
		ch0a = '"Cupcakes speak to my creative tummy~"'
	elseif ch0ln == 461 then
		mc = 'l'
		ch0t = 'Monika'
		ch0a = '"..."'
	elseif ch0ln == 462 then
		ch0a = '"Cupcakes it is, then."'
	elseif ch0ln == 463 then
		sc = 'g'
		ch0t = 'Sayori'
		ch0a = '"I\'m hungry..."'
	elseif ch0ln == 464 then
		mc = 'a'
		ch0t = 'Monika'
		ch0a = '"Anyway, we still need to work out the details'
		ch0b = 'of the event itself..."'
	elseif ch0ln == 465 then
		hideSayori()
		hideMonika()
		bgUpdate('black')
		ch0t = ''
		ch0a = "I find myself smiling."
	elseif ch0ln == 466 then
		ch0a = "In the end, Sayori is still her usual self."
	elseif ch0ln == 467 then
		ch0a = "But therein lies the unexpected reason I admire"
		ch0b = "her."
	elseif ch0ln == 468 then
		ch0a = "Unlike me, who has trouble finding any "
		ch0b = "motivation at all..."
	elseif ch0ln == 469 then
		ch0a =  "Sayori can put her mind to things and make them"
		ch0b = "come to life."
	elseif ch0ln == 470 then
		ch0a = "I suppose that's why I end up letting her get"
		ch0b = "on my case about things."
	elseif ch0ln == 471 then
		ch0a = "I can't help but wonder what it would be like "
		ch0b = "to see the world through her eyes..."
	elseif ch0ln == 472 then
		bgUpdate('club')
		sx = 80
		updateSayori('sayori','','')
		ch0t = player
		ch0a = '"Uwaa--!"'
	elseif ch0ln == 473 then
		ch0t = ''
		ch0a = 'I open my eyes to find Sayori\'s face filling'
		ch0b = 'my vision.'
	elseif ch0ln == 474 then
		ch0a = "I nearly fall out of my chair."
    elseif ch0ln == 475 then
		updateSayori('2l','2r','q')
		ch0t = 'Sayori'
		ch0a = '"Ehehe, sorry~"'
	elseif ch0ln == 476 then
		sc = 'i'
		ch0a = '"Wait!"'
    elseif ch0ln == 477 then
		sc = 'j'
		ch0a = '"Actually, I\'m not sorry at all!"'
	elseif ch0ln == 478 then
		ch0a = '"It\'s your fault for sleeping like that!"'
	elseif ch0ln == 479 then
		ch0a = '"This isn\'t the napping club!"'
	elseif ch0ln == 480 then
		ch0t = player
		ch0a = '"Does our school have a napping club...?"'
	elseif ch0ln == 481 then
		updateSayori('1l','1r','h')
		ch0a = '"You\'re staying up late again, aren\'t you?"'
	elseif ch0ln == 482 then
		ch0a = '"Now that you\'re in a club, you\'re gonna have'
		ch0b = 'less time for anime, you know!"'
	elseif ch0ln == 483 then
		ch0a = '"You\'ll need to get used to it!"'
	elseif ch0ln == 484 then
		ch0t = player
		ch0a = '"Don\'t say that so loud...!"'
	elseif ch0ln == 485 then
		ch0t = ''
		ch0a = "I glance over my shoulder to see if Monika"
		ch0b = "overheard."
	elseif ch0ln == 486 then
		sc = 'g'
		ch0a = '"It\'s true, though..."'
	elseif ch0ln == 487 then
		ch0t = player
		ch0a = '"Yeah..."'
	elseif ch0ln == 488 then
		ch0a = '"I know, I know."'
	elseif ch0ln == 489 then
		ch0a = '"You\'re always looking out for me, Sayori."'
	elseif ch0ln == 490 then
		updateSayori('2l','2r','q')
		ch0t = 'Sayori'
		ch0a = '"Ehehe~"'
	elseif ch0ln == 491 then
		ch0a = '"It\'s what I do best!"'
	elseif ch0ln == 492 then
		ch0t = player
		ch0a = '"...That\'s a problem!"'
	elseif ch0ln == 493 then
		ch0a = '"What about you?"'
	elseif ch0ln == 494 then
		ch0a = '"You look out for me better than you look out'
		ch0b = 'for yourself."'
	elseif ch0ln == 495 then
		ch0a = '"You\'re still oversleeping every day, aren\'t'
		ch0b = 'you?"'
	elseif ch0ln == 496 then
		sc = 'l'
		ch0t = 'Sayori'
		ch0a = '"Eh?"'
	elseif ch0ln == 497 then
		ch0a = '"N-Not every day!"'
	elseif ch0ln == 498 then
		ch0t = player
		ch0a = '"That\'s not very convincing..."'
	elseif ch0ln == 499 then
		ch0a = '"How many days this past week have you gotten '
		ch0b = 'up on time?"'
	elseif ch0ln == 500 then
		sc = 'm'
		ch0t = 'Sayori'
		ch0a = '"That\'s..."'
	elseif ch0ln == 501 then
		sc = 'o'
		ch0a = '"...It\'s a secret!"'
	elseif ch0ln == 502 then
		ch0t = player
		ch0a = '"I knew it..."'
	elseif ch0ln == 503 then
		updateSayori('3a','','')
		ch0t = 'Sayori'
		ch0a = '"C\'monnnn!"'
	elseif ch0ln == 504 then
		ch0a = '"At least give me the benefit of the doubt..."'
	elseif ch0ln == 505 then
		ch0t = player
		ch0a = '"I can\'t even do that."'
	elseif ch0ln == 506 then
		ch0a = '"Look, Sayori, it\'s written all over you."'
	elseif ch0ln == 507 then
		updateSayori('1l','1r','b')
		ch0t = 'Sayori'
		ch0a = '"Eh...?"'
	elseif ch0ln == 508 then
		ch0t = ''
		ch0a = "Sayori glances around at herself."
	elseif ch0ln == 509 then
		ch0t = 'Sayori'
		ch0a = '"How is it written all over me?"'
	elseif ch0ln == 510 then
		ch0t = player
		ch0a = '"You were clearly in a rush this morning..."'
	elseif ch0ln == 511 then
		ch0a = '"Look, your hair is sticking out all around'
		ch0b = 'here."'
	elseif ch0ln == 512 then
		sc = 'e'
		ch0t = 'Sayori'
		ch0a = '"Ah--"'
	elseif ch0ln == 513 then
		ch0t = ''
		ch0a = "I run my fingertips down the side of Sayori's "
		ch0b = "hair, trying to straighten it out."
	elseif ch0ln == 514 then
		ch0t = player
		ch0a = '"Man, you really need a brush for this..."'
	elseif ch0ln == 515 then
		sc = 'y'
		ch0t = 'Sayori'
		ch0a = '"My hair is just really hard to get right..."'
	elseif ch0ln == 516 then
		ch0t = player
		ch0a = '"I won\'t fall for that."'
	elseif ch0ln == 517 then
		ch0a = '"There\'s more than just your hair."'
	elseif ch0ln == 518 then
		ch0a = '"Look, your bow isn\'t straight, either."'
	elseif ch0ln == 519 then
		ch0a = '"And there\'s a toothpaste stain on your collar'
		ch0b = 'right here."'
	elseif ch0ln == 520 then
		ch0t = ''
		ch0a = "I try to wipe off the stain with my finger."
	elseif ch0ln == 521 then
		ch0t = 'Sayori'
		ch0a = '"B-But nobody would ever notice that..."'
	elseif ch0ln == 522 then
		ch0t = player
		ch0a = '"Of course they would."'
	elseif ch0ln == 523 then
		ch0a = '"Nobody\'s gonna tell you about it because they '
		ch0b = 'don\'t want to embarrass you."'
	elseif ch0ln == 524 then
		ch0a = '"Fortunately, I really don\'t care about that."'
	elseif ch0ln == 525 then
		updateSayori('3c','','')
		ch0t = 'Sayori'
		ch0a = '"Hey, you meanie..."'
	elseif ch0ln == 526 then
		ch0t = player
		ch0a = '"And you don\'t even keep your blazer buttoned'
		ch0b = 'up."'
	elseif ch0ln == 527 then
		ch0a = '"Seriously, Sayori..."'
	elseif ch0ln == 528 then
		ch0a = '"Why do you think you don\'t have a boyfriend'
		ch0b = 'yet?"'
	elseif ch0ln == 529 then
		updateSayori('1l','1r','h')
		ch0t = 'Sayori'
		ch0a = '"Eh??"'
	elseif ch0ln == 530 then
		ch0a = '"That\'s super mean!"'
	elseif ch0ln == 531 then
		ch0t = player
		ch0a = '"Sorry, but you\'ll thank me later..."'
	elseif ch0ln == 532 then
		ch0t = ''
		ch0a = "I start to button her blazer from the bottom."
	elseif ch0ln == 533 then
		ch0t = player
		ch0a = '"Once you see how much better it looks, you\'ll'
		ch0b = 'change your mind."'
	elseif ch0ln == 534 then
		hideSayori()
		bgUpdate('s_cg1')
		ch0t = 'Sayori'
		ch0a = '"Ehehe~"'
	elseif ch0ln == 535 then
		ch0a = '"This is so funny."'
	elseif ch0ln == 536 then
		ch0t = player
		ch0a = '"What is?"'
	elseif ch0ln == 537 then
		ch0t = 'Sayori'
		ch0a = '"Well..."'
	elseif ch0ln == 538 then
		ch0a = '"I was just thinking how weird it is to have a friend'
		ch0b = 'who does these kinds of things."'
    elseif ch0ln == 539 then
		ch0t = player
		ch0a = '"Eh?"'
    elseif ch0ln == 540 then
		ch0a = '"D-Don\'t say that!"'
	elseif ch0ln == 541 then
		ch0a = '"You\'ll make me feel weird about it, stupid..."'
	elseif ch0ln == 542 then
		ch0t = 'Sayori'
		ch0a = '"It\'s okay, though."'
	elseif ch0ln == 543 then
		ch0a = '"I\'m happy we\'re like this."'
	elseif ch0ln == 544 then
		ch0a = '"Aren\'t you?"'
	elseif ch0ln == 545 then
		ch0t = player
		ch0a = '"Ah--"'
	elseif ch0ln == 546 then
		ch0a = '"I-I guess..."'
	elseif ch0ln == 547 then
		ch0t = 'Sayori'
		ch0a = '"Hey, be careful..."'
	elseif ch0ln == 548 then
		ch0a = '"The button might come off!"'
	elseif ch0ln == 549 then
		ch0t = 'Sayori'
		ch0a = '"Why is this one so hard to close...?"'
	elseif ch0ln == 550 then
		ch0t = ''
		ch0a = "I struggle to fully close the button near her chest."
	elseif ch0ln == 551 then
		ch0t = player
		ch0a = '"Does this thing even fit you properly?"'
	elseif ch0ln == 552 then
		ch0t = 'Sayori'
		ch0a = '"Ehehe~"'
	elseif ch0ln == 553 then
		ch0a = '"It did when I bought it."'
	elseif ch0ln == 554 then
		ch0t = player
		ch0a = '"Sigh..."'
	elseif ch0ln == 555 then
		ch0a = '"If you ever buttoned it, you would have noticed'
		ch0b = 'sooner that it doesn\'t fit you anymore."'
	elseif ch0ln == 556 then
		ch0a = '"What are you smiling about?"'
	elseif ch0ln == 557 then
		ch0t = 'Sayori'
		ch0a = '"It means my boobs got bigger again!"'
	elseif ch0ln == 558 then
		ch0t = player
		ch0a = '"D-Don\'t say that out loud!!"'
	elseif ch0ln == 559 then
		ch0t = 'Sayori'
		ch0a = '"Ehehe~"'
	elseif ch0ln == 560 then
		ch0t = player
		ch0a = '"Anyway..."'
	elseif ch0ln == 561 then
		ch0a = '"You look much better now, so..."'
	elseif ch0ln == 562 then
		ch0a = '"Ah..."'
	elseif ch0ln == 563 then
		ch0t = ''
		ch0a = "...Why does it feel strange to see Sayori's blazer"
		ch0b = "buttoned up like that?"
	elseif ch0ln == 564 then
		ch0t = 'Sayori'
		ch0a = '"But it\'s so stuffy..."'
	elseif ch0ln == 565 then
		ch0a = '"Uuu..."'
	elseif ch0ln == 566 then
		ch0a = '"It\'s not worth it at all!"'
	elseif ch0ln == 567 then
		ch0t = ''
		ch0a = "Sayori hastily unbuttons her blazer once more."
	elseif ch0ln == 568 then
		bgUpdate('club')
		updateSayori('1l','1r','q')
		ch0t = 'Sayori'
		ch0a = '"Phew!"'
	elseif ch0ln == 569 then
		ch0a = '"That\'s so much better~"'
	elseif ch0ln == 570 then
		ch0t = ''
		ch0a = '"Sayori puts her arms out and twirls around."'
	elseif ch0ln == 571 then
		sc = 'a'
		ch0t = 'Sayori'
		ch0a = '"So if I keep it unbuttoned then I won\'t get a'
		ch0b = 'boyfriend, right?"'
	elseif ch0ln == 572 then
		ch0t = player
		ch0a = '"What kind of logic is that?"'
	elseif ch0ln == 573 then
		ch0a = '"And why are you saying that like it\'s a'
		ch0b = 'good thing?"'
	elseif ch0ln == 574 then	
		ch0t = 'Sayori'
		ch0a = '"Because..."'
	elseif ch0ln == 575 then
		updateSayori('2l','2r','h')
		ch0a = '"...If I had a boyfriend, then he wouldn\'t even'
		ch0b = 'let you do things like this!"'
	elseif ch0ln == 576 then
		sc = 'y'
		ch0a = '"And you take care of me better than anyone else'
		ch0b = 'would, anyway..."'
	elseif ch0ln == 577 then
		ch0a = '"So that\'s why I\'m keeping it unbuttoned!"'
	elseif ch0ln == 578 then
		ch0t = player
		ch0a = '"Stop saying all these embarrassing things!"'
	elseif ch0ln == 579 then
		sc = 'b'
		ch0t = 'Sayori'
		ch0a = '"Eh?"'
	elseif ch0ln == 580 then
		ch0a = '"I didn\'t say anything embarrassing..."'
	elseif ch0ln == 581 then
		ch0t = player
		ch0a = '"Jeez..."'
	elseif ch0ln == 582 then
		ch0a = '"Well anyway, just focus on trying to wake up'
		ch0b = 'a little earlier..."'
	elseif ch0ln == 583 then
		sc = 'j'
		ch0t = 'Sayori'
		ch0a = '"Only if you focus on going to bed earlier!"'
	elseif ch0ln == 584 then
		ch0t = player
		ch0a = '"Fine, fine..."'
	elseif ch0ln == 585 then
		ch0a = '"It\'s a deal."'
	elseif ch0ln == 586 then
		updateSayori('2l','2r','q')
		ch0t = 'Sayori'
		ch0a = '"Ehehe~"'
	elseif ch0ln == 587 then
		sc = 'x'
		ch0a = '"I guess we really are better at taking care'
		ch0b = 'of each other than we are at taking care of'
		ch0c = 'ourselves."'
	elseif ch0ln == 588 then
		ch0t = player
		ch0a = '"Yeah, I guess so, huh..."'
	elseif ch0ln == 589 then
		sc = 'y'
		ch0a = '"So maybe you should come wake me up in the'
		ch0b = 'morning!"'
	elseif ch0ln == 590 then
		ch0t = player
		ch0a = '"You\'re doing it again, Sayori..."'
	elseif ch0ln == 591 then
		sc = 'h'
		ch0t = 'Sayori'
		ch0a = '"Aw, but I was joking that time!"'
	elseif ch0ln == 592 then
		ch0t = player
		ch0a = '"Man, it\'s impossible to tell with you'
		ch0b = 'sometimes."'
	elseif ch0ln == 593 then
		mx = -50
		updateMonika('2l','1r','b')
		ch0t = 'Monika'
		ch0a = '"Okay, everyone!"'
	elseif ch0ln == 594 then
		ch0t = player
		ch0a = '"Eh?"'
	elseif ch0ln == 595 then
		ch0t = ''
		ch0a = "Monika suddenly calls out."
	elseif ch0ln == 596 then
		ch0t = 'Monika'
		ch0a = '"Why don\'t we share the poems we wrote now?"'
	elseif ch0ln == 597 then
		updateSayori('2l','2r','r')
		ch0t = 'Sayori'
		ch0a = '"Yay~!"'
	elseif ch0ln == 598 then
		sc = 'x'
		ch0a = '"'..player..', I can\'t wait to read yours!"'
    elseif ch0ln == 599 then
		ch0t = player
		ch0a = '"Yeah, same..."'
	elseif ch0ln == 600 then
		ch0t = ''
		ch0a = "I fail to sound enthusiastic, but Sayori still"
		ch0b = "trots away to retrieve her poem."
	elseif ch0ln == 601 then
		ch0ln = 653
		--ch0a = 'Sayori is vice president of theLiteratureClub.' (for reference on how long the lines should be)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=-40 x=80 x=200
		--4: x=-60 x=30 x=120 x=220
    
	end
end