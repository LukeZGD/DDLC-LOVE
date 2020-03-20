function ch5script()
	if cl > 800 then
		scriptJump(1)
	elseif cl == 1 then
	audioUpdate('0')
	bgUpdate('residential')
	bl "It's the day of the festival."
	elseif cl == 2 then
	bl "Of all days, I expected this to be the one where I'd be walking to school with Sayori."
	elseif cl == 3 then
	bl "But Sayori isn't answering her phone."
	elseif cl == 4 then
	bl "I considered going to her house to wake her up, but decided that's a little too much."
	elseif cl == 5 then
	bl "Meanwhile, the preparations for the event should be nearly complete."
	elseif cl == 6 then
		if savevalue == "Natsuki" then
			bl "I managed to carry all the cupcakes myself by carefully stacking two trays."
		else
			bl "The banner Yuri and I painted is dry, and I gently rolled it up to take with me."
		end
	elseif cl == 7 then
		if savevalue == 'Natsuki' then
			bl "Natsuki is already texting up a storm, but I can't respond, thanks to my hands being full."
		else
			bl "She sent me a pleasant text reminding me not to forget anything, and I reassured her."
		end
	elseif cl == 8 then
	bl "Funnily enough, I probably feel the same way as Natsuki about the event."
	elseif cl == 9 then
	cw('bl',"I'm more excited for it to be over so I can spend time with Sayori and "..savevalue.." at the festival.")
	elseif cl == 10 then
	bl "But knowing Monika, I'm sure the event will be great, too."
	
	elseif cl == 11 then
	bgUpdate('club')
	updateMonika('5a','',80)
	cw('m',player.."!")
	elseif cl == 12 then
	m "You're the first one here."
	elseif cl == 13 then
	m "Thanks for being early!"
	elseif cl == 14 then
	mc "That's funny, I thought at least Yuri would be here by now."
	elseif cl == 15 then
	bl "Monika is placing little booklets on each of the desks in the classroom."
	elseif cl == 16 then
	bl "They must be the ones she prepared that have all the poems we're performing.."
	elseif cl == 17 then
	bl "In the end, I found a random poem online that I thought Monika would like, and submitted it."
	elseif cl == 18 then
	bl "So, that's the one I'll be performing."
	elseif cl == 19 then
	updateMonika('1','d')
	m "I'm surprised you didn't bring Sayori with you."
	elseif cl == 20 then
	mc "Yeah, she overslept again..."
	elseif cl == 21 then
	mc "That dummy."
	elseif cl == 22 then
	mc "You'd think that on days this important, she'd try a little harder..."
	elseif cl == 23 then
	bl "I say that, but I suddenly remember what Sayori told me yesterday..."
	elseif cl == 24 then
	bl "And I suddenly feel awful, knowing it's not nearly that simple for her."
	elseif cl == 25 then
	bl "I only said it because it's the way I'm used to thinking."
	elseif cl == 26 then
	bl "But..."
	elseif cl == 27 then
	bl "Maybe I should have gone to wake her up after all?"
	elseif cl == 28 then
	updateMonika('1','k')
	m "Ahaha."
	elseif cl == 29 then
	updateMonika('4','b')
	cw('m',"You should take a little responsibility for her, "..player.."!")
	elseif cl == 30 then
	m "I mean, especially after your exchange with her yesterday..."
	elseif cl == 31 then
	m "You kind of left her hanging this morning, you know?"
	elseif cl == 32 then
	updateMonika('4','a')
	mc "Exchange...?"
	elseif cl == 33 then
	mc "Monika-- You know about that??"
	elseif cl == 34 then
	updateMonika('2','a')
	m "Of course I do."
	elseif cl == 35 then
	m "I'm the club president, after all."
	elseif cl == 36 then
	mc "But--!"
	elseif cl == 37 then
	bl "I stammer, embarrassed."
	elseif cl == 38 then
	bl "Did Sayori really tell her about it that quickly?"
	elseif cl == 39 then
		if choicepick == 's_yes' then
			bl "That we're...a couple now?"
		else
			bl "About how I basically turned down her confession?"
		end
	elseif cl == 40 then
		if choicepick == 's_yes' then
			bl "I didn't really plan on bringing it up with anyone yet..."
		else
			bl "That makes me really seem like the bad guy here..."
		end
	elseif cl == 41 then
		if choicepick == 's_yes' then
			scriptJump(42)
		else
			bl "But I'm the one who knows what's best for her, right?"
		end
	
	elseif cl == 42 then
	mc "Jeez..."
	elseif cl == 43 then
	mc "You don't know the full story at all, so..."
	elseif cl == 44 then
	updateMonika('2','j')
	m "Don't worry."
	elseif cl == 45 then
	m "I probably know a lot more than you think."
	elseif cl == 46 then
	mc "Eh...?"
	elseif cl == 47 then
	bl "Monika is being as friendly as usual, but for some reason I felt a chill down my spine after hearing that."
	elseif cl == 48 then
	updateMonika('5a')
	m "Hey, do you want to check out the pamphlets?"
	elseif cl == 49 then
	m "They came out really nice!"
	elseif cl == 50 then
	mc "Yeah, sure."
	elseif cl == 51 then
	bl "I grab one of the pamphlets laid out on the desks."
	elseif cl == 52 then
	mc "Oh yeah, they really did."
	elseif cl == 53 then
	mc "Something like this will definitely help people take the club more seriously."
	elseif cl == 54 then
	m "Yeah, I thought so too!"
	elseif cl == 55 then
	hideMonika()
	bl "I flip through the pages."
	elseif cl == 56 then
	bl "Each member's poem is neatly printed on its own page, giving it an almost professional feel."
	elseif cl == 57 then
	bl "I recognize Natsuki's and Yuri's poems from the ones they performed during our practice."
	elseif cl == 58 then
	mc "What's this...?"
	elseif cl == 59 then
	bl "I flip to Sayori's poem."
	elseif cl == 60 then
	bl "It's different from the one she practiced."
	elseif cl == 61 then
	bl "It's one that I haven't read before..."
	elseif cl == 62 then
		if xaload == 0 then
			sfxplay('pageflip')
			require('scripts/'..settings.lang..'/poems')
		else
			poem('poem_s3')
		end
	elseif cl == 63 then
		scriptJump(64)
	elseif cl == 64 then
		poem_disable(0)
	mc "Ah--"
	elseif cl == 65 then
	bl "What is this...?"
	elseif cl == 66 then
	bl "Reading the poem, I get a pit in my stomach."
	elseif cl == 67 then
	updateMonika('1','d',80)
	cw('m',player.."?")
	elseif cl == 68 then
	m "What's wrong?"
	elseif cl == 69 then
	mc "Ah, nothing..."
	elseif cl == 70 then
	bl "This poem feels completely different from everything else Sayori's written."
	elseif cl == 71 then
	bl "But more than that..."
	elseif cl == 72 then
	mc "I-I changed my mind!"
	elseif cl == 73 then
	mc "I'm going to go get Sayori, so..."
	elseif cl == 74 then
	m "Ah--"
	elseif cl == 75 then
	updateMonika('1','b')
	m "Well, alright!"
	elseif cl == 76 then
	m "Try not to take too long, okay?"
	
	elseif cl == 77 then
	event_initstart('wipe','corridor')
	elseif cl == 78 then
	bl "I quickly leave the classroom."
	elseif cl == 79 then
	m "Don't strain yourself~"
	elseif cl == 80 then
	bl "Monika calls that out after me."
	elseif cl == 81 then
	bl "I quicken my pace."

	elseif cl == 82 then
	event_initstart('wipe','residential')
	elseif cl == 83 then
	bl "What was I thinking?"
	elseif cl == 84 then
	bl "I should have tried a little bit harder for Sayori."
	elseif cl == 85 then
	bl "It's not a big deal to at least wait for her, or help her wake up."
	elseif cl == 86 then
	bl "Even the simple gesture of walking her to school makes her really happy."
	elseif cl == 87 then
	bl "Besides..."
	elseif cl == 88 then
	bl "I told her yesterday that things will be the same as they always have been."
	elseif cl == 89 then
	bl "That's all she needs, and what I want to give her."
	
	elseif cl == 90 then
	event_initstart('wipe','house')
	elseif cl == 91 then
	bl "I reach Sayori's house and knock on the door."
	elseif cl == 92 then
	bl "I don't expect an answer, since she's not picking up her phone, either."
	elseif cl == 93 then
	bl "Like yesterday, I open the door and let myself in."
	elseif cl == 94 then
	bgUpdate('black')
	mc "Sayori?"
	elseif cl == 95 then
	bl "She really is a heavy sleeper..."
	elseif cl == 96 then
	bl "I swallow."
	elseif cl == 97 then
	bl "I can't believe I ended up doing this after all."
	elseif cl == 98 then
	bl "Waking her up in her own house..."
	elseif cl == 99 then
		if choicepick == 's_yes' then
			bl "That really is something that a boyfriend would do, isn't it?"
		else
			bl "Isn't that more like something a boyfriend would do?"
		end
	elseif cl == 100 then
	bl "In any case..."
	elseif cl == 101 then
	bl "It just feels right."
	elseif cl == 102 then
	bl "Outside Sayori's room, I knock on her door."
	elseif cl == 103 then
	mc "Sayori?"
	elseif cl == 104 then
	mc "Wake up, dummy..."
	elseif cl == 105 then
	bl "There's no response."
	elseif cl == 106 then
	bl "I really didn't want to have to enter her room like this..."
	elseif cl == 107 then
	bl "Isn't it kind of a breach of privacy?"
	elseif cl == 108 then
	bl "But she really leaves me no choice."
	elseif cl == 109 then
		cw('bl',"I gently open the door.")
		event_init('s_kill')
	elseif cl == 110 then
		persistent.ptr = 1
		persistent.chr.s = 0
		if xaload == 0 then
			savepersistent()
		end
		event_start('s_kill_start')
		cw('bl','.......Sayo--','slow')
	elseif cl == 111 then
		event_start('s_kill')
	elseif cl == 112 then
		event_start('s_kill2')
	elseif cl == 113 then
		event_start('s_killzoom')
		cw('bl',"What the hell...?")
	elseif cl == 114 then
		cw('bl',"What the hell??")
	elseif cl == 115 then
		cw('bl',"Is this a nightmare?")
	elseif cl == 116 then
		cw('bl',"It...has to be.")
	elseif cl == 117 then
		cw('bl',"This isn't real.")
	elseif cl == 118 then
		cw('bl',"There's no way this can be real.")
	elseif cl == 119 then
	bl "Sayori wouldn't do this."
	elseif cl == 120 then
	bl "Everything was normal up until a few days ago."
	elseif cl == 121 then
	bl "That's why I can't believe what my eyes are showing me...!"
	elseif cl == 122 then
	event_end('s_kill')
	event_start('black')
	bl "I suppress the urge to vomit." --line 307, known for the original exception error
	elseif cl == 123 then
	bl "Just yesterday..."
	elseif cl == 124 then
	bl "I told Sayori I would be there for her."
	elseif cl == 125 then
	bl "I told her I know what's best, and that everything will be okay."
	elseif cl == 126 then
	bl "Then why...?"
	elseif cl == 127 then
	bl "Why would she do this...?"
	elseif cl == 128 then
	bl "How could I be so helpless?"
	elseif cl == 129 then
	bl "What did I do wrong?"
	elseif cl >= 130 and cl < 135 then
		if choicepick == 's_yes' then
			if cl == 130 then 
			bl "Confessing to her..."
			elseif cl == 131 then
			bl "I shouldn't have confessed to her."
			elseif cl == 132 then
			bl "That's not what Sayori needed at all."
			elseif cl == 133 then
			bl "She even told me how painful it is for others to care about her."
			elseif cl == 134 then
			bl "Then why did I confess to her, and make her feel even worse?"
			end
		else
			if cl == 130 then
			bl "Turning down her confession..."
			elseif cl == 131 then
			bl "That has to have been what pushed her over the edge."
			elseif cl == 132 then
			bl "Her agonized scream still echoes in my ears."
			elseif cl == 133 then
			bl "Why did I do that to her when she needed me the most?"
			elseif cl == 134 then
			scriptJump(135)
			end
		end
	elseif cl == 135 then
	bl "Why was I so selfish?"
	elseif cl == 136 then
	bl "This is my fault--!"
	elseif cl == 137 then
	bl "My swarming thoughts keep telling me everything I could have done to prevent this."
	elseif cl == 138 then
	bl "If I just spent more time with her."
	elseif cl == 139 then
	bl "Walked her to school."
	elseif cl == 140 then
	if choicepick == 's_yes' then
		bl "And remained friends with her, like it always has been..."
	else
		bl "And gave her what I know she wanted out of our relationship..."
	end
	elseif cl == 141 then
	bl "...Then I could have prevented this."
	elseif cl == 142 then
	bl "I know I could have prevented this!"
	elseif cl == 143 then
	bl "Screw the Literature Club."
	elseif cl == 144 then
	bl "Screw the festival."
	elseif cl == 145 then
	bl "I just...lost my best friend."
	elseif cl == 146 then
	bl "Someone I grew up with."
	elseif cl == 147 then
	bl "She's gone forever now."
	elseif cl == 148 then
	bl "Nothing I do can bring her back."
	elseif cl == 149 then
	bl "This isn't some game where I can reset and try something different."
	elseif cl == 150 then
	bl "I had only one chance, and I wasn't careful enough."
	elseif cl == 151 then
	bl "And now I'll carry this guilt with me until I die."
	elseif cl == 152 then
	bl "Nothing in my life is worth more than hers..."
	elseif cl == 153 then
	bl "But I still couldn't do what she needed from me."
	elseif cl == 154 then
	bl "And now..."
	elseif cl == 155 then
	bl "I can never take it back."
	elseif cl == 156 then
	bl "Never."
	elseif cl == 157 then
	bl "Never."
	elseif cl == 158 then
	bl "Never."
	elseif cl == 159 then
	bl "Never."
	elseif cl == 160 then
	bl "Never..."
	elseif cl == 161 then
	event_end('next')
	elseif cl == 162 then
	event_initstart('endscreen')
	elseif cl == 163 then
	changeState('title')
	end
end
