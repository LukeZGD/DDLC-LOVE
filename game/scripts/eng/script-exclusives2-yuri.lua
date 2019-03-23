local gtext24 = glitchtext(24)
local gtext80 = glitchtext(80)
local gtext200 = glitchtext(200)
local y_gtimer = 0

function yuri_dragon()
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
	bgUpdate('cg/y_cg1_base')
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

function Yuri_exclusive2_2_ch22()
	if cl == 1235 then
	updateYuri('3','a')
    y "Actually, I have a request..."
	elseif cl == 1236 then
    y "...Do you mind if I make some tea first?"
	elseif cl == 1237 then
    mc "Not at all."
	elseif cl == 1238 then
	updateYuri('1','c')
    y "Thanks very much."
	elseif cl == 1239 then
	updateYuri('1','a')
    y "If there's one thing that can make my reading time here any better, it's a nice cup of tea."
	elseif cl == 1240 then
    y "Not to mention for yourself, as well."
	elseif cl == 1241 then
	hideYuri()
    bl "Yuri stands up and makes her way to the closet."
	elseif cl == 1242 then
    bl "I follow and watch as she retrieves a small water pitcher from the shelf - the kind with a filter inside."
	elseif cl == 1243 then
	updateYuri('1','f',80)
    y "Can you hold this for a second?"
	elseif cl == 1244 then
    mc "Sure..."
	elseif cl == 1245 then
    bl "Yuri hands me the water pitcher and also fetches an electric kettle."
	elseif cl == 1246 then
    y "I'm going to plug this in at the teacher's desk, and then I'll go get some water."
	elseif cl == 1247 then
	hideYuri()
    bl "She walks past me and sets the kettle down on the teacher's desk."
	elseif cl == 1248 then
    bl "I simply watch her movements."
	elseif cl == 1249 then
    bl "To my surprise, the way she moves really contrasts her speaking mannerisms."
	elseif cl == 1250 then
    bl "Especially because of her long legs, Yuri appears elegant and methodical."
	elseif cl == 1251 then
	updateYuri('1','f',80)
    y "Okay, may I have the water pitcher?"
	elseif cl == 1252 then
	updateYuri('1','a')
    y "Thanks. I'll be right back."
	elseif cl == 1253 then
    mc "Ah, I might as well walk with you..."
	elseif cl == 1254 then
	updateYuri('1','q')
    y "T-That's okay!"
	elseif cl == 1255 then
    y "You stay here..."
	elseif cl == 1256 then
    y "It won't take long."
	elseif cl == 1257 then
	hideYuri()
    bl "Pitcher in hand, Yuri hurries out of the classroom."
	elseif cl == 1258 then
	updateMonika('2','i',80)
    m "Ah..."
	elseif cl == 1259 then
    m "Did Yuri leave you again?"
	elseif cl == 1260 then
    mc "No, it's not like that this time."
	elseif cl == 1261 then
    mc "She's just filling up the water pitcher to make tea."
	elseif cl == 1262 then
	updateMonika('5a')
    m "Oh, okay!"
	elseif cl == 1263 then
    m "Sorry for misunderstanding~"
	
	elseif cl == 1264 then
	event_initstart('wipe')
	elseif cl == 1265 then
    bl "..."
	elseif cl == 1266 then
    bl "Ten minutes pass."
	elseif cl == 1267 then
    bl "Yuri said it wouldn't take long..."
	elseif cl == 1268 then
    bl "Is something holding her up?"
	elseif cl == 1269 then
    bl "I'm bored just waiting here, so I decide to go look for her."
	elseif cl == 1270 then
	event_initstart('wipe','corridor')
	elseif cl == 1271 then
	audioUpdate('6o')
    mc "Let's see..."
	elseif cl == 1272 then
    bl "The most logical place for Yuri to be would be the nearest water fountain..."
	elseif cl == 1273 then
    bl "I start heading down the hallway."
	elseif cl == 1274 then
	cw('???',"Haah.....haah....")
	elseif cl == 1275 then
	cw('???',"....Haah.....haah....")
	elseif cl == 1276 then
    bl "...What's that noise?"
	elseif cl == 1277 then
    bl "It's coming from around the corner..."
	elseif cl == 1278 then
    bl "It sounds like breathing."
	elseif cl == 1279 then
    cw('???',"Khhhhh--")
	elseif cl == 1280 then
    bl "A sharp inhale, like someone is sucking the air through their teeth."
	elseif cl == 1281 then
    bl "Are they in pain...?"
	elseif cl == 1282 then
    bl "I reach the corner and peer around it."
	elseif cl == 1283 then
    mc "Yuri...?"
	elseif cl == 1284 then
	updateYuri('cuts','',80)
    y "Kya--!"
	elseif cl == 1285 then
	event_initstart('show_vignette')
	audioUpdate('6r')
	hideAll()
	cw('mc',"Yuri...?",'nwfast')
	elseif cl == 1286 then
    cw('bl',"I reach the corner and peer around it.",'nwfast')
	elseif cl == 1287 then
    cw('bl',"Are they in pain...?",'nwfast')
	elseif cl == 1288 then
    cw('bl',"A sharp inhale, like someone is sucking the air through their teeth.",'nwfast')
	elseif cl == 1289 then
    cw('???',"Khhhhh--",'nwfast')
	elseif cl == 1290 then
    cw('bl',"It sounds like breathing.",'nwfast')
	elseif cl == 1291 then
    cw('bl',"It's coming from around the corner...",'nwfast')
	elseif cl == 1292 then
    cw('bl',"...What's that noise?",'nwfast')
	elseif cl == 1293 then
    cw('???',"....Haah.....haah....",'nwfast')
	elseif cl == 1293 then
    cw('???',"Haah.....haah....",'nwfast')
	elseif cl == 1294 then
    cw('bl',"I start heading down the hallway.",'nwfast')
	elseif cl == 1295 then
    cw('bl',"The most logical place for Yuri to be would be the nearest water fountain...",'nwfast')
	elseif cl == 1296 then
    cw('mc',"Let's see...",'nwfast')
	elseif cl == 1297 then
	bgUpdate('club')
    cw('bl',"I'm bored just waiting here, so I decide to go look for her.",'nwfast')
	elseif cl == 1298 then
    cw('bl',"Is something holding her up?",'nwfast')
	elseif cl == 1299 then
    cw('bl',"Yuri said it wouldn't take long...",'nwfast')
	elseif cl == 1300 then
    cw('bl',"Ten minutes pass.",'nwfast')
	elseif cl == 1301 then
    cw('bl',"...",'nwfast')
	
	elseif cl == 1302 then
		history = {}
		event_end('show_vignette')
		if poemwinner[1] == 'Yuri' and chapter == 23 then
			scriptJump(1723)
		else
			scriptJump(1303)
		end
		
	elseif cl == 1303 then
	audioUpdate('6')
	bgUpdate('club')
	updateYuri('1','a')
	y "I'm back."
	elseif cl == 1304 then
	y "Thanks for waiting patiently."
	elseif cl == 1305 then
    cw('y',player..", do you like oolong tea?")
	elseif cl == 1306 then
    mc "Ah, yeah."
	elseif cl == 1307 then
    mc "Anything is fine."
	elseif cl == 1308 then
    y "Very well."
	elseif cl == 1309 then
    bl "Yuri sets the temperature on the kettle to 200 degrees."
	elseif cl == 1310 then
	updateYuri('1','f')
    y "Now it's time to get the teapot."
	elseif cl == 1311 then
    mc "You really do this properly, don't you?"
	elseif cl == 1312 then
	updateYuri('1','u')
    y "Of course..."
	elseif cl == 1313 then
    y "I shouldn't do any less when I'm making tea for others."
	elseif cl == 1314 then
    mc "Even if I'm not an expert on tea or anything...?"
	elseif cl == 1315 then
	updateYuri('2','m')
    y "Huhu."
	elseif cl == 1316 then
	updateYuri('2','a')
    y "In that case, you'll only be even more impressed."
	elseif cl == 1317 then
    mc "Ah...perhaps I will!"
	elseif cl == 1318 then
	hideYuri()
    bl "Yuri fetches the teapot and begins measuring the tea leaves."
	elseif cl == 1319 then
    bl "To my surprise, she even starts humming a little to herself."
	elseif cl == 1320 then
	updateYuri('1','c',80)
    mc "You must be in a good mood now..."
	elseif cl == 1321 then
	updateYuri('1','a')
    y "Is that so?"
	elseif cl == 1322 then
    y "I was letting it show..."
	elseif cl == 1323 then
    y "And you noticed."
	elseif cl == 1324 then
	updateYuri('2','u')
    y "I was doing a bit of thinking..."
	elseif cl == 1325 then
    y "And I decided that I would try expressing myself a little bit more."
	elseif cl == 1326 then
    y "It turns out it's not very hard for me to do..."
	elseif cl == 1327 then
	updateYuri('1','c')
    y "When it's you who's around, anyway."
	elseif cl == 1328 then
	updateYuri('1','a')
    mc "Ah..."
	elseif cl == 1329 then
    mc "That's great, Yuri!"
	elseif cl == 1330 then
    mc "Just don't push yourself too much."
	elseif cl == 1331 then
	updateYuri('3','u')
    cw('y',"You're always worrying about me, "..player.."...")
	elseif cl == 1332 then
    y "It's very endearing."
	elseif cl == 1333 then
    mc "That's..."
	elseif cl == 1334 then
    bl "Yuri wasn't kidding..."
	elseif cl == 1335 then
    bl "I don't even know if I can keep up with this...!"
	elseif cl == 1336 then
    bl "I watch Yuri pour a cup of tea for each of us."
	elseif cl == 1337 then
	updateYuri('1','a')
    cw('y',player..", I have another request.")
	elseif cl == 1338 then
    y "Do you mind if we sit on the floor today?"
	elseif cl == 1339 then
    mc "Eh? Why's that?"
	elseif cl == 1340 then
	updateYuri('1','h')
    y "It's a little bit easier on my back..."
	elseif cl == 1341 then
    y "I can read with my back against the wall rather than bending over at my desk."
	elseif cl == 1342 then
    mc "Ah, sorry, I didn't realize."
	elseif cl == 1343 then
	updateYuri('1','a')
    y "No worries."
	elseif cl == 1344 then
    y "I just have back pain fairly regularly, so I do my best to manage it."
	elseif cl == 1345 then
    mc "Is that so?"
	elseif cl == 1346 then
    mc "I wonder why that is..."
	elseif cl == 1347 then
	updateYuri('1','f')
    y "It's most likely because my--"
	elseif cl == 1348 then
	updateYuri('1','n')
    y "Ah--"
	elseif cl == 1349 then
	updateYuri('1','o')
    y "M-My..."
	elseif cl == 1350 then
    mc "Your posture, right?"
	elseif cl == 1351 then
    mc "Always hunched over like that while reading..."
	elseif cl == 1352 then
	updateYuri('2','p')
    y "Yes!"
	elseif cl == 1352 then
	updateYuri('2','q')
    y "I have terrible reading posture!"
	elseif cl == 1353 then
    y "So that's why we should sit on the floor."
	elseif cl == 1354 then
    mc "Fair enough."
	elseif cl == 1355 then
    mc "I'll go ahead and get the book."
	elseif cl == 1356 then
	hideYuri()
    bl "I retrieve the book from my bag."
	elseif cl == 1357 then
    mc "Ah, I have some chocolate as well..."
	elseif cl == 1358 then
    bl "It's a bag of small chocolate candies."
	elseif cl == 1359 then
    bl "I take it, since it'll go well with the tea."
	elseif cl == 1360 then
    bl "Yuri and I then sit against the wall, teacups at our sides."
	elseif cl == 1361 then
    bl "As if in sync, we assume the same reading position as last time, each holding one half of the book."
	elseif cl == 1362 then
    bl "Except this time..."
	elseif cl == 1363 then
    bl "Our bodies are even closer to each other."
	elseif cl == 1364 then
	updateYuri('2','b',80)
    y "I can't see too well..."
	elseif cl == 1365 then
    mc "--!"
	elseif cl == 1366 then
	updateYuri('2','e')
    bl "Yuri slides closer until our shoulders are touching."
	elseif cl == 1367 then
    bl "How am I supposed to focus on reading like this...?!"
	elseif cl == 1368 then
    bl "Yuri was always kind of cute, but..."
	elseif cl == 1369 then
    bl "When she's being less apprehensive, it's almost more than I can handle!"
	elseif cl == 1370 then
	updateYuri('2','f')
    y "Your teacup..."
	elseif cl == 1371 then
    bl "Yuri hands me my teacup."
	elseif cl == 1372 then
    bl "Holding it with my hand that's not holding the book, I end up in a position that makes it even harder to focus."
	elseif cl == 1373 then
    bl "Because now I need to worry about making sure I don't accidentally touch her chest...!"
	elseif cl == 1374 then
    bl "Meanwhile, Yuri hasn't noticed a single thing."
	elseif cl == 1375 then
    bl "She wears her intense reading expression, and I can only presume the world around her has faded away."
	elseif cl == 1376 then
    bl "I use all of my willpower to focus on reading."
	elseif cl == 1377 then
    bl "..."
	elseif cl == 1378 then
    bl "After a few minutes, I finally manage to relax a little."
	elseif cl == 1379 then
    bl "I put the teacup between my legs and fumble with the chocolate wrapper."
	elseif cl == 1380 then
    mc "Ah, sorry..."
	elseif cl == 1381 then
    bl "I briefly let go of the book to finish opening the wrapper."
	elseif cl == 1382 then
    mc "You can have as much as you want."
	elseif cl == 1383 then
	updateYuri('2','s')
    y "Ah, that's..."
	elseif cl == 1384 then
    y "That's okay, I won't take any..."
	elseif cl == 1385 then
    mc "Eh? Are you sure?"
	elseif cl == 1386 then
	updateYuri('2','v')
    y "Well..."
	elseif cl == 1387 then
    y "If I touch it, then it might get smudges on the pages..."
	elseif cl == 1388 then
    mc "Ah, you're right..."
	elseif cl == 1389 then
    mc "I didn't even think about that."
	elseif cl == 1390 then
    mc "My bad..."
	elseif cl == 1391 then
	updateYuri('2','a')
    y "No need to apologize."
	elseif cl == 1392 then
    y "I'll hold the book, okay?"
	elseif cl == 1393 then
    mc "Are you sure...?"
	elseif cl == 1394 then
    y "Of course."
	elseif cl == 1395 then
	persistent.clear[4] = 1
	if xaload == 0 then
		savepersistent()
	end
	hideAll()
	bgUpdate('cg/y_cg2_nochoc')
    bl "Yuri opens the book with both hands."
	elseif cl == 1396 then
    bl "She holds it so that I don't have any harder of a time reading from it."
	elseif cl == 1397 then
    bl "But as a result, her left arm is practically resting on top of my leg."
	elseif cl == 1398 then
    mc "Well, in that case..."
	elseif cl == 1399 then
    bl "Yuri is already totally focused on reading again."
	elseif cl == 1400 then
    bl "I take a chocolate candy and pop it into my mouth."
	elseif cl == 1401 then
    bl "Then, I take another chocolate..."
	elseif cl == 1402 then
    bl "And I hold it up to Yuri."
	elseif cl == 1403 then
    bl "She doesn't even look away from the book."
	elseif cl == 1404 then
    bl "She simply parts her lips, as if this situation was completely natural."
	elseif cl == 1405 then
    bl "But that means I can't stop here!"
	elseif cl == 1406 then
	bgUpdate('cg/y_cg2')
    bl "I apprehensively place the chocolate in her mouth."
	elseif cl == 1407 then
    bl "Just like that, Yuri closes her lips over it."
	elseif cl == 1408 then
    y "Eh...?"
	elseif cl == 1409 then
	cgUpdate('y_cg2_exp2')
    bl "Yuri's expression suddenly breaks."
	elseif cl == 1410 then
    y "Did..."
	elseif cl == 1411 then
    y "Did I just..."
	elseif cl == 1412 then
    bl "Yuri looks at me like she needs to confirm what just happened."
	elseif cl == 1413 then
	cgUpdate('y_cg2_exp3')
    y "U-Um..."
	elseif cl == 1414 then
	cw('y',player.."...")
	elseif cl == 1415 then
    mc "S-Sorry!"
	elseif cl == 1416 then
    mc "I guess I shouldn't have done that..."
	elseif cl == 1417 then
	audioUpdate('0')
    y "A-Ah..."
	elseif cl == 1418 then
    bl "Yuri starts to breathe heavily."
	elseif cl == 1419 then
    y "I..."
	elseif cl == 1420 then
    y "I can't..."
	elseif cl == 1421 then
	cw('y',player.."...")
	elseif cl == 1422 then
    bl "Suddenly, Yuri forcefully grabs my arm and jerks me to my feet."
	elseif cl == 1423 then
    bl "My teacup gets knocked over."
	elseif cl == 1424 then
	bgUpdate('closet')
	updateYuri('2','t',80)
	cgHide()
    cw('y',player.."...")
	event_init('yuri_eyes')
	elseif cl == 1425 then
	sfxplay('closet-close')
	event_start('show_dark')
    y "My heart..."
	elseif cl == 1426 then
	updateYuri('2','y6')
    cw('y',"My heart won't stop pounding, "..player.."...")
	elseif cl == 1427 then
    y "I can't calm down."
	elseif cl == 1428 then
    y "I can't focus on anything anymore...!"
	elseif cl == 1429 then
    cw('y', "Can you feel it, "..player.."?")
	elseif cl == 1430 then
    bl "Yuri suddenly presses my hand against her chest."
	elseif cl == 1431 then
	audioUpdate('heartbeat')
    updateYuri('3','t')
    y "Why is this happening to me?"
	elseif cl == 1432 then
    y "I feel like I'm losing my mind..."
	elseif cl == 1433 then
	updateYuri('3','y4')
    y "I can't make it stop."
	elseif cl == 1434 then
	updateYuri('3','y6')
    y "It even makes me not want to read..."
	elseif cl == 1435 then
    y "I just want..."
	elseif cl == 1436 then
	updateYuri('3','s')
    y "...to look..."
	elseif cl == 1437 then
    y "...at you."
	elseif cl == 1438 then
	event_end('next')
	elseif cl == 1439 then
	if xaload < 3 then event_start('yuri_eyes') end
	y "...Haah..."
    elseif cl == 1440 then
    y "...Haah..."
    elseif cl == 1441 then
    y "...Haah..."
    elseif cl == 1443 then
	sfxplay('closet-open')
	audioUpdate('0')
	updateYuri('3','n')
	updateMonika('3','l',-40)
    m "U-Um..."
	elseif cl == 1444 then
    m "It's...time to share poems..."
	elseif cl == 1445 then
	bgUpdate('club')
	poeminitialize()
	end
end

function Yuri_exclusive2_2_ch23()
	if cl == 1723 then
	bgUpdate('corridor')
	event_initstart('yuri_ch23')
	audioUpdate('6g-')
	elseif cl == 1724 then
	audioUpdate('g1')
	cw('y',gtext80,'nw')
	elseif cl == 1725 then
	updateYuri('2','n',80)
	event_end('yuri_ch23')
	audioUpdate('0')
	y "Um..."
	elseif cl == 1726 then
    y "Wait..."
	elseif cl == 1727 then
	updateYuri('2','o')
    y "How did I..."
	elseif cl == 1728 then
	updateYuri('2','y6')
    y  "...Sorry, I just had a really weird deja vu..."
	elseif cl == 1729 then
    y "This hasn't happened before or anything...right?"
	elseif cl == 1730 then
	updateYuri('2','t')
    y "My head has been a little fuzzy lately..."
	elseif cl == 1731 then
	updateYuri('3','t')
    y "I hope it hasn't really been showing or anything!"
	elseif cl == 1732 then
    y "I would hate for you to think I'm weird just after we started spending time together..."
	elseif cl == 1733 then
    y "I mean..."
	elseif cl == 1734 then
	if xaload < 3 then event_initstart('yuri_ch23_2') end
	audioUpdate('9')
    y "Everyone has a few unusual things about them."
	elseif cl == 1735 then
	updateYuri('1','v')
	y "But expressing those things so soon after meeting someone is usually seen as inappropriate...or unlikable."
	elseif cl == 1736 then
    y "At least, that's what I've discovered."
	elseif cl == 1737 then
    y "When I was a bit younger, I think I would come on really strongly and get a little too intense..."
	elseif cl == 1738 then
    y "It made people not want to be around me."
	elseif cl == 1739 then
	updateYuri('2','w')
    y "So...I started hating those things about myself."
	elseif cl == 1740 then
    y "My obsession with certain hobbies."
	elseif cl == 1741 then
    y "And the way I can't control myself when I get too excited about something."
	elseif cl == 1742 then
    y "So..."
	elseif cl == 1743 then
	updateYuri('1','v')
    y "I eventually stopped trying to talk to people."
	elseif cl == 1744 then
    y "If nobody could ever like me for the things that matter most to me..."
	elseif cl == 1745 then
	updateYuri('1','u')
    y "...Then it's just easier if I close myself off."
	elseif cl == 1746 then
	updateYuri('1','h')
    y "But recently, something's been wrong."
	elseif cl == 1747 then
    y "I don't know what it is."
	elseif cl == 1748 then
	updateYuri('2','y6')
    y "But every time we come to the club, my heart starts to go crazy."
	elseif cl == 1749 then
    y "Like it's going to rip out of my chest."
	elseif cl == 1750 then
    y "It overwhelms me with energy and emotions that I can't let out."
	elseif cl == 1751 then
    y "It's been making me do weird things."
	elseif cl == 1752 then
	updateYuri('2','t')
    y "I don't know why it's happening!"
	elseif cl == 1753 then
	audioUpdate('0')
    updateYuri('1','t')
    cw('y',player.."...")
	elseif cl == 1754 then
    y "Is it just me, or has Monika been acting a little off lately?"
	elseif cl == 1755 then
	updateYuri('1','v')
    y "She's always been a sweetheart ever since I joined the club..."
	elseif cl == 1756 then
    y "But recently, I've been feeling something sharp whenever she's around."
	elseif cl == 1757 then
	updateYuri('2','y4')
    y "I'm not crazy, right?"
	elseif cl == 1758 then
	updateYuri('2','y1')
    y "Please tell me I'm not!"
	elseif cl == 1759 then
    y "I couldn't say anything before, because she's always listening!"
	elseif cl == 1760 then
	updateYuri('2','y3')
    y "But finally, we're alone..."
	elseif cl == 1761 then
    y "Can we just stay here for a while?"
	elseif cl == 1762 then
	updateYuri('1','m')
    y "Yeah..."
	elseif cl == 1763 then
    y "..."
	elseif cl == 1764 then
	audioUpdate('heartbeat')
	updateYuri('1','s')
	updateMonika('1','a',80)
    y "I just want to stay here."
	elseif cl == 1765 then
    y "Just the two of us."
	elseif cl == 1766 then
    y "We can stay here until the club ends."
	elseif cl == 1767 then
	updateYuri('1','m')
    y "And then we'll have the clubroom all to ourselves."
	elseif cl == 1768 then
    y "Nobody to interfere with our reading time."
	elseif cl == 1769 then
	updateYuri('1','y4')
    y "Nobody to make me feel like stabbing myself in the throat."
	elseif cl == 1770 then
	updateYuri('1','q')
    y "Ahaha..."
	elseif cl == 1771 then
    y "That was a joke!"
	elseif cl == 1772 then
    y "Just a joke."
	elseif cl == 1773 then
	updateYuri('1','i')
    y "I do like knives, though..."
	elseif cl == 1774 then
    y "It sounds strange, but you wouldn't understand if you've never seen how beautiful they can be."
	elseif cl == 1775 then
	updateYuri('1','f')
    y "I have an idea."
	elseif cl == 1776 then
    y "Why don't you come to my house sometime?"
	elseif cl == 1777 then
	updateYuri('1','y6')
    y "I can show you my collection."
	elseif cl == 1778 then
    y "I've gotten them all from various artisans."
	elseif cl == 1779 then
	updateYuri('1','a')
    y "I make sure to give them all their fair share of use."
	elseif cl == 1780 then
	updateYuri('1','m')
    y "I don't want them to get lonely or anything..."
	elseif cl == 1781 then
	updateYuri('1','y6')
    y "Nobody deserves to be lonely."
	elseif cl == 1782 then
	updateYuri('1','y4')
    y "Nobody."
	elseif cl == 1783 then
	updateYuri('1','c')
	cw('y',"And that's why I'm so happy you joined the Literature Club, "..player..".")
	elseif cl == 1784 then
	updateYuri('1','a')
    y "Now we don't need to be lonely anymore."
	elseif cl == 1785 then
    y "Because we have each other."
	elseif cl == 1786 then
    y "Every day."
	elseif cl == 1787 then
    y "That's all we need."
	elseif cl == 1788 then
	updateYuri('1','y6')
    y "You know what?"
	elseif cl == 1789 then
    y "Let's quit the Literature Club."
	elseif cl == 1790 then
    y "There's no need for us to be around Monika's slimy tongue anymore."
	elseif cl == 1791 then
	updateYuri('1','y4')
    y "Not to mention that other pathetic child."
	elseif cl == 1792 then
	updateYuri('1','s')
    y "We can walk home together every day after school."
	elseif cl == 1793 then
    y "And read together."
	elseif cl == 1794 then
	updateYuri('1','m')
    y "Eat together."
	elseif cl == 1795 then
    y "Sleep together."
	elseif cl == 1796 then
	updateYuri('1','s')
    y "Doesn't that sound perfect?"
	elseif cl == 1797 then
    y "It's everything we could ever want."
	elseif cl == 1798 then
	updateYuri('1','a')
    y "Isn't that why you joined the club in the first place?"
	elseif cl == 1799 then
    y "It's almost like it was fate."
	elseif cl == 1800 then
    y "Fate that we would meet each other."
	elseif cl == 1801 then
    y "And now we get the happy ending that I've patiently waited years for."
	elseif cl == 1802 then
    cw('y',"Will you do that with me, "..player.."?")
	elseif cl == 1803 then
    cw('y',"Will"..space(60)..gtext200,'nw')
	elseif cl == 1804 then
	event_end()
	if bg1 ~= 'club' then bgUpdate('club',true)
	else poeminitialize() end
	end
end