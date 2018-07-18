local y_chance = math.random(0,2)

function ch22script()
	if cl == 1077 then
	bgUpdate('club_day2')
	audioUpdate('6')
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
				if n_appeal >= 2 then
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
						audioUpdate('0')
						bgUpdate('black')
						if autotimer < (settings.autospd - 2) then autotimer = settings.autospd - 2 end
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
	end
end