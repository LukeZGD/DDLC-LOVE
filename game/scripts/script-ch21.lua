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

function ch21_endmenu()
	menutext = ''
	choices = {"Natsuki.","Yuri."}
	choice_enable()
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
	
	if cl == 900 then
	bgUpdate('club_day2')
	audioUpdate('3g')
	mc "Phew..."
	elseif cl == 901 then
    bl "I guess that's everyone."
	elseif cl == 902 then
    bl "I glance around the room."
	elseif cl == 903 then
    bl "That was a little more stressful than I anticipated."
	elseif cl == 904 then
    bl "It's as if everyone is judging me for my mediocre writing abilities..."
	elseif cl == 905 then
    bl "Even if they're just being nice, there's no way my poems can stand up to theirs."
	elseif cl == 906 then
    bl "This is a literature club, after all."
	elseif cl == 907 then
    bl "I sigh."
	elseif cl == 908 then
    bl "I guess that's what I ended up getting myself into."
	elseif cl == 909 then
    bl "Across the room, Monika is writing something in her notebook."
	elseif cl == 910 then
    bl "My eyes land on Yuri and Natsuki."
	elseif cl == 911 then
	updateYuri('2','g',10)
	updateNatsuki('1','g',150)
    bl "They gingerly exchange sheets of paper, sharing their respective poems."
	elseif cl == 912 then
	updateYuri('2','i')
    bl "As they read in tandem, I watch each of their expressions change."
	elseif cl == 913 then
    bl "Natsuki's eyebrows furrow in frustration."
	elseif cl == 914 then
    bl "Meanwhile, Yuri smiles sadly."
	elseif cl == 915 then
	updateNatsuki('1','q')
    n "(What's with this language...?)"
	elseif cl == 916 then
    updateYuri('2','f')
    y "Eh?"
	elseif cl == 917 then
    y "Um...did you say something?"
	elseif cl == 918 then
	updateNatsuki('2','c')
    n "Oh, it's nothing."
	elseif cl == 919 then
    bl "Natsuki dismissively returns the poem to the desk with one hand."
	elseif cl == 920 then
    n "I guess you could say it's fancy."
	elseif cl == 921 then
	updateYuri('2','i')
    y "Ah-- Thanks..."
	elseif cl == 922 then
    y "Yours is...cute..."
	elseif cl == 923 then
	updateNatsuki('2','h')
    n "Cute?"
	elseif cl == 924 then
	updateYuri('1','h')
    n "Did you completely miss the symbolism or something?"
	elseif cl == 925 then
    n "It's clearly about the feeling of giving up."
	elseif cl == 926 then
    n "How can that be cute?"
	elseif cl == 927 then
	updateYuri('3','f')
    y "I-I know that!"
	elseif cl == 928 then
    y "I just meant..."
	elseif cl == 929 then
	updateYuri('3','h')
    y "The language, I guess..."
	elseif cl == 930 then
    y "I was trying to say something nice..."
	elseif cl == 931 then
    n "Eh?"
	elseif cl == 932 then
	updateNatsuki('4','w')
    n "You mean you have to try that hard to come up with something nice to say?"
	elseif cl == 933 then
    n "Thanks, but it really didn't come out nice at all!"
	elseif cl == 934 then
	updateYuri('1','i')
    y "Um..."
	elseif cl == 935 then
    y "Well, I do have a couple suggestions..."
	elseif cl == 936 then
	updateNatsuki('5','x')
    n "Hmph."
	elseif cl == 937 then
    n "If I was looking for suggestions, I would have asked someone who actually liked it."
	elseif cl == 938 then
    n "Which people did, by the way."
	elseif cl == 939 then
	updateNatsuki('5','e')
    n "Monika liked it."
	elseif cl == 940 then
	cw('n',"And "..player.." did, too!")
	elseif cl == 941 then
    n "So based on that, I'll gladly give you some suggestions of my own."
	elseif cl == 942 then
    n "First of all--"
	elseif cl == 943 then
	updateYuri('2','l')
    y "Excuse me..."
	elseif cl == 944 then
    y "I appreciate the offer, but I've spent a long time establishing my writing style."
	elseif cl == 945 then
	updateYuri('2','h')
    y "I don't expect it to change anytime soon, unless of course I come across something particularly inspiring."
	elseif cl == 945 then
    y "Which I haven't yet."
	elseif cl == 946 then
	updateNatsuki('1','o')
    n "Nn...!"
	elseif cl == 947 then
	updateYuri('1','k')
	cw('y',"And "..player.." liked my poem too, you know.")
	elseif cl == 948 then
    y "He even told me he was impressed by it."
	elseif cl == 949 then
	audioUpdate('0')
    bl "Natsuki suddenly stands up."
	elseif cl == 950 then
	updateNatsuki('4','y')
    n "Oh?"
	elseif cl == 951 then
    n "I didn't realize you were so invested in trying to impress our new member, Yuri."
	elseif cl == 952 then
	audioUpdate('7')
	updateYuri('1','n')
    y "E-Eh?!"
	elseif cl == 953 then
    y "That's not what I...!"
	elseif cl == 954 then
	updateYuri('1','o')
    y "Uu..."
	elseif cl == 955 then
    y "You...You're just..."
	elseif cl == 956 then
	bl "Yuri stands up as well."
	elseif cl == 957 then
	updateYuri('2','r')
	cw('y',"Maybe you're just jealous that "..player.." appreciates my advice more than he appreciated yours!")
	elseif cl == 958 then
	updateNatsuki('1','e')
    n "Huh! And how do you know he didn't appreciate my advice more?"
	elseif cl == 959 then
    n "Are you that full of yourself?"
	elseif cl == 960 then
	updateYuri('3','h')
    y "I...!"
	elseif cl == 961 then
    y "No..."
	elseif cl == 962 then
    y "If I was full of myself..."
	elseif cl == 963 then
	updateYuri('1','r')
    y "...I would deliberately go out of my way to make everything I do overly cutesy!"
	elseif cl == 964 then
	updateNatsuki('1','o')
    n "Uuuuuu...!"
	elseif cl == 965 then
    n "Well, you know what?!"
	elseif cl == 966 then
    cw('n',"I wasn't the one whose boobs magically grew a size bigger as soon as "..player.." started showing up!!")
	elseif cl == 967 then
	updateYuri('3','p')
    y "N-Natsuki!!"
	elseif cl == 968 then
	updateMonika('3','l',-40)
	updateYuri('3','p',200)
	updateNatsuki('1','o',80)
    m "Um, Natsuki, that's a little--"
	elseif cl == 969 then
	cw('ny',"This doesn't involve you!")
	event_init('ny_argument')
	elseif cl == 970 then
	hideMonika()
	updateYuri('2','h',150)
	updateNatsuki('1','o',10)
	audioUpdate('7g')
	event_start('ny_argument')
    y "Taking out your own insecurities on others like that..."
	elseif cl == 971 then
    y "You really act as young as you look, Natsuki."
	elseif cl == 972 then
	updateNatsuki('4','o')
	n "Me? Look who's talking, you wannabe edgy bitch!"
    elseif cl == 973 then
    y "Edgy...?"
	elseif cl == 974 then
	updateYuri('2','r')
    y "Sorry that my lifestyle is too much for someone of your mental age to comprehend!"
    elseif cl == 975 then
	updateNatsuki('4','f')
    n "See??"
	elseif cl == 976 then
    n "Just saying that proves my point!"
	elseif cl == 977 then
	updateNatsuki('4','e')
    n "Most people learn to get over themselves after they graduate middle school, you know."
    elseif cl == 978 then
    y "If you want to prove anything, then stop harassing others with your sickening attitude!"
	elseif cl == 979 then
    y "You think you can counterbalance your toxic personality just by dressing and acting cute?"
	elseif cl == 980 then
	updateYuri('1','k')
    y "The only cute thing about you is how hard you try."
	elseif cl == 981 then
	updateNatsuki('2','y')
    n "Whoa, be careful or you might cut yourself on that edge, Yuri."
	elseif cl == 982 then
    n "Oh, my bad... You already do, don't you?"
	elseif cl == 983 then
	updateYuri('3','n')
    y "D-Did you just accuse me of cutting myself??"
	elseif cl == 984 then
	updateYuri('3','r')
    y "What the fuck is wrong with your head?!"
	elseif cl == 985 then
	updateNatsuki('1','e')
    n "Yeah, go on!"
	elseif cl == 986 then
	cw('n',"Let "..player.." hear everything you really think!")
	elseif cl == 987 then
    n "I'm sure he'll be head over heels for you after this!"
	elseif cl == 988 then
	updateYuri('3','n')
    y "A-Ah--!"
    elseif cl == 989 then
    bl "Suddenly, Yuri turns toward me, as if she just noticed I was standing here."
    elseif cl == 990 then
	updateYuri('2','n')
	cw('y',player.."...!")
	elseif cl == 991 then
    y "She-- She's just trying to make me look bad...!"
	elseif cl == 992 then
	updateNatsuki('4','w')
    n "That's not true!"
	elseif cl == 993 then
    n "She started it!"
	elseif cl == 994 then
	updateNatsuki('1','g')
	updateYuri('1','t')
    mc "..."
	elseif cl == 995 then
	style_edited = true
    cw('bl',"How did I get dragged into this in the first place?!",'nwfast')
	elseif cl == 996 then
    cw('bl',"It's not like I know anything about writing...",'nwfast')
	elseif cl == 997 then
    cw('bl',"But whomever I agree with, they'll probably think more highly of me!",'nwfast')
	elseif cl == 998 then
    cw('bl',"So, of course that's going to be...!",'nwfast')
	elseif cl == 999 then
	ch21_endmenu()
	elseif cl == 1000 then
	sfxplay('s_kill_glitch1s')
	if xaload > 0 then ch21_endmenu() end
	elseif cl == 1001 then
	sfxplay('s_kill_glitch1s')
	if xaload > 0 then ch21_endmenu() end
	elseif cl == 1002 then
	sfxplay('s_kill_glitch1s')
	if xaload > 0 then ch21_endmenu() end
	elseif cl == 1003 then
	sfxplay('s_kill_glitch1s')
	if xaload > 0 then ch21_endmenu() end
	elseif cl == 1004 then
	sfxplay('s_kill_glitch1s')
	if xaload > 0 then ch21_endmenu() end
	elseif cl == 1005 then
	sfxplay('s_kill_glitch1s')
	if xaload > 0 then ch21_endmenu() end
	elseif cl == 1006 then
	event_end('next')
	hideAll()
	elseif cl == 1007 then
	audioUpdate('0')
	sfxplay('s_kill_glitch1s')
	event_initstart('ny_argument2')
	
	style_edited = false
	m "..."
    elseif cl == 1008 then
    m "..."
	elseif cl == 1009 then
	updateMonika('1','m',30)
    m "Um..."
    elseif cl == 1010 then
    cw('m',"Hey, "..player.."...")
	elseif cl == 1011 then
	updateMonika('1','e')
    m "Why don't we\nstep outside for\na little bit?"
    elseif cl == 1012 then
    m "Okay?"
	elseif cl == 1013 then
	event_end('ny_argument2')
	bgUpdate('corridor')
	updateMonika('1','n',80)
	m "Sorry about that..."
	elseif cl == 1014 then
    m "They really shouldn't have tried to get you involved."
	end
end