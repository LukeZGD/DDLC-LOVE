local gtext120 = glitchtext(120)
local endx = 100
if is3DS then
	endx = 25
end

clearall = 0
for i = 1, 9 do
	if persistent.clear[i] == 1 then
		clearall = clearall + 1
	end
end

function ch40script()
	if cl == 1 then
	bgUpdate('residential')
	audioUpdate('2')
	if persistent.chr.m == 1 then scriptJump(500) end
    bl "It's an ordinary school day, like any other."
	elseif cl == 2 then
    bl "As usual, I'm surrounded by couples and friend groups walking to school together."
	elseif cl == 3 then
    bl "I always tell myself it's about time I meet some girls or something like that..."
	elseif cl == 4 then
	updateSayori('1','a',80)
    cw('s',"Hey, "..player.."...")
	elseif cl == 5 then
    bl "...Well, there already is one girl."
	elseif cl == 6 then
    bl "That girl is Sayori, my neighbor and good friend since we were children."
	elseif cl == 7 then
    bl "We used to walk to school together every day..."
	elseif cl == 8 then
    bl "...And recently, we've picked up that habit once again."
	elseif cl == 9 then
	cw('s',player..", are you proud of me?")
	elseif cl == 10 then
    mc "Eh? For what?"
	elseif cl == 11 then
	updateSayori('1','c')
    s "You know..."
	elseif cl == 12 then
    s "For waking up on time!"
	elseif cl == 13 then
    mc "Well, you've been doing that for a while now..."
	elseif cl == 14 then
    s "Uh-huh!"
	elseif cl == 15 then
	updateSayori('4','h')
    s "But you never even said anything about it!"
    elseif cl == 16 then
    s "Even though we walk to school together every day..."
	elseif cl == 17 then
    mc "Well, yeah..."
	elseif cl == 18 then
    mc "I always thought it was implied."
	elseif cl == 19 then
    mc "It's embarrassing to say out loud."
	elseif cl == 20 then
	updateSayori('1','d')
    s "C'mon, please?"
	elseif cl == 21 then
    s "It's good motivation~"
	elseif cl == 22 then
    mc "Fine, fine..."
	elseif cl == 23 then
    mc "I'm proud of you, Sayori."
	elseif cl == 24 then
    updateSayori('1','q')
    s "Ehehe~"
	elseif cl == 25 then
	hideSayori()
    bl "We cross the street together and make our way to school."
	elseif cl == 26 then
    bl "As we draw near, the streets become increasingly speckled with other students making their daily commute."
	elseif cl == 27 then
	updateSayori('3','a',80)
    cw('s',"By the way, "..player.."...")
	elseif cl == 28 then
    s "Have you decided on a club to join yet?"
	elseif cl == 29 then
    mc "A club?"
	elseif cl == 30 then
    mc "I told you already, I'm really not--"
	elseif cl == 31 then
    bl "I start to say what I always do - that I'm not interested in joining any clubs."
	elseif cl == 32 then
    bl "But something tells me Sayori would take more offense to that now."
	elseif cl == 33 then
    bl "After all, how could I tell her that clubs are a waste of time..."
	elseif cl == 34 then
    bl "...when she's starting a club of her very own?"
	elseif cl == 35 then
    mc "...Actually, yeah."
	elseif cl == 36 then
    mc "I think I've decided on a club."
	elseif cl == 37 then
    updateSayori('1','m')
    s "Really?!"
	elseif cl == 38 then
	updateSayori('1','r')
    s "Which one? Tell me!"
	elseif cl == 39 then
    mc "Hmm..."
	elseif cl == 40 then
    mc "I think I'll keep it a surprise."
	elseif cl == 41 then
	updateSayori('5d')
    s "Boo..."
	elseif cl == 42 then
    s "You meanie."
	elseif cl == 43 then
    mc "Be patient, you'll find out soon enough."
	elseif cl == 44 then
    bl "I used to ask myself why I let myself get lectured by such a carefree girl."
	elseif cl == 45 then
    bl "But I started to realize that in a way, I envy her."
	elseif cl == 46 then
    bl "When Sayori puts her mind to something, she can accomplish great things."
	elseif cl == 47 then
    bl "So that's why I feel like I should do something special for her."
	
	elseif cl == 48 then
	hideSayori()
	bgUpdate('class')
	bl "The school day is as ordinary as ever, and it's over before I know it."
	elseif cl == 49 then
    bl "After I pack up my things, I stand up, gathering my motivation."
	elseif cl == 50 then
    mc "Let's see..."
	
	elseif cl == 51 then
    bgUpdate('corridor')
	audioUpdate('0')
    bl "I recall the room number of the club from a flier I saw."
	elseif cl == 52 then
    bl "I walk across the school and upstairs - a section of the school I rarely visit, being generally used for third-year classes and activities."
	elseif cl == 53 then
    bl "Before long, I find the room."
	elseif cl == 54 then
    bl "I timidly open the door in front of me."
	elseif cl == 55 then
	bgUpdate('club')
	audioUpdate('3')
    mc "Hello...?"
	elseif cl == 56 then
    updateSayori('1','m',80)
    s "Ah!"
	elseif cl == 57 then
    cw('s',player.."...?!")
	elseif cl == 58 then
	updateSayori('1','c')
    s "W-What are you doing here?"
	elseif cl == 59 then
    mc "Well...I just--"
	elseif cl == 60 then
    bl "Eh? I glance around the room."
	elseif cl == 61 then
	updateNatsuki('3','a',-40)
    cw('Girl 2',"Huh.")
	elseif cl == 62 then
	cw('Girl 2',"So you're the "..player.." that Sayori's always talking about?")
	elseif cl == 63 then
	updateYuri('2','t',200)
    cw('Girl 1',"T-Thank you for stopping by!")
	elseif cl == 64 then
	updateYuri('2','m')
    cw('Girl 1',"It's a pleasure to meet you, "..player..".")
	elseif cl == 65 then
    cw('Girl 1',"We're the Literature Club.")
	elseif cl == 66 then
	updateYuri('3','v')
    cw('Girl 1',"I-I hope you enjoy your visit!")
	elseif cl == 67 then
	updateNatsuki('3','g')
    cw('Girl 2',"C'mon, Yuri...")
	elseif cl == 68 then
    cw('Girl 2',"No need to be so formal.")
	elseif cl == 69 then
    cw('Girl 2',"He's gonna think we're really strict or something...")
	elseif cl == 70 then
	updateYuri('3','q')
    y "Ah..."
	elseif cl == 71 then
    y "Sorry, Natsuki..."
	elseif cl == 72 then
    bl "The tall one, whose name is apparently Yuri, seems to be quite shy compared to the others."
	elseif cl == 73 then
    bl "In comparison, the girl named Natsuki - despite her size - seems like the assertive one."
	elseif cl == 74 then
    mc "Well, it's nice to meet both of you."
	elseif cl == 75 then
    mc "I look forward to working with you."
	elseif cl == 76 then
	updateSayori('1','n')
    s "W-Working...?"
	elseif cl == 77 then
	cw('s',player..", don't tell me...")
	elseif cl == 78 then
    s "You're..."
	elseif cl == 79 then
    mc "That's right."
	elseif cl == 80 then
    mc "The club I've decided to join is yours, Sayori."
	elseif cl == 81 then
    mc "The Literature Club."
	elseif cl == 82 then
    bl "Sayori's eyes light up."
    elseif cl == 83 then
	updateSayori('1','n')
    s "...No way."
	elseif cl == 84 then
	updateSayori('1','s')
    s "No way!"
    elseif cl == 85 then
	updateSayori('4','s')
    s "Aaaahhhhhh!"
	elseif cl == 86 then
    bl "Sayori wraps her arms around me, jumping up and down."
	elseif cl == 87 then
    mc "H-Hey--"
	elseif cl == 88 then
	updateNatsuki('3','y')
    n "Ehehe."
	elseif cl == 89 then
    n "Well, if Sayori is this happy, then I'm sure it won't be so bad to have you around."
	elseif cl == 90 then
	updateNatsuki('3','a')
	updateYuri('1','s')
    y "Not to mention there's four of us now."
	elseif cl == 91 then
    y "That means we can become an officially-recognized club."
	elseif cl == 92 then
	updateSayori('1','x')
    s "I don't know what to say!"
	elseif cl == 93 then
    s "We have to celebrate!"
	elseif cl == 94 then
	updateYuri('1','m')
    y "Huhu."
	elseif cl == 95 then
    y "What an appropriate day for that, isn't it?"
	elseif cl == 96 then
	updateYuri('1','a')
	updateSayori('1','r')
    s "Yeah!"
	elseif cl == 97 then
	updateNatsuki('1','x')
    s "After all, Natsuki decided to--"
	elseif cl == 98 then
	updateNatsuki('1','w')
    n "Hey, don't ruin the surprise!"
	elseif cl == 99 then
	updateSayori('5a')
    s "Ehehe, sorry..."
	elseif cl == 100 then
	updateNatsuki('1','k')
    n "Everyone sit down at the table, okay?"
	elseif cl == 101 then
	updateYuri('1','a')
    y "How about I make some tea as well?"
	elseif cl == 102 then
	hideSayori()
	hideNatsuki()
	hideYuri()
    bl "The girls have a few desks arranged to form a table."
	elseif cl == 103 then
    bl "Natsuki and Yuri walk over to the corner of the room, where Natsuki grabs a wrapped tray and Yuri opens the closet."
	elseif cl == 104 then
    bl "Still feeling awkward, I take a seat next to Sayori."
	elseif cl == 105 then
    bl "Natsuki proudly marches back to the table, tray in hand."
	elseif cl == 106 then
	updateNatsuki('2','z',150)
    n "Okaaay, are you ready?"
	elseif cl == 107 then
    n "...Ta-daa!"
	elseif cl == 108 then
	updateSayori('4','m',10)
    s "Uwooooah!"
	elseif cl == 109 then
    bl "Natsuki lifts the foil off the tray to reveal a dozen white, fluffy cupcakes decorated to look like little cats."
	elseif cl == 110 then
    bl "The whiskers are drawn with icing, and little pieces of chocolate were used to make ears."
	elseif cl == 111 then
	updateSayori('4','r')
    s "So cuuuute~!"
	elseif cl == 112 then
    mc "Wow, those look amazing."
	elseif cl == 113 then
	updateNatsuki('2','d')
    n "Ehehe. Well, you know."
	elseif cl == 114 then
    n "Just hurry and take one!"
	elseif cl == 115 then
    bl "Sayori grabs one first, then I follow."
	elseif cl == 116 then
	updateSayori('4','q')
    s "It's delicious!"
	elseif cl == 117 then
    bl "Sayori talks with her mouth full and has already managed to get icing on her face."
	elseif cl == 118 then
    bl "I turn the cupcake around in my fingers, looking for the best angle to take a bite."
	elseif cl == 119 then
	hideSayori()
	updateNatsuki('1','c',80)
    bl "Natsuki is quiet."
	elseif cl == 120 then
    bl "I can't help but notice her sneaking glances in my direction."
	elseif cl == 121 then
    bl "Is she waiting for me to take a bite?"
	elseif cl == 122 then
    bl "I finally bite down."
	elseif cl == 123 then
    bl "The icing is sweet and full of flavor - I wonder if she made it herself."
	elseif cl == 124 then
    mc "This is really good."
	elseif cl == 125 then
    mc "Thank you, Natsuki."
	elseif cl == 126 then
	updateNatsuki('4','2c')
    n "W-Well...of course it is!"
	elseif cl == 127 then
    n "I'm a pro, after all!"
	elseif cl == 128 then
	updateNatsuki('4','2a')
    n "There's no need to thank me or anything..."
    elseif cl == 129 then
	hideNatsuki()
    bl "As Natsuki struggles to accept the compliment, Yuri returns to the table, carrying a tea set."
	elseif cl == 130 then
    bl "She carefully places a teacup in front of each of us before setting down the teapot next to the cupcake tray."
	elseif cl == 131 then
	updateYuri('1','a',80)
    mc "You keep a whole tea set in this classroom?"
	elseif cl == 132 then
    y "Don't worry, the teachers gave us permission."
	elseif cl == 133 then
    y "After all, doesn't a hot cup of tea help you enjoy a good book?"
	elseif cl == 134 then
    mc "Ah... I-I guess..."
	elseif cl == 135 then
	updateNatsuki('2','y',-40)
    n "Ehehe. Already trying to impress our new member, Yuri?"
	elseif cl == 136 then
	updateYuri('3','n')
    y "Eh?! T-That's not..."
	elseif cl == 137 then
	hideNatsuki()
    bl "Insulted, Yuri looks away."
	elseif cl == 138 then
	updateYuri('4','b2')
    y "I meant that, you know..."
	elseif cl == 139 then
    mc "I believe you."
	elseif cl == 140 then
    mc "Well, tea and reading might not be a pastime for me, but I at least enjoy tea."
	elseif cl == 141 then
	updateYuri('2','u')
    y "I'm glad..."
	elseif cl == 142 then
    bl "Yuri faintly smiles to herself in relief."
	elseif cl == 143 then
	updateYuri('1','a')
    cw('y',"So, "..player..", what kinds of things do you like to read?")
	elseif cl == 144 then
    mc "Well... Ah..."
	elseif cl == 145 then
    bl "Considering how little I've read these past few years, I don't really have a good way of answering that."
	elseif cl == 146 then
    mc "...Manga..."
	elseif cl == 147 then
    bl "I mutter quietly to myself, half-joking."
	updateNatsuki('1','c',-50)
    bl "Natsuki's head suddenly perks up."
	elseif cl == 148 then
    bl "It looks like she wants to say something, but she keeps quiet."
	elseif cl == 149 then
	hideNatsuki()
	updateYuri('3','u')
    y "N-Not much of a reader, I guess..."
	elseif cl == 150 then
    mc "...Well, that can change..."
	elseif cl == 151 then
    bl "What am I saying?"
	elseif cl == 152 then
    bl "I spoke without thinking after seeing Yuri's sad smile."
	elseif cl == 153 then
    mc "Anyway, what about you, Yuri?"
	elseif cl == 154 then
	updateYuri('1','l')
    y "Well, let's see..."
	elseif cl == 155 then
    bl "Yuri traces the rim of her teacup with her finger."
	elseif cl == 156 then
	updateYuri('1','a')
    y "My favorites are usually novels that build deep and complex fantasy worlds."
	elseif cl == 157 then
    y "The level of creativity and craftsmanship behind them is amazing to me."
	elseif cl == 158 then
	updateYuri('1','f')
    y "And telling a good story in such a foreign world is equally impressive."
	elseif cl == 159 then
    bl "Yuri goes on, clearly passionate about her reading."
	elseif cl == 160 then
    bl "She seemed so reserved and timid since the moment I walked in, but it's obvious by the way her eyes light up that she finds her comfort in the world of books, not people."
	elseif cl == 161 then
	updateYuri('2','m')
    y "But you know, I like a lot of things."
	elseif cl == 162 then
	updateYuri('2','a')
    y "Don't feel intimidated if you don't read much, okay?"
	elseif cl == 163 then
    y "I'm certain we can find something that we have in common."
	elseif cl == 164 then
	updateYuri('2','a',150)
	updateNatsuki('2','c',10)
    n "Hey, Yuri..."
	elseif cl == 165 then
	updateYuri('2','f')
    y "Eh?"
	elseif cl == 166 then
	updateNatsuki('2','h')
    n "Well, about...you know, the first thing he said..."
	elseif cl == 167 then
    mc "Manga?"
	elseif cl == 168 then
	updateYuri('2','i')
    y "That's right..."
	elseif cl == 169 then
    y "Natsuki tends to read manga in the clubroom--"
	elseif cl == 170 then
	updateNatsuki('1','r')
    n "D-Don't just say it!!"
	elseif cl == 171 then
    bl "For some reason, Natsuki seems embarrassed about it."
	elseif cl == 172 then
	updateNatsuki('1','q')
    n "Besides..."
	elseif cl == 173 then
    n "Manga...is literature too, you know?"
	elseif cl == 174 then
	updateNatsuki('1','w')
    cw('n',"So...if "..player.." wants to read some of my manga, then don't try to stop him or anything!")
	elseif cl == 175 then
	updateYuri('1','l')
    y "Natsuki..."
	elseif cl == 176 then
    y "I wouldn't do such a thing."
	elseif cl == 177 then
	updateYuri('1','i')
    y "However, it could also be nice for us to diversify ourselves a little..."
	elseif cl == 178 then
    y "He can take this opportunity to try something new, as well."
	elseif cl == 179 then
	updateYuri('1','s')
    cw('y',"Wouldn't you agree, "..player.."?")
	elseif cl == 180 then
	updateSayori('1','l',-40)
	updateNatsuki('1','w',80)
	updateYuri('1','s',200)
    s "M-Maybe--"
	elseif cl == 181 then
    bl "Sensing the tension, Sayori jumps in."
	elseif cl == 182 then
	updateSayori('1','x')
    s "Maybe we can all try something new!"
	elseif cl == 183 then
	updateSayori('1','l')
    s "I think it could be fun..."
	elseif cl == 184 then
	updateSayori('1','c')
    s "And we'll all get to know each other a little bit better, too!"
	elseif cl == 185 then
	updateSayori('1','l')
    s "I mean..."
	elseif cl == 186 then
    s "That's the kind of thing literature clubs do...right?"
	elseif cl == 187 then
	updateYuri('1','v')
    y "..."
	elseif cl == 188 then
    y "I-I don't disagree or anything..."
	elseif cl == 189 then
	updateNatsuki('2','j')
    n "Yeah..."
	elseif cl == 190 then
    n "You're right as usual, President."
	elseif cl == 191 then
	updateSayori('1','q')
    s "Ehehe~"
	elseif cl == 192 then
	updateNatsuki('2','c')
    n "Guess that means I should try picking up a novel or something, huh...?"
	elseif cl == 193 then
    mc "Well, that would make two of us..."
	elseif cl == 194 then
    mc "I wouldn't mind doing it if I'm not the only one."
	elseif cl == 195 then
	hideSayori()
	updateNatsuki('2','y',10)
	updateYuri('1','v',150)
    n "Then as for Yuri..."
	elseif cl == 196 then
	updateYuri('2','n')
    y "Eh...?"
	elseif cl == 197 then
    y "I...I have to read manga...?"
	elseif cl == 198 then
	updateNatsuki('4','i')
    n "Jeez..."
	elseif cl == 199 then
	updateNatsuki('4','h')
    n "You were the one who suggested we diversify!"
	elseif cl == 200 then
    n "You should be a little more open-minded..."
	elseif cl == 201 then
	updateNatsuki('4','u')
    n "It's kind of hurtful..."
	elseif cl == 202 then
	updateYuri('2','t')
    y "Hurtful...?"
	elseif cl == 203 then
	updateYuri('2','v')
    y "I-I didn't realize..."
	elseif cl == 204 then
    y "..."
	elseif cl == 205 then
    bl "With a guilty expression, Yuri thinks to herself."
	elseif cl == 206 then
	updateYuri('2','w')
    y "I'm sorry for disrespecting your interests, Natsuki."
	elseif cl == 207 then
    y "If...if you're into it, then I'm sure it's a worthy form of literature."
	elseif cl == 208 then
	updateNatsuki('5','q')
    n "...Are you just saying that?"
	elseif cl == 209 then
    y "No..."
	elseif cl == 210 then
    y "I've realized my error."
	elseif cl == 211 then
	updateYuri('2','t')
    y "So, if you're willing to consider starting a novel..."
	elseif cl == 212 then
	updateYuri('2','u')
    y "...Then I'll offer my gratitude by finding a manga to read as well."
	elseif cl == 213 then
	updateNatsuki('1','l')
    n "Really?!"
	elseif cl == 214 then
	updateNatsuki('1','2c')
    n "I-I mean..."
	elseif cl == 215 then
    n "It...makes me happy that you'd do that for me, Yuri."
	elseif cl == 216 then
	updateNatsuki('2','c')
    n "You can trust me to find something that you'll really like, okay?"
	elseif cl == 217 then
	updateYuri('1','m')
    y "Same here..."
	elseif cl == 218 then
	updateYuri('1','h')
    y "Perhaps I'll visit the bookstore after the club meeting."
	elseif cl == 219 then
	updateNatsuki('1','q')
    n "Just...just you?"
	elseif cl == 220 then
	updateYuri('3','q')
    y "A-Ah--"
	elseif cl == 221 then
	updateYuri('4','a2')
    y "Would you...like to come along with me?"
	elseif cl == 222 then
	updateNatsuki('5','s')
    n "Um..."
	elseif cl == 223 then
    n "If you don't mind..."
	elseif cl == 224 then
	updateYuri('3','t')
    y "Not at all!"
	elseif cl == 225 then
    y "I always go alone, so..."
	elseif cl == 226 then
    n "Yeah, me too..."
	elseif cl == 227 then
	updateSayori('4','s',-50)
    s "This is so cute~!"
	elseif cl == 228 then
    mc "Sayori, shut up..."
	elseif cl == 229 then
	hideSayori()
	updateNatsuki('2','j')
    n "I'll show you some manga there too, okay?"
	elseif cl == 230 then
	updateYuri('1','a')
    y "Yes."
	elseif cl == 231 then
    y "I look forward to it."
	elseif cl == 232 then
	hideNatsuki()
	hideYuri()
    bl "Natsuki and Yuri start to clean up the food."
	elseif cl == 233 then
	updateSayori('1','q',80)
    s "Ehehe~"
	elseif cl == 234 then
	updateSayori('1','x')
    s "I guess the meeting's over, huh?"
	elseif cl == 235 then
    mc "Yeah, looks like it..."
	elseif cl == 236 then
    mc "It's nice to see everyone getting along."
	elseif cl == 237 then
	updateSayori('1','q')
    s "Isn't it?"
	elseif cl == 238 then
	updateSayori('1','d')
    cw('s',"I think everyone likes you too, "..player..".")
	elseif cl == 239 then
    mc "You think so...?"
	elseif cl == 240 then
    mc "Well, everyone always seems to get along a little better with you around, Sayori."
	elseif cl == 241 then
	updateSayori('1','y')
    cw('s',"Aww, "..player.."~")
	elseif cl == 242 then
    s "Don't say something like that, it's embarrassing!"
	elseif cl == 243 then
    mc "Well, whatever."
	elseif cl == 244 then
    mc "I was surprised when you told me you were starting a club..."
	elseif cl == 245 then
    mc "But I think you're pulling it off just fine."
	elseif cl == 246 then
	updateSayori('1','r')
    s "We're gonna make it the best club ever!"
	elseif cl == 247 then
	updateSayori('1','x')
    s "Now that you joined, every day is gonna be so much fun."
	elseif cl == 248 then
	audioUpdate('0')
	updateSayori('1','a')
    cw('s',"Hey, "..player.."...")
	elseif cl == 249 then
    s "I really want to thank you."
	elseif cl == 250 then
    s "I mean, I'm really happy that you joined the club and everything..."
	elseif cl == 251 then
    s "But the truth is, I already knew you were going to."
	elseif cl == 252 then
	updateSayori('1','q')
    s "Ehehe~"
	elseif cl == 253 then
	updateSayori('1','a')
    s "There's actually something else."
	
	elseif cl >= 254 and cl < 500 then
		if clearall >= 9 then
			ch40_clearall()
		else
			ch40_clearnormal()
		end
	elseif cl == 500 then
	audioUpdate('0')
	menutext = "Please stop playing with my heart.\nI don't want to come back."
	choice_enable('dialog')
	elseif cl == 501 then
	persistent.chr.m = 3
	savepersistent()
	scriptJump(1)
	elseif cl == 502 then
	event_initstart('beforecredits')
	
	pause(41)
	elseif cl == 503 then
	--event_end('beforecredits')
	event_end('next')
	elseif cl == 504 then
	audioUpdate('0')
	changeState('credits',1)
	elseif cl == 508 then
	audioUpdate('0')
	changeState('poem_special',12)
	elseif cl == 509 then
	audioUpdate('0')
	changeState('poem_special',13)
	end
end

function ch40_clearnormal()
	if cl == 254 then
	updateSayori('1','a')
    s "I wanted to thank you for getting rid of Monika."
    elseif cl == 255 then
	event_initstart('show_dark')
	updateSayori('1','b')
	audioUpdate('heartbeat')
    s "That's right..."
	elseif cl == 256 then
    s "I know everything that she did."
	elseif cl == 257 then
	updateSayori('1','x')
    s "Maybe it's because I'm the President now."
	elseif cl == 258 then
	cw('s',"But I really know everything, "..player..".")
	elseif cl == 259 then
	updateSayori('1','q')
    s "Ehehe~"
	elseif cl == 260 then
	updateSayori('1','d')
    s "I know how hard you tried to make everyone happy."
	elseif cl == 261 then
    s "I know about all of the awful things that Monika did to make everyone really sad..."
	elseif cl == 262 then
	updateSayori('1','b')
    s "But none of that matters anymore."
	elseif cl == 263 then
    cw('s',"It's just us now.",'nw')
	elseif cl == 264 then
	sfxplay('s_kill_glitch1s')
	pause(0.25)
	elseif cl == 265 then
	bgUpdate('cg/monika_bg_glitch')
    pause(0.25)
	elseif cl == 266 then
    cw('s',"It's just us now.",'fast')
	elseif cl == 267 then
	bgUpdate('club')
	updateSayori('1','d')
    s "And you made me the happiest girl in the whole world."
	elseif cl == 268 then
    s "I can't wait to spend every day like this..."
	elseif cl == 269 then
    s "With you."
	elseif cl == 270 then
    bgUpdate('cg/monika_bg_glitch')
	sfxplay('s_kill_glitch1s')
	updateSayori('1','q')
    s "Forever and ever..."
	elseif cl == 271 then
	updateSayori('f_1a')
    s "F"
	elseif cl == 272 then
    s "o"
	elseif cl == 273 then
    s "r"
	elseif cl == 274 then
	sfxplay('s_kill_glitch1s')
	pause(0.25)
	elseif cl == 275 then
    s "e"
	elseif cl == 276 then
    s "v"
	elseif cl == 277 then
    s "e"
	elseif cl == 278 then
	audioUpdate('0')
	menutext = 'No...'
	choice_enable('dialog')
	elseif cl == 279 then
	updateSayori('end-glitch1','',endx)
    s "...Eh?"
	elseif cl == 280 then
    s "W-What's happening...?"
	elseif cl == 281 then
	menutext = "I won't let you hurt him."
	choice_enable('dialog')
	elseif cl == 282 then
	updateSayori('end-glitch2','',endx)
    s "Who..."
	elseif cl == 283 then
    s "I-It hurts--"
	elseif cl == 284 then
	sfxplay('s_kill_glitch1s')
	pause(0.35)
	elseif cl == 285 then
	hideAll()
    s "Ah--"
	elseif cl == 286 then
	menutext = "I'm sorry... I was wrong."
	choice_enable('dialog')
	elseif cl == 287 then
	menutext = "There's no happiness here after all..."
	choice_enable('dialog')
	elseif cl == 288 then
	menutext = "Goodbye, Sayori."
	choice_enable('dialog')
	elseif cl == 289 then
	menutext = "Goodbye, "..player.."."
	choice_enable('dialog')
	elseif cl == 290 then
	menutext = "Goodbye, Literature Club."
	choice_enable('dialog')
	elseif cl == 291 then
	cw('s',gtext120,'nw')
	elseif cl == 292 then
	sfxplay('s_kill_glitch1s')
	pause(0.35)
	elseif cl == 293 then
	bgUpdate('black')
	pause(3)
	elseif cl == 294 then
	event_end('next')
	elseif cl == 295 then
	scriptJump(502)
	end
end

function ch40_clearall()
	if cl == 254 then
	s "I wanted to thank you for spending so much time with us all."
	elseif cl == 255 then
	audioUpdate('monika-end')
	updateSayori('2','d')
    s "You worked so hard to make each and every one of us happy."
	elseif cl == 256 then
    s "You comforted us through our hard times."
	elseif cl == 257 then
    s "And you helped us all get along with each other."
	elseif cl == 258 then
	updateSayori('1','a')
    cw('s',"Do you get it, "..player.."?")
	elseif cl == 259 then
    s "Because I'm President now, I understand everything."
	elseif cl == 260 then
	updateSayori('1','q')
    s "You really didn't want to miss a single thing in this game, did you?"
	elseif cl == 261 then
	updateSayori('1','a')
    s "You saved and loaded so many times, just to make sure you could spend time with everyone."
	elseif cl == 262 then
    s "Only someone who truly cares about the Literature Club would go that far."
	elseif cl == 263 then
    s "But..."
	elseif cl == 264 then
	updateSayori('4','d')
    s "All along, that's all I ever wanted."
	elseif cl == 265 then
    s "For everyone to be happy and care about each other."
	elseif cl == 266 then
	updateSayori('4','q')
    s "Ahaha..."
	elseif cl == 267 then
	updateSayori('1','t')
    s "It's kind of sad, you know?"
	elseif cl == 268 then
    s "After all you've done for us, there isn't much I can do for you in return."
	elseif cl == 269 then
    s "We've already reached the end of the game."
	elseif cl == 270 then
	updateSayori('1','y')
    s "So..."
	elseif cl == 271 then
    s "This is where we say goodbye."
	elseif cl == 272 then
	updateSayori('1','d')
    s "Thank you for playing Doki Doki Literature Club."
	elseif cl == 273 then
	cw('s',"I'm going to miss you, "..player..".")
	elseif cl == 274 then
    s "Come visit sometime, okay?"
	elseif cl == 275 then
    s "We'll always be here for you."
	elseif cl == 276 then
	updateSayori('1','t')
    s "We..."
	elseif cl == 277 then
	event_initstart('wipe','black')
	elseif cl == 278 then
    s "We all love you."
	elseif cl == 279 then
	audioUpdate('0')
	--event_initstart('ch23-30')
	pause(3)
	elseif cl == 280 then
	--event_end()
	scriptJump(502)
	end
end