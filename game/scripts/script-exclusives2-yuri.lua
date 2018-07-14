local gtext24 = glitchtext(24)
local y_gtimer = 0

function yuri_dragon()
	local dt = love.timer.getDelta()
	y_gtimer = y_gtimer + dt
	if y_gtimer > 0.55 and y_gtimer < 0.6 then
		updateYuri('3','a')
		xaload = -1
	elseif y_gtimer > 0.25 and y_gtimer < 0.3 then
		updateYuri('dragon2')
		xaload = -1
	elseif y_gtimer < 0.1 then
		updateYuri('dragon1')
		xaload = -1
	end
end

function Yuri_exclusive2_1()
	if cl == 358 then
	bl "I'm really curious to talk to Yuri a little bit more..."
	elseif cl == 359 then
    bl "But at the same time, I would feel bad for distracting her from reading."
	elseif cl == 360 then
    bl "I catch a glimpse of the cover of her book."
	elseif cl == 361 then
    bl "It looks like the same book that she lent to me..."
	elseif cl == 362 then
    bl "More than that, she seems to be on the first few pages."
	elseif cl == 363 then
	audioUpdate('6')
	updateYuri('4','a2',80)
    y "Ah..."
	elseif cl == 364 then
    bl "Crap--"
	elseif cl == 365 then
    bl "I think she noticed me looking at her..."
	elseif cl == 366 then
    bl "She sneaks another glance at me, and our eyes meet for a split second."
	elseif cl == 367 then
	updateYuri('4','b2')
    y "..."
	elseif cl == 368 then
    bl "But that only makes her hide her face deeper in her book."
	elseif cl == 369 then
    mc "Sorry..."
	elseif cl == 370 then
    mc "I was just spacing out..."
	elseif cl == 371 then
    bl "I mutter this, sensing I made her uncomfortable."
	elseif cl == 372 then
	updateYuri('1','oneeye')
    y "Oh..."
	elseif cl == 373 then
    y "It's fine..."
	elseif cl == 374 then
    y "If I was focused, then I probably wouldn't have noticed in the first place."
	elseif cl == 375 then
    y "But I'm just re-reading a bit of this, so..."
	elseif cl == 376 then
    mc "That's the book that you gave me, right?"
	elseif cl == 377 then
    y "Mhm."
	elseif cl == 378 then
    y "I wanted to re-read some of it."
	elseif cl == 379 then
	updateYuri('2','q')
    y "Not for any particular reason...!"
	elseif cl == 380 then
    mc "Just curious, how come you have two copies of the same book?"
	elseif cl == 381 then
    y "Ah..."
	elseif cl == 382 then
    y "Well, when I stopped at the bookstore yesterday--"
	elseif cl == 383 then
	updateYuri('3','o')
    y "Ah, that's not what I meant..."
	elseif cl == 384 then
    y "I mean--"
	elseif cl == 385 then
	updateYuri('1','w')
    y "I...just happened to buy two of them."
	elseif cl == 386 then
    mc "Ah, I see."
	elseif cl == 387 then
    bl "There's something fairly obvious here that Yuri isn't telling me, but I decide to let it go."
	elseif cl == 388 then
    mc "I'll definitely start reading it soon!"
	elseif cl == 389 then
	updateYuri('2','u')
    y "I'm glad to hear..."
	elseif cl == 390 then
    y "Once it starts to pick up, you might have a hard time putting it down."
	elseif cl == 391 then
	updateYuri('2','c')
    y "It's a very engaging and relatable story."
	elseif cl == 392 then
    mc "Is that so...?"
	elseif cl >= 393 then
	Yuri_exclusive2_1_ch22()
	end
end

function Yuri_exclusive2_1_ch22()
	if cl == 393 then
	mc "What's the story about, anyway?"
	elseif cl == 394 then
	updateYuri('1','f')
    y "Well..."
	elseif cl == 395 then
    y "Mmm..."
	elseif cl == 396 then
    bl "I look at the cover of the book."
	elseif cl == 397 then
    bl "The book is titled \"Portrait of Markov\"."
	elseif cl == 398 then
    bl "There's an ominous-looking eye symbol on the front cover."
	elseif cl == 399 then
	updateYuri('1','a')
    y "Basically, it's about this religious camp that was turned into a human experiment prison..."
	elseif cl == 400 then
    y "And the people trapped there have this trait that turns them into killing machines that lust for blood."
	elseif cl == 401 then
	updateYuri('1','m')
    y "But the facility gets even worse, and they start selectively breeding people by cutting off their limbs and affixing them to--"
	elseif cl == 402 then
	updateYuri('1','q')
    y "O-Oh, that might be a little bit of a spoiler..."
	elseif cl == 403 then
	updateYuri('3','q')
    y "But anyway, I-I'm really into it!"
	elseif cl == 404 then
	updateYuri('3','n')
    y "...The book, I mean!"
	elseif cl == 405 then
	updateYuri('3','q')
    y "N-Not the thing about the limbs..."
	elseif cl == 406 then
    mc "That's kind of--!"
	elseif cl == 407 then
    bl "That's kind of dark, isn't it?"
	elseif cl == 408 then
    bl "Yuri made it sound like it was going to be a nice story, so that dark turn came from nowhere."
	elseif cl == 409 then
	updateYuri('1','s')
    y "Ah..."
	elseif cl == 410 then
    cw('y',"Are you not a fan of that sort of thing, "..player.."?")
	elseif cl == 411 then
    mc "No, it's not that..."
	elseif cl == 412 then
    mc "I mean, I can definitely enjoy those kinds of stories, so don't worry."
	elseif cl == 413 then
	updateYuri('2','u')
    y "I hope so..."
	elseif cl == 414 then
    bl "Yeah... I totally forgot that Yuri is into those things."
	elseif cl == 415 then
    bl "She's so shy and reclusive on the outside, but her mind seems to be completely different."
	elseif cl == 416 then
    y "It's just that this kind of story..."
	elseif cl == 417 then
	updateYuri('1','a')
    y "It's the kind that challenges you to look at life from a strange new perspective."
	elseif cl == 418 then
    y "When horrible things happen not just because someone wants to be evil..."
	elseif cl == 419 then
	style_edited = true
    y "But because the world is full of horrible people, and we're all worthless anyway."
	elseif cl == 420 then
	cw('y',"Then, suddenlyyyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyy",'nw')
	elseif cl == 421 then
	style_edited = false
    updateYuri('3','v')
    y "I'm...I'm rambling, aren't I...?"
	elseif cl == 422 then
	y "Not again..."
	elseif cl == 423 then
	updateYuri('4','b2')
    y "I'm sorry..."
	elseif cl == 424 then
    mc "Hey, don't apologize...!"
	elseif cl == 425 then
    mc "I haven't lost interest or anything."
	elseif cl == 426 then
    y "Well..."
	elseif cl == 427 then
    y "I guess it's alright, then..."
	elseif cl == 428 then
	updateYuri('4','a2')
    y "But I feel like I should let you know that I have this problem..."
	elseif cl == 429 then
    y "When I let things like books and writing fill my thoughts..."
	elseif cl == 430 then
	style_edited = true
	cw('y',"my whole body gets incredibly "..gtext24,'nw')
	elseif cl == 431 then
	style_edited = false
    y "I kind of forget to pay attention to other people..."
	elseif cl == 432 then
	updateYuri('3','t')
    y "So I'm sorry if I end up saying something strange!"
	elseif cl == 433 then
    y "And please stop me if I start talking too much!"
	elseif cl == 434 then
    mc "That's--"
	elseif cl == 435 then
    mc "I really don't think you need to worry..."
	elseif cl == 436 then
    mc "That just means you're passionate about reading."
	elseif cl == 437 then
    mc "The least I can do is listen."
	elseif cl == 438 then
    mc "It's a literature club, after all..."
	elseif cl == 439 then
	updateYuri('4','a2')
    y "Ah--"
	elseif cl == 440 then
    y "That's..."
	elseif cl == 441 then
    y "Well, that's true..."
	elseif cl == 442 then
    mc "In fact..."
	elseif cl == 443 then
    mc "I might as well get started reading it, right?"
	elseif cl == 444 then
	sfxplay('glitch3')
	scriptJump(445)
	elseif cl == 445 then
    yuri_dragon()
    y "Y-Yes!"
	elseif cl == 446 then
	updateYuri('3','n')
	y "I-I mean, you don't have to, but...!"
	elseif cl == 447 then
    mc "Ahaha, what are you saying?"
	elseif cl == 448 then
	updateYuri('3','o')
    y "..."
	elseif cl == 449 then
    mc "Let me just get the book..."
	elseif cl == 450 then
    bl "I quickly retrieve the book that I had put into my bag."
	elseif cl == 451 then
    mc "Alright...it's fine if I sit here, right?"
	elseif cl == 452 then
    bl "I slip into the seat next to Yuri's."
	elseif cl == 453 then
	updateYuri('3','n')
    y "Ah...!"
	elseif cl == 454 then
    y "Yeah..."
	elseif cl == 455 then
    mc "Are you sure?"
	elseif cl == 456 then
    mc "You seem a little apprehensive..."
	elseif cl == 457 then
    y "That's..."
	elseif cl == 458 then
	updateYuri('4','b2')
    y "I'm sorry..."
	elseif cl == 459 then
    y "It's not that I don't want you to!"
	elseif cl == 460 then
    y "It's just something I'm not very used to..."
	elseif cl == 461 then
    y "That is, reading in company with someone."
	elseif cl == 462 then
    mc "I see..."
	elseif cl == 463 then
    mc "Well, just tell me if I end up distracting you or anything."
	elseif cl == 464 then
    y "A-Alright..."
	elseif cl == 465 then
	hideYuri()
    bl "I open the book and start the prologue."
	elseif cl == 466 then
    bl "I soon understand what Yuri means about reading in company."
	elseif cl == 467 then
    bl "It's as if I can feel her presence over my shoulder as I read."
	elseif cl == 468 then
    bl "It's not a particularly bad thing."
	elseif cl == 469 then
    bl "Maybe a little distracting, but the feeling is somewhat comforting."
	elseif cl == 470 then
    bl "Yuri is in the corner of my eye."
	elseif cl == 471 then
    bl "I realize that she's not actually looking at her own book."
	elseif cl == 472 then
    bl "I glance over."
	elseif cl == 473 then
    bl "It looks like she's reading from my book instead--"
	elseif cl == 474 then
	updateYuri('3','n',80)
    y "S-Sorry!"
    elseif cl == 475 then
	cw('y',"I was just--!",'nw')
	elseif cl == 476 then
	style_edited = true
    cw('y',"I was just bathing in the feeling of your body heat tttttttttttttheat eattttttt",'nwfast')
	elseif cl == 477 then
	style_edited = false
    mc "Yuri, you really apologize a lot, don't you?"
	elseif cl == 478 then
    y "I...I do?"
	elseif cl == 479 then
	updateYuri('4','a2')
    y "I don't really mean to..."
	elseif cl == 480 then
    y "Sorry..."
	elseif cl == 481 then
	updateYuri('4','c2')
    y "I mean--!"
	elseif cl == 482 then
    mc "Ahaha."
	elseif cl == 483 then
    mc "Here, this should work, right?"
	elseif cl == 484 then
    bl "I slide my desk until it's up against Yuri's, then hold my book more between the two of them."
	elseif cl == 485 then
	updateYuri('2','v')
    y "Ah..."
	elseif cl == 486 then
    y "I-I suppose so..."
	elseif cl == 487 then
    bl "Yuri timidly closes her own copy."
	elseif cl == 488 then
    bl "Once we each lean in a little bit, our shoulders are almost touching."
	elseif cl == 489 then
    bl "It feels like my left arm is in the way, so instead I use my right hand to hold the book open."
	elseif cl == 490 then
    mc "Ah, I guess that makes it kind of difficult to turn the page..."
	elseif cl == 491 then
    y "Here..."
	elseif cl == 492 then
	hideAll()
	persistent.clear[3] = 1
    if xaload == 0 then
		savepersistent()
	end
	bgUpdate('y_cg1_base')
    bl "Yuri takes her left arm and holds the left side of the book between her thumb and forefinger."
	elseif cl == 493 then
    mc "Ah..."
	elseif cl == 494 then
    bl "I do the same with my right arm, on the right side of the book."
	elseif cl == 495 then
    bl "That way, I turn a page, and Yuri slides it under her thumb after it flips to her side."
	elseif cl == 496 then
    bl "But in holding it like this..."
	elseif cl == 497 then
    bl "We're huddled even closer together than before."
	elseif cl == 498 then
    bl "It's actually kind of distracting me...!"
	elseif cl == 499 then
    bl "It's as if I can feel the warmth of Yuri's face, and she's in the corner of my vision..."
	elseif cl == 500 then
	cgUpdate('y_cg1_exp1')
    y "...Are you ready?"
	elseif cl == 501 then
    mc "Eh?"
	elseif cl == 502 then
    y "To turn the page..."
	elseif cl == 503 then
    mc "Ah...sorry!"
	elseif cl == 504 then
    mc "I think I got a bit distracted for a second..."
	elseif cl == 505 then
    bl "I glance over at Yuri's face again, and our eyes meet."
	elseif cl == 506 then
    bl "I don't know how I'll be able to keep up with her..."
	elseif cl == 507 then
    y "Ah..."
	elseif cl == 508 then
	cgUpdate('y_cg1_exp2')
    y "That's okay."
	elseif cl == 509 then
    y "You're not as used to reading, right?"
	elseif cl == 510 then
    y "I don't mind being patient if it takes you a bit longer..."
	elseif cl == 511 then
    y "It's probably the least I can do..."
	elseif cl == 512 then
    y "Since you've been so patient with me..."
	elseif cl == 513 then
    mc "Y-Yeah..."
	elseif cl == 514 then
    mc "Thanks."
	elseif cl == 515 then
    cgHide()
    bl "We continue reading."
	elseif cl == 516 then
    bl "Yuri no longer asks me if I'm ready to turn the page."
	elseif cl == 517 then
    bl "Instead, I just assume that she finishes the page before me, so I turn it by my own volition."
	elseif cl == 518 then
    bl "We continue the first chapter in silence."
	elseif cl == 519 then
    bl "Even so, turning each page almost feels like an intimate exchange..."
	elseif cl == 520 then
    bl "My thumb gently letting go of the page, letting it flutter over to her side as she catches it under her own thumb."
	elseif cl == 521 then
    mc "Hey, Yuri..."
	elseif cl == 522 then
    mc "This might be a silly thought, but..."
	elseif cl == 523 then
    mc "The main character kind of reminds me of you a little bit."
	elseif cl == 524 then
	cgUpdate('y_cg1_exp3')
    y "E-Eh??"
	elseif cl == 525 then
    y "N-No, I don't relate to this character at all!"
	elseif cl == 526 then
    y "Definitely not!"
	elseif cl == 527 then
    mc "Really...?"
	elseif cl == 528 then
    mc "I was just thinking the way she second-guesses things she says, and all that..."
	elseif cl == 529 then
    cgUpdate('y_cg1_exp1')
    y "A-Ah..."
	elseif cl == 530 then
    y "That's what you were talking about..."
	elseif cl == 531 then
    cgUpdate('y_cg1_exp2')
    y "Sorry..."
	elseif cl == 532 then
    y "I thought you meant...something else about her."
	elseif cl == 533 then
    mc "Something else...?"
	elseif cl == 534 then
	cgUpdate('y_cg1_exp3')
    y "N-Never mind!"
	elseif cl == 535 then
    y "We didn't even get that far yet..."
	elseif cl == 536 then
    y "So I don't know why that came into my head..."
	elseif cl == 537 then
    y "Ahaha!"
	elseif cl == 538 then
    mc "Yuri, are you feeling alright?"
	elseif cl == 539 then
    cgUpdate('y_cg1_exp1')
    y "Eh--?"
	elseif cl == 540 then
    bl "Yuri's been a little fidgety ever since we started reading..."
	elseif cl == 541 then
    mc "You can rest if you're feeling sick or something."
	elseif cl == 542 then
    mc "Your breathing is a little..."
	elseif cl == 543 then
    y "My breathing...?"
	elseif cl == 544 then
	cgHide()
    bl "Yuri puts her hands on her chest, as if to feel her heartbeat."
	elseif cl == 545 then
    y "I-I didn't...even notice..."
	elseif cl == 546 then
	cgUpdate('y_cg1_exp3')
    y "...Anyway, I'm fine!"
	elseif cl == 547 then
    y "I just need some water...!"
	elseif cl == 548 then
    mc "Alright...don't push yourself."
	elseif cl == 549 then
	cgHide()
	bgUpdate('club')
    bl "Yuri stands up and practically rushes out of the classroom."
	elseif cl == 550 then
    mc "What on Earth was that about...?"
	elseif cl == 551 then
	updateMonika('1','d',80)
    cw('m',player.."?")
	elseif cl == 552 then
    m "Did something happen just now?"
	elseif cl == 553 then
    mc "Eh?"
	elseif cl == 554 then
    mc "I have no idea..."
	elseif cl == 555 then
    mc "Yuri was acting a little strange, I guess..."
	elseif cl == 556 then
	updateMonika('1','r')
    m "So you don't know anything..."
	elseif cl == 557 then
    mc "Sorry, I can't say I do."
	elseif cl == 558 then
    mc "Are you worried about her?"
	elseif cl == 559 then
	updateMonika('1','a')
    m "Oh...no, not really."
	elseif cl == 560 then
    m "I was just making sure that you didn't do anything to her."
	elseif cl == 561 then
    mc "N-No, nothing!"
	elseif cl == 562 then
	updateMonika('5a')
    m "Ahaha, don't worry...I believe you, silly."
	elseif cl == 563 then
    m "Yuri just does this sometimes, so it's nothing alarming."
	elseif cl == 564 then
    mc "Alright...if you say so."
	elseif cl == 565 then
	updateMonika('2','b')
    m "Anyway, why don't we start with sharing our poems with each other?"
	elseif cl == 566 then
    mc "Eh?"
	elseif cl == 567 then
    mc "Shouldn't we wait for Yuri?"
	elseif cl == 568 then
	updateMonika('2','a')
    m "Well, she might be a while, so I just figured we'd get started without her."
	elseif cl == 569 then
    m "Is that okay?"
	elseif cl == 570 then
    mc "Yeah, I was just asking..."
	elseif cl == 571 then
    bl "I stand up."
	elseif cl == 572 then
    bl "I make a mental note of where I left off in the book, then slip it back into my bag."
	elseif cl == 573 then
	poeminitialize('y_ranaway')
	end
end