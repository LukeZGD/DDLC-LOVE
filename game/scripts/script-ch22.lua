local y_chance = math.random(0,2)
local faint_effect = math.random(0,2)

function ch22script()
	if cl == 1077 then
	bgUpdate('club_day2')
	if xaload == 1 then audioUpdate('6',true) end
	bl "Another day passes, and it's time for the club meeting already."
	elseif cl == 1078 then
	bl "I've gotten a little more comfortable here over the past couple days."
	elseif cl == 1079 then
	bl "Entering the clubroom, the usual scene greets me."
	if y_chance == 0 then
		updateYuri('1r','',80)
	else
		updateYuri('1','s',80)
	end
	cw('y',"Welcome back, "..player.."...")
	elseif cl == 1080 then
	if y_chance == 0 then
		updateYuri('1l','',80)
	end
	mc "Ah, hi Yuri..."
	elseif cl == 1081 then
	bl "I'm not sure if it's me, or if it's Yuri's expression..."
	elseif cl == 1082 then
	bl "But the weight of yesterday's quarrel still hangs in the air a little."
	elseif cl == 1083 then
	updateYuri('2','v')
	y "U-Um..."
	elseif cl == 1084 then
	bl "Yuri glances over her shoulder, looking around the room."
	elseif cl == 1085 then
	bl "Natsuki is reading manga at a desk."
	elseif cl == 1086 then
	bl "And surprisingly, Monika isn't here yet."
	elseif cl == 1087 then
	bl "Suddenly, Yuri takes my arm and pulls me to the corner of the room."
	elseif cl == 1088 then
	bgUpdate('closet')
	updateYuri('2','t')
	y "About yesterday..."
	elseif cl == 1089 then
	y "I..."
	elseif cl == 1090 then
	updateYuri('2','v')
	y "I really need to apologize."
	elseif cl == 1091 then
	y "Nothing like that has ever happened before..."
	elseif cl == 1092 then
	updateYuri('2','t')
	y "And...something just came over me, I guess..."
	elseif cl == 1093 then
	y "I wasn't acting mentally sound."
	elseif cl == 1094 then
	updateYuri('2','w')
	y "Please don't think we're usually like this!"
	elseif cl == 1095 then
	y "Not just me, but Natsuki as well..."
	elseif cl == 1096 then
	updateYuri('2','t')
	mc "Yuri..."
	elseif cl == 1097 then
	mc "I'm happy that you were considerate and apologized."
	elseif cl == 1098 then
	mc "You don't have to worry too much."
	elseif cl == 1099 then
	mc "Even though I've only been here a couple days, I could tell something was off yesterday..."
	elseif cl == 1100 then
	mc "Maybe we were just a little extra sensitive because it was our first time sharing poems."
	elseif cl == 1101 then
	mc "But whatever it was..."
	elseif cl == 1102 then
	mc "It didn't make me think any less of you."
	elseif cl == 1103 then
	mc "I had already decided that there's no way you can be a bad person."
	elseif cl == 1104 then
	mc "And now that you're apologizing, I know you really didn't mean it."
	elseif cl == 1105 then
	updateYuri('3','t')
	y "A-Ah..."
	elseif cl == 1106 then
	cw('y',player.."...")
	elseif cl == 1107 then
	updateYuri('3','u')
	y "Don't say those kinds of things so frankly..."
	elseif cl == 1108 then
	y "They make me a little too happy."
	elseif cl == 1109 then
	updateYuri('1','s')
	y "I'm really glad that you're such an understanding person..."
	elseif cl == 1110 then
	y "And I'm really glad that you joined this club."
	elseif cl == 1111 then
	y "Everything is a little bit brighter with you around, and--"
	elseif cl == 1112 then
	updateYuri('1','t')
	y "Ah--"
	elseif cl == 1113 then
	updateYuri('4','c2')
	y "Sorry, what am I saying right now...?"
	elseif cl == 1114 then
	y "I just--"
	elseif cl == 1115 then
	updateNatsuki('2','c',200)
	n "Hey, have you guys seen Monika?"
	elseif cl == 1116 then
	updateYuri('3','n')
	y "Ah--!"
	elseif cl == 1117 then
	mc "No, I haven't..."
	elseif cl == 1118 then
	mc "I was also kind of wondering where she was."
	elseif cl == 1119 then
	updateNatsuki('5','g')
	n "Man..."
	elseif cl == 1120 then
	updateNatsuki('5','c')
	n "Yuri, I'm guessing you haven't, either?"
	elseif cl == 1121 then
	updateYuri('4','a2')
	y "..."
	elseif cl == 1122 then
	bl "Yuri is clearly taken aback by how calmly Natsuki is addressing her."
	elseif cl == 1123 then
	y "N-No, I haven't..."
	elseif cl == 1124 then
	updateNatsuki('1','u')
	n "Jeez, this isn't like her at all."
	elseif cl == 1125 then
	n "I know it's stupid, but I can't help but worry a little bit..."
	elseif cl == 1126 then
	updateYuri('2','t')
	y "..."
	elseif cl == 1127 then
	updateNatsuki('1','h')
	n "What?"
	elseif cl == 1128 then
	n "Why're you looking at me like that?"
	elseif cl == 1129 then
	y "U-Um..."
	elseif cl == 1130 then
	y "Natsuki, about yesterday..."
	elseif cl == 1131 then
	updateYuri('3','w')
	y "I-I just wanted to apologize!"
	elseif cl == 1132 then
	y "I promise I didn't mean any of the things I said!"
	elseif cl == 1133 then
	updateYuri('3','t')
	y "And I'll do my best to stay under control from now on..."
	elseif cl == 1134 then
	y "So--"
	elseif cl == 1135 then
	updateNatsuki('2','c')
	n "Yuri, what the heck are you talking about?"
	elseif cl == 1136 then
	n "Did you do something yesterday?"
	elseif cl == 1137 then
	updateYuri('3','f')
	y "...Eh?"
	elseif cl == 1138 then
	updateNatsuki('2','a')
	n "Jeez..."
	elseif cl == 1139 then
	style_edited = true
	n "Whatever's on your mind, I'm sure it was nothing."
	elseif cl == 1140 then
	n "I don't even remember anything bad happening."
	elseif cl == 1141 then
	n "You're the kind of person who worries too much about the little things, aren't you?"
	elseif cl == 1142 then
	style_edited = false
	updateYuri('2','o')
	y "..."
	elseif cl == 1143 then
	y "B-But..."
	elseif cl == 1144 then
	updateNatsuki('2','j')
	n "I'll accept your apology anyway, if it helps you feel better about it."
	elseif cl == 1145 then
	n "Besides, it's kinda nice to hear, since I was always afraid you secretly hated me or something like that."
	elseif cl == 1146 then
	updateNatsuki('2','z')
	n "Ehehe."
	elseif cl == 1147 then
	updateYuri('3','q')
	y "N-No, not at all...!"
	elseif cl == 1148 then
	y "I don't hate you..."
	elseif cl == 1149 then
	updateNatsuki('2','l')
	n "Ahaha."
	elseif cl == 1150 then
	n "Well, you're kind of weird, but I don't hate you either."
	elseif cl == 1151 then
	updateYuri('3','t')
	y "..."
	elseif cl == 1152 then
	bl "Natsuki turns to me."
	elseif cl == 1153 then
	updateNatsuki('2','a')
	n "You're still on trial, though."
	elseif cl == 1154 then
	mc "Hey...!"
	elseif cl == 1155 then
	bl "Suddenly, the door swings open."
	elseif cl == 1156 then
	updateMonika('1','g',-40)
	m "Sorry! I'm super sorry!"
	elseif cl == 1157 then
	mc "Ah, there you are..."
	elseif cl == 1158 then
	m "I didn't mean to be late..."
	elseif cl == 1159 then
	m "I hope you guys weren't worried or anything!"
	elseif cl == 1160 then
	mc "Nah..."
	elseif cl == 1161 then
	mc "Well, Natsuki was."
	elseif cl == 1162 then
	updateNatsuki('1','p')
	n "I-I was not!!"
	elseif cl == 1163 then
	updateNatsuki('1','k')
	m "Ahaha."
	elseif cl == 1164 then
	updateNatsuki('1','s')
	n "...What took you so long, anyway?"
	elseif cl == 1165 then
	updateMonika('1','e')
	m "Ah..."
	elseif cl == 1166 then
	m "Well, my last period today was study hall."
	elseif cl == 1167 then
	m "To be honest, I kind of just lost track of time..."
	elseif cl == 1168 then
	m "Ahaha..."
	elseif cl == 1169 then
	updateNatsuki('2','c')
	n "That makes no sense, though."
	elseif cl == 1170 then
	n "You would have heard the bell ring, at least."
	elseif cl == 1171 then
	updateMonika('1','m')
	m "I must not have heard it, since I was practicing piano..."
	elseif cl == 1172 then
	updateYuri('1','e')
	y "Piano...?"
	elseif cl == 1173 then
	y "I wasn't aware you played music as well, Monika."
	elseif cl == 1174 then
	updateMonika('1','l')
	m "Ah, don't give me more credit than I deserve."
	elseif cl == 1175 then
	updateMonika('1','m')
	m "I guess I've been practicing for a while, but I'm still not really good yet."
	elseif cl == 1176 then
	updateYuri('1','a')
	y "Still..."
	elseif cl == 1177 then
	y "That must require a lot of dedication."
	elseif cl == 1178 then
	y "So, I'm still impressed."
	elseif cl == 1179 then
	updateMonika('5a')
	m "Aw, well thanks, Yuri~"
	elseif cl == 1180 then
	updateNatsuki('2','d')
	n "You should play something for us sometime!"
	elseif cl == 1181 then
	m "Ahaha, that's..."
	elseif cl == 1182 then
	bl "Monika looks at me."
	elseif cl == 1183 then
	updateMonika('1','a')
	m "Well, I am working on writing a song, but it's not quite done yet..."
	elseif cl == 1184 then
	m "Maybe once I get a little bit better, I will."
	elseif cl == 1185 then
	mc "That sounds cool."
	elseif cl == 1186 then
	mc "I look forward to it."
	elseif cl == 1187 then
	updateMonika('1','b')
	m "Is that so?"
	elseif cl == 1188 then
	m "In that case..."
	elseif cl == 1189 then
	cw('m',"I won't let you down, "..player..".")
	elseif cl == 1190 then
	hideYuri()
	hideNatsuki()
	updateMonika('5a','',80)
	bl "Monika smiles sweetly."
	elseif cl == 1191 then
	mc "Ah..."
	elseif cl == 1192 then
	mc "I didn't mean any pressure or anything like that!"
	elseif cl == 1193 then
	updateMonika('1','a')
	m "Ahaha, don't worry."
	elseif cl == 1194 then
	m "I was hoping that I could share it with you, anyway."
	elseif cl == 1195 then
	m "I guess that's why I've been practicing so much recently."
	elseif cl == 1196 then
	mc "I see..."
	elseif cl == 1197 then
	bl "I'm not sure if Monika was referring to the whole club, or just me..."
	elseif cl == 1198 then
	mc "In that case, best of luck."
	elseif cl == 1199 then
	updateMonika('1','j')
	m "Thanks~!"
	elseif cl == 1200 then
	updateMonika('1','a')
	m "So, I didn't miss anything, did I?"
	elseif cl == 1201 then
	mc "Not...not really."
	elseif cl == 1202 then
	hideMonika()
	bl "I choose not to bring up anything that the three of us talked about."
	elseif cl == 1203 then
	bl "Besides, Natsuki has already run off into the closet."
	elseif cl == 1204 then
	updateYuri('2','q',80)
	cw('y',player.."...")
	elseif cl == 1205 then
	y "Um..."
	elseif cl == 1206 then
	y "Since your compliments put me in a good mood..."
	elseif cl == 1207 then
	y "I was wondering if you would like to spend some time together today."
	elseif cl == 1208 then
	updateYuri('3','o')
	y "I mean--in the club!"
	elseif cl >= 1209 and cl <= 1219 then
		if poemwinner[1] == "Natsuki" then
			appeal.y = 1
			if cl == 1209 then
				mc "Ah, I suppose so."
			elseif cl == 1210 then
				mc "I don't think I could say no to you, after you gave that book to me."
			elseif cl == 1211 then
				mc "Well, I guess I need to make sure Natsuki isn't waiting for me."
			elseif cl == 1212 then
				mc "After we finished reading yesterday, she--"
			elseif cl >= 1213 then
				if appeal.n >= 2 then
					if cl == 1213 then
						updateYuri('3','r')
						y "She's fine!"
					elseif cl == 1214 then
						updateYuri('3','h')
						y "She's reading over there. See?"
					elseif cl == 1215 then
						style_edited = true
						updateYuri('3','f')
						y "Don't think about her so much."
					elseif cl == 1216 then
						y "She's used to being ignored."
					elseif cl == 1217 then
						y "Come on, we're going over there."
					elseif cl == 1218 then
						style_edited = false
						hideAll()
						audioUpdate('0')
						bgUpdate('black')
						pause(2)
					elseif cl == 1219 then
						audioUpdate('6')
						scriptJump(1234)
					end
				else
					if cl == 1213 then
						updateYuri('3','r')
						y "S-She's fine!"
					elseif cl == 1214 then
						updateYuri('3','h')
						y "She's reading over there."
					elseif cl == 1215 then
						updateYuri('3','y6')
						y  "So it's okay, right?"
					elseif cl == 1216 then
						mc "Ah--"
					elseif cl == 1217 then
						mc "In that case, I don't see any problem..."
					elseif cl == 1218 then
						scriptJump(1220)
					end
				end
			end
		else
			appeal.y = 2
			if cl == 1209 then
				mc "Yeah, definitely."
			elseif cl == 1210 then
			mc "I planned on it anyway."
			elseif cl == 1211 then
				scriptJump(1220)
			end
		end
	elseif cl == 1220 then
	updateYuri('3','y5')
	y "Okay!"
	elseif cl == 1221 then
	y "Can we start now?"
	elseif cl == 1222 then
	y "Let's find a place to sit--"
	elseif cl == 1223 then
	updateYuri('3','n')
	y "A-Ah--"
	elseif cl == 1224 then
	y "I'm being a little forceful, aren't I...?"
	updateYuri('4','c2')
	y "I'm sorry!"
	elseif cl == 1225 then
	y "My heart...just won't stop pounding, for some reason..."
	elseif cl == 1226 then
	mc "Don't worry about it."
	elseif cl == 1227 then
	mc "If anything, it's nice to see you have so much energy."
	elseif cl == 1228 then
	updateYuri('3','q')
	y "Y-Yeah!"
	elseif cl == 1229 then
	y "But..."
	elseif cl == 1230 then
	updateYuri('3','j')
	y "I need to try to calm down."
	elseif cl == 1231 then
	y "I won't be able to focus on reading like this..."
	elseif cl == 1232 then
	mc "Take your time."
	elseif cl == 1233 then
	bl "Yuri takes a deep breath, then pulls a copy of the book out of her bag."
	
	elseif cl == 1234 then
		if n_poemappeal[2] == 1 then
			n_poemappeal[2] = 0
		end
		poemwinner[2] = "Yuri"
		bgUpdate('club_day2')
		updateYuri('3','a')
		if appeal.y == 1 then
			scriptJump(393)
		elseif appeal.y == 2 then
			scriptJump(1235)
		end
		
	elseif cl >= 1446 then ch22_end()
	end
end

function ch22_end()
	if cl == 1446 then
	hideAll()
	audioUpdate('0')
	fadeOut(4)
	elseif cl == 1447 then
	cl = 1446
	elseif cl == 1448 then
	bgUpdate('black')
	menutext = 'You have unlocked a special poem.\nWould you like to read it?'
	choices = {'Yes','No'}
	choice_enable()
	elseif cl == 1449 then
	if choicepick == 'Yes' then
		changeState('poem_special',sp[2])
	else
		scriptJump(1450)
	end
	
	elseif cl == 1450 then
	if faint_effect == 0 then
		event_initstart('faint_effect')
		audioUpdate('3g3')
	else
		audioUpdate('3')
	end
	bgUpdate('club_day2')
	updateMonika('4','b',80)
	m "Okay, everyone!"
	elseif cl == 1451 then
	m "We're all done reading each other's poems, right?"
	elseif cl == 1452 then
	m "We have something we need to go over today, so if everyone could come sit at the front of the room..."
	elseif cl == 1453 then
	updateNatsuki('3','c',-40)
	n "Is this about the festival?"
	elseif cl == 1454 then
	updateNatsuki('1','j')
	m "Well, sort of~"
	elseif cl == 1455 then
	updateMonika('1','a')
	updateNatsuki('1','m')
	n "Ugh. Do we really have to do something for the festival?"
	elseif cl == 1456 then
	n "It's not like we can put together anything good in just a few days."
	elseif cl == 1457 then
	n "We'll just end up embarrassing ourselves instead of getting any new members."
	elseif cl == 1458 then
	updateYuri('2','g',200)
	y "That's a concern of mine as well."
	elseif cl == 1459 then
	updateYuri('2','g',200)
	y "I don't really do well with last-minute preparations..."
	elseif cl == 1460 then
	updateMonika('1','b')
	m "Don't worry so much!"
	elseif cl == 1461 then
	m "We're going to keep it simple, okay?"
	elseif cl == 1462 then
	updateMonika('2','a')
	m "Look..."
	elseif cl == 1463 then
	updateMonika('2','m')
	cw('m',"I know everyone's been a little more...lively...ever since "..player.." joined and we've started with some club activities.")
	elseif cl == 1464 then
	updateMonika('2','d')
	m "But this isn't the time for us to become complacent."
	elseif cl == 1465 then
	m "We still only have four members..."
	elseif cl == 1466 then
	updateMonika('2','a')
	m "And the festival is our only real chance to find more, you know?"
	elseif cl == 1467 then
	updateNatsuki('5','g')
	n "What's so great about getting new members, anyway?"
	elseif cl == 1468 then
	n "We already have enough to be considered an official club."
	elseif cl == 1469 then
	n "More members will just mean everything gets noisier and more difficult to manage."
	elseif cl == 1470 then
	updateMonika('1','g')
	m "Natsuki..."
	elseif cl == 1471 then
	m "I don't think you're looking at it the right way at all."
	elseif cl == 1472 then
	m "Don't you want to share your passion with as many people as you can?"
	elseif cl == 1473 then
	updateMonika('3','e')
	m "To inspire them to find the same feelings that brought you here in the first place?"
	elseif cl == 1474 then
	m "The Literature Club should be a place where people can express themselves like they can't do anywhere else."
	elseif cl == 1475 then
	m "It should be a place so intimate that you never want to leave."
	elseif cl == 1476 then
	updateMonika('2','e')
	m "I know you feel that way, too."
	elseif cl == 1477 then
	updateMonika('2','b')
	m "I know we all do!"
	elseif cl == 1478 then
	m "So that's why we should work hard and put something together for the festival...even if it's something small!"
	elseif cl == 1479 then
	cw('m',"Right, "..player.."?")
	elseif cl == 1480 then
	mc "Ah..."
	elseif cl == 1481 then
	updateNatsuki('4','2c')
	n "Oh, come on!"
	elseif cl == 1482 then
	cw('n',"You can't take advantage of "..player.." to agree with you just because he doesn't know how to say no to anything.")
	elseif cl == 1483 then
	audioUpdate('0')
	updateNatsuki('1','c')
	n "Look, Monika."
	elseif cl == 1484 then
	n "Do you really think any of us here joined the club with other people in mind?"
	elseif cl == 1485 then
	cw('n',"Yuri never even talked until "..player.." joined.")
	elseif cl == 1486 then
	updateNatsuki('2','b')
	n "As for me, I just like it better here than I do at home."
	elseif cl == 1487 then
	scriptJump(1488)
	elseif cl == 1488 then
	cw('n',"And "..player.." isn't even passionate about literature in the first place.")
	elseif cl == 1489 then
	n "And that's everyone."
	elseif cl == 1490 then
	updateNatsuki('4','w')
	n "Sorry, but you're really the only one who's so interested in finding new members."
	elseif cl == 1491 then
	n "The rest of us are fine like this."
	elseif cl == 1492 then
	updateNatsuki('4','q')
	n "I know you're President and all, but you should really consider our opinions for once."
	elseif cl == 1493 then
	updateMonika('1','g')
	m "..."
	elseif cl == 1494 then
	bl "Monika is clearly taken aback by Natsuki's words."
	elseif cl == 1495 then
	audioUpdate('9')
	updateMonika('1','m')
	m "That's...not true at all."
	elseif cl == 1496 then
	updateMonika('2','m')
	cw('m',"I'm sure Yuri and "..player.." want to get more members too...")
	elseif cl == 1497 then
	updateMonika('2','p')
	m "...Right?"
	updateYuri('4','b2')
	y "..."
	elseif cl == 1498 then
	mc "..."
	elseif cl == 1499 then
	bl "I don't know about Yuri, but I'm kind of indifferent."
	elseif cl == 1500 then
	bl "If I showed as much enthusiasm as Monika wanted, then I would probably be lying."
	elseif cl == 1501 then
	bl "Still, if it's up to me to rescue this situation..."
	elseif cl == 1502 then
	mc "Um--"
	elseif cl == 1503 then
	updateMonika('1','i')
	m "No."
	elseif cl == 1504 then
	m "Natsuki's right, isn't she?"
	elseif cl == 1505 then
	updateMonika('1','g')
	m "This club..."
	elseif cl == 1506 then
	m "It's nothing more than a place for a few people to hang out."
	elseif cl == 1507 then
	updateMonika('1','r')
	m "Why did I think that everyone here saw it the same way as I did?"
	elseif cl == 1508 then
	mc "But that doesn't mean that we're against getting new members or anything..."
	elseif cl == 1509 then
	updateMonika('1','i')
	cw('m',player..", why did you even join this club?")
	elseif cl == 1510 then
	m "What were you hoping to get out of it?"
	elseif cl == 1511 then
	mc "Well--"
	elseif cl == 1512 then
	bl "That's not really something I can be honest about, is it?"
	elseif cl == 1513 then
	updateMonika('1','p')
	m "In fact..."
	elseif cl == 1514 then
	m "If I remember, you weren't even given a choice not to join."
	elseif cl == 1515 then
	hideMonika()
	bl "Monika sits down and stares at her desk."
	elseif cl == 1516 then
	m "What's the point of all this, anyway?"
	elseif cl == 1517 then
	m "What if starting this club was a mistake?"
	elseif cl == 1518 then
	mc "..."
	elseif cl == 1519 then
	updateYuri('2','g')
	y "Now you've done it, Natsuki..."
	elseif cl == 1520 then
	updateNatsuki('1','p')
	n "What, me?"
	elseif cl == 1521 then
	updateNatsuki('1','s')
	n "I just spoke my mind..."
	elseif cl == 1522 then
	n "Is it a crime to be honest?"
	elseif cl == 1523 then
	updateYuri('2','l')
	y "It's not about being honest."
	elseif cl == 1524 then
	y "It's about word choice."
	elseif cl == 1525 then
	updateYuri('2','h')
	y "Besides, you have no right to speak for everyone else in the club like that..."
	elseif cl == 1526 then
	updateNatsuki('1','e')
	n "You don't understand at all!"
	elseif cl == 1527 then
	updateNatsuki('5','s')
	n "I just..."
	elseif cl == 1528 then
	n "I just want a place that feels nice to hang out with a few friends."
	elseif cl == 1529 then
	updateNatsuki('5','u')
	n "Is there a problem with the club being that for me?"
	elseif cl == 1530 then
	n "There aren't...there aren't many other places like that for me..."
	elseif cl == 1531 then
	updateNatsuki('5','x')
	n "And now Monika wants to take it away from me!"
	elseif cl == 1532 then
	mc "She's not taking anything away--"
	elseif cl == 1533 then
	updateNatsuki('1','g')
	cw('n',"No, "..player..".")
	elseif cl == 1534 then
	n "It's not the same."
	elseif cl == 1535 then
	updateNatsuki('1','q')
	n "It won't be the same with the direction she wants to take it."
	elseif cl == 1536 then
	n "If I wanted that, then I could have just joined any other stupid club."
	elseif cl == 1537 then
	updateNatsuki('1','2d')
	n "But this one..."
	elseif cl == 1538 then
	n "I mean..."
	elseif cl == 1539 then
	updateNatsuki('1','2e')
	n "At least for a little bit of time..."
	elseif cl == 1540 then
	n "Things were nice."
	elseif cl == 1541 then
	bl "Natsuki starts packing up her things."
	elseif cl == 1542 then
	updateNatsuki('1','2d')
	n "I'm going home."
	elseif cl == 1543 then
	n "I feel like...I don't belong here right now."
	elseif cl == 1544 then
	updateYuri('3','t')
	y "Natsuki..."
	elseif cl == 1545 then
	hideNatsuki()
	bl "Natsuki ignores Yuri and walks right out of the classroom."
	elseif cl == 1546 then
	updateYuri('3','v',80)
	y "..."
	elseif cl == 1547 then
	y "This is bad..."
	elseif cl == 1548 then
	y "I don't know what to do..."
	elseif cl == 1549 then
	mc "Well..."
	elseif cl == 1550 then
	mc "Do you have an opinion on the festival?"
	elseif cl == 1551 then
	updateYuri('4','b2')
	y "I-I don't know..."
	elseif cl == 1552 then
	y "I'm kind of indifferent, I guess..."
	elseif cl == 1553 then
	event_initstart('yuri_glitch_head',1)
	audioUpdate('9g')
	y "Who cares about that obnoxious brat?"
	elseif cl == 1554 then
	event_end()
	audioUpdate('9')
	y "I mean, I like how nice and quiet the club is right now..."
	elseif cl == 1555 then
	y "And I'm just...happy with you here..."
	elseif cl == 1556 then
	updateYuri('2','t')
	y "But still!"
	elseif cl == 1557 then
	y "I'm the Vice President..."
	elseif cl == 1558 then
	y "It's not right for me to ignore my responsibilities like that..."
	elseif cl == 1559 then
	event_initstart('yuri_glitch_head',2)
	audioUpdate('9g')
	y "Nobody would cry if she killed herself."
	elseif cl == 1560 then
	scriptJump(1561)
	event_end()
	elseif cl == 1561 then
	audioUpdate('9')
	updateYuri('2','l')
	y "I should do my best to consider everyone's perspective and make the decision that's right for the club."
	elseif cl == 1562 then
	updateYuri('1','t')
	cw('y',"But what about you, "..player.."?")
	elseif cl == 1563 then
	y "What do you want to get out of this club?"
	elseif cl == 1564 then
	bl "Yuri repeats the same question as Monika."
	elseif cl == 1565 then
	bl "I decide giving an indirect answer is better than nothing."
	elseif cl == 1566 then
	mc "...I think the most important thing is for everyone to get along..."
	elseif cl == 1567 then
	mc "...And for the club to provide something that you can't get anywhere else."
	elseif cl == 1568 then
	mc "I don't think it's about how many members, but rather the quality of each member."
	elseif cl == 1569 then
	mc "That's what will end up making the Literature Club a special place."
	elseif cl == 1570 then
	updateYuri('1','u')
	y "I see..."
	elseif cl == 1571 then
	y "I really agree with you."
	elseif cl == 1572 then
	updateYuri('1','f')
	y "Each member contributes their own qualities in a special way."
	elseif cl == 1573 then
	y "With each change in members, the identity of the club as a whole will change, too."
	elseif cl == 1574 then
	updateYuri('1','h')
	y "I don't think that's necessarily a bad thing."
	elseif cl == 1575 then
	y "Stepping out of your comfort zone once in a while..."
	elseif cl == 1576 then
	updateYuri('1','a')
	y "So if you would like to help Monika with the festival, then I'm on your side as well."
	elseif cl == 1577 then
	mc "Alright."
	elseif cl == 1578 then
	mc "Well, maybe we can all talk to Natsuki tomorrow..."
	elseif cl == 1579 then
	bl "Yuri nods."
	elseif cl == 1580 then
	updateMonika('1','g',10)
	updateYuri('1','a',150)
	m "Hey, Yuri..."
	elseif cl == 1581 then
	updateYuri('1','t')
	y "Eh?"
	elseif cl == 1582 then
	updateMonika('1','p')
	m "Um, I know things were a little awkward yesterday..."
	elseif cl == 1583 then
	m "But I feel like you deserve to know that I still think you're a wonderful vice president."
	elseif cl == 1584 then
	updateMonika('1','e')
	m "And also, a wonderful friend."
	elseif cl == 1585 then
	updateYuri('3','s')
	y "M-Monika..."
	elseif cl == 1586 then
	updateMonika('2','e')
	m "I want to do everything I can to make this the best club ever."
	elseif cl == 1587 then
	m "Okay?"
	elseif cl == 1588 then
	y "...Me too."
	elseif cl == 1589 then
	updateMonika('1','a')
	m "Yeah..."
	elseif cl == 1590 then
	m "Let's all go home for today."
	elseif cl == 1591 then
	m "We'll talk about the festival tomorrow."
	elseif cl == 1592 then
	updateYuri('1','m')
	y "Okay."
	elseif cl == 1593 then
	y "I look forward to it."
	elseif cl == 1594 then
	updateYuri('1','a')
	cw('y',"Shall we go, "..player.."?")
	elseif cl == 1595 then
	updateMonika('1','d')
	m "Um--"
	elseif cl == 1596 then
	updateMonika('1','p')
	m "Please don't take this the wrong way, but..."
	elseif cl == 1597 then
	cw('m',"I'm going to chat a little bit with "..player.." before we leave.")
	elseif cl == 1598 then
	updateMonika('1','d')
	m "Just to see what he thinks of his time here and all that..."
	elseif cl == 1599 then
	m "It's important to me, as President."
	elseif cl == 1600 then
	updateYuri('2','v')
	y "..."
	elseif cl == 1601 then
	bl "Yuri looks a little troubled, but she doesn't protest."
	elseif cl == 1602 then
	updateYuri('2','t')
	y "Okay."
	elseif cl == 1603 then
	updateYuri('2','s')
	y "I trust your judgment, Monika."
	elseif cl == 1604 then
	y "In that case, I'll see the two of you tomorrow."
	elseif cl == 1605 then
	updateMonika('1','j')
	m "See you tomorrow~"
	elseif cl == 1606 then
	hideYuri()
	bl "Monika waves as Yuri exits the classroom."
	
	elseif cl == 1607 then
	updateMonika('2','a',80)
	m "Phew..."
	elseif cl == 1608 then
	updateMonika('2','e')
	m "Things have been a bit hectic lately, haven't they?"
	elseif cl == 1609 then
	event_initstart('show_darkred','show_noise')
	cw('m',player..", I just wanted to make sure you're enjoying your time at this club.")
	elseif cl == 1610 then
	m "I would really hate to see you unhappy."
	elseif cl == 1611 then
	updateMonika('2','m')
	m "I feel kind of like I'm responsible for that, as President..."
	elseif cl == 1612 then
	audioUpdate('0')
	updateMonika('4','e')
	m "And I really do care about you...you know?"
	elseif cl == 1613 then
	m "I don't like seeing the other girls give you a hard time."
	elseif cl == 1614 then
	updateMonika('4','r')
	m "With how mean Natsuki is and everything..."
	elseif cl == 1615 then
	updateMonika('4','m')
	m "And Yuri being a little bit...you know."
	elseif cl == 1616 then
	updateMonika('5a')
	m "Ahaha..."
	elseif cl == 1617 then
	m "Sometimes it feels like you and I are the only real people here."
	elseif cl == 1618 then
	m "You know what I mean?"
	elseif cl == 1619 then
	updateMonika('1','g')
	m "But it's weird, because in all the time you've been here, we've hardly gotten to spend any time together."
	elseif cl == 1620 then
	updateMonika('1','n')
	m "Ah...I mean..."
	elseif cl == 1621 then
	m "I guess it's technically only been a couple days..."
	elseif cl == 1622 then
	updateMonika('1','l')
	m "Sorry, I didn't mean to say something weird!"
	elseif cl == 1623 then
	updateMonika('1','e')
	m "There are just some things I've been hoping to talk about with you..."
	elseif cl == 1624 then
	m "Things I know only you could understand."
	elseif cl == 1625 then
	fadeOut(4)
	cw('m',"So that's why--",'nwfast')
	elseif cl == 1626 then
	fadeOut(4)
	updateMonika('1','g')
	cw('m',"Wait, not yet!",'nwfast')
	elseif cl == 1626 then
	fadeOut(4)
	cw('m',"No!",'nwfast')
	elseif cl == 1627 then
	fadeOut(4)
	cw('m',"Stop it!",'nwfast')
	elseif cl == 1628 then
	alpha = 20
	event_end('next')
	elseif cl >= 1629 then
	fadeOut(1)
	end
end
