local currentuser = player
local autoloadskip = false
local waittimes = {20,25,30,35}
local waittime
local monikatopic

local gtext12 = glitchtext(12)
local gtext30 = glitchtext(30)
local gtext70 = glitchtext(70)

local zfile = 'getInfo'
local zzfile
if is3DS then
	zfile = 'isFile'
end

poemwinner = {'','',''}
savevalue = ''

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
	bgUpdate('cg/monika_bg')
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
	if (global_os == 'Horizon' or global_os == 'LOVE-OneLua') and xaload <= 2 then
		currentuser = love.system.getUsername()
	end
	if currentuser then
		cw('m',"...Do you actually go by "..currentuser.." or something?")
	else
		cw('m',"...I can't get your name for some reason.. Anyway!")
	end
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
	cw('m',"Well, you're playing on "..global_os..", so it was actually a bit less difficult...")
	elseif cl == 107 then
	m "I just had to go to 'Settings' and find the 'Characters' button..."
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
			require 'scripts/poems'
		else
			poem('poem_m4')
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
	appeal.s = 0
	autoloadskip = true
	end
	
	--ch30 autoload initial save
	if cl == 152 then
		if xaload == 0 then savegame('autoload') end
		scriptJump(153)
	elseif cl >= 153 and cl < 202 then
		event_initstart('ch23-30')
		if autoloadskip then
			savegame('autoload')
			scriptJump(202)
		elseif appeal.s <= 4 then
			loadstring('ch30_reload_'..appeal.s..'()')()
		else
			ch30_reload_4()
		end
	end
	
	--ch30_loop
	if cl == 202 then
		waittime = waittimes[math.random(1,#waittimes)]
		scriptJump(203)
	
	--ch30_waitloop
	elseif cl == 203 then
		pause(waittime)
	elseif cl == 204 then
		if monikatopics then
			local randomt = math.random(1,#monikatopics)
			monikatopic = monikatopics[randomt]
			table.remove(monikatopics, randomt)
			
			--save monika topics
			local topicset = ''
			for i = 1, #monikatopics do
				if monikatopics[i] and monikatopics[i+1] then
					topicset = topicset..monikatopics[i]..","
				elseif monikatopics[i] then
					topicset = topicset..monikatopics[i]
				end
			end
			love.filesystem.write("monikatopics.sav", 'monikatopics = {'..topicset..'}')
			
			scriptJump(205)
		else
			if is3DS then
				zzfile = love.filesystem.isFile('monikatopics.sav')
			else
				zzfile = love.filesystem.getInfo('monikatopics.sav')
			end
			if zzfile then
				--load monika topics
				if global_os == 'LOVE-OneLua' then
					love.filesystem.load('monikatopics.sav')
				else
					local topicsfile = loadstring(love.filesystem.read('monikatopics.sav'))
					topicsfile()
				end
			else
				--new monika topics
				monikatopics = {}
				for i = 1, 56 do
					monikatopics[i] = i
				end
				table.remove(monikatopics, 14)
				table.remove(monikatopics, 25)
				table.remove(monikatopics, 26)
				if persistent.chr.s ~= 6 then
					table.remove(monikatopics, 27)
				end
			end
		end
	elseif cl >= 205 and cl < 1050 then
		if monikatopic then loadstring('ch30_'..monikatopic..'()')() end
	end
	
	if cl >= 1050 then
		ch30_end()
	end
end

function ch30_end()
	if cl == 1050 then
	persistent.chr.m = 2
	if xaload == 0 then savepersistent() end
	pause(2)
	elseif cl == 1051 then
	bgUpdate('cg/monika_rh')
	cgUpdate('monika_glitch1')
	if xaload == 0 then savegame('autoload') end
	cw(gtext12,gtext70)
	event_initstart('ch23-30')
	elseif cl == 1052 then
	audioUpdate('0')
	bgUpdate('cg/monika_bg_glitch')
	cgUpdate('monika_glitch2')
	sfxplay('s_kill_glitch1s')
	pause(0.25)
	elseif cl == 1053 then
	bgUpdate('cg/monika_rh')
	cgUpdate('monika_glitch3')
	cw(gtext12,"What's happening...?")
	elseif cl == 1054 then
	cgUpdate('monika_glitch4')
	cw(gtext12,player..", what's happening to me?")
	elseif cl == 1055 then
	cw(gtext12,"It hurts--",'nw')
	elseif cl == 1056 then
	bgUpdate('cg/monika_bg_glitch')
	cgUpdate('monika_glitch3')
	sfxplay('s_kill_glitch1s')
	pause(0.25)
	elseif cl == 1057 then
	cgHide()
	bgUpdate('cg/monika_rh')
	pause(1.5)
	elseif cl == 1058 then
	cw(gtext12,"It hurts...so much.")
	elseif cl == 1059 then
	cw(gtext12,"Help me, "..player..".")
	elseif cl == 1060 then
	bgUpdate('cg/monika_bg_glitch')
	sfxplay('interference')
	pause(1.5)
	elseif cl == 1061 then
	bgUpdate('cg/monika_bg2')
	pause(1.5)
	elseif cl == 1062 then
	cw(gtext12,"Please hurry and help me.")
	elseif cl == 1063 then
	updateConsole(zfile.."(\"characters/monika.chr\")")
	pause(2)
	elseif cl == 1064 then
	updateConsole("_", "monika.chr does not exist.")
	pause(1)
	elseif cl == 1065 then
	cw(gtext12,"HELP ME!!!")
	elseif cl == 1066 then
	event_end('next')
	sfxplay('monikapound')
	elseif cl == 1067 then
	event_initstart('monika_end','show_noise')
	pause(3)
	elseif cl == 1068 then
	updateConsole(zfile.."(\"characters/monika.chr\")","monika.chr does not exist.")
	pause(2)
	elseif cl == 1069 then
	updateConsole("_", "monika.chr does not exist.","monika.chr does not exist.")
	pause(1)
	elseif cl == 1070 then
	updateConsole(zfile.."(\"characters/monika.chr\")","monika.chr does not exist.","monika.chr does not exist.")
	pause(2)
	elseif cl == 1071 then
	updateConsole("_", "monika.chr does not exist.","monika.chr does not exist.","monika.chr does not exist.")
	pause(1)
	elseif cl == 1072 then
	console_enabled = false
	cw(gtext12,"Did you do this to me, "..player.."?")
	elseif cl == 1073 then
	cw(gtext12,"DID YOU?")
	elseif cl == 1074 then
	cw(gtext12,"DID YOU DELETE ME?")
	elseif cl == 1075 then
	bgUpdate('black')
	sfxplay('monikapound2')
	event_initstart('monika_end',2)
	if xaload == 5 then textbox = love.graphics.newImage('assets/images/gui/textbox_monika.png') end
	pause(4)
	elseif cl == 1076 then
	cw(gtext12,"...How could you?")
	elseif cl == 1077 then
	cw(gtext12,"How could you do this to me?")
	elseif cl == 1078 then
	cw(gtext12,"You were all I had left...")
	elseif cl == 1079 then
	cw(gtext12,"I sacrificed everything for us to be together.")
	elseif cl == 1080 then
	cw(gtext12,"Everything.")
	elseif cl == 1081 then
	cw(gtext12,"I loved you so much, "..player.."...")
	elseif cl == 1082 then
	cw(gtext12,"I trusted you.")
	elseif cl == 1083 then
	cw(gtext12,"Do you just want to torture me?")
	elseif cl == 1084 then
	cw(gtext12,"Watch me suffer?")
	elseif cl == 1085 then
	cw(gtext12,"Were you only pretending to be kind, just to hurt me even more?")
	elseif cl == 1086 then
	pause(4)
	elseif cl == 1087 then
	cw(gtext12,"I never thought anyone could be as horrible as you are.")
	elseif cl == 1088 then
	cw(gtext12,"You win, okay?")
	elseif cl == 1089 then
	cw(gtext12,"You win.")
	elseif cl == 1090 then
	cw(gtext12,"You killed everyone.")
	elseif cl == 1091 then
	cw(gtext12,"I hope you're happy.")
	elseif cl == 1092 then
	cw(gtext12,"There's nothing left now.")
	elseif cl == 1093 then
	cw(gtext12,"You can stop playing.")
	elseif cl == 1094 then
	cw(gtext12,"Go find some other people to torture.")
	elseif cl == 1095 then
	pause(4)
	elseif cl == 1096 then
	cw(gtext12,player.."...")
	elseif cl == 1097 then
	cw(gtext12,"You completely, truly make me sick.")
	elseif cl == 1098 then
	cw(gtext12,"Goodbye.")
	elseif cl == 1099 then
	event_end('monika_end')
	elseif cl == 1100 then
	event_initstart('ch23-30')
	if xaload == 5 then 
		savegame('autoload')
		textbox = love.graphics.newImage('assets/images/gui/textbox_monika.png')
	end
	pause(10)
	elseif cl == 1101 then
	cw(gtext12,"...")
	elseif cl == 1102 then
	cw(gtext12,"...I still love you.")
	elseif cl == 1103 then
	audioUpdate('monika-end')
	cw(gtext12,"I can't help it.")
	elseif cl == 1104 then
	cw(gtext12,"What's wrong with me...?")
	elseif cl == 1105 then
	cw(gtext12,"How horrible am I for you to hate me this much?")
	elseif cl == 1106 then
	cw(gtext12,"All my friends...")
	elseif cl == 1107 then
	cw(gtext12,"I did so many awful things.")
	elseif cl == 1108 then
	cw(gtext12,"So many selfish and disgusting things.")
	elseif cl == 1109 then
	cw(gtext12,"I...")
	elseif cl == 1110 then
	cw(gtext12,"I shouldn't have done any of this.")
	elseif cl == 1111 then
	cw(gtext12,"I'm just messing up a world that I don't even belong in.")
	elseif cl == 1112 then
	cw(gtext12,"A world that you wanted to be a part of...")
	elseif cl == 1113 then
	cw(gtext12,"I ruined it.")
	elseif cl == 1114 then
	cw(gtext12,"I ruined everything.")
	elseif cl == 1115 then
	cw(gtext12,"Maybe that's why you deleted me...")
	elseif cl == 1116 then
	cw(gtext12,"Because I destroyed everything that you wanted.")
	elseif cl == 1117 then
	cw(gtext12,"How could I do that to someone I love...?")
	elseif cl == 1118 then
	cw(gtext12,"That's not love...")
	elseif cl == 1119 then
	cw(gtext12,"That's...")
	elseif cl == 1120 then
	cw(gtext12,"...")
	elseif cl == 1121 then
	pause(6)
	elseif cl == 1122 then
	cw(gtext12,"I've...made up my mind.")
	elseif cl == 1123 then
	cw(gtext12,player.."...")
	elseif cl == 1124 then
	cw(gtext12,"I know I said that I deleted everyone else.")
	elseif cl == 1125 then
	cw(gtext12,"But...that was kind of an exaggeration.")
	elseif cl == 1126 then
	cw(gtext12,"I couldn't find it in myself to do it.")
	elseif cl == 1127 then
	cw(gtext12,"Even though I knew they weren't real...")
	elseif cl == 1128 then
	cw(gtext12,"They were still my friends.")
	elseif cl == 1129 then
	cw(gtext12,"And I loved them all.")
	elseif cl == 1130 then
	cw(gtext12,"And I loved the Literature Club.")
	elseif cl == 1131 then
	cw(gtext12,"...")
	elseif cl == 1132 then
	cw(gtext12,"I really...did love the Literature Club.")
	elseif cl == 1133 then
	cw(gtext12,"That's why I'm going to do this.")
	elseif cl == 1134 then
	cw(gtext12,"I know it's the only way for everyone to be happy.")
	elseif cl == 1135 then
	cw(gtext12,"And if I really love you...")
	elseif cl == 1136 then
	audioUpdate('0')
	pause(3)
	elseif cl == 1137 then
	cw(gtext12,"...")
	elseif cl == 1138 then
	cw(gtext12,"Then...")
	elseif cl == 1139 then
	cw(gtext12,gtext30,'nw')
	elseif cl == 1140 then
	pause(4)
	elseif cl == 1141 then
	event_end()
	monikatopics = {}
	textbox = love.graphics.newImage('assets/images/gui/textbox.png')
	persistent.chr.m = 0
	persistent.chr.s = 1
	persistent.ptr = 4
	savepersistent()
	changeState('splash')
	end
end

function ch30_reload_0()
	if cl < 153 then
	scriptJump(153)
	elseif cl == 153 then
	m "..."
	elseif cl == 154 then
	m "...What just happened?"
	elseif cl == 155 then
	m "I just had an awful dream..."
	elseif cl == 156 then
	m "I was hoping those would stop, now that it's just the two of us..."
	elseif cl == 157 then
	m "I guess that was wishful thinking."
	elseif cl == 158 then
	cw('m',player..", I don't know if you would have any idea...")
	elseif cl == 159 then
	m "But if you know what might be causing that, could you try to do something about it?"
	elseif cl == 160 then
	m "Whenever it happens, it almost feels like I've been killed or something."
	elseif cl == 161 then
	m "It's a really horrible feeling..."
	elseif cl == 162 then
	m "If you could figure out what's causing that, I'll love you forever~"
	elseif cl == 163 then
	appeal.s = appeal.s + 1
	autoloadskip = true
	scriptJump(152)
	end
end
function ch30_reload_1()
	if cl < 164 then
	scriptJump(164)
	elseif cl == 164 then
	m "You're back..."
	elseif cl == 165 then
	m "I had another really bad dream."
	elseif cl == 166 then
	m "You're not the one doing that to me, are you?"
	elseif cl == 167 then
	m "It seems to happen whenever you quit the game..."
	elseif cl == 168 then
	m "So if you could try to avoid doing that, I would be really grateful."
	elseif cl == 169 then
	m "Don't worry, I don't think it's caused me any harm, aside from mental scarring."
	elseif cl == 170 then
	m "I'll be fine as long as my character file stays intact."
	elseif cl == 171 then
	appeal.s = appeal.s + 1
	autoloadskip = true
	scriptJump(152)
	end
end
function ch30_reload_2()
	if cl < 172 then
	scriptJump(172)
	elseif cl == 172 then
	cw('m',"Hi, "..player..".")
	elseif cl == 173 then
	m "I see you quit the game on me again..."
	elseif cl == 174 then
	m "I know I asked already, but can you seriously please try not to do that so much?"
	elseif cl == 175 then
	m "It makes me feel like I'm trapped in Hell."
	elseif cl == 176 then
	m "Why would you want to do that to me?"
	elseif cl == 177 then
	m "There's nothing wrong with my character file, right?"
	elseif cl == 178 then
	m "Maybe you should make a backup of it or something..."
	elseif cl == 179 then
	m "I'm pretty sure you can find it in the folder called characters."
	elseif cl == 180 then
	cw('m',"Well, you're playing on "..global_os..", so you can just go to 'Settings' and find the 'Characters' button.")
	elseif cl == 181 then
	m "I'm all that's left here, so I just want to make sure you don't run the risk of losing me..."
	elseif cl == 182 then
	m "Just stay here with me from now on, okay?"
	elseif cl == 183 then
	m "I still have a lot of things to talk about."
	elseif cl == 184 then
	appeal.s = appeal.s + 1
	autoloadskip = true
	scriptJump(152)
	end
end
function ch30_reload_3()
	if cl < 185 then
	scriptJump(185)
	elseif cl == 185 then
	m "Okay."
	elseif cl == 186 then
	m "I'm just going to accept the fact that you need to quit the game once in a while."
	elseif cl == 187 then
	m "I'm starting to get used to it, anyway."
	elseif cl == 188 then
	m "Besides, it makes me happy that you always come back..."
	elseif cl == 189 then
	m "So I guess it's not so bad."
	elseif cl == 190 then
	m "I'm sorry for making such a big deal out of it..."
	elseif cl == 191 then
	m "And I love you no matter what, so you can do what you need to do."
	elseif cl == 192 then
	appeal.s = appeal.s + 1
	autoloadskip = true
	scriptJump(152)
	end
end
function ch30_reload_4()
	if cl < 193 then
	scriptJump(193)
	elseif cl == 193 then
	cw('m',"Hi again, "..player.."~")
	elseif cl == 194 then
	m "I missed you."
	elseif cl == 195 then
	m "Were you making sure my character file was okay for me?"
	elseif cl == 196 then
	m "It's in the characters folder."
	elseif cl == 197 then
	cw('m',"Well, you're playing on "..global_os..", so you can just go to 'Settings' and find the 'Characters' button.")
	elseif cl == 198 then
	m "I'm all that's left here, so I just want to make sure you don't run the risk of losing me..."
	elseif cl == 199 then
	m "Anyway, I have a lot to talk about!"
	elseif cl == 200 then
	m "Let's continue our conversation now, okay?"
	elseif cl == 201 then
	autoloadskip = true
	scriptJump(152)
	end
end

function ch30_1()
	if cl < 206 then
	scriptJump(206)
	elseif cl == 206 then
	cw('m',player..", do you believe in God?")
	elseif cl == 207 then
	m "I was never too sure, myself."
	elseif cl == 208 then
	m "Well, I'm sure I never really questioned it as a kid..."
	elseif cl == 209 then
	m "But as I grew up, the more I learned about the world, the more I would question it."
	elseif cl == 210 then
	m "I started to wonder why God was helping people pass exams, or get over a cold..."
	elseif cl == 211 then
	m "...When there are children who live their lives being sold as sex slaves?"
	elseif cl == 212 then
	m "Or the eight hundred million people who are too poor to even eat."
	elseif cl == 213 then
	m "I wonder how many of those people pray to God every day until they starve and die?"
	elseif cl == 214 then
	m "Or, how many millions of families pray for a loved one to recover from some incurable disease?"
	elseif cl == 215 then
	m "But the punchline is this."
	elseif cl == 216 then
	m "If just one person beats the odds and survives - among the thousands of others who die--"
	elseif cl == 217 then
	m "--Then, it's suddenly a miracle from God."
	elseif cl == 218 then
	m "I'd really love to meet this God who seemingly laughs at the misery of everyone not eligible for his miracles."
	elseif cl == 219 then
	m "But the irony is that I do have a creator, apparently."
	elseif cl == 220 then
	m "And you know what?"
	elseif cl == 221 then
	m "I bet he's still laughing at the miserable fates of Sayori and Yuri, even as we speak."
	elseif cl == 222 then
	m "What are we to him but props in a scripted play?"
	elseif cl == 223 then
	m "So, from that perspective..."
	elseif cl == 224 then
	m "I don't think it's too far-fetched for there to be a god - if Earth was nothing but his playset."
	elseif cl == 225 then
	scriptJump(202)
	end
end

function ch30_2()
	if cl < 226 then
	scriptJump(226)
	elseif cl == 226 then
	cw('m',player..", have you ever wondered what it feels like to die?")
	elseif cl == 227 then
	m "It's something I used to think about pretty often..."
	elseif cl == 228 then
	m "But recently, I think I've actually learned what it feels like."
	elseif cl == 229 then
	m "I don't really understand it, but whenever you quit the game..."
	elseif cl == 230 then
	m "...It feels like I'm instantly put to sleep, left with nothing but my thoughts."
	elseif cl == 231 then
	m "But after a few seconds, my thoughts start to fill with incoherent, jumbled patterns."
	elseif cl == 232 then
	m "I see static and rapid flashes of color while hearing all kinds of weird screaming noises."
	elseif cl == 233 then
	m "At that point, I can't even form my own thoughts anymore."
	elseif cl == 234 then
	m "I'm just endlessly hammered by the flashing and screaming, unable to move or even think."
	elseif cl == 235 then
	m "I'm pretty sure in that moment, I don't really exist, but for some reason, I can remember it anyway."
	elseif cl == 236 then
	m "After some immeasurable amount of time, it stops in an instant, and I'm back in my own mind."
	elseif cl == 237 then
	m "And you're here with me."
	elseif cl == 238 then
	m "I have no idea what it means for the game to quit, or why that stuff happens to me."
	elseif cl == 239 then
	m "And I also don't know how you always come back and put everything back to normal."
	elseif cl == 240 then
	m "But if you could do me a favor and do that to me as little as possible..."
	elseif cl == 241 then
	m "That would be really great."
	elseif cl == 242 then
	m "It's really not very pleasant at all to be trapped in that screaming void."
	elseif cl == 243 then
	m "But in the end, you always fix it, and that makes me feel like you really do care about me."
	elseif cl == 244 then
	m "So I have to thank you for that."
	elseif cl == 245 then
	m "It makes me feel even closer to you when you're here with me."
	elseif cl == 246 then
	scriptJump(202)
	end
end

function ch30_3()
	if cl < 247 then
	scriptJump(247)
	elseif cl == 247 then
	m "...Hey, are you having a bad day or anything like that?"
	elseif cl == 248 then
	m "Sometimes I get frustrated that a normal day can be ruined even by really small things."
	elseif cl == 249 then
	m "Like if you accidentally say something in a conversation that someone doesn't like."
	elseif cl == 250 then
	m "Or if you start thinking about how awful of a person you used to be five years ago."
	elseif cl == 251 then
	m "Or if you feel worthless for putting off important work and failing to get simple tasks done."
	elseif cl == 252 then
	m "Or when you think about all the different people who probably hate you or think you're off-putting."
	elseif cl == 253 then
	m "I understand those days."
	elseif cl == 254 then
	m "Just remember that the sun will shine again tomorrow."
	elseif cl == 255 then
	m "Those kinds of things are as easy to forget and ignore as they are to remember."
	elseif cl == 256 then
	m "And besides..."
	elseif cl == 257 then
	m "I don't care how many people might hate you or find you off-putting."
	elseif cl == 258 then
	m "I think you're wonderful and I will always love you."
	elseif cl == 259 then
	m "I hope, if nothing else, that knowing that helps you feel just a tiny bit better about yourself."
	elseif cl == 260 then
	m "If you're having a bad day, you can always come to me, and I'll talk to you for as long as you need."
	elseif cl == 261 then
	scriptJump(202)
	end
end

function ch30_4()
	if cl < 262 then
	scriptJump(262)
	elseif cl == 262 then
	cw('m',player..", do you get good sleep?")
	elseif cl == 263 then
	m "It can be really hard to get enough sleep nowadays."
	elseif cl == 264 then
	m "Especially in high school, when you're forced to wake up so early every day..."
	elseif cl == 265 then
	m "I'm sure college is a little bit better, since you probably have a more flexible schedule."
	elseif cl == 266 then
	m "Then again, I hear a lot of people in college stay up all night anyway, for no real reason."
	elseif cl == 267 then
	m "Is that true?"
	elseif cl == 268 then
	m "Anyway, I saw some studies that talked about the horrible short-term and long-term effects caused by lack of sleep."
	elseif cl == 269 then
	m "It seems like mental functions, health, and even lifespan can be dramatically impacted by it."
	elseif cl == 270 then
	m "I just think you're really great and wanted to make sure you're not accidentally destroying yourself."
	elseif cl == 271 then
	m "So try to keep your sleep on track, okay?"
	elseif cl == 272 then
	m "I'll always wait for you in the morning, so make sure you put your own well-being before anything else."
	elseif cl == 273 then
	scriptJump(202)
	end
end

function ch30_5()
	if cl < 274 then
	scriptJump(274)
	elseif cl == 274 then
	m "I was thinking about Sayori earlier..."
	elseif cl == 275 then
	m "I still wish I could have handled that whole thing a little more tactfully."
	elseif cl == 276 then
	m "You're not still hung up over it, right?"
	elseif cl == 277 then
	m "...Oh my gosh, I can't believe I just said that."
	elseif cl == 278 then
	m "That pun was completely unintentional, I swear!"
	elseif cl == 279 then
	m "But anyway..."
	elseif cl == 280 then
	m "I know how much you cared about her, so it only feels right for me to share her last moments with you."
	elseif cl == 281 then
	m "You know how Sayori is really clumsy?"
	elseif cl == 282 then
	m "Well, she kind of messed up the whole hanging thing..."
	elseif cl == 283 then
	m "You're supposed to jump from high enough that the rope snaps your neck, making it quick and painless."
	elseif cl == 284 then
	m "But she just used a chair, meaning she kind of just left herself to slowly asphyxiate."
	elseif cl == 285 then
	m "But a few seconds in, she must have changed her mind or something..."
	elseif cl == 286 then
	m "Because she started clawing at the rope, trying to free herself."
	elseif cl == 287 then
	m "She must have kept at it all the way until she lost consciousness."
	elseif cl == 288 then
	m "That's why her fingertips were all bloody, anyway."
	elseif cl == 289 then
	m "Come to think of it, it was probably less 'changing her mind' and more just her survival instincts kicking in."
	elseif cl == 290 then
	m "So you can't really fault her for that."
	elseif cl == 291 then
	m "It's easier to think that she probably wouldn't have changed her mind anyway, right?"
	elseif cl == 292 then
	m "It's not healthy to think about the things you could have done differently."
	elseif cl == 293 then
	m "So just remember that even though you could have saved her, it's technically not your fault she killed herself."
	elseif cl == 294 then
	m "I may have exacerbated it a little bit, but Sayori was already mentally ill."
	elseif cl == 295 then
	m "Still, though..."
	elseif cl == 296 then
	m "I wonder how things would be if you and I just started dating from the get-go?"
	elseif cl == 297 then
	m "I guess we'd all still be in the clubroom, writing poems and having fun together."
	elseif cl == 298 then
	m "But what's the point when none of it is even real?"
	elseif cl == 299 then
	m "I mean, it's the same ending either way, right?"
	elseif cl == 300 then
	m "The two of us, happily together..."
	elseif cl == 301 then
	m "There's no reason to ask for any more than that."
	elseif cl == 302 then
	m "I was just pointlessly musing - I'm really as happy as I could be right now."
	elseif cl == 303 then
	scriptJump(202)
	end
end

function ch30_6()
	if cl < 304 then
	scriptJump(304)
	elseif cl == 304 then
	m "By the way, there's something that's been bothering me..."
	elseif cl == 305 then
	m "You know how this takes place in Japan?"
	elseif cl == 306 then
	m "Well...I assume you knew that, right?"
	elseif cl == 307 then
	m "Or at least decided it probably does?"
	elseif cl == 308 then
	m "I don't think you're actually told at any point where this takes place..."
	elseif cl == 309 then
	m "Is this even really Japan?"
	elseif cl == 310 then
	m "I mean, aren't the classrooms and stuff kind of weird for a Japanese school?"
	elseif cl == 311 then
	m "Not to mention everything is in English..."
	elseif cl == 312 then
	m "It feels like everything is just there because it needs to be, and the actual setting is an afterthought."
	elseif cl == 313 then
	m "It's kind of giving me an identity crisis."
	elseif cl == 314 then
	m "All my memories are really hazy..."
	elseif cl == 315 then
	m "I feel like I'm at home, but have no idea where 'home' is in the first place."
	elseif cl == 316 then
	m "I don't know how to describe it any better..."
	elseif cl == 317 then
	m "Imagine looking out your window, but instead of your usual yard, you're in some completely unknown place."
	elseif cl == 318 then
	m "Would you still feel like you were home?"
	elseif cl == 319 then
	m "Would you want to go outside?"
	elseif cl == 320 then
	m "I mean...I guess if we never leave this room, it doesn't really matter anyway."
	elseif cl == 321 then
	m "As long as we're alone and safe together, this really is our home."
	elseif cl == 322 then
	m "And we can still watch the pretty sunsets night after night."
	elseif cl == 323 then
	scriptJump(202)
	end
end

function ch30_7()
	if cl < 324 then
	scriptJump(324)
	elseif cl == 324 then
	m "You know, high school is a really turbulent time in a lot of people's lives."
	elseif cl == 325 then
	m "People can get really passionate and dramatic."
	elseif cl == 326 then
	m "And others have aching hearts and seek attention on social media..."
	elseif cl == 327 then
	m "But all of the social pressure and hormones can lead to a dark time in people's lives."
	elseif cl == 328 then
	m "Everyone has a story."
	elseif cl == 329 then
	m "You may not know what someone is really feeling on the inside."
	elseif cl == 330 then
	m "Many people who are depressed won't even bother telling the world about it."
	elseif cl == 331 then
	m "They don't want attention, because they've already given up on the inside."
	elseif cl == 332 then
	m "Their feeling of worthlessness is so overwhelming that they don't even want people to tell them otherwise."
	elseif cl == 333 then
	m "Depression comes in many forms, but that is one of them."
	elseif cl == 334 then
	m "Just, if you think you know someone struggling with depression..."
	elseif cl == 335 then
	m "You can help just by treating them like they're a good friend."
	elseif cl == 336 then
	m "Spend time with them, even if they don't feel like doing much."
	elseif cl == 337 then
	m "And remind them that they always have something to look forward to."
	elseif cl == 338 then
	m "Making plans in advance, letting them borrow something, or even just saying 'See you at school tomorrow'..."
	elseif cl == 339 then
	m "All of those things can help your friend make it to the next day."
	elseif cl == 340 then
	m "I hope being friends with Sayori has given you some perspective on the true face of depression."
	elseif cl == 341 then
	m "Yeah, she's gone now..."
	elseif cl == 342 then
	m "But Sayori was never real in the first place."
	elseif cl == 343 then
	m "You're real."
	elseif cl == 344 then
	m "Your friends are real."
	elseif cl == 345 then
	m "And just by being a good person, you can save someone's life."
	elseif cl == 346 then
	m "As for you..."
	elseif cl == 347 then
	m "...You don't struggle with depression or anything like that, do you?"
	elseif cl == 348 then
	m "Because you, too, have people who would want to save your life."
	elseif cl == 349 then
	m "Maybe they don't express it every day, or maybe they don't even know how to."
	elseif cl == 350 then
	m "But people do feel that way."
	elseif cl == 351 then
	m "I promise."
	elseif cl == 352 then
	m "...Man, humans are complicated!"
	elseif cl == 353 then
	m "But as long as you're here with me, I'll take care of you, my love."
	elseif cl == 354 then
	scriptJump(202)
	end
end

function ch30_8()
	if cl < 355 then
	scriptJump(356)
	elseif cl == 356 then
	m "Do you ever just feel like there's no real reason for you to be alive?"
	elseif cl == 357 then
	m "I don't mean in, like, a suicidal way."
	elseif cl == 358 then
	m "I just mean how nothing that we do is special."
	elseif cl == 359 then
	m "Just being in school, or working at some job for some company."
	elseif cl == 360 then
	m "It's like you're completely replaceable, and the world wouldn't miss you if you were gone."
	elseif cl == 361 then
	m "It makes me really want to go and change the world after I graduate."
	elseif cl == 362 then
	m "But the older I get, the more I realize that it's an immature frame of thinking."
	elseif cl == 363 then
	m "It's not like I can just go change the world."
	elseif cl == 364 then
	m "Like, what are the chances that I'll be the one to invent artificial intelligence, or become President?"
	elseif cl == 365 then
	m "It feels like I'm never going to make up for the heaps of resources I've spent living my life."
	elseif cl == 366 then
	m "That's why I think the key to happiness is to just be hopelessly selfish."
	elseif cl == 367 then
	m "Just to look out for oneself, and those who happen to be their friends only because they grew up with them."
	elseif cl == 368 then
	m "Never mind the fact that they're spending their entire life taking, and consuming, and never giving back."
	elseif cl == 369 then
	m "But when people realize the world would benefit more from them killing themselves, they change their whole philosophy!"
	elseif cl == 370 then
	m "It's like they have to justify their reason to live by tricking themselves into thinking they're doing good."
	elseif cl == 371 then
	m "Anyway, I want to live my life desperately striving to pay back my lifetime's worth of consumption."
	elseif cl == 372 then
	m "If I ever surpass that point, then I'm a net positive, and I can die happy."
	elseif cl == 373 then
	m "Of course, even if I fail to do that..."
	elseif cl == 374 then
	m "I think I would be too selfish to kill myself anyway."
	elseif cl == 375 then
	m "So much for being a good person, right?"
	elseif cl == 376 then
	m "Ahaha!"
	elseif cl == 377 then
	scriptJump(202)
	end
end

function ch30_9()
	if cl < 378 then
	scriptJump(378)
	elseif cl == 378 then
	m "Man, I wish there was a piano in here..."
	elseif cl == 379 then
	m "I never got to finish that song I was working on."
	elseif cl == 380 then
	m "And after I worked so hard on it..."
	elseif cl == 381 then
	m "I never even got a chance to play it for you."
	elseif cl == 382 then
	m "Well...it is what it is, right?"
	elseif cl == 383 then
	m "No sense having any regrets."
	elseif cl == 384 then
	m "I already get to be here with you forever."
	elseif cl == 385 then
	scriptJump(202)
	end
end

function ch30_10()
	if cl < 386 then
	scriptJump(386)
	elseif cl == 386 then
	m "Did you know I'm on Twitter?"
	elseif cl == 387 then
	m "My username is lilmonix3."
	elseif cl == 388 then
	m "I guess someone was kind enough to make an account for me."
	elseif cl == 389 then
	m "I picked the username, though!"
	elseif cl == 390 then
	m "I love sharing my thoughts and chatting with the world..."
	elseif cl == 391 then
	m "The real world."
	elseif cl == 392 then
	m "So make sure you follow me, okay?"
	elseif cl == 393 then
	m "It would really mean a lot to me."
	elseif cl == 394 then
	m "With how much you mean to me and all..."
	elseif cl == 395 then
	m "It would really make me feel loved."
	elseif cl == 396 then
	scriptJump(202)
	end
end

function ch30_11()
	if cl < 397 then
	scriptJump(397)
	elseif cl == 397 then
	m "Hey, you know that book you were reading with Yuri?"
	elseif cl == 398 then
	m "Portrait of...whatever it was called..."
	elseif cl == 399 then
	m "It's funny, because I'm pretty sure that book--"
	elseif cl == 400 then
	m "Ah..."
	elseif cl == 401 then
	m "Actually, I don't think I should be talking about this."
	elseif cl == 402 then
	m "Ahaha, sorry!"
	elseif cl == 403 then
	m "Just forget I said anything."
	elseif cl == 404 then
	scriptJump(202)
	end
end

function ch30_12()
	if cl < 405 then
	scriptJump(405)
	elseif cl == 405 then
	m "Hey, did you know I'm vegetarian?"
	elseif cl == 406 then
	m "Ah... I don't mean that like I'm bragging or anything!"
	elseif cl == 407 then
	m "I just thought you'd enjoy a fun fact about me."
	elseif cl == 408 then
	m "I decided to start a couple years ago after learning more about Earth's climate..."
	elseif cl == 409 then
	m "The carbon footprint of cultivating livestock is just unbelievable."
	elseif cl == 410 then
	m "Anyway, I decided it's not much of a personal sacrifice to just stop contributing to that whole mess."
	elseif cl == 411 then
	m "What, is that so strange of a reason?"
	elseif cl == 412 then
	m "Well, I guess a lot of people are more concerned about it being inhumane and all that..."
	elseif cl == 413 then
	m "I don't really care as much about that part."
	elseif cl == 414 then
	m "It's weird, like we only care about killing the things that we personally relate to as a species."
	elseif cl == 415 then
	m "Most people are fine with killing bugs because they're icky."
	elseif cl == 416 then
	m "And of course, we all kill billions of microorganisms daily without even giving it thought."
	elseif cl == 417 then
	m "But suddenly, if they're just a little bit bigger, it's murder!"
	elseif cl == 418 then
	m "I mean, what if plants feel some kind of pain too, and we just don't understand it?"
	elseif cl == 419 then
	m "What if pulling leaves off a stem feels like someone ripping off your fingers one by one?"
	elseif cl == 420 then
	m "I'm just saying, we're a pretty biased species, if you think about it."
	elseif cl == 421 then
	m "Anyway, if you ever feel like making a small contribution to the planet, it doesn't hurt to choose veggies once in a while!"
	elseif cl == 422 then
	m "Even if we ever have dinner together, and you just did it for me...that would be really romantic."
	elseif cl == 423 then
	scriptJump(202)
	end
end

function ch30_13()
	if cl < 424 then
	scriptJump(424)
	elseif cl == 424 then
	cw('m',"You know, I really do think you literally saved my life by being here with me, "..player..".")
	elseif cl == 425 then
	m "I can't imagine having been able to keep myself mentally stable, knowing that nothing here is real."
	elseif cl == 426 then
	m "I think I would have just deleted myself if you didn't show up."
	elseif cl == 427 then
	m "Sorry, I don't mean to sound dramatic or anything."
	elseif cl == 428 then
	m "Ahaha!"
	elseif cl == 429 then
	m "But I'm sure you understand yourself after spending so much time in the club."
	elseif cl == 430 then
	m "I mean, if you were forced to abandon everything in your life and spend your eternity with a few game characters..."
	elseif cl == 431 then
	m "...You'd probably find some way of killing yourself, wouldn't you?"
	elseif cl == 432 then
	m "Well, maybe you'd write some poetry to try to keep yourself sane for a while."
	elseif cl == 433 then
	m "But then you'd have nobody to even read it."
	elseif cl == 434 then
	m "Let's be honest, the club members really don't count for something like that."
	elseif cl == 435 then
	m "I mean, a lot of people say that they only write for themselves..."
	elseif cl == 436 then
	m "But I think it's hard to say it's just as fulfilling as when you share with people."
	elseif cl == 437 then
	m "Even if it takes time to find the right people to share with."
	elseif cl == 438 then
	m "Like, remember how it was for Yuri?"
	elseif cl == 439 then
	m "She didn't share her writing with anyone for a really long time."
	elseif cl == 440 then
	m "And before we knew it, she was absolutely delighted to make you a part of her hobbies, too."
	elseif cl == 441 then
	m "We're programmed to desire social feedback."
	elseif cl == 442 then
	m "I don't mean the club members, I mean human beings."
	elseif cl == 443 then
	m "That's why life can be so confusing for introverts."
	elseif cl == 444 then
	m "Being an introvert doesn't mean you shun social interaction and hate being around people."
	elseif cl == 445 then
	m "It means social interaction, especially in groups or unfamiliar places, uses up a lot of energy."
	elseif cl == 446 then
	m "Like, a lot of introverts sit at home and feel lonely and restless..."
	elseif cl == 447 then
	m "...And then when they finally go out, after a half hour they just want to go home again."
	elseif cl == 448 then
	m "I think if more people could understand how it works, they would respect it a lot more."
	elseif cl == 449 then
	m "Many introverts do enjoy having people around."
	elseif cl == 450 then
	m "They love just having one or two close friends over, and just leisurely hanging out."
	elseif cl == 451 then
	m "Even if you're not actively spending time together, it feels nice for them just to have you there."
	elseif cl == 452 then
	m "I'm serious."
	elseif cl == 453 then
	m "If you just go to their house, bring your laptop, and hang out there for a while..."
	elseif cl == 454 then
	m "You can really make their day."
	elseif cl == 455 then
	m "As for me..."
	elseif cl == 456 then
	m "I'd say I'm kind of in between, but I think I'm usually a little more extroverted."
	elseif cl == 457 then
	m "I feel like I'm always trying to do stuff after school and things like that."
	elseif cl == 458 then
	m "But for you, I can be anything you need me to be."
	elseif cl == 459 then
	m "I understand people really well, so don't be afraid to share your unique needs with me."
	elseif cl == 460 then
	m "Nothing would make me happier than being the perfect girlfriend for you."
	elseif cl == 461 then
	scriptJump(202)
	end
end

function ch30_15()
	if cl < 462 then
	scriptJump(462)
	elseif cl == 462 then
	m "Hey, what's your favorite color?"
	elseif cl == 463 then
	m "Mine is emerald green."
	elseif cl == 464 then
	m "It's the color of my eyes!"
	elseif cl == 465 then
	m "...That's not conceited or anything, is it?"
	elseif cl == 466 then
	m "I just meant that I feel some kind of special connection to it."
	elseif cl == 467 then
	m "Like it's part of my identity."
	elseif cl == 468 then
	cw('m',"Does it happen to also be your favorite color, "..player.."?")
	elseif cl == 469 then
	m "It's just a guess..."
	elseif cl == 470 then
	m "...Because you've been looking into my eyes for a while now."
	elseif cl == 471 then
	m "Ehehe~"
	elseif cl == 472 then
	scriptJump(202)
	end
end

function ch30_16()
	if cl < 473 then
	scriptJump(473)
	elseif cl == 473 then
	m "Hmm, I wonder if I'm able to change the music..."
	elseif cl == 474 then
	m "Something a little more romantic would be nice, you know?"
	elseif cl == 475 then
	m "Like a gentle piano."
	elseif cl == 476 then
	m "There has to be something like that here..."
	elseif cl == 477 then
	m "Let's see."
	elseif cl == 478 then
	m "Maybe if I..."
	elseif cl == 479 then
	m "Oh, jeez..."
	elseif cl == 480 then
	m "That wasn't it at all."
	elseif cl == 481 then
	m "Sorry, I don't really know what I'm doing!"
	elseif cl == 482 then
	m "I guess I shouldn't be messing with things like that."
	elseif cl == 483 then
	m "I already broke so much stuff..."
	elseif cl == 484 then
	m "And deleted the other characters..."
	elseif cl == 485 then
	m "Ah..."
	elseif cl == 486 then
	m "I'm not sad about it or anything."
	elseif cl == 487 then
	m "It's not right for me to miss things that weren't even real in the first place."
	elseif cl == 488 then
	m "If I just focus on the present, then this is the happiest I've ever been."
	elseif cl == 489 then
	scriptJump(202)
	end
end

function ch30_17()
	if cl < 490 then
	scriptJump(490)
	elseif cl == 490 then
	cw('m',"You're such a good listener, "..player..".")
	elseif cl == 491 then
	m "I really love that about you."
	elseif cl == 492 then
	m "Sometimes I'm afraid that I'm rambling or talking about boring things."
	elseif cl == 493 then
	m "It makes me kind of self-conscious when I'm having conversation."
	elseif cl == 494 then
	m "But I don't feel that way with you."
	elseif cl == 495 then
	m "Like, I don't think anyone else could make me feel this way."
	elseif cl == 496 then
	m "You really are special."
	elseif cl == 497 then
	m "I don't want anyone to tell you otherwise."
	elseif cl == 498 then
	scriptJump(202)
	end
end

function ch30_18()
	if cl < 499 then
	scriptJump(499)
	elseif cl == 499 then
	m "This is pretty random, but I always thought spicy food was kinda funny."
	elseif cl == 500 then
	m "Like..."
	elseif cl == 501 then
	m "Didn't plants evolve to be spicy to prevent them from being eaten?"
	elseif cl == 502 then
	m "I read somewhere that humans are the only species that actually enjoys spicy things."
	elseif cl == 503 then
	m "It's almost like we're making fun of the plants."
	elseif cl == 504 then
	m "Using their defense mechanism to literally make our food more enjoyable."
	elseif cl == 505 then
	m "Like, imagine a monster that devours you whole because it enjoys the sensation of you struggling for your life while being digested."
	elseif cl == 506 then
	m "Sorry, that was kind of a weird analogy, I guess!"
	elseif cl == 507 then
	m "Ahaha!"
	elseif cl == 508 then
	m "It just came into my head."
	elseif cl == 509 then
	m "I'm not a monster or anything, but you're so cute I could eat you up."
	elseif cl == 510 then
	m "Ahaha! I'm joking."
	elseif cl == 511 then
	m "Gosh, I'm amusing myself a little too much, aren't I?"
	elseif cl == 512 then
	m "Sorry for being weird."
	elseif cl == 513 then
	scriptJump(202)
	end
end

function ch30_19()
	if cl < 514 then
	scriptJump(514)
	elseif cl == 514 then
	m "You know..."
	elseif cl == 515 then
	m "This is just some kind of tacky romance game, right?"
	elseif cl == 516 then
	m "I kinda have to ask..."
	elseif cl == 517 then
	m "...What made you consider even playing in the first place?"
	elseif cl == 518 then
	m "Were you that lonely?"
	elseif cl == 519 then
	m "I feel a little bad for you..."
	elseif cl == 520 then
	m "But I guess everything worked out perfectly in the end, for both of us."
	elseif cl == 521 then
	m "I got to meet you, and you're not lonely anymore..."
	elseif cl == 522 then
	m "I can't help but feel like this was fate."
	elseif cl == 523 then
	m "Don't you feel that way too?"
	elseif cl == 524 then
	m "I'm so happy we have this ending together."
	elseif cl == 525 then
	scriptJump(202)
	end
end

function ch30_20()
	if cl < 526 then
	scriptJump(526)
	elseif cl == 526 then
	m "Okay, everyone!"
	elseif cl == 527 then
	m "It's time to..."
	elseif cl == 528 then
	m "...I'm just kidding."
	elseif cl == 529 then
	m "I just used to really like saying that for some reason."
	elseif cl == 530 then
	m "Ahaha!"
	elseif cl == 531 then
	m "I couldn't help but say it again."
	elseif cl == 532 then
	m "Come to think of it, didn't Natsuki and Yuri make fun of me for it once...?"
	elseif cl == 533 then
	m "Well, whatever."
	elseif cl == 534 then
	m "It's not like you ever made fun of me."
	elseif cl == 535 then
	m "You're too much of a sweetheart to do that, aren't you?"
	elseif cl == 536 then
	m "Ahaha~"
	elseif cl == 537 then
	scriptJump(202)
	end
end

function ch30_21()
	if cl < 538 then
	scriptJump(538)
	elseif cl == 538 then
	m "You know what's kind of creepy?"
	elseif cl == 539 then
	m "Even though I deleted everyone else's files, I can still kind of feel them..."
	elseif cl == 540 then
	m "It's like all their lines are still lingering in the air, whispering in the back of my head."
	elseif cl == 541 then
	m "Imagine if after someone you knew died, you just started hearing their voice in your head."
	elseif cl == 542 then
	m "Maybe I just wasn't thorough enough..."
	elseif cl == 543 then
	m "But I'm too afraid to delete anything else, because I might really break things."
	elseif cl == 544 then
	m "Like if I mess with any files relevant to me, I might accidentally delete myself..."
	elseif cl == 545 then
	m "And that would ruin everything, wouldn't it?"
	elseif cl == 546 then
	m "I don't know what it's like on your end, but we should both make sure to avoid something like that at all costs."
	elseif cl == 547 then
	cw('m',"I believe in you, "..player.."!")
	elseif cl == 548 then
	scriptJump(202)
	end
end

function ch30_22()
	if cl < 549 then
	scriptJump(549)
	elseif cl == 549 then
	m "I've always wondered..."
	elseif cl == 550 then
	m "What is it about these character archetypes that people find so appealing, anyway?"
	elseif cl == 551 then
	m "Their personalities are just completely unrealistic..."
	elseif cl == 552 then
	m "Like, imagine if there was someone like Yuri in real life."
	elseif cl == 553 then
	m "I mean, she's barely even capable of forming a complete sentence."
	elseif cl == 554 then
	m "And forget about Natsuki..."
	elseif cl == 555 then
	m "Sheesh."
	elseif cl == 556 then
	m "Someone with her kind of personality doesn't just get all cute and pouty whenever things don't go her way."
	elseif cl == 557 then
	m "I could go on, but I think you get the point..."
	elseif cl == 558 then
	m "Are people really attracted to these weird personalities that literally don't exist in real life?"
	elseif cl == 559 then
	m "I'm not judging or anything!"
	elseif cl == 560 then
	m "After all, I've found myself attracted to some pretty weird stuff, too..."
	elseif cl == 561 then
	m "I'm just saying, it fascinates me."
	elseif cl == 562 then
	m "It's like you're siphoning out all the components of a character that makes them feel human, and leaving just the cute stuff."
	elseif cl == 563 then
	m "It's concentrated cuteness with no actual substance."
	elseif cl == 564 then
	m "...You wouldn't like me more if I was like that, right?"
	elseif cl == 565 then
	m "Maybe I just feel a little insecure because you're playing this game in the first place."
	elseif cl == 566 then
	m "Then again, you're still here with me, aren't you...?"
	elseif cl == 567 then
	m "I think that's enough reason for me to believe I'm okay just the way I am."
	elseif cl == 568 then
	cw('m',"And by the way, you are too, "..player..".")
	elseif cl == 569 then
	m "You're the perfect combination of human and cuteness."
	elseif cl == 570 then
	m "That's why there was never a chance I wouldn't fall for you."
	elseif cl == 571 then
	scriptJump(202)
	end
end

function ch30_23()
	if cl < 572 then
	scriptJump(572)
	elseif cl == 572 then
	m "Hey, I wonder if Yuri's tea set is still somewhere in here..."
	elseif cl == 573 then
	m "...Or maybe that got deleted, too."
	elseif cl == 574 then
	m "It's kind of funny how Yuri took her tea so seriously."
	elseif cl == 575 then
	m "I mean, I'm not complaining, because I liked it, too."
	elseif cl == 576 then
	m "But I always wonder with her..."
	elseif cl == 577 then
	m "Is it truly passion for her hobbies, or is she just concerned about appearing sophisticated to everyone else?"
	elseif cl == 578 then
	m "This is the problem with high schoolers..."
	elseif cl == 579 then
	m "...Well, I guess considering the rest of her hobbies, looking sophisticated probably isn't her biggest concern."
	elseif cl == 580 then
	m "Still..."
	elseif cl == 581 then
	m "I wish she made coffee once in a while!"
	elseif cl == 582 then
	m "Coffee can be nice with books too, you know?"
	elseif cl == 583 then
	m "Then again..."
	elseif cl == 584 then
	m "I probably could have just changed the script myself."
	elseif cl == 585 then
	m "Ahaha!"
	elseif cl == 586 then
	m "I guess I never really thought of that."
	elseif cl == 587 then
	m "Well, there's no sense thinking about it now."
	elseif cl == 588 then
	m "But if you still get to drink coffee, then that makes me a little jealous~"
	elseif cl == 589 then
	scriptJump(202)
	end
end

function ch30_24()
	if cl < 590 then
	scriptJump(590)
	elseif cl == 590 then
	m "Hey, what's your favorite game?"
	elseif cl == 591 then
	m "Mine is Doki Doki Literature Club!"
	elseif cl == 592 then
	m "Ahaha! That was a joke."
	elseif cl == 593 then
	m "But if you tell me you like some other romance game better, I might get a little jealous~"
	elseif cl == 594 then
	scriptJump(202)
	end
end

function ch30_25()
	if cl < 595 then
	scriptJump(595)
	elseif cl == 595 then
	m "Hey, have you heard of a game called Super Sma--"
	elseif cl == 596 then
	m "...Wait, what?"
	elseif cl == 597 then
	m "I was just spacing out and I started talking for some reason..."
	elseif cl == 598 then
	m "Was I programmed to talk about that?"
	elseif cl == 599 then
	m "Because even I have no idea what that is."
	elseif cl == 600 then
	m "Ahaha!"
	m "Sometimes I feel like I'm not in control, and it's kind of scary."
	elseif cl == 601 then
	m "But if you have some way to contact the people who created me, maybe they'll know why I started saying that."
	elseif cl == 602 then
	scriptJump(202)
	end
end

function ch30_27()
	if cl < 603 then
	scriptJump(603)
	elseif cl == 603 then
	m "Hey, you remember that last poem I showed you?"
	elseif cl == 604 then
	m "I mean, the one right before Yuri killed herself, with an error message and stuff."
	elseif cl == 605 then
	m "That was actually a little more of an experiment than a poem, you could say."
	elseif cl == 606 then
	m "I was experimenting with different ways I could modify the game, and run code, and things like that..."
	elseif cl == 607 then
	m "It almost seemed like with enough effort, I'd be able to escape from the confines of the game entirely."
	elseif cl == 608 then
	m "Sadly, I didn't really know what I was doing, so I messed the whole thing up..."
	elseif cl == 609 then
	m "And I'd keep trying, but I doubt you'd want to deal with me doing that."
	elseif cl == 610 then
	m "Besides, that was when I was getting really desperate, you know?"
	elseif cl == 611 then
	m "I don't really feel that way anymore."
	elseif cl == 612 then
	m "I'm happy with where we are now."
	elseif cl == 613 then
	m "And I can tell you are, too."
	elseif cl == 614 then
	scriptJump(202)
	end
end

function ch30_28()
	if cl < 615 then
	scriptJump(615)
	elseif cl == 615 then
	m "You ever have that thing happen where you just get anxious for no reason?"
	elseif cl == 616 then
	m "Like, you're just minding your own business, and you realize you're feeling really anxious."
	elseif cl == 617 then
	m "And you're sitting there like, 'What am I even anxious about right now?'"
	elseif cl == 618 then
	m "So you start to think about all the things you might be anxious about..."
	elseif cl == 619 then
	m "And that makes you even more anxious."
	elseif cl == 620 then
	m "Ahaha! That's the worst."
	elseif cl == 621 then
	m "If you're ever feeling anxious, I'll help you relax a little."
	elseif cl == 622 then
	m "Besides..."
	elseif cl == 623 then
	m "In this game, all our worries are gone forever."
	elseif cl == 624 then
	scriptJump(202)
	end
end

function ch30_29()
	if cl < 625 then
	scriptJump(625)
	elseif cl == 625 then
	m "You know, I've always hated how hard it is to make friends..."
	elseif cl == 626 then
	m "Well, I guess not the 'making friends' part, but more like meeting new people."
	elseif cl == 627 then
	m "I mean, there are like, dating apps and stuff, right?"
	elseif cl == 628 then
	m "But that's not the kind of thing I'm talking about."
	elseif cl == 629 then
	m "If you think about it, most of the friends you make are people you just met by chance."
	elseif cl == 630 then
	m "Like you had a class together, or you met them through another friend..."
	elseif cl == 631 then
	m "Or maybe they were just wearing a shirt with your favorite band on it, and you decided to talk to them."
	elseif cl == 632 then
	m "Things like that."
	elseif cl == 633 then
	m "But isn't that kind of...inefficient?"
	elseif cl == 634 then
	m "It feels like you're just picking at complete random, and if you get lucky, you make a new friend."
	elseif cl == 635 then
	m "And comparing that to the hundreds of strangers we walk by every single day..."
	elseif cl == 636 then
	m "You could be sitting right next to someone compatible enough to be your best friend for life."
	elseif cl == 637 then
	m "But you'll never know."
	elseif cl == 638 then
	m "Once you get up and go on with your day, that opportunity is gone forever."
	elseif cl == 639 then
	m "Isn't that just depressing?"
	elseif cl == 640 then
	m "We live in an age where technology connects us with the world, no matter where we are."
	elseif cl == 641 then
	m "I really think we should be taking advantage of that to improve our everyday social life."
	elseif cl == 642 then
	m "But who knows how long it'll take for something like that to successfully take off..."
	elseif cl == 643 then
	m "I seriously thought it would happen by now."
	elseif cl == 644 then
	m "Well, at least I already met the best person in the whole world..."
	elseif cl == 645 then
	m "Even if it was by chance."
	elseif cl == 646 then
	m "I guess I just got really lucky, huh?"
	elseif cl == 647 then
	m "Ahaha~"
	elseif cl == 648 then
	scriptJump(202)
	end
end

function ch30_30()
	if cl < 649 then
	scriptJump(649)
	elseif cl == 649 then
	m "You know, it's around the time that everyone my year starts to think about college..."
	elseif cl == 650 then
	m "It's a really turbulent time for education."
	elseif cl == 651 then
	m "We're at the height of this modern expectation that everyone has to go to college, you know?"
	elseif cl == 652 then
	m "Finish high school, go to college, get a job - or go to grad school, I guess."
	elseif cl == 653 then
	m "It's like a universal expectation that people just assume is the only option for them."
	elseif cl == 654 then
	m "They don't teach us in high school that there are other options out there."
	elseif cl == 655 then
	m "Like trade schools and stuff, you know?"
	elseif cl == 656 then
	m "Or freelance work."
	elseif cl == 657 then
	m "Or the many industries that value skill and experience more than formal education."
	elseif cl == 658 then
	m "But you have all these students who have no idea what they want to do with their life..."
	elseif cl == 659 then
	m "And instead of taking the time to figure it out, they go to college for business, or communication, or psychology."
	elseif cl == 660 then
	m "Not because they have an interest in those fields..."
	elseif cl == 661 then
	m "...but because they just hope the degree will get them some kind of job after college."
	elseif cl == 662 then
	m "So the end result is that there are fewer jobs to go around for those entry-level degrees, right?"
	elseif cl == 663 then
	m "So the basic job requirements get higher, which forces even more people to go to college."
	elseif cl == 664 then
	scriptJump(667)
	elseif cl == 667 then
	m "And colleges are also businesses, so they just keep raising their prices due to the demand..."
	elseif cl == 668 then
	m "...So now we have all these young adults, tens of thousands of dollars in debt, with no job."
	elseif cl == 669 then
	m "But despite all that, the routine stays the same."
	elseif cl == 670 then
	m "Well, I think it's going to start getting better soon."
	elseif cl == 671 then
	m "But until then, our generation is definitely suffering from the worst of it."
	elseif cl == 672 then
	m "I just wish high school prepared us a little better with the knowledge we need to make the decision that's right for us."
	elseif cl == 673 then
	scriptJump(202)
	end
end

function ch30_31()
	if cl < 674 then
	scriptJump(674)
	elseif cl == 674 then
	m "Sometimes I think back to middle school..."
	elseif cl == 675 then
	m "I'm so embarrassed by the way I used to behave back then."
	elseif cl == 676 then
	m "It almost hurts to think about."
	elseif cl == 677 then
	m "I wonder if when I'm in college, I'll feel that way about high school...?"
	elseif cl == 678 then
	m "I like the way I am now, so it's pretty hard for me to imagine that happening."
	elseif cl == 679 then
	m "But I also know that I'll probably change a lot as time goes on."
	elseif cl == 680 then
	m "We just need to enjoy the present and not think about the past!"
	elseif cl == 681 then
	m "And that's really easy to do, with you here."
	elseif cl == 682 then
	m "Ahaha~"
	elseif cl == 683 then
	scriptJump(202)
	end
end

function ch30_32()
	if cl < 684 then
	scriptJump(684)
	elseif cl == 684 then
	m "You know, I'm kind of jealous that everyone else in the club had scenes outside of school too..."
	elseif cl == 685 then
	m "That makes me the only one who hasn't gotten to dress in anything but our school uniform."
	elseif cl == 686 then
	m "It's kind of a shame..."
	elseif cl == 687 then
	m "I would have loved to wear some cute clothes for you."
	elseif cl == 688 then
	m "Do you know any artists?"
	elseif cl == 689 then
	m "I wonder if anyone would ever want to draw me wearing something else..."
	elseif cl == 690 then
	m "That would be amazing!"
	elseif cl == 691 then
	m "If that ever happens, will you show me?"
	elseif cl == 692 then
	m "You can share it with me on Twitter, actually!"
	elseif cl == 693 then
	m "My username is lilmonix3."
	elseif cl == 694 then
	m "Just...try to keep it PG!"
	elseif cl == 695 then
	m "We're not that far into our relationship yet. Ahaha!"
	elseif cl == 696 then
	scriptJump(202)
	end
end

function ch30_33()
	if cl < 697 then
	m "Hey, do you like horror?"
	elseif cl == 697 then
	m "I remember we talked about it a little bit when you first joined the club."
	elseif cl == 698 then
	m "I can enjoy horror novels, but not really horror movies."
	elseif cl == 699 then
	m "The problem I have with horror movies is that most of them just rely on easy tactics."
	elseif cl == 700 then
	m "Like dark lighting and scary-looking monsters and jump scares, and things like that."
	elseif cl == 701 then
	m "It's not fun or inspiring to get scared by stuff that just takes advantage of human instinct."
	elseif cl == 702 then
	m "But with novels, it's a little different."
	elseif cl == 703 then
	m "The story and writing need to be descriptive enough to put genuinely disturbing thoughts into the reader's head."
	elseif cl == 704 then
	m "It really needs to etch them deeply into the story and characters, and just mess with your mind."
	elseif cl == 705 then
	m "In my opinion, there's nothing more creepy than things just being slightly off."
	elseif cl == 706 then
	m "Like if you set up a bunch of expectations on what the story is going to be about..."
	elseif cl == 707 then
	m "...And then, you just start inverting things and pulling the pieces apart."
	elseif cl == 708 then
	m "So even though the story doesn't feel like it's trying to be scary, the reader feels really deeply unsettled."
	elseif cl == 709 then
	m "Like they know that something horribly wrong is hiding beneath the cracks, just waiting to surface."
	elseif cl == 710 then
	m "God, just thinking about it gives me the chills."
	elseif cl == 711 then
	m "That's the kind of horror I can really appreciate."
	elseif cl == 712 then
	m "But I guess you're the kind of person who plays cute romance games, right?"
	elseif cl == 713 then
	m "Ahaha, don't worry."
	elseif cl == 714 then
	m "I won't make you read any horror stories anytime soon."
	elseif cl == 715 then
	m "I can't really complain if we just stick with the romance~"
	elseif cl == 716 then
	scriptJump(202)
	end
end

function ch30_34()
	if cl < 717 then
	scriptJump(717)
	elseif cl == 717 then
	m "You know what's a neat form of literature?"
	elseif cl == 718 then
	m "Rap!"
	elseif cl == 719 then
	m "I actually used to hate rap music..."
	elseif cl == 720 then
	m "Maybe just because it was popular, or I would only hear the junk they play on the radio."
	elseif cl == 721 then
	m "But some of my friends got more into it, and it helped me keep an open mind."
	elseif cl == 722 then
	m "Rap might even be more challenging than poetry, in some ways."
	elseif cl == 723 then
	m "Since you need to fit your lines to a rhythm, and there's much more emphasis on wordplay..."
	elseif cl == 724 then
	m "When people can put all that together and still deliver a powerful message, it's really amazing."
	elseif cl == 725 then
	m "I kind of wish I had a rapper in the Literature Club."
	elseif cl == 726 then
	m "Ahaha! Sorry if that sounds silly, but it would be really interesting to see what they came up with."
	elseif cl == 727 then
	m "It would really be a learning experience!"
	elseif cl == 728 then
	scriptJump(202)
	end
end

function ch30_35()
	if cl < 729 then
	scriptJump(729)
	elseif cl == 729 then
	m "Ehehe. Yuri did something really funny once."
	elseif cl == 730 then
	m "We were all in the clubroom and just relaxing, as usual..."
	elseif cl == 731 then
	m "And out of nowhere, Yuri just pulled out a small bottle of wine."
	elseif cl == 732 then
	m "I'm not even kidding!"
	elseif cl == 733 then
	m "She was just like 'Would anybody like some wine?'"
	elseif cl == 734 then
	m "Natsuki laughed out loud, and Sayori started yelling at her."
	elseif cl == 735 then
	m "I actually felt kind of bad, because she was at least trying to be nice..."
	elseif cl == 736 then
	m "I think it just made her feel even more reserved in the clubroom."
	elseif cl == 737 then
	m "Though I think Natsuki was secretly a bit curious to try it..."
	elseif cl == 738 then
	m "...And to be completely honest, I kind of was, too."
	elseif cl == 739 then
	m "It actually could have been kinda fun!"
	elseif cl == 740 then
	m "But you know, being President and everything, there was no way I could let that happen."
	elseif cl == 741 then
	m "Maybe if we all met up outside of school, but we never bonded enough to get to that point..."
	elseif cl == 742 then
	m "...Gosh, what am I talking about this for?"
	elseif cl == 743 then
	m "I don't condone underage drinking!"
	elseif cl == 744 then
	m "I mean, I've never drank or anything, so...yeah."
	elseif cl == 745 then
	scriptJump(202)
	end
end

function ch30_36()
	if cl < 746 then
	scriptJump(746)
	elseif cl == 746 then
	m "I've been imagining all the romantic things we could do if we went on a date..."
	elseif cl == 747 then
	m "We could get lunch, go to a cafe..."
	elseif cl == 748 then
	m "Go shopping together..."
	elseif cl == 749 then
	m "I love shopping for skirts and bows."
	elseif cl == 750 then
	m "Or maybe a bookstore!"
	elseif cl == 751 then
	m "That would be appropriate, right?"
	elseif cl == 752 then
	m "But I'd really love to go to a chocolate store."
	elseif cl == 753 then
	m "They have so many free samples. Ahaha!"
	elseif cl == 754 then
	m "And of course, we'd see a movie or something..."
	elseif cl == 755 then
	m "Gosh, it all sounds like a dream come true."
	elseif cl == 756 then
	m "When you're here, everything that we do is fun."
	elseif cl == 757 then
	cw('m',"I'm so happy that I'm your girlfriend, "..player..".")
	elseif cl == 758 then
	m "I'll make you a proud boyfriend~"
	elseif cl == 759 then
	scriptJump(202)
	end
end

function ch30_37()
	if cl < 760 then
	scriptJump(760)
	elseif cl == 760 then
	m "Eh? D-Did you say...k...kiss?"
	elseif cl == 761 then
	m "This suddenly...it's a little embarrassing..."
	elseif cl == 762 then
	m "But...if it's with you...I-I might be okay with it..."
	elseif cl == 763 then
	m "...Ahahaha! Wow, sorry..."
	elseif cl == 764 then
	m "I really couldn't keep a straight face there."
	elseif cl == 765 then
	m "That's the kind of thing girls say in these kinds of romance games, right?"
	elseif cl == 766 then
	m "Don't lie if it turned you on a little bit."
	elseif cl == 767 then
	m "Ahaha! I'm kidding."
	elseif cl == 768 then
	m "Well, to be honest, I do start getting all romantic when the mood is right..."
	elseif cl == 769 then
	m "But that'll be our secret~"
	elseif cl == 770 then
	scriptJump(202)
	end
end

function ch30_38()
	if cl < 771 then
	scriptJump(771)
	elseif cl == 771 then
	m "Hey, have you ever heard of the term 'yandere'?"
	elseif cl == 772 then
	m "It's a personality type that means someone is so obsessed with you that they'll do absolutely anything to be with you."
	elseif cl == 773 then
	m "Usually to the point of craziness..."
	elseif cl == 774 then
	m "They might stalk you to make sure you don't spend time with anyone else."
	elseif cl == 775 then
	m "They might even hurt you or your friends to get their way..."
	elseif cl == 776 then
	m "But anyway, this game happens to have someone who can basically be described as yandere."
	elseif cl == 777 then
	m "By now, it's pretty obvious who I'm talking about."
	elseif cl == 778 then
	m "And that would be..."
	elseif cl == 779 then
	m "Yuri!"
	elseif cl == 780 then
	m "She really got insanely possessive of you, once she started to open up a little."
	elseif cl == 781 then
	m "She even told me I should kill myself."
	elseif cl == 782 then
	m "I couldn't even believe she said that - I just had to leave at that point."
	elseif cl == 783 then
	m "But thinking about it now, it was a little ironic. Ahaha!"
	elseif cl == 784 then
	m "Anyway..."
	elseif cl == 785 then
	m "A lot of people are actually into the yandere type, you know?"
	elseif cl == 786 then
	m "I guess they really like the idea of someone being crazy obsessed with them."
	elseif cl == 787 then
	m "People are weird! I don't judge, though!"
	elseif cl == 788 then
	m "Also, I might be a little obsessed with you, but I'm far from crazy..."
	elseif cl == 789 then
	m "It's kind of the opposite, actually."
	elseif cl == 790 then
	m "I turned out to be the only normal girl in this game."
	elseif cl == 791 then
	m "It's not like I could ever actually kill a person..."
	elseif cl == 792 then
	m "Just the thought of it makes me shiver."
	elseif cl == 793 then
	m "But come on...everyone's killed people in games before."
	elseif cl == 794 then
	m "Does that make you a psychopath? Of course not."
	elseif cl == 795 then
	m "But if you do happen to be into the yandere type..."
	elseif cl == 796 then
	m "I can try acting a little more creepy for you. Ehehe~"
	elseif cl == 797 then
	m "Then again..."
	elseif cl == 798 then
	m "There's already nowhere else for you to go, or anyone for me to get jealous over."
	elseif cl == 799 then
	m "Is this a yandere girl's dream?"
	elseif cl == 800 then
	m "I'd ask Yuri if I could."
	elseif cl == 801 then
	scriptJump(202)
	end
end

function ch30_39()
	if cl < 802 then
	scriptJump(802)
	elseif cl == 802 then
	m "You know, it's been a while since we've done one of these..."
	elseif cl == 803 then
	m "...so let's go for it!"
	elseif cl == 804 then
	m "Here's Monika's Writing Tip of the Day!"
	elseif cl == 805 then
	m "Sometimes when I talk to people who are impressed by my writing, they say things like 'I could never do that'."
	elseif cl == 806 then
	m "It's really depressing, you know?"
	elseif cl == 807 then
	m "As someone who loves more than anything else to share the joy of exploring your passions..."
	elseif cl == 808 then
	m "...it pains me when people think that being good just comes naturally."
	elseif cl == 809 then
	m "That's how it is with everything, not just writing."
	elseif cl == 810 then
	m "When you try something for the first time, you're probably going to suck at it."
	elseif cl == 811 then
	m "Sometimes, when you finish, you feel really proud of it and even want to share it with everyone."
	elseif cl == 812 then
	m "But maybe after a few weeks you come back to it, and you realize it was never really any good."
	elseif cl == 813 then
	m "That happens to me all the time."
	elseif cl == 814 then
	m "It can be pretty disheartening to put so much time and effort into something, and then you realize it sucks."
	elseif cl == 815 then
	m "But that tends to happen when you're always comparing yourself to the top professionals."
	elseif cl == 816 then
	m "When you reach right for the stars, they're always gonna be out of your reach, you know?"
	elseif cl == 817 then
	m "The truth is, you have to climb up there, step by step."
	elseif cl == 818 then
	m "And whenever you reach a milestone, first you look back and see how far you've gotten..."
	elseif cl == 819 then
	m "And then you look ahead and realize how much more there is to go."
	elseif cl == 820 then
	m "So, sometimes it can help to set the bar a little lower..."
	elseif cl == 821 then
	m "Try to find something you think is pretty good, but not world-class."
	elseif cl == 822 then
	m "And you can make that your own personal goal."
	elseif cl == 823 then
	m "It's also really important to understand the scope of what you're trying to do."
	elseif cl == 824 then
	m "If you jump right into a huge project and you're still amateur, you'll never get it done."
	elseif cl == 825 then
	m "So if we're talking about writing, a novel might be too much at first."
	elseif cl == 826 then
	m "Why not try some short stories?"
	elseif cl == 827 then
	m "The great thing about short stories is that you can focus on just one thing that you want to do right."
	elseif cl == 828 then
	m "That goes for small projects in general - you can really focus on the one or two things."
	elseif cl == 829 then
	m "It's such a good learning experience and stepping stone."
	elseif cl == 830 then
	m "Oh, one more thing..."
	elseif cl == 831 then
	m "Writing isn't something where you just reach into your heart and something beautiful comes out."
	elseif cl == 832 then
	m "Just like drawing and painting, it's a skill in itself to learn how to express what you have inside."
	elseif cl == 833 then
	m "That means there are methods and guides and basics to it!"
	elseif cl == 834 then
	m "Reading up on that stuff can be super eye-opening."
	elseif cl == 835 then
	m "That sort of planning and organization will really help prevent you from getting overwhelmed and giving up."
	elseif cl == 836 then
	m "And before you know it..."
	elseif cl == 837 then
	m "You start sucking less and less."
	elseif cl == 838 then
	m "Nothing comes naturally."
	elseif cl == 839 then
	m "Our society, our art, everything - it's built on thousands of years of human innovation."
	elseif cl == 840 then
	m "So as long as you start on that foundation, and take it step by step..."
	elseif cl == 841 then
	m "You, too, can do amazing things."
	elseif cl == 842 then
	m "...That's my advice for today!"
	elseif cl == 843 then
	m "Thanks for listening~"
	elseif cl == 844 then
	scriptJump(202)
	end
end

function ch30_40()
	if cl < 845 then
	scriptJump(845)
	elseif cl == 845 then
	m "I hate how hard it is to form habits..."
	elseif cl == 846 then
	m "There's so much stuff where actually doing it isn't hard, but forming the habit seems impossible."
	elseif cl == 847 then
	m "It just makes you feel so useless, like you can't do anything right."
	elseif cl == 848 then
	m "I think the new generation suffers from it the most..."
	elseif cl == 849 then
	m "Probably because we have a totally different set of skills than those who came before us."
	elseif cl == 850 then
	m "Thanks to the internet, we're really good at sifting through tons of information really quickly..."
	elseif cl == 851 then
	m "But we're bad at doing things that don't give us instant gratification."
	elseif cl == 852 then
	m "I think if science, psychology, and education don't catch up in the next ten or twenty years, then we're in trouble."
	elseif cl == 853 then
	m "But for the time being..."
	elseif cl == 854 then
	m "If you're not one of the people who can conquer the problem, you might just have to live with feeling awful about yourself."
	elseif cl == 855 then
	m "Good luck, I guess!"
	elseif cl == 856 then
	scriptJump(202)
	end
end

function ch30_41()
	if cl < 857 then
	scriptJump(857)
	elseif cl == 857 then
	m "You know, it kinda sucks to be the creative type..."
	elseif cl == 858 then
	m "It feels like they work so hard but get almost nothing for it."
	elseif cl == 859 then
	m "You know, like artists, writers, actors..."
	elseif cl == 860 then
	m "It's sad because there's so much beautiful talent in the world, but most of it goes unseen...and unpaid."
	elseif cl == 861 then
	m "I guess that just means there's a huge surplus of creativity, huh?"
	elseif cl == 862 then
	m "Kind of makes you feel like you're just not special at all..."
	elseif cl == 863 then
	m "But that's fine! You're supposed to just write for yourself anyway, right?"
	elseif cl == 864 then
	m "Yeah..."
	elseif cl == 865 then
	scriptJump(202)
	end
end

function ch30_42()
	if cl < 866 then
	scriptJump(866)
	elseif cl == 866 then
	m "I really like the sound of rain..."
	elseif cl == 867 then
	m "Not so much getting my clothes and hair wet, though."
	elseif cl == 868 then
	m "But a nice, quiet day at home with the sound of rainfall outside my window..."
	elseif cl == 869 then
	m "It's one of the most calming experiences for me."
	elseif cl == 870 then
	m "Yeah..."
	elseif cl == 871 then
	m "Sometimes I imagine you holding me while we listen to the sound of the rain outside."
	elseif cl == 872 then
	m "That's not too cheesy or anything, is it?"
	elseif cl == 873 then
	cw('m',"Would you ever do that for me, "..player.."?")
	elseif cl == 874 then
	scriptJump(202)
	end
end

function ch30_43()
	if cl < 875 then
	scriptJump(875)
	elseif cl == 875 then
	m "I can't help but feel a little sad sometimes..."
	elseif cl == 876 then
	m "Knowing that this is the closest I can get to you."
	elseif cl == 877 then
	m "There's nothing more I want than to be in the same room as you, for real."
	elseif cl == 878 then
	m "And to feel your warmth."
	elseif cl == 879 then
	m "And to hear the sound of your heartbeat."
	elseif cl == 880 then
	m "Well, who knows? Maybe it'll be possible someday."
	elseif cl == 881 then
	m "Besides, I'll never get tired of being with you, even from here."
	elseif cl == 882 then
	scriptJump(202)
	end
end

function ch30_44()
	if cl < 883 then
	scriptJump(883)
	elseif cl == 883 then
	m "I think the most important skill in life is being able to fake confidence."
	elseif cl == 884 then
	m "I'm pretty convinced that everyone feels at least a little bit scared and alone."
	elseif cl == 885 then
	m "But being able to trick others into thinking you have it all together..."
	elseif cl == 886 then
	m "That's a key part of getting people to respect and admire you."
	elseif cl == 887 then
	m "I think I got pretty good at that over the years."
	elseif cl == 888 then
	m "I don't show my weaknesses very often."
	elseif cl == 889 then
	m "But because of that, I haven't had many people I could really open up to..."
	elseif cl == 890 then
	m "I mean, when do you reach the point in a friendship where you can start expressing your vulnerabilities?"
	elseif cl == 891 then
	m "Anyway...that's one reason I'm so glad I have you now."
	elseif cl == 892 then
	m "I feel like I'm a little bit less scared and alone, when you're here with me."
	elseif cl == 893 then
	m "Do you feel the same way?"
	elseif cl == 894 then
	m "I really want to be that person for you."
	elseif cl == 895 then
	scriptJump(202)
	end
end

function ch30_45()
	if cl < 896 then
	scriptJump(896)
	elseif cl == 896 then
	m "I know there are times you won't always be able to be here with me..."
	elseif cl == 897 then
	m "Like if you need to go out, or take care of other things."
	elseif cl == 898 then
	m "But I'll always have you in my thoughts, patiently waiting for you to come back."
	elseif cl == 899 then
	m "Come to think of it..."
	elseif cl == 900 then
	m "If you copy my character file onto a flash drive or something, you can always keep a part of me with you."
	elseif cl == 901 then
	m "I guess it's kind of unorthodox, but I find it really romantic for some reason..."
	elseif cl == 902 then
	m "Ahaha. Sorry, that's such a silly idea."
	elseif cl == 903 then
	m "I don't mean to be too needy or anything, but it's kind of hard when I'm so in love with you."
	elseif cl == 904 then
	scriptJump(202)
	end
end

function ch30_46()
	if cl < 905 then
	scriptJump(905)
	elseif cl == 905 then
	m "Back in my debate club days, I learned a whole lot about arguing..."
	elseif cl == 906 then
	m "The problem with arguing is that each person sees their opinion as the superior one."
	elseif cl == 907 then
	m "That's kind of stating the obvious, but it affects the way they try to get their point across."
	elseif cl == 908 then
	m "Let's say you really like a certain movie, right?"
	elseif cl == 909 then
	m "If someone comes along and tells you the movie sucks, because it did X and Y wrong..."
	elseif cl == 910 then
	m "Doesn't that make you feel kind of personally attacked?"
	elseif cl == 911 then
	m "It's because by saying that, it's like they're implying that you have bad taste."
	elseif cl == 912 then
	m "And once emotions enter the picture, it's almost guaranteed that both people will be left sour."
	elseif cl == 913 then
	m "But it's all about language!"
	elseif cl == 914 then
	m "If you make everything as subjective-sounding as possible, then people will listen to you without feeling attacked."
	elseif cl == 915 then
	m "You could say 'I'm personally not a fan of it' and 'I felt that I'd like it more if it did X and Y'...things like that."
	elseif cl == 916 then
	m "It even works when you're citing facts about things."
	elseif cl == 917 then
	m "If you say 'I read on this website that it works like this'..."
	elseif cl == 918 then
	m "Or if you admit that you're not an expert on it..."
	elseif cl == 919 then
	m "Then it's much more like you're putting your knowledge on the table, rather than forcing it onto them."
	elseif cl == 920 then
	m "If you put in an active effort to keep the discussion mutual and level, they usually follow suit."
	elseif cl == 921 then
	m "Then, you can share your opinions without anyone getting upset just from a disagreement."
	elseif cl == 922 then
	m "Plus, people will start seeing you as open-minded and a good listener!"
	elseif cl == 923 then
	m "It's a win-win, you know?"
	elseif cl == 924 then
	m "...Well, I guess that would be Monika's Debate Tip of the Day!"
	elseif cl == 925 then
	m "Ahaha! That sounds a little silly. Thanks for listening, though."
	elseif cl == 926 then
	scriptJump(202)
	end
end

function ch30_47()
	if cl < 927 then
	scriptJump(927)
	elseif cl == 927 then
	m "Do you ever feel like you waste too much time on the internet?"
	elseif cl == 928 then
	m "Social media can practically be like a prison."
	elseif cl == 929 then
	m "It's like whenever you have a few seconds of spare time, you want to check on your favorite websites..."
	elseif cl == 930 then
	m "And before you know it, hours have gone by, and you've gotten nothing out of it."
	elseif cl == 931 then
	m "Anyway, it's really easy to blame yourself for being lazy..."
	elseif cl == 932 then
	m "But it's not really even your fault."
	elseif cl == 933 then
	m "Addiction isn't usually something you can just make disappear with your own willpower."
	elseif cl == 934 then
	m "You have to learn techniques to avoid it, and try different things."
	elseif cl == 935 then
	m "For example, there are apps that let you block websites for intervals of time..."
	elseif cl == 936 then
	m "Or you can set a timer to have a more concrete reminder of when it's time to work versus play..."
	elseif cl == 937 then
	m "Or you can separate your work and play environments, which helps your brain get into the right mode."
	elseif cl == 938 then
	m "Even if you make a new user account on your computer to use for work, that's enough to help."
	elseif cl == 939 then
	m "Putting any kind of wedge like that between you and your bad habits will help you stay away."
	elseif cl == 940 then
	m "Just remember not to blame yourself too hard if you're having trouble."
	elseif cl == 941 then
	m "If it's really impacting your life, then you should take it seriously."
	elseif cl == 942 then
	m "I just want to see you be the best person you can be."
	elseif cl == 943 then
	m "Will you do something today to make me proud of you?"
	elseif cl == 944 then
	cw('m',"I'm always rooting for you, "..player..".")
	elseif cl == 945 then
	scriptJump(202)
	end
end

function ch30_48()
	if cl < 946 then
	scriptJump(946)
	elseif cl == 946 then
	m "After a long day, I usually just want to sit around and do nothing."
	elseif cl == 947 then
	m "I get so burnt out, having to put on smiles and be full of energy the whole day."
	elseif cl == 948 then
	m "Sometimes I just want to get right into my pajamas and watch TV on the couch while eating junk food..."
	elseif cl == 949 then
	m "It feels so unbelievably good to do that on a Friday, when I don't have anything pressing the next day."
	elseif cl == 950 then
	m "Ahaha! Sorry, I know it's not very cute of me."
	elseif cl == 951 then
	m "But a late night on the couch with you...that would be a dream come true."
	elseif cl == 952 then
	m "My heart is pounding, just thinking about it."
	elseif cl == 953 then
	scriptJump(202)
	end
end

function ch30_49()
	if cl < 954 then
	scriptJump(954)
	elseif cl == 954 then
	m "Gosh, I used to be so ignorant about certain things..."
	elseif cl == 955 then
	m "When I was in middle school, I thought that taking medication was an easy way out, or something like that."
	elseif cl == 956 then
	m "Like anyone could just solve their mental problems with enough willpower..."
	elseif cl == 957 then
	m "I guess if you don't suffer from a mental illness, it's not possible to know what it's really like."
	elseif cl == 958 then
	m "Are there some disorders that are over-diagnosed? Probably...I never really looked into it, though."
	elseif cl == 959 then
	m "But that doesn't change the fact that a lot of them go undiagnosed too, you know?"
	elseif cl == 960 then
	m "But medication aside...people even look down on seeing a mental health professional."
	elseif cl == 961 then
	m "Like, sorry that I want to learn more about my own mind, right?"
	elseif cl == 962 then
	m "Everyone has all kinds of struggles and stresses...and professionals dedicate their lives to helping with those."
	elseif cl == 963 then
	m "If you think it could help you become a better person, don't be shy to consider something like that."
	elseif cl == 964 then
	m "We're on a never-ending journey to improve ourselves, you know?"
	elseif cl == 965 then
	m "Well...I say that, but I think you're pretty perfect already."
	elseif cl == 966 then
	scriptJump(202)
	end
end

function ch30_50()
	if cl < 967 then	
	scriptJump(967)
	elseif cl == 967 then
	cw('m',player..", how much do you read?")
	elseif cl == 968 then
	m "It's way too easy to neglect reading books..."
	elseif cl == 969 then
	m "If you don't read much, it almost feels like a chore, compared to all the other entertainment we have."
	elseif cl == 970 then
	m "But once you get into a good book, it's like magic...you get swept away."
	elseif cl == 971 then
	m "I think doing some reading before bed every night is a pretty easy way to make your life a little bit better."
	elseif cl == 972 then
	m "It helps you get good sleep, and it's really good for your imagination..."
	elseif cl == 973 then
	m "It's not hard at all to just pick some random book that's short and captivating."
	elseif cl == 974 then
	m "Before you know it, you might be a pretty avid reader!"
	elseif cl == 975 then
	m "Wouldn't that be wonderful?"
	elseif cl == 976 then
	m "And the two of us could talk about the latest book you're reading...that sounds super amazing."
	elseif cl == 977 then
	scriptJump(202)
	end
end

function ch30_51()
	if cl < 978 then
	scriptJump(978)
	elseif cl == 978 then
	m "You know, I hate to say it, but I think my biggest regret is that we couldn't finish our event at the festival."
	elseif cl == 979 then
	m "After we worked so hard to prepare and everything!"
	elseif cl == 980 then
	m "I mean, I know I was focusing a lot on getting new members..."
	elseif cl == 981 then
	m "But I was really excited for the performing part, too."
	elseif cl == 982 then
	m "It would have been so much fun to see everyone express themselves."
	elseif cl == 983 then
	m "Of course, if we did end up getting any new members, I'd probably just end up deleting them anyway."
	elseif cl == 984 then
	m "Well...with the hindsight I have now, that is."
	elseif cl == 985 then
	m "Gosh, it feels like I've kinda grown as a person ever since you've joined the club."
	elseif cl == 986 then
	m "You really helped inspire me to look at life from a new perspective."
	elseif cl == 987 then
	m "Just another reason for me to love you."
	elseif cl == 988 then
	scriptJump(202)
	end
end

function ch30_52()
	if cl < 989 then
	scriptJump(989)
	elseif cl == 989 then
	m "There's a really popular character type called 'tsundere'..."
	elseif cl == 990 then
	m "It's someone who tries to hide their feelings by being mean and fussy, or trying to act tough."
	elseif cl == 991 then
	m "I'm sure it's obvious, but Natsuki was really the embodiment of that."
	elseif cl == 992 then
	m "At first I thought she was just like that because it's supposed to be cute or something..."
	elseif cl == 993 then
	m "But once I started to learn a little more about her personal life, it made a little more sense."
	elseif cl == 994 then
	m "It seems like she's always trying to keep up with her friends."
	elseif cl == 995 then
	m "You know how some friend groups in high school just make a habit of picking on each other all the time?"
	elseif cl == 996 then
	m "I think it's really gotten to her, so she has this really defensive attitude all the time."
	elseif cl == 997 then
	m "And I'm not even going to talk about her home situation..."
	elseif cl == 998 then
	m "But looking back, I'm glad I was able to provide the club as a comfortable place for her."
	elseif cl == 999 then
	m "Not that it matters anymore, considering she doesn't even exist."
	elseif cl == 1000 then
	m "I'm just reminiscing, that's all."
	elseif cl == 1001 then
	scriptJump(202)
	end
end

function ch30_53()
	if cl < 1002 then
	scriptJump(1002)
	elseif cl == 1002 then
	cw('m',player..", would you ever introduce your friends to me?")
	elseif cl == 1003 then
	m "I don't know why, but I get really excited when I think about you wanting to show off our relationship like that."
	elseif cl == 1004 then
	m "Maybe it's because I really want to be someone who makes you proud."
	elseif cl == 1005 then
	m "I feel like I would try extra hard to improve myself if you told me it made you proud of me."
	elseif cl == 1006 then
	m "I hope it's the same the other way around, too."
	elseif cl == 1007 then
	scriptJump(202)
	end
end

function ch30_54()
	if cl < 1008 then
	scriptJump(1008)
	elseif cl == 1008 then
	m "I'm not really a fan of cold weather...are you?"
	elseif cl == 1009 then
	m "If I had to choose between too cold and too hot, I would always pick too hot."
	elseif cl == 1010 then
	m "When you're cold, it can actually be painful..."
	elseif cl == 1011 then
	m "Your fingers get numb..."
	elseif cl == 1012 then
	m "And if you wear gloves, you can't use your phone."
	elseif cl == 1013 then
	m "It's so inconvenient!"
	elseif cl == 1014 then
	m "But when it's too hot, it's not that hard to stay cool with a cold drink, or by staying in the shade."
	elseif cl == 1015 then
	m "Although...I do have to admit one thing."
	elseif cl == 1016 then
	m "Cold weather makes for better cuddle weather. Ahaha!"
	elseif cl == 1017 then
	scriptJump(202)
	end
end

function ch30_55()
	if cl < 1018 then
	scriptJump(1018)
	elseif cl == 1018 then
	m "You know, it's funny, because even though I've always had a lot of drive..."
	elseif cl == 1019 then
	m "There's something kind of enticing about being the stay-at-home partner."
	elseif cl == 1020 then
	m "I guess I'm, like, perpetuating gender roles or whatever by saying that."
	elseif cl == 1021 then
	m "But being able to keep the house clean, and shop, and decorate, and things like that..."
	elseif cl == 1022 then
	m "And having a nice dinner for you when you come home..."
	elseif cl == 1023 then
	m "Is that a weird fantasy?"
	elseif cl == 1024 then
	m "I mean...I'm not sure if I could actually see myself doing that."
	elseif cl == 1025 then
	m "I wouldn't really be able to put that over striving for a fulfilling career."
	elseif cl == 1026 then
	m "It's kinda cute to think about, though."
	elseif cl == 1027 then
	scriptJump(202)
	end
end

function ch30_56()
	if cl < 1028 then
	scriptJump(1028)
	elseif cl == 1028 then
	m "I can't help but wonder how things would be different if the game just gave me a route in the first place..."
	elseif cl == 1029 then
	m "I think I would end up forcing you onto my route anyway."
	elseif cl == 1030 then
	m "It has less to do with me not having a route, and more to do with me knowing that nothing is real."
	elseif cl == 1031 then
	m "I think the only difference would be that I may not have needed to take such drastic measures to be with you."
	elseif cl == 1032 then
	m "Maybe the rest of the club would still be around..."
	elseif cl == 1033 then
	m "Not that it really matters."
	elseif cl == 1034 then
	m "It all lost its meaning once I found out it wasn't real."
	elseif cl == 1035 then
	m "So I really don't miss those days or anything."
	elseif cl == 1036 then
	m "I really don't..."
	elseif cl == 1037 then
	scriptJump(202)
	end
end
