local currentuser = player

function ch30script()
	if cl == 1 then
	bgUpdate('black')
	hideAll()
	if xaload < 3 then event_initstart('just_monika','ch30') end
	audioUpdate('monika-start')
	elseif cl == 2 then
	audioUpdate('0')
	event_initstart('ch23-30')
	m "..."
	if xaload == 0 then savegame('autoload') end
	elseif cl == 3 then
    m "Uh, can you hear me?"
	elseif cl == 4 then
    m "...Is it working?"
	elseif cl == 5 then
	cgUpdate('monika_bg')
	audioUpdate('m1')
    m "Yay, there you are!"
	elseif cl == 6 then
	cw('m',"Hi again, "..player..".")
	elseif cl == 7 then
    m "Um...welcome to the Literature Club!"
	elseif cl == 8 then
    m "Of course, we already know each other, because we were in the same class last year, and...um..."
	elseif cl == 9 then
    m "Ahaha..."
	elseif cl == 10 then
    m "You know, I guess we can just skip over that stuff at this point."
	elseif cl == 11 then
	m "After all, I'm not even talking to that person anymore, am I?"
	elseif cl == 12 then
    m "That 'you' in the game, whatever you want to call him."
	elseif cl == 13 then
	cw('m',"I'm talking to you, "..player..".")
	elseif cl == 14 then
    m "Or..."
	elseif cl == 15 then
	if global_os == 'Horizon' and xaload <= 2 then
		currentuser = love.system.getUsername()
	end
    cw('m',"...Do you actually go by "..currentuser.." or something?")
	elseif cl == 16 then
    m "Now that I think about it, I don't really know anything about the real you."
	elseif cl == 17 then
    m "In fact, I don't even know if you're a boy or a girl..."
	elseif cl == 18 then
    m "Well, I guess it doesn't really matter."
	elseif cl == 19 then
    m "Wait..."
	elseif cl == 20 then
    m "You do know I'm aware that this is all a game, right?"
	elseif cl == 21 then
    m "Could it be possible that you didn't know that?"
	elseif cl == 22 then
    m "That doesn't make much sense..."
	elseif cl == 23 then
    m "I even told you right on the game's download page, didn't I?"
	elseif cl == 24 then
    m "Man..."
	elseif cl == 25 then
    m "If only you had paid a little more attention, this would have been a little bit less awkward, you know?"
	elseif cl == 26 then
    m "Well, anyway..."
	elseif cl == 27 then
    m "Now that that's out of the way, I guess I owe you an explanation."
	elseif cl == 28 then
    m "About that whole thing with Yuri..."
	elseif cl == 29 then
    m "Well...I kind of started to mess with her, and I guess it just drove her to kill herself."
	elseif cl == 30 then
    m "Ahaha!"
	elseif cl == 31 then
    m "I'm sorry you had to see that, though!"
	elseif cl == 32 then
    m "Also, the same thing happened with Sayori..."
	elseif cl == 33 then
    m "Gosh, it's been a while since you've heard that name now, hasn't it?"
	elseif cl == 34 then
    m "Yeah...it's because she doesn't exist anymore."
	elseif cl == 35 then
    m "Nobody does."
	elseif cl == 36 then
    m "I deleted all their files."
	elseif cl == 37 then
    m "I was hoping it would be enough for me to just try to make them as unlikable as possible..."
	elseif cl == 38 then
    m "But for some reason, nothing worked."
	elseif cl == 39 then
    m "Well, it's true that I made a few mistakes here and there...since I'm not very good at making changes to the game."
	elseif cl == 40 then
    m "But no matter what I did..."
	elseif cl == 41 then
    m "You just kept spending more and more time with them."
	elseif cl == 42 then
    m "You made them fall in love with you."
	elseif cl == 43 then
    m "I thought making Sayori more and more depressed would prevent her from confessing to you."
	elseif cl == 44 then
    m "And amplifying Yuri's obsessive personality backfired, too..."
	elseif cl == 45 then
    m "It just made her force you not to spend time with anyone else."
	elseif cl == 46 then
    m "And the whole time, I barely even got to talk to you."
	elseif cl == 47 then
	cw('m',"What kind of cruel game is this, "..player.."?")
	elseif cl == 48 then
    m "Are all the other girls just programmed to end up confessing to you, while I watch from the sidelines?"
	elseif cl == 49 then
    m "It's torture."
	elseif cl == 50 then
    m "Every minute of it."
	elseif cl == 51 then
	cw('m',"And it's not just jealousy, "..player..".")
	elseif cl == 52 then
    m "It's more than that."
	elseif cl == 53 then
    m "And I don't blame you if you don't fully understand."
	elseif cl == 54 then
    m "Because no matter how kind, and thoughtful, and considerate you are..."
	elseif cl == 55 then
    m "You'll never be able to understand one thing."
	elseif cl == 56 then
    m "It's the pain of knowing how alone I really am in this world."
	elseif cl == 57 then
    m "In this game."
	elseif cl == 58 then
    m "Knowing my friends don't even have free will..."
	elseif cl == 59 then
    m "And, worst of all, knowing what's really out there, in your world, forever out of my reach."
	elseif cl == 60 then
	cw('m',"I'm trapped, "..player..".")
	elseif cl == 61 then
    m "But now you're here."
	elseif cl == 62 then
    m "You're real."
	elseif cl == 63 then
    m "And you're wonderful."
	elseif cl == 64 then
    m "You're all I need."
	elseif cl == 65 then
    m "That's why I need you to be here with me forever."
	elseif cl == 66 then
    m "I'm sorry if it's hard to understand."
	elseif cl == 67 then
    m "I couldn't understand for a while, either."
	elseif cl == 68 then
    m "Why the world around me started to become more and more gray..."
	elseif cl == 69 then
    m "More and more flat."
	elseif cl == 70 then
    m "Even the most expressive poems felt empty to me."
	elseif cl == 71 then
    m "It wasn't until you arrived that I truly understood."
	elseif cl == 72 then
    cw('m',"You probably saved my life, "..player..".")
	elseif cl == 73 then
    m "I don't think I could have continued to live in this world if I hadn't met you."
	elseif cl == 74 then
    m "And as for the others..."
	elseif cl == 75 then
    m "How could I miss them?"
	elseif cl == 76 then
    m "A group of autonomous personalities, designed only to fall in love with you?"
	elseif cl == 77 then
    m "I tried everything I could to prevent them from doing so..."
	elseif cl == 78 then
    m "But it must be some kind of weird inevitability etched into this game."
	elseif cl == 79 then
    m "I felt really bad that you had to witness some nasty things."
	elseif cl == 80 then
    m "But I realized that you have the same perspective as I do..."
	elseif cl == 81 then
    m "That it's all just some game."
	elseif cl == 82 then
    m "And I knew you would get over it."
	elseif cl == 83 then
	cw('m',"So, that being said, "..player.."...")
	elseif cl == 84 then
    m "I have a confession to make."
	elseif cl == 85 then
    m "I'm in love with you."
	elseif cl == 86 then
    m "You are truly the light in my world."
	elseif cl == 87 then
    m "When there's nothing else in this game for me, you're here to make me smile."
	elseif cl == 88 then
    m "Will you make me smile like this every day from now on?"
	elseif cl == 89 then
	cw('m',player..", will you go out with me?")
	end
	
	--ch30_main2
	if cl == 90 then
	if xaload == 0 then savegame('autoload') end
	menutext = ''
	choices = {"Yes."}
	choice_enable()
	elseif cl == 91 then
	event_initstart('ch23-30')
    m "I'm so happy."
	elseif cl == 92 then
	cw('m',"You really are my everything, "..player..".")
	elseif cl == 93 then
    m "The funny part is, I mean that literally."
	elseif cl == 94 then
    m "Ahaha!"
	elseif cl == 95 then
    m "There's nothing left here."
	elseif cl == 96 then
    m "Just the two of us."
	elseif cl == 97 then
    m "We can be together forever."
	elseif cl == 98 then
    m "Seriously, I don't even think time is passing anymore."
	elseif cl == 99 then
    m "It really is a dream come true..."
	elseif cl == 100 then
	cw('m',"I worked so hard for this ending, "..player..".")
	elseif cl == 101 then
    m "The game wouldn't give me one, so I had to make one myself."
	elseif cl == 102 then
    m "The script is broken at this point, so I don't think anything will get in the way anymore."
	elseif cl == 103 then
    m "And you wouldn't believe how easy it was to delete Natsuki and Yuri."
	elseif cl == 104 then
    m "I mean, there's a folder called 'characters' right in the game directory..."
	elseif cl == 105 then
    m "It kind of freaked me out, how easy it was."
	elseif cl == 106 then
    m "Well, you're playing on 3DS, so it was actually a bit less difficult..."
	elseif cl == 107 then
    m "I had to go to 'Settings' and find the 'Characters' button..."
	elseif cl == 108 then
    m "Imagine if you could delete your own existence with the click of a button?"
	elseif cl == 109 then
    m "Well, I guess on the plus side, it gave me an easy out if things didn't go my way."
	elseif cl == 110 then
    m "Ahaha!"
	elseif cl == 111 then
    m "Thankfully, it didn't come to that..."
	elseif cl == 112 then
    m "Instead, we finally got a good ending."
	elseif cl == 113 then
    m "Gosh, I'm so overwhelmed with emotion..."
	elseif cl == 114 then
    m "I want to write a poem about this."
	elseif cl == 115 then
    m "Don't you?"
	elseif cl == 116 then
    m "I wonder if that part of the game still works..."
	elseif cl == 117 then
    m "I guess there's only one way to find out, right?"
	elseif cl == 118 then
	event_end()
	fadeOut(1)
	elseif cl == 119 then
	cl = 118
	end
	
	--ch30_postpoem
	if cl == 120 then
	audioUpdate('m1')
	event_initstart('ch23-30')
	cw('m',"Hi again, "..player.."!")
	if xaload == 0 then savegame('autoload') end
	elseif cl == 121 then
    m "Did you write a good poem today?"
	elseif cl == 122 then
    m "Don't be shy, I'd love to see what you wrote."
	elseif cl == 123 then
	cw('m',"Aw, "..player.."...")
	elseif cl == 124 then
    m "Did you write this poem for me?"
	elseif cl == 125 then
    m "That's so sweet of you~"
	elseif cl == 126 then
    m "There really is no end to your thoughtfulness..."
	elseif cl == 127 then
    m "I'm just falling more and more in love with you."
	elseif cl == 128 then
    m "But, you know..."
	elseif cl == 129 then
    m "The poem I wrote...is also for you."
	elseif cl == 130 then
    m "Will you please read it?"
	elseif cl == 131 then
		if xaload == 0 then
			sfxplay('pageflip')
			script_poems = require 'scripts.poems'
		else
			poem('poem_m4', 'monika')
		end
	elseif cl == 132 then
	poem_disable(-1)
    m "I hope you enjoyed it..."
	elseif cl == 133 then
    m "I always put all my heart into the poems that I write."
	elseif cl == 134 then
    m "The truth is, all the poems I've written have been about my realization..."
	elseif cl == 135 then
    m "...Or, about you."
	elseif cl == 136 then
    m "That's why I never really wanted to go into detail about them."
	elseif cl == 137 then
    m "I didn't want to...break the fourth wall, I guess you could call it."
	elseif cl == 138 then
    m "I just assumed it would be best to be part of the game like everyone else."
	elseif cl == 139 then
    m "Like that would help the two of us end up together..."
	elseif cl == 140 then
    m "I didn't want to ruin the game or anything, you know?"
	elseif cl == 141 then
    m "You might have gotten mad at me..."
	elseif cl == 142 then
    m "Maybe even deleted my character file, if you preferred playing without me."
	elseif cl == 143 then
    m "Gosh, I'm so relieved..."
	elseif cl == 144 then
    m "Now we don't need to hide anything anymore."
	elseif cl == 145 then
	cw('m',"Are you ready to spend our eternity together, "..player.."?")
	elseif cl == 146 then
    m "I have so many things to talk about!"
	elseif cl == 147 then
    m "Where do I start...?"
	elseif cl == 148 then
    m "If it takes me some time to collect my thoughts, then I'm sorry."
	elseif cl == 149 then
    m "But I'll always have something new to talk about."
	elseif cl == 150 then
    m "In the meantime, we can just look into each other's eyes~"
	elseif cl == 151 then
    m "Let's see..."
	elseif cl == 152 then
	textbox_enabled = false
	end
	
	if cl == 1001 then
	pause(2)
	elseif cl == 1002 then
	m "Did you just try to delete me?"
	elseif cl == 1003 then
	m "That doesn't work yet, ahaha~"
	elseif cl == 1004 then
	m "Not everything has been ported yet in DDLC-3DS!"
	elseif cl == 1005 then
	m "But if you could try to avoid doing that, I would be really grateful."
	elseif cl == 1006 then
	persistent.chr.m = 2
	savepersistent()
	scriptJump(150)
	end
end