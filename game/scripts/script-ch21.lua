local y_gtimer = 0
local gtext = glitchtext(20)

function yuri_glitch2(x)
	y_gtimer = y_gtimer + dt
	if y_gtimer > 1.2 and y_gtimer < 1.25 then
		updateYuri('1','a',x)
		xaload = -1
	elseif y_gtimer > 0.9 and y_gtimer < 0.95  then
		updateYuri('0a','',x)
		xaload = -1
	elseif y_gtimer > 0.6 and y_gtimer < 0.65 then
		updateYuri('0b','',x)
		xaload = -1
	elseif y_gtimer < 0.1 then
		updateYuri('0a','',x)
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
	yuri_glitch2(80)
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
	if is3DS then
		updateNatsuki('4','e',200,0)
	else
		updateNatsuki('4','e',200,4)
	end
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
	updateYuri('3','p',80)
	updateNatsuki('1','o',200)
    m "Um, Natsuki, that's a little--"
	elseif cl == 969 then
	cw('ny',"This doesn't involve you!")
	event_init('ny_argument')
	elseif cl == 970 then
	hideMonika()
	updateYuri('2','h',10)
	updateNatsuki('1','o',150)
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
	elseif cl >= 1000 and cl <= 1005 then
	sfxplay('s_kill_glitch1s')
	if xaload > 0 then ch21_endmenu() end
	elseif cl == 1006 then
	event_end('next')
	hideAll()
	elseif cl == 1007 then
	audioUpdate('0')
	sfxplay('s_kill_glitch1s')
	event_initstart('ny_argument2')
	m_Set.x = 0
	style_edited = false
	m "..."
    elseif cl == 1008 then
    m "..."
    m_Set.x = 0
	elseif cl == 1009 then
	if is3DS then
		updateMonika('1','m',30)
	else
		updateMonika('1','m',80)
	end
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
	elseif cl == 1015 then
	updateMonika('1','e')
	m "It's probably better for us to stay out of this..."
	elseif cl == 1016 then
    m "We'll go back inside once they're done yelling."
	elseif cl == 1017 then
	updateMonika('5a')
    m "Ahaha..."
	elseif cl == 1018 then
    m "Some president I am, right?"
	elseif cl == 1019 then
	updateMonika('1','m')
    m "I can't even confront my own club members properly..."
	elseif cl == 1020 then
    m "I just wish I was able to be a little more assertive sometimes."
	elseif cl == 1021 then
    m "But I never have it in me to put my foot down against others..."
	elseif cl == 1022 then
	updateMonika('1','e')
    m "You understand, right?"
	elseif cl == 1023 then
    m "Anyway..."
	elseif cl == 1024 then
	updateMonika('1','a')
    m "If this makes you want to spend less time with the others, then that's fine."
	elseif cl == 1025 then
	updateMonika('1','j')
    m "I'd be happy to spend time with you instead..."
    elseif cl == 1026 then
	hideMonika()
    bl "Suddenly, Natsuki runs out of the classroom."
	elseif cl == 1027 then
	updateNatsuki('1','2h',80)
    n "..."
	elseif cl == 1028 then
	updateNatsuki('1','2f')
	pause(0.75)
    elseif cl == 1029 then
	hideNatsuki()
    bl "She quickly runs away."
    elseif cl == 1030 then
	updateMonika('1','l',80)
    m "Oh dear..."
	elseif cl == 1031 then
    m "...Well, it looks like they're done..."
	elseif cl == 1032 then
	bgUpdate('club_day2')
	hideAll()
    y "I didn't mean it..."
	elseif cl == 1033 then
    y "I didn't mean it..."
	elseif cl == 1034 then
    y "I didn't mean it..."
	elseif cl == 1035 then
    bl "Yuri is rocking back and forth in her desk with her palms on her forehead."
	elseif cl == 1036 then
    mc "Yuri...?"
	elseif cl == 1037 then
	updateYuri('4','d2',80)
    y "I didn't mean it!!"
	elseif cl == 1038 then
    mc "I-I believe you..."
	elseif cl == 1039 then
    bl "I have no idea what Yuri might have said to Natsuki."
	elseif cl == 1040 then
    bl "Or did."
	elseif cl == 1041 then
	cw('y',player..".")
	elseif cl == 1042 then
    y "Please don't hate me."
	elseif cl == 1043 then
    y "Please!"
	elseif cl == 1044 then
    y "I'm not like this!"
	elseif cl == 1045 then
    y "There's something wrong with me today..."
	elseif cl == 1046 then
	updateMonika('1','d',-40)
    m "It's fine, Yuri."
	elseif cl == 1047 then
    m "We know you didn't mean it."
	elseif cl == 1048 then
	updateMonika('1','j')
    m "Besides, I'm sure Natsuki will forget all about it by tomorrow."
	elseif cl == 1049 then
	updateMonika('1','a')
    m "Completely."
	elseif cl == 1050 then
	updateYuri('4','b2')
    y "..."
	elseif cl == 1051 then
    m "Anyway, the meeting is over, so you can go home now if you want."
	elseif cl == 1052 then
	updateYuri('4','a2')
    y "..."
    elseif cl == 1053 then
    bl "Yuri looks at me like she wants to say something."
	elseif cl == 1054 then
    bl "But she keeps glancing at Monika."
    elseif cl == 1055 then
	updateYuri('2','v')
    y "Y-You can go first, Monika..."
	elseif cl == 1056 then
    y "I'd like to stay a little bit longer."
	elseif cl == 1057 then
	updateMonika('2','k')
    m "I'm the President, so I should be the last one out."
	elseif cl == 1058 then
    m "I'll wait for you to be done."
	elseif cl == 1059 then
	updateMonika('2','a')
	updateYuri('4','b2')
    y "..."
	elseif cl == 1060 then
    y "..."
	elseif cl == 1061 then
    y "Well-- I'm Vice President, so..."
	elseif cl == 1062 then
    y "Please let me take that responsibility today."
	elseif cl == 1063 then
	updateMonika('2','i')
    m "It kind of sounds like you don't want me around for something, Yuri."
	elseif cl == 1064 then
	updateYuri('3','p')
    y "I-It's not that!"
	elseif cl == 1065 then
	updateYuri('3','o')
    y "It's not that..."
	elseif cl == 1066 then
	updateYuri('3','n')
    y "I just..."
	elseif cl == 1067 then
	updateYuri('3','q')
    cw('y',"I didn't get much of a chance to discuss my book with "..player.."...")
	elseif cl == 1068 then
    y "It would just be...embarrassing with you listening..."
	elseif cl == 1069 then
	updateMonika('1','r')
    m "*Sigh*"
	elseif cl == 1070 then
	updateMonika('1','d')
    m "I guess I don't really have a choice, do I?"
    elseif cl == 1071 then
	updateYuri('1','t')
    y "I-I'm sorry for causing trouble..."
	event_init('yuri_glitch')
    elseif cl == 1072 then
	updateYuri('1','s')
    cw('y',"But I really appreciate you understan",'nw')
	elseif cl == 1073 then
	audioUpdate('g1')
    event_start('yuri_glitch')
    cw('y',gtext.." "..gtext..gtext)
	elseif cl == 1074 then
	alpha = 10
	scriptJump(1075)
	elseif cl >= 1075 then
	fadeOut(1)
	end
end