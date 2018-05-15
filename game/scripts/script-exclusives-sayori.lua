function ch1sayori()
	if cl == 423 then
		ct = ''
		ca = "Man..."
    elseif cl == 424 then
		ca = "It looks like no one wants to be bothered today."
    elseif cl == 425 then
		ca = "I slump down into the nearest desk."
	elseif cl == 426 then
		ca = "How am I supposed to occupy myself with "
		cb = "something literature-related by myself like"
		cc = "this?"
	elseif cl == 427 then
		ca = "I guess I could always read some of the book Yuri"
		cb = "gave me..."
    elseif cl == 428 then
		ca = "...But I'm feeling a little too tired to read."
	elseif cl == 429 then
		ca = "I could probably fall asleep right now."
	elseif cl == 430 then
		ca = "I close my eyes and end up listening in on "
		cb = "Sayori's conversation with Monika."
	elseif cl == 431 then
		sx = 10	
		updateSayori('1','g')
		ct = 'Sayori'
		ca = '"We\'re probably gonna seem really lame '
		cb = 'compared to all the other clubs, though..."'
	elseif cl == 432 then
		mx = 150
		updateMonika('2','r')
		ct = 'Monika'
		ca = '"Hmm..."'
	elseif cl == 433 then
		mb = 'b'
		ca = '"Well, we can\'t give up."'
	elseif cl == 434 then
		ca = '"The festival is our chance to show everyone'
		cb = 'what literature is all about!"'
	elseif cl == 435 then
		mb = 'd'
		ca = '"The problem is that the idea of a literature '
		cb = 'club sounds too dense and intellectual..."'
	elseif cl == 436 then
		ca = '"But it\'s not like that at all, you know?"'
	elseif cl == 437 then
		mb = 'a'
		ca = '"We just need a way of showing that to '
		cb = 'everyone..."'
	elseif cl == 438 then
		ca = '"Something that speaks to their creative'
		cb = 'minds."'
    elseif cl == 439 then
		sb = 'i'
		ct = 'Sayori'
		ca = '"Mmmmmmmmmmm....."'
	elseif cl == 440 then
		ca = '"That doesn\'t solve the problem, though!"'
	elseif cl == 441 then
		mb = 'd'
		ct = 'Monika'
		ca = '"Eh? What do you mean?"'
	elseif cl == 442 then
		sb = 'c'
		ct = 'Sayori'
		ca = '"Even if we come up with the most fun thing'
		cb = 'ever..."'
	elseif cl == 443 then
		ca = '"Nobody will come in the first place if it\'s'
		cb = 'a literature event."'
	elseif cl == 444 then
		ca = '"So it\'s more important to figure out how'
		cb = 'to get people to show up in the first place,'
		cc = 'you know?"'
	elseif cl == 445 then
		sb = 'a'
		ca = '"And after they come, we can do the thing to'
		cb = 'speak to their creative minds."'
	elseif cl == 446 then
		ct = ''
		ca = "...What's this?"
	elseif cl == 447 then
		ca = "Sayori is taking this really seriously."
	elseif cl == 448 then
		ca = "It's rare to hear her deliberating like this."
	elseif cl == 449 then
		mb = 'a'
		ct = 'Monika'
		ca = '"Huh, that\'s a good point..."'
	elseif cl == 450 then
		ca = '"In that case, do you think food will do the'
		cb = 'trick?"'
	elseif cl == 451 then
		sb = 'n'
		ct = 'Sayori'
		ca = '"W-What kind?!"'
	elseif cl == 452 then
		mb = 'b'
		ct = 'Monika'
		ca = '"Ah... Well, I guess we could--"'
	elseif cl == 453 then
		ct = 'Sayori'
		ca = '"Cupcakes!"'
	elseif cl == 454 then
		ct = 'Monika'
		ca = '"Ahaha. Good thinking."'
	elseif cl == 455 then
		updateMonika('1','a')
		ca = '"Natsuki would love to do that."'
	elseif cl == 456 then
		updateSayori('4','x')
		ct = 'Sayori'
		ca = '"Ah! You\'re right!"'
	elseif cl == 457 then
		ca = '"Natsuki makes the best cupcakes!"'
    elseif cl == 458 then
		ca = '"That works out perfectly~"'
	elseif cl == 459 then
		mb = 'd'
		ct = 'Monika'
		ca = '"That wasn\'t why you suggested it...?"'
	elseif cl == 460 then
		sb = 'q'
		ct = 'Sayori'
		ca = '"Cupcakes speak to my creative tummy~"'
	elseif cl == 461 then
		mb = 'l'
		ct = 'Monika'
		ca = '"..."'
	elseif cl == 462 then
		ca = '"Cupcakes it is, then."'
	elseif cl == 463 then
		sb = 'g'
		ct = 'Sayori'
		ca = '"I\'m hungry..."'
	elseif cl == 464 then
		mb = 'a'
		ct = 'Monika'
		ca = '"Anyway, we still need to work out the details'
		cb = 'of the event itself..."'
	elseif cl == 465 then
		hideSayori()
		hideMonika()
		bgUpdate('black')
		ct = ''
		ca = "I find myself smiling."
	elseif cl == 466 then
		ca = "In the end, Sayori is still her usual self."
	elseif cl == 467 then
		ca = "But therein lies the unexpected reason I admire"
		cb = "her."
	elseif cl == 468 then
		ca = "Unlike me, who has trouble finding any "
		cb = "motivation at all..."
	elseif cl == 469 then
		ca =  "Sayori can put her mind to things and make them"
		cb = "come to life."
	elseif cl == 470 then
		ca = "I suppose that's why I end up letting her get"
		cb = "on my case about things."
	elseif cl == 471 then
		ca = "I can't help but wonder what it would be like "
		cb = "to see the world through her eyes..."
	elseif cl == 472 then
		bgUpdate('club')
		sx = 80
		updateSayori('sayori','')
		ct = player
		ca = '"Uwaa--!"'
	elseif cl == 473 then
		ct = ''
		ca = 'I open my eyes to find Sayori\'s face filling'
		cb = 'my vision.'
	elseif cl == 474 then
		ca = "I nearly fall out of my chair."
    elseif cl == 475 then
		updateSayori('4','q')
		ct = 'Sayori'
		ca = '"Ehehe, sorry~"'
	elseif cl == 476 then
		sb = 'i'
		ca = '"Wait!"'
    elseif cl == 477 then
		sb = 'j'
		ca = '"Actually, I\'m not sorry at all!"'
	elseif cl == 478 then
		ca = '"It\'s your fault for sleeping like that!"'
	elseif cl == 479 then
		ca = '"This isn\'t the napping club!"'
	elseif cl == 480 then
		ct = player
		ca = '"Does our school have a napping club...?"'
	elseif cl == 481 then
		updateSayori('1','h')
		ca = '"You\'re staying up late again, aren\'t you?"'
	elseif cl == 482 then
		ca = '"Now that you\'re in a club, you\'re gonna have'
		cb = 'less time for anime, you know!"'
	elseif cl == 483 then
		ca = '"You\'ll need to get used to it!"'
	elseif cl == 484 then
		ct = player
		ca = '"Don\'t say that so loud...!"'
	elseif cl == 485 then
		ct = ''
		ca = "I glance over my shoulder to see if Monika"
		cb = "overheard."
	elseif cl == 486 then
		sb = 'g'
		ca = '"It\'s true, though..."'
	elseif cl == 487 then
		ct = player
		ca = '"Yeah..."'
	elseif cl == 488 then
		ca = '"I know, I know."'
	elseif cl == 489 then
		ca = '"You\'re always looking out for me, Sayori."'
	elseif cl == 490 then
		updateSayori('4','q')
		ct = 'Sayori'
		ca = '"Ehehe~"'
	elseif cl == 491 then
		ca = '"It\'s what I do best!"'
	elseif cl == 492 then
		ct = player
		ca = '"...That\'s a problem!"'
	elseif cl == 493 then
		ca = '"What about you?"'
	elseif cl == 494 then
		ca = '"You look out for me better than you look out'
		cb = 'for yourself."'
	elseif cl == 495 then
		ca = '"You\'re still oversleeping every day, aren\'t'
		cb = 'you?"'
	elseif cl == 496 then
		sb = 'l'
		ct = 'Sayori'
		ca = '"Eh?"'
	elseif cl == 497 then
		ca = '"N-Not every day!"'
	elseif cl == 498 then
		ct = player
		ca = '"That\'s not very convincing..."'
	elseif cl == 499 then
		ca = '"How many days this past week have you gotten '
		cb = 'up on time?"'
	elseif cl == 500 then
		sb = 'm'
		ct = 'Sayori'
		ca = '"That\'s..."'
	elseif cl == 501 then
		sb = 'o'
		ca = '"...It\'s a secret!"'
	elseif cl == 502 then
		ct = player
		ca = '"I knew it..."'
	elseif cl == 503 then
		updateSayori('5a','')
		ct = 'Sayori'
		ca = '"C\'monnnn!"'
	elseif cl == 504 then
		ca = '"At least give me the benefit of the doubt..."'
	elseif cl == 505 then
		ct = player
		ca = '"I can\'t even do that."'
	elseif cl == 506 then
		ca = '"Look, Sayori, it\'s written all over you."'
	elseif cl == 507 then
		updateSayori('1','b')
		ct = 'Sayori'
		ca = '"Eh...?"'
	elseif cl == 508 then
		ct = ''
		ca = "Sayori glances around at herself."
	elseif cl == 509 then
		ct = 'Sayori'
		ca = '"How is it written all over me?"'
	elseif cl == 510 then
		ct = player
		ca = '"You were clearly in a rush this morning..."'
	elseif cl == 511 then
		ca = '"Look, your hair is sticking out all around'
		cb = 'here."'
	elseif cl == 512 then
		sb = 'e'
		ct = 'Sayori'
		ca = '"Ah--"'
	elseif cl == 513 then
		ct = ''
		ca = "I run my fingertips down the side of Sayori's "
		cb = "hair, trying to straighten it out."
	elseif cl == 514 then
		ct = player
		ca = '"Man, you really need a brush for this..."'
	elseif cl == 515 then
		sb = 'y'
		ct = 'Sayori'
		ca = '"My hair is just really hard to get right..."'
	elseif cl == 516 then
		ct = player
		ca = '"I won\'t fall for that."'
	elseif cl == 517 then
		ca = '"There\'s more than just your hair."'
	elseif cl == 518 then
		ca = '"Look, your bow isn\'t straight, either."'
	elseif cl == 519 then
		ca = '"And there\'s a toothpaste stain on your collar'
		cb = 'right here."'
	elseif cl == 520 then
		ct = ''
		ca = "I try to wipe off the stain with my finger."
	elseif cl == 521 then
		ct = 'Sayori'
		ca = '"B-But nobody would ever notice that..."'
	elseif cl == 522 then
		ct = player
		ca = '"Of course they would."'
	elseif cl == 523 then
		ca = '"Nobody\'s gonna tell you about it because they '
		cb = 'don\'t want to embarrass you."'
	elseif cl == 524 then
		ca = '"Fortunately, I really don\'t care about that."'
	elseif cl == 525 then
		updateSayori('5c','')
		ct = 'Sayori'
		ca = '"Hey, you meanie..."'
	elseif cl == 526 then
		ct = player
		ca = '"And you don\'t even keep your blazer buttoned'
		cb = 'up."'
	elseif cl == 527 then
		ca = '"Seriously, Sayori..."'
	elseif cl == 528 then
		ca = '"Why do you think you don\'t have a boyfriend'
		cb = 'yet?"'
	elseif cl == 529 then
		updateSayori('1','h')
		ct = 'Sayori'
		ca = '"Eh??"'
	elseif cl == 530 then
		ca = '"That\'s super mean!"'
	elseif cl == 531 then
		ct = player
		ca = '"Sorry, but you\'ll thank me later..."'
	elseif cl == 532 then
		ct = ''
		ca = "I start to button her blazer from the bottom."
	elseif cl == 533 then
		ct = player
		ca = '"Once you see how much better it looks, you\'ll'
		cb = 'change your mind."'
	elseif cl == 534 then
		hideSayori()
		bgUpdate('s_cg1')
		ct = 'Sayori'
		ca = '"Ehehe~"'
	elseif cl == 535 then
		ca = '"This is so funny."'
	elseif cl == 536 then
		ct = player
		ca = '"What is?"'
	elseif cl == 537 then
		ct = 'Sayori'
		ca = '"Well..."'
	elseif cl == 538 then
		ca = '"I was just thinking how weird it is to have a friend'
		cb = 'who does these kinds of things."'
    elseif cl == 539 then
		ct = player
		ca = '"Eh?"'
    elseif cl == 540 then
		ca = '"D-Don\'t say that!"'
	elseif cl == 541 then
		ca = '"You\'ll make me feel weird about it, stupid..."'
	elseif cl == 542 then
		ct = 'Sayori'
		ca = '"It\'s okay, though."'
	elseif cl == 543 then
		ca = '"I\'m happy we\'re like this."'
	elseif cl == 544 then
		ca = '"Aren\'t you?"'
	elseif cl == 545 then
		ct = player
		ca = '"Ah--"'
	elseif cl == 546 then
		ca = '"I-I guess..."'
	elseif cl == 547 then
		ct = 'Sayori'
		ca = '"Hey, be careful..."'
	elseif cl == 548 then
		ca = '"The button might come off!"'
	elseif cl == 549 then
		ct = 'Sayori'
		ca = '"Why is this one so hard to close...?"'
	elseif cl == 550 then
		ct = ''
		ca = "I struggle to fully close the button near her chest."
	elseif cl == 551 then
		ct = player
		ca = '"Does this thing even fit you properly?"'
	elseif cl == 552 then
		ct = 'Sayori'
		ca = '"Ehehe~"'
	elseif cl == 553 then
		ca = '"It did when I bought it."'
	elseif cl == 554 then
		ct = player
		ca = '"Sigh..."'
	elseif cl == 555 then
		ca = '"If you ever buttoned it, you would have noticed'
		cb = 'sooner that it doesn\'t fit you anymore."'
	elseif cl == 556 then
		ca = '"What are you smiling about?"'
	elseif cl == 557 then
		ct = 'Sayori'
		ca = '"It means my boobs got bigger again!"'
	elseif cl == 558 then
		ct = player
		ca = '"D-Don\'t say that out loud!!"'
	elseif cl == 559 then
		ct = 'Sayori'
		ca = '"Ehehe~"'
	elseif cl == 560 then
		ct = player
		ca = '"Anyway..."'
	elseif cl == 561 then
		ca = '"You look much better now, so..."'
	elseif cl == 562 then
		ca = '"Ah..."'
	elseif cl == 563 then
		ct = ''
		ca = "...Why does it feel strange to see Sayori's blazer"
		cb = "buttoned up like that?"
	elseif cl == 564 then
		ct = 'Sayori'
		ca = '"But it\'s so stuffy..."'
	elseif cl == 565 then
		ca = '"Uuu..."'
	elseif cl == 566 then
		ca = '"It\'s not worth it at all!"'
	elseif cl == 567 then
		ct = ''
		ca = "Sayori hastily unbuttons her blazer once more."
	elseif cl == 568 then
		bgUpdate('club')
		updateSayori('1','q')
		ct = 'Sayori'
		ca = '"Phew!"'
	elseif cl == 569 then
		ca = '"That\'s so much better~"'
	elseif cl == 570 then
		ct = ''
		ca = '"Sayori puts her arms out and twirls around."'
	elseif cl == 571 then
		sb = 'a'
		ct = 'Sayori'
		ca = '"So if I keep it unbuttoned then I won\'t get a'
		cb = 'boyfriend, right?"'
	elseif cl == 572 then
		ct = player
		ca = '"What kind of logic is that?"'
	elseif cl == 573 then
		ca = '"And why are you saying that like it\'s a'
		cb = 'good thing?"'
	elseif cl == 574 then	
		ct = 'Sayori'
		ca = '"Because..."'
	elseif cl == 575 then
		updateSayori('4','h')
		ca = '"...If I had a boyfriend, then he wouldn\'t even'
		cb = 'let you do things like this!"'
	elseif cl == 576 then
		sb = 'y'
		ca = '"And you take care of me better than anyone else'
		cb = 'would, anyway..."'
	elseif cl == 577 then
		ca = '"So that\'s why I\'m keeping it unbuttoned!"'
	elseif cl == 578 then
		ct = player
		ca = '"Stop saying all these embarrassing things!"'
	elseif cl == 579 then
		sb = 'b'
		ct = 'Sayori'
		ca = '"Eh?"'
	elseif cl == 580 then
		ca = '"I didn\'t say anything embarrassing..."'
	elseif cl == 581 then
		ct = player
		ca = '"Jeez..."'
	elseif cl == 582 then
		ca = '"Well anyway, just focus on trying to wake up'
		cb = 'a little earlier..."'
	elseif cl == 583 then
		sb = 'j'
		ct = 'Sayori'
		ca = '"Only if you focus on going to bed earlier!"'
	elseif cl == 584 then
		ct = player
		ca = '"Fine, fine..."'
	elseif cl == 585 then
		ca = '"It\'s a deal."'
	elseif cl == 586 then
		updateSayori('4','q')
		ct = 'Sayori'
		ca = '"Ehehe~"'
	elseif cl == 587 then
		sb = 'x'
		ca = '"I guess we really are better at taking care'
		cb = 'of each other than we are at taking care of'
		cc = 'ourselves."'
	elseif cl == 588 then
		ct = player
		ca = '"Yeah, I guess so, huh..."'
	elseif cl == 589 then
		sb = 'y'
		ca = '"So maybe you should come wake me up in the'
		cb = 'morning!"'
	elseif cl == 590 then
		ct = player
		ca = '"You\'re doing it again, Sayori..."'
	elseif cl == 591 then
		sb = 'h'
		ct = 'Sayori'
		ca = '"Aw, but I was joking that time!"'
	elseif cl == 592 then
		ct = player
		ca = '"Man, it\'s impossible to tell with you'
		cb = 'sometimes."'
	elseif cl == 593 then
		mx = -50
		updateMonika('3','b')
		ct = 'Monika'
		ca = '"Okay, everyone!"'
	elseif cl == 594 then
		ct = player
		ca = '"Eh?"'
	elseif cl == 595 then
		ct = ''
		ca = "Monika suddenly calls out."
	elseif cl == 596 then
		ct = 'Monika'
		ca = '"Why don\'t we share the poems we wrote now?"'
	elseif cl == 597 then
		updateSayori('4','r')
		ct = 'Sayori'
		ca = '"Yay~!"'
	elseif cl == 598 then
		sb = 'x'
		ca = '"'..player..', I can\'t wait to read yours!"'
    elseif cl == 599 then
		ct = player
		ca = '"Yeah, same..."'
	elseif cl == 600 then
		ct = ''
		ca = "I fail to sound enthusiastic, but Sayori still"
		cb = "trots away to retrieve her poem."
	elseif cl == 601 then
		cl = 653
		--ca = 'Sayori is vice president of theLiteratureClub.' (for reference on how long the lines should be)
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=-40 x=80 x=200
		--4: x=-60 x=30 x=120 x=220
    
	end
end