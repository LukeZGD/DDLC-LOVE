local y_gtimer = 0

function yuri_glitch2()
	local dt = love.timer.getDelta()
	y_gtimer = y_gtimer + dt
	if y_gtimer > 1.2 and y_gtimer < 1.25 then
		updateYuri('1','a')
		xaload = -1
	elseif y_gtimer > 0.9 and y_gtimer < 0.95  then
		updateYuri('0a')
		xaload = -1
	elseif y_gtimer > 0.6 and y_gtimer < 0.65 then
		updateYuri('0b')
		xaload = -1
	elseif y_gtimer < 0.1 then
		updateYuri('0a')
		xaload = -1
	end
end

function ch21script(dt)
	if cl == 299 then
	bgUpdate('club_day2')
	audioUpdate('2g2')
	updateMonika('5a','',80)
	cw('m',"Hi again, "..player.."!")
	elseif cl == 300 then
    m "Glad to see you didn't run away on us. Hahaha!"
	elseif cl == 301 then
    mc "Nah, don't worry."
	elseif cl == 302 then
    mc "This might be a little strange for me, but I at least keep my word."
	elseif cl == 303 then
	hideMonika()
    bl "Well, I'm back at the Literature Club."
	elseif cl == 304 then
    bl "I was the last to come in, so everyone else is already hanging out."
	elseif cl == 305 then
	yuri_glitch2()
	y_Set.x = 80
	cw('y',"Thanks for keeping your promise, "..player..".")
	elseif cl == 306 then
	y_gtimer = 0
	updateYuri('1','a')
    y "I hope this isn't too overwhelming of a commitment for you."
	elseif cl == 307 then
	updateYuri('1','u')
    y "Making you dive headfirst into literature when you're not accustomed to it..."
	elseif cl == 308 then
	event_initstart('n_glitch1')
    elseif cl == 309 then
	n_Set.x = 200
	updateNatsuki('4','e',200,0)
    n "Oh, come on! Like he deserves any slack."
	elseif cl == 310 then
    n "You already had to be dragged here by Monika."
	elseif cl == 311 then
    n "I don't know if you plan to just come here and hang out, or what..."
	elseif cl == 312 then
    n "But if you don't take us seriously, then you won't see the end of it."
	elseif cl == 313 then
	event_initstart('m_onlayer_front')
	updateMonika('2','b',-40)
    m "Natsuki, you certainly have a big mouth for someone who keeps her manga collection in the clubroom."
	elseif cl == 314 then
	updateNatsuki('4','o')
    n "M-M-M...!!"
	elseif cl == 315 then
	event_end()
	hideMonika()
    bl "Natsuki finds herself stuck between saying \"Monika\" and \"Manga\"."
    elseif cl == 316 then
	updateNatsuki('1','v')
    n "Manga is literature!!"
	elseif cl == 317 then
	hideNatsuki()
    bl "Swiftly defeated, Natsuki plops back into her seat."
	elseif cl == 318 then
	updateYuri('2','s')
    cw('y',"I'm sorry, "..player.."...")
	elseif cl == 319 then
    y "We'll make sure to put your comfort first, okay?"
	elseif cl == 320 then
	updateYuri('2','g')
    bl "Yuri shoots Natsuki with a disappointed glance."
	elseif cl == 321 then
	updateYuri('1','a')
    y "Um, anyway..."
	elseif cl == 322 then
    y "Now that you're in the club and all..."
	elseif cl == 323 then
    y "...Perhaps you might have interest in picking up a book to read?"
	elseif cl == 324 then
    mc "Well..."
	elseif cl == 325 then
    mc "I can't really say no either way."
	elseif cl == 326 then
    mc "Like you said, I'm in this club now."
	elseif cl == 327 then
    mc "So it only feels right for me to do something like that, if you ask."
	elseif cl == 328 then
	updateYuri('4','b2')
    y "W-Wait..."
	elseif cl == 329 then
    y "I didn't mean it like that!"
	elseif cl == 330 then
    y "Uu..."
	elseif cl == 331 then
    y "If you don't really want to, then forget I said anything, I guess..."
	elseif cl == 332 then
    mc "Ah--No, it's not that, Yuri."
	elseif cl == 333 then
    mc "I want to try to be a part of this club."
	elseif cl == 334 then
    mc "So even if I don't read often, I'd be happy to pick up a book if you wanted me to."
	elseif cl == 335 then
	updateYuri('3','t')
    y "A-Are you sure...?"
	elseif cl == 336 then
    y "I just felt like..."
	elseif cl == 337 then
	updateYuri('3','u')
    y "...Well, as Vice President and all..."
	elseif cl == 338 then
    y "...That I should help you get started on something you might like."
	elseif cl == 339 then
    bl "Yuri reaches into her bag and pulls out a book."
	elseif cl == 340 then
	updateYuri('1','s')
    y "I didn't want you to feel left out..."
	elseif cl == 341 then
    y "So I picked out a book that I thought you might enjoy."
	elseif cl == 342 then
    y "It's a short read, so it should keep your attention, even if you don't usually read."
	elseif cl == 343 then
    y "And we could, you know..."
	elseif cl == 344 then
	updateYuri('4','b2')
    y "Discuss it...if you wanted..."
	elseif cl == 345 then
    bl "Th-This is..."
	elseif cl == 346 then
    bl "How is this girl accidentally being so cute?"
	elseif cl == 347 then
    bl "She even picked out a book she thinks I'll like, despite me not reading much..."
	elseif cl == 348 then
    mc "Yuri, thank you! I'll definitely read this!"
	elseif cl == 349 then
    bl "I enthusiastically take the book."
	elseif cl == 350 then
	updateYuri('2','m')
    y "Phew..."
	elseif cl == 351 then
	updateYuri('2','a')
    y "Well, you can read it at your own pace."
	elseif cl == 352 then
    y "I look forward to hearing what you think."
	elseif cl == 353 then
	hideYuri()
    bl "Now that everyone's settled in, I expected Monika to kick off some scheduled activities for the club."
	elseif cl == 354 then
    bl "But that doesn't seem to be the case."
	elseif cl == 355 then
    bl "Yuri's face is already buried in a book."
	elseif cl == 356 then
    bl "I can't help but notice her intense expression, like she was waiting for this chance."
	elseif cl == 357 then
    bl "Meanwhile, Natsuki is rummaging around in the closet."
	end
end