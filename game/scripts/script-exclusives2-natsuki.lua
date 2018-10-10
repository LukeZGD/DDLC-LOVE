local ntext = glitchtext(96)
local ntext2 = glitchtext(96)

function Natsuki_exclusive2_1()
	if cl == 358 then
	n "Ugh...!"
	elseif cl == 359 then
    bl "I hear Natsuki utter an exasperated sigh from within the closet."
	elseif cl == 360 then
    bl "She seems to be annoyed by something."
	elseif cl == 361 then
    bl "I approach her, in case she needs a hand."
	elseif cl == 362 then
	audioUpdate('6')
	bgUpdate('closet')
	updateNatsuki('4','r',80)
    mc "You looking for something in there?"
	elseif cl == 363 then
	style_edited = true
	updateNatsuki('4','x')
    n "fucking monikammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
	elseif cl == 364 then
	style_edited = false
    n "She never puts my stuff back in the right spot!"
	elseif cl == 365 then
    n "What's the point in keeping your collection organized if someone else is just gonna mess it up?"
	elseif cl == 366 then
    bl "Natsuki slides a bunch of stacked books and boxes across the shelf."
	elseif cl == 367 then
    mc "Manga..."
	elseif cl == 368 then
	updateNatsuki('2','c')
    n "You read manga, right?"
	elseif cl == 369 then
    mc "Ah--"
	elseif cl == 370 then
    mc "...Sometimes..."
	elseif cl == 371 then
    bl "Manga is one of those things where you can't admit you're really into it until you figure out where the other person stands."
	elseif cl == 372 then
    mc "...How did you know, anyway?"
	elseif cl == 373 then
	updateNatsuki('2','k')
    n "I heard you bring it up at some point."
	elseif cl == 374 then
    n "Besides, it's kind of written on your face."
	elseif cl == 375 then
    bl "What's that supposed to mean...?"
	elseif cl == 376 then
    mc "I-I see..."
	elseif cl == 377 then
    bl "There's a lone volume of manga amidst a stack of various books on the side of one of the shelves."
	elseif cl == 378 then
    bl "Curious, I pull it out of the stack."
	elseif cl == 379 then
	updateNatsuki('1','b')
    n "There it is!"
	elseif cl == 380 then
    bl "Natsuki snatches it out of my hand."
	elseif cl == 381 then
    bl "She then turns to a box of manga and slips the volume right into the middle of the rest."
	updateNatsuki('4','d')
    n "Aah, much better!"
	elseif cl == 382 then
    n "Seeing a box set with one book missing is probably the most irritating sight in the world."
	elseif cl == 383 then
    mc "I know that feel..."
	elseif cl == 384 then
    bl "I get a closer look at the box set she's admiring."
	elseif cl == 385 then
    mc "Parfait Girls...?"
	elseif cl == 386 then
    bl "It's a series I've never heard of in my life."
	elseif cl == 387 then
    bl "That probably means it's either way out of my demographic, or it's simply terrible."
	elseif cl == 388 then
	updateNatsuki('5','g')
    n "If you're gonna judge, you can go do it through the glass on that door."
    bl "She points to the classroom door."
	elseif cl == 389 then
    mc "H-Hey, I wasn't judging anything...!"
	elseif cl == 390 then
    mc "I didn't even say anything."
	elseif cl == 391 then
	updateNatsuki('5','c')
    n "It was the tone of your voice."
	elseif cl == 392 then
	cw('n',"But I'll tell you one thing, "..player..".")
	elseif cl == 393 then
	updateNatsuki('4','l')
    cw('n',"Consider this a lesson straight from the Literature Club:",'nw')
	elseif cl == 394 then
	style_edited = true
    cw('n',"don't judge a bookkkkkkkkkkkkkkkkk kkkkk kk"..space(20)..'k'..space(40)..'k'..space(120)..'k'..space(160)..'k'..space(200)..'k')
    elseif cl == 395 then
	style_edited = false
    n "In fact--"
	elseif cl == 396 then
    bl "Natsuki pulls out the first volume of Parfait Girls from the box."
	elseif cl == 397 then
    n "I'm gonna show you exactly why!"
	elseif cl == 398 then
    bl "She shoves the book right into my hands."
	elseif cl == 399 then
    mc "Ah..."
	elseif cl == 400 then
    bl "I stare at the cover."
	elseif cl == 401 then
    bl "It features four girls in colorful attire striking animated feminine poses."
	elseif cl == 402 then
    bl "It's...exceedingly \"moe\"."
	elseif cl == 403 then
	updateNatsuki('4','b')
    n "Don't just stand there!"
	elseif cl == 404 then
    mc "Uwa--"
	elseif cl == 405 then
	hideNatsuki()
    bl "Natsuki grabs my arm and pulls me out of the closet."
	elseif cl == 406 then
    bl "She then takes a seat against the wall, beneath the windowsills."
	elseif cl == 407 then
    bl "She pats on the ground next to her, signaling me to sit there."
	elseif cl == 408 then
	bgUpdate('club')
    updateNatsuki('2','a',80)
    mc "Wouldn't chairs be more comfortable...?"
	elseif cl == 409 then
    bl "I take my seat."
	elseif cl == 410 then
	updateNatsuki('2','k')
    n "Chairs wouldn't work."
	elseif cl == 411 then
    n "We can't read at the same time like that."
	elseif cl == 412 then
    mc "Eh? Why's that?"
	elseif cl == 413 then
    mc "Ah...I guess it's easier to be close together like this..."
	elseif cl == 414 then
	updateNatsuki('2','o')
    n "--!"
	elseif cl == 415 then
	updateNatsuki('5','r')
    n "D-Don't just say that!"
	elseif cl == 416 then
    n "You'll make me feel weird about it!"
	elseif cl == 417 then
    bl "Natsuki crosses her arms and scootches an inch away from me."
	elseif cl == 418 then
    mc "Sorry..."
	elseif cl == 419 then
	updateNatsuki('5','g')
    bl "I didn't exactly expect to be sitting this close to her, either..."
	elseif cl == 420 then
    bl "Not that I can say it's a particularly bad thing."
	elseif cl == 421 then
    bl "I open the book."
	elseif cl == 422 then
    bl "It's only a few seconds before Natsuki once again inches closer, reclaiming the additional space while she hopes I won't notice."
	elseif cl == 423 then
    bl "I can feel her peering over my shoulder, much more eager to begin reading than I am."
	elseif cl == 424 then
	updateNatsuki('1','k')
    n "Wow, how long has it been since I read the beginning...?"
	elseif cl == 425 then
    mc "Hm?"
	elseif cl == 426 then
    mc "You don't go back and flip through the older volumes every now and then?"
	elseif cl == 427 then
	updateNatsuki('2','k')
    n "Not really."
	elseif cl == 428 then
    n "Maybe sometimes after I've already finished the series."
	elseif cl == 429 then
	updateNatsuki('2','c')
    n "Hey, are you paying attention?"
	elseif cl == 430 then
    mc "Uh..."
	elseif cl == 431 then
    bl "I am, but nothing's really happened yet, so I can talk at the same time."
	elseif cl == 432 then
    bl "It looks like it's about a bunch of friends in high school."
	elseif cl == 433 then
    bl "Typical slice-of-life affair."
	elseif cl == 434 then
    bl "I kind of grew out of these, since it's rare for the writing to be entertaining enough to make up for the lack of plot."
	elseif cl == 435 then
    hideAll()
	bgUpdate('cg/n_cg1_base')
	persistent.clear[1] = 1
	if xaload == 1 then
		savepersistent()
	end
    mc "...Are you sure this isn't boring for you?"
	elseif cl == 436 then
	scriptJump(437)
	elseif cl == 437 then
    n "It's not!"
	elseif cl == 438 then
    mc "Even though you're just watching me read?"
	elseif cl == 439 then
    n "Well...!"
	elseif cl == 440 then
    n "I'm...fine with that."
	elseif cl == 441 then
    mc "If you say so..."
	elseif cl == 442 then
    mc "...I guess it's fun sharing something you like with someone else."
	elseif cl == 443 then
    mc "I always get excited when I convince any of my friends to pick up a series I enjoy."
	elseif cl == 444 then
    mc "You know what I mean?"
	elseif cl == 445 then
    n "...?"
	elseif cl == 446 then
    mc "Hm?"
	elseif cl == 447 then
    mc "You don't?"
	elseif cl == 448 then
    cgUpdate('n_cg1_exp2')
    n "Um..."
	elseif cl == 449 then
    n "That's not..."
	elseif cl == 450 then
    n "Well, I wouldn't really know."
	elseif cl == 451 then
    mc "...What do you mean?"
	elseif cl == 452 then
    mc "Don't you share your manga with your friends?"
	elseif cl == 453 then
	cgUpdate('n_cg1_exp3')
    n "Could you not rub it in?"
	elseif cl == 454 then
    n "Jeez..."
	elseif cl == 455 then
    mc "Ah... Sorry..."
	elseif cl == 456 then
    n "Hmph."
	elseif cl == 457 then
    n "Like I could ever get my friends to read this..."
	elseif cl == 458 then
    n "They just think manga is for kids."
	elseif cl == 459 then
    n "I can't even bring it up without them being all like..."
	elseif cl == 460 then
    n "'Eh? You still haven't grown out of that yet?'"
	elseif cl == 461 then
    n "Makes me want to punch them in the face..."
	elseif cl == 462 then
    mc "Urgh, I know those kinds of people..."
	elseif cl == 463 then
    mc "Honestly, it takes a lot of effort to find friends who don't judge, much less friends who are also into it..."
	elseif cl == 464 then
    mc "I'm already kind of a loser, so I guess I gravitated toward the other losers over time."
	elseif cl == 465 then
    mc "But it's probably harder for someone like you..."
	elseif cl == 466 then
	cgHide()
    n "Hm."
	elseif cl == 467 then
    n "Yeah, that's pretty accurate."
	elseif cl == 468 then
    bl "...Wait, which part??"
	elseif cl == 469 then
    n "I mean, I feel like I can't even keep it in my own room..."
	elseif cl == 470 then
	style_edited = true
	n "My dad would beat the shit out of me if he found this."
	elseif cl == 471 then
    style_edited = false
    n "At least it's safe here in the clubroom."
	elseif cl == 472 then
	cgUpdate('n_cg1_exp3')
    n "'Cept Monika's kind of a jerk about it..."
	elseif cl == 473 then
    n "Ugh! I just can't win, can I?"
	elseif cl == 474 then
    mc "Well, it paid off in the end, didn't it?"
	elseif cl == 475 then
    mc "I mean, here I am, reading it."
	elseif cl == 476 then
    n "Well, it's not like that solves any of my problems."
	elseif cl == 477 then
    mc "Maybe..."
	elseif cl == 478 then
    mc "But at least you're enjoying yourself, right?"
	elseif cl == 479 then
    cgUpdate('n_cg1_exp2')
    n "--"
	elseif cl == 480 then
    n "..."
	elseif cl == 481 then
    n "...So?"
	elseif cl == 482 then
    mc "Ahaha."
	elseif cl == 483 then
    cgUpdate('n_cg1_exp3')
    n "Jeez, that's enough!"
	elseif cl == 484 then
    n "Are you gonna keep reading, or what?"
	elseif cl == 485 then
    mc "Yeah, yeah..."
	elseif cl == 486 then
    bl "I flip the page."
	elseif cl == 487 then
	cgHide()
	event_initstart('wipe','black')
	elseif cl == 488 then
    bl "..."
	elseif cl == 489 then
    bl "..."
	elseif cl == 490 then
    bl "....."
	elseif cl == 491 then
    bl "......."
	elseif cl == 492 then
    bl "........."
	elseif cl == 493 then
    bl "Time passes."
	elseif cl == 494 then
    bl "Natsuki is strangely quiet now."
	elseif cl == 495 then
    bl "I glance over at her."
	elseif cl == 496 then
	bgUpdate('cg/n_cg1_base')
	cgUpdate('n_cg1_exp4')
    bl "It looks like she's started to fall asleep."
	elseif cl == 497 then
    mc "Hey, Natsuki..."
	elseif cl == 498 then
	cgUpdate('n_cg1_exp5')
    n "Y-Yeah...?"
	elseif cl == 499 then
    bl "Suddenly, Natsuki collapses straight into me."
	elseif cl == 500 then
	sfxplay('fall')
    mc "H-Hey--"
	
	elseif cl == 501 then
	cgHide()
	bgUpdate('cg/n_cg1b')
	audioUpdate('6g')
	event_initstart('n_rects_ghost')
    style_edited = true
    cw('n',ntext)
	elseif cl == 502 then
    cw('n',ntext2)

	elseif cl == 503 then
	event_end()
	audioUpdate('0')
	bgUpdate('club')
	updateMonika('1','r',80)
	style_edited = false
    m "Oh jeez..."
	elseif cl == 504 then
	updateMonika('1','d')
    m "Natsuki, are you okay?"
    elseif cl == 505 then
	updateMonika('1','d',10)
	updateNatsuki('1','2b',150)
    n "..."
    elseif cl == 506 then
	updateMonika('1','a')
    m "Here..."
	elseif cl == 507 then
    bl "Monika reaches into her bag and pulls out some kind of protein bar."
	elseif cl == 508 then
    bl "She throws it in Natsuki's direction."
	elseif cl == 509 then
    bl "Natsuki's eyes suddenly light up again."
	elseif cl == 510 then
    bl "She snatches the bar from the floor and immediately tears off the wrapper."
	elseif cl == 511 then
	updateNatsuki('1','s')
    n "I told you not to give mmph..."
	elseif cl == 512 then
    bl "She doesn't even finish her sentence before stuffing it into her mouth."
	elseif cl == 513 then
	hideNatsuki()
	updateMonika('3','b',80)
    cw('m',"Don't worry, "..player..".")
	elseif cl == 514 then
    m "She's fine."
	elseif cl == 515 then
    m "It just happens every now and then."
	elseif cl == 516 then
	updateMonika('1','a')
    m "That's why I always keep a snack in my bag for her."
	elseif cl == 517 then
	updateMonika('5a')
    m "Anyway...!"
	elseif cl == 518 then
    m "Why don't we all share poems now?"
	elseif cl == 519 then
	poeminitialize()
	end
end