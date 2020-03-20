local m_chance = math.random(0, 2)
appeal = {s=0,n=0,y=0}
n_poemappeal = {0,0,0}
y_poemappeal = {0,0,0}
poemwinner = {'','',''}
savevalue = ''

function ch20script()
	if cl == 1 then
	audioUpdate('2')
	bgUpdate('residential')
	bl "It's an ordinary school day, like any other."
	elseif cl == 2 then
	bl "Mornings are usually the worst, being surrounded by couples and friend groups walking to school together."
	elseif cl == 3 then
	bl "Meanwhile, I've always walked to school alone."
	elseif cl == 4 then
	bl "I always tell myself it's about time I meet some girls or something like that..."
	elseif cl == 5 then
	bl "But I have no motivation to join any clubs."
	elseif cl == 6 then
	bl "I'm perfectly content just getting by on the average while spending my free time on games and  anime."
	elseif cl == 7 then
	bl "There's always the anime club, but it's not like there would be any girls in it anyway..."
	elseif cl == 8 then
	bgUpdate('class')
	bl "The school day is as ordinary as ever, and it's over before I know it."
	elseif cl == 9 then
	bl "After I pack up my things, I stare blankly at the wall, looking for an ounce of motivation."
	elseif cl == 10 then
	mc "Clubs..."
	elseif cl == 11 then
	bl "There really aren't any that interest me."
	elseif cl == 12 then
	bl "Besides, most of them would probably be way too demanding for me to want to deal with."
	elseif cl == 13 then
	bl "I guess I have no choice but to start with the anime club..."
	elseif cl == 14 then
	cw('???',"..."..player.."?")
	elseif cl == 15 then
	event_initstart('m_glitch1')
	elseif cl == 16 then
	updateMonika('1','a',80)
	sfxplay('s_kill_glitch1s')
	mc "...Monika?"
	elseif cl == 17 then
	updateMonika('1','b')
	m "Oh my goodness, I totally didn't expect to see you here!"
	elseif cl == 18 then
	updateMonika('5a')
	m "It's been a while, right?"
	elseif cl == 19 then
	mc "Ah..."
	elseif cl == 20 then
	mc "Yeah, it has."
	elseif cl == 21 then
	bl "Monika smiles sweetly."
	elseif cl == 22 then
	bl "We do know each other - well, we rarely talked, but we were in the same class last year."
	elseif cl == 23 then
	bl "Monika was probably the most popular girl in class - smart, beautiful, athletic."
	elseif cl == 24 then
	bl "Basically, completely out of my league."
	elseif cl == 25 then
	bl "So, having her smile at me so genuinely feels a little..."
	elseif cl == 26 then
	mc "What did you come in here for, anyway?"
	elseif cl == 27 then
	updateMonika('1','a')
	m "Oh, I've just been looking for some supplies to use for my club."
	elseif cl == 28 then
	updateMonika('1','d')
	m "Do you know if there's any construction paper in here?"
	elseif cl == 29 then
	m "Or markers?"
	elseif cl == 30 then
	mc "I guess you could check the closet."
	elseif cl == 31 then
	mc "...You're in the debate club, right?"
	elseif cl == 32 then
	updateMonika('5a')
	m "Ahaha, about that..."
	elseif cl == 33 then
	m "I actually quit the debate club."
	elseif cl == 34 then
	mc "Really? You quit?"
	elseif cl == 35 then
	m "Yeah..."
	elseif cl == 36 then
	updateMonika('2','e')
	m "To be honest, I can't stand all of the politics around the major clubs."
	elseif cl == 37 then
	m "It feels like nothing but arguing about the budget and publicity and how to prepare for events..."
	elseif cl == 38 then
	m "I'd much rather take something I personally enjoy and make something special out of it."
	elseif cl == 39 then
	mc "In that case, what club did you decide to join?"
	elseif cl == 40 then
	updateMonika('1','b')
	m "Actually, I'm starting a new one!"
	elseif cl == 41 then
	sfxplay('s_kill_glitch1s')
	m "A literature club!"
	elseif cl == 42 then
	mc "Literature...?"
	elseif cl == 43 then
	bl "That sounds kind of...dull?"
	elseif cl == 44 then
	mc "How many members do you have so far?"
	elseif cl == 45 then
	updateMonika('5a')
	m "Um..."
	elseif cl == 46 then
	m "Ahaha..."
	elseif cl == 47 then
	m "It's kind of embarrassing, but there are only three of us so far."
	elseif cl == 48 then
	m "It's really hard to find new members for something that sounds so boring..."
	elseif cl == 49 then
	mc "Well, I can see that..."
	elseif cl == 50 then
	updateMonika('3','d')
	m "But it's really not boring at all, you know!"
	elseif cl == 51 then
	m "Literature can be anything. Reading, writing, poetry..."
	elseif cl == 52 then
	updateMonika('3','e')
	m "I mean, one of my members even keeps her manga collection in the clubroom..."
	elseif cl == 53 then
	mc "Wait...really?"
	elseif cl == 54 then
	updateMonika('2','k')
	m "Yeah, it's funny, right?"
	elseif cl == 55 then
	updateMonika('2','e')
	m "She always insists that manga is literature, too."
	elseif cl == 56 then
	m "I mean, she's not wrong, I guess..."
	elseif cl == 57 then
	m "And besides, a member's a member, right?"
	elseif cl == 58 then
	bl "...Did Monika say \"she\"?"
	elseif cl == 59 then
	bl "Hmm..."
	updateMonika('1','a')
	cw('m',"Hey, "..player.."...")
	elseif cl == 60 then
	m "By any chance...are you still looking for a club to join?"
	elseif cl == 61 then
	mc "Ah--"
	elseif cl == 62 then
	mc "I mean, I guess so, but..."
	elseif cl == 63 then
	m "In that case..."
	elseif cl == 64 then
	updateMonika('5a')
	m "Is there any chance you could do me a big favor?"
	elseif cl == 65 then
	m "I won't ask you to join, but..."
	elseif cl == 66 then
	m "If you could at the very least visit my club, it would make me really happy."
	elseif cl == 67 then
	m "Please?"
	elseif cl == 68 then
	mc "Um..."
	elseif cl == 69 then
	bl "Well, I guess I have no reason to refuse..."
	elseif cl == 70 then
	bl "Besides, how could I ever refuse someone like Monika?"
	elseif cl == 71 then
	mc "Sure, I guess I could check it out."
	elseif cl == 72 then
	updateMonika('1','k')
	m "Aah, awesome!"
	elseif cl == 73 then
	updateMonika('1','b')
	cw('m',"You're really sweet, "..player..", you know that?")
	elseif cl == 74 then
	mc "I-It's nothing, really..."
	elseif cl == 75 then
	updateMonika('1','a')
	m "Shall we go, then?"
	elseif cl == 76 then
	m "I'll look for the materials another time - you're more important."

	elseif cl == 77 then
	audioUpdate('0')
	bgUpdate('corridor')
	hideMonika()
	bl "And thus, today marks the day I sold my soul to Monika and her irresistible smile."
	elseif cl == 78 then
	bl "I timidly follow Monika across the school and upstairs - a section of the school I rarely visit, being generally used for third-year classes and activities."
	elseif cl == 79 then
	bl "Monika, full of energy, swings open the classroom door."
	
	elseif cl == 80 then
	if autoskip > 0 or m_chance > 0 then
		updateMonika('3','b',-40,0)
	elseif m_chance == 0 then
		updateMonika('g1')
		if is3DS then
			m_Set.x = math.random(-40, -20)
			m_Set.y = math.random(0, 20)
		else
			m_Set.x = love.math.random(-128, -64)
			m_Set.y = love.math.random(0, 64)
		end
	end
	bgUpdate('club_day2')	
	audioUpdate('3')
	m "I'm back~!"
	
	elseif cl == 81 then
	updateMonika('3','b',-40,0)
	updateYuri('2','t',200)
	sfxplay('glitch1s')
	cw('Girl 1',"Eh?")
	elseif cl == 82 then
	cw('Girl 1',"A...a guest?")
	elseif cl == 83 then
	updateNatsuki('4','c',80)
	cw('Girl 2',"Seriously? You brought a boy?")
	elseif cl == 84 then
	cw('Girl 2',"Way to kill the atmosphere.")
	elseif cl == 85 then
	updateMonika('3','m')
	m "Don't be mean, Natsuki..."
	elseif cl == 86 then
	updateMonika('3','b')
	cw('m',"...But anyway, welcome to the club, "..player.."!")
	elseif cl == 87 then
	updateMonika('3','a')
	cw('mc',"...")
	elseif cl == 88 then
	bl "All words escape me in this situation."
	elseif cl == 89 then
	bl "This club..."
	elseif cl == 90 then
	bl "...is full of incredibly cute girls!!"
	elseif cl == 91 then
	updateNatsuki('5','c')
	cw('Girl 2',"So, let me guess...")
	elseif cl == 92 then
	cw('Girl 2',"You're Monika's boyfriend, right?")
	elseif cl == 93 then
	mc "Wha--"
	elseif cl == 94 then
	mc "No, I'm not!"
	elseif cl == 95 then
	updateYuri('2','l')
	cw('Girl 1',"Natsuki...")
	elseif cl == 96 then
	bl "The girl with the sour attitude, whose name is apparently Natsuki, is one I don't recognize."
	elseif cl == 97 then
	bl "Her small figure makes me think she's probably a first-year."
	elseif cl == 98 then
	updateMonika('2','l')
	m "A-Anyway, this is Natsuki, energetic as usual..."
	elseif cl == 99 then
	updateMonika('2','b')
	m "And this is Yuri, the Vice President!"
	elseif cl == 100 then
	updateMonika('2','a')
	updateYuri('4','a2')
	y "I-It's nice to meet you..."
	elseif cl == 101 then
	bl "Yuri, who appears comparably more mature and timid, seems to have a hard time keeping up with  someone like Natsuki."
	elseif cl == 102 then
	mc "Yeah... It's nice to meet both of you."
	elseif cl == 103 then
	updateMonika('1','a')
	cw('m',"So, I ran into "..player.." in a classroom, and he decided to come check out the club.")
	elseif cl == 104 then
	m "Isn't that great?"
	elseif cl == 105 then
	updateNatsuki('4','e')
	n "Wait! Monika!"
	elseif cl == 106 then
	n "Didn't I tell you to let me know in advance before you brought anyone new?"
	elseif cl == 107 then
	updateNatsuki('4','q')
	n "I was going to...well, you know..."
	elseif cl == 108 then
	updateMonika('1','e')
	m "Sorry, sorry!"
	elseif cl == 109 then
	m "I didn't forget that, but I just happened to run into him."
	elseif cl == 110 then
	updateYuri('1','a')
	y "In that case, I should at least make some tea, right?"
	elseif cl == 111 then
	updateMonika('1','b')
	m "Yeah, that would be great!"
	elseif cl == 112 then
	cw('m',"Why don't you come sit down, "..player.."?")
	elseif cl == 113 then
	hideAll()
	bl "The girls have a few desks arranged to form a table."
	elseif cl == 114 then
	bl "Yuri walks to the corner of the room and opens the closet."
	elseif cl == 115 then
	bl "Meanwhile, Monika and Natsuki sit across from each other."
	elseif cl == 116 then
	bl "Still feeling awkward, I take a seat next to Monika."
	elseif cl == 117 then
	updateMonika('1','a',80)
	m "So, I know you didn't really plan on coming here..."
	elseif cl == 118 then
	m "But we'll make sure you feel right at home, okay?"
	elseif cl == 119 then
	updateMonika('1','j')
	m "As president of the Literature Club, it's my duty to make the club fun and exciting for everyone!"
	elseif cl == 120 then
	mc "I'm surprised there aren't more people in the club yet."
	elseif cl == 121 then
	mc "It must be hard to start a new club."
	elseif cl == 122 then
	updateMonika('3','b')
	m "You could put it that way."
	elseif cl == 123 then
	m "Not many people are very interested in putting out all the effort to start something brand new..."
	elseif cl == 124 then
	m "Especially when it's something that doesn't grab your attention, like literature."
	elseif cl == 125 then
	m "You have to work hard to convince people that you're both fun and worthwhile."
	elseif cl == 126 then
	m "But it makes school events, like the festival, that much more important."
	elseif cl == 127 then
	updateMonika('2','k')
	m "I'm confident that we can all really grow this club before we graduate!"
	elseif cl == 128 then
	m "Right, Natsuki?"
	elseif cl == 129 then
	updateNatsuki('4','q',10)
	updateMonika('2','k',150)
	n "Well..."
	elseif cl == 130 then
	n "...I guess."
	elseif cl == 131 then
	bl "Natsuki reluctantly agrees."
	elseif cl == 132 then
	bl "Such different girls, all interested in the same goal..."
	elseif cl == 133 then
	bl "Monika must have worked really hard just to find these two."
	elseif cl == 134 then
	bl "Yuri returns to the table, carrying a tea set."
	elseif cl == 135 then
	bl "She carefully places a teacup in front of each of us before setting down the teapot in the middle."
	elseif cl == 136 then
	hideNatsuki()
	hideMonika()
	updateYuri('1','a',10)
	mc "You keep a whole tea set in this classroom?"
	elseif cl == 137 then
	y "Don't worry, the teachers gave us permission."
	elseif cl == 138 then
	y "After all, doesn't a hot cup of tea help you enjoy a good book?"
	elseif cl == 139 then
	mc "Ah... I-I guess..."
	elseif cl == 140 then
	updateMonika('4','a',150)
	m "Ehehe, don't let yourself get intimidated, Yuri's just trying to impress you."
	elseif cl == 141 then
	updateYuri('3','n')
	y "Eh?! T-That's not..."
	elseif cl == 142 then
	bl "Insulted, Yuri looks away."
	elseif cl == 143 then
	updateYuri('4','b2')
	y "I meant that, you know..."
	elseif cl == 144 then
	mc "I believe you."
	elseif cl == 145 then
	mc "Well, tea and reading might not be a pastime for me, but I at least enjoy tea."
	elseif cl == 146 then
	updateYuri('2','u')
	y "I'm glad..."
	elseif cl == 147 then
	bl "Yuri faintly smiles to herself in relief."
	elseif cl == 148 then
	hideMonika()
	updateYuri('1','a',80)
	cw('y',"So, "..player..", what kinds of things do you like to read?")
	elseif cl == 149 then
	mc "Well... Ah..."
	elseif cl == 150 then
	bl "Considering how little I've read these past few years, I don't really have a good way of answering that."
	elseif cl == 151 then
	mc "...Manga..."
	elseif cl == 152 then
	bl "I mutter quietly to myself, half-joking."
	elseif cl == 153 then
	updateNatsuki('1','c',-50)
	bl "Natsuki's head suddenly perks up."
	elseif cl == 154 then
	bl "It looks like she wants to say something, but she keeps quiet."
	elseif cl == 155 then
	hideNatsuki()
	updateYuri('3','u')
	y "N-Not much of a reader, I guess..."
	elseif cl == 156 then
	mc "...Well, that can change..."
	elseif cl == 157 then
	bl "What am I saying?"
	elseif cl == 158 then
	bl "I spoke without thinking after seeing Yuri's sad smile."
	elseif cl == 159 then
	mc "Anyway, what about you, Yuri?"
	elseif cl == 160 then
	updateYuri('1','l')
	y "Well, let's see..."
	elseif cl == 161 then
	bl "Yuri traces the rim of her teacup with her finger."
	elseif cl == 162 then
	updateYuri('1','a')
	y "My favorites are usually novels that build deep and complex fantasy worlds."
	elseif cl == 163 then
	y "The level of creativity and craftsmanship behind them is amazing to me."
	elseif cl == 164 then
	updateYuri('1','f')
	y "And telling a good story in such a foreign world is equally impressive."
	elseif cl == 165 then
	bl "Yuri goes on, clearly passionate about her reading."
	elseif cl == 166 then
	bl "She seemed so reserved and timid since the moment I walked in, but it's obvious by the way her eyes light up that she finds her comfort in the world of books, not people."
	elseif cl == 167 then
	updateYuri('2','m')
	y "But you know, I like a lot of things."
	elseif cl == 168 then
	y "Stories with deep psychological elements usually immerse me as well."
	elseif cl == 169 then
	updateYuri('2','a')
	y "Isn't it amazing how a writer can so deliberately take advantage of your own lack of imagination to completely throw you for a loop?"
	elseif cl == 170 then
	y "Anyway, I've been reading a lot of horror lately..."
	elseif cl == 171 then
	mc "Ah, I read a horror book once..."
	elseif cl == 172 then
	bl "I desperately grasp something I can relate to at the minimal level."
	elseif cl == 173 then
	bl "At this rate, Yuri might as well be having a conversation with a rock."
	elseif cl == 174 then
	updateMonika('1','j',200)
	m "Ahaha. I'd expect that from you, Yuri."
	elseif cl == 175 then
	updateMonika('1','a')
	m "It suits your personality."
	elseif cl == 176 then
	updateYuri('1','a')
	y "Oh, is that so?"
	elseif cl == 177 then
	y "Really, if a story makes me think, or takes me to another world, then I really can't put it down."
	elseif cl == 178 then
	y "Surreal horror is often very successful at changing the way you look at the world, if only for a brief moment."
	elseif cl == 179 then
	updateNatsuki('5','q',-40)
	n "Ugh, I hate horror..."
	elseif cl == 180 then
	updateYuri('1','f')
	y "Oh? Why's that?"
	elseif cl == 181 then
	updateNatsuki('5','c')
	n "Well, I just..."
	elseif cl == 182 then
	bl "Natsuki's eyes dart over to me for a split second."
	elseif cl == 183 then
	updateNatsuki('5','q')
	n "Never mind."
	elseif cl == 184 then
	updateMonika('1','a')
	m "That's right, you usually like to write about cute things, don't you, Natsuki?"
	elseif cl == 185 then
	updateNatsuki('1','o')
	n "W-What?"
	elseif cl == 186 then
	n "What gives you that idea?"
	elseif cl == 187 then
	updateMonika('3','b')
	m "You left a piece of scrap paper behind last club meeting."
	elseif cl == 188 then
	m "It looked like you were working on a poem called--"
	elseif cl == 189 then
	updateNatsuki('1','p')
	n "Don't say it out loud!!"
	elseif cl == 190 then
	n "And give that back!"
	elseif cl == 191 then
	updateMonika('1','j')
	m "Fine, fine~"
	elseif cl == 192 then
	updateMonika('1','a')
	mc "Natsuki, you write your own poems?"
	elseif cl == 193 then
	updateNatsuki('1','c')
	n "Eh? Well, I guess sometimes."
	elseif cl == 194 then
	n "Why do you care?"
	elseif cl == 195 then
	mc "I think that's impressive."
	elseif cl == 196 then
	mc "Why don't you share them sometime?"
	elseif cl == 197 then
	updateNatsuki('5','q')
	n "N-No!"
	elseif cl == 198 then
	bl "Natsuki averts her eyes."
	elseif cl == 199 then
	n "You wouldn't...like them..."
	elseif cl == 200 then
	mc "Ah...not a very confident writer yet?"
	elseif cl == 201 then
	updateYuri('2','f')
	y "I understand how Natsuki feels."
	elseif cl == 202 then
	y "Sharing that level of writing takes more than just confidence."
	elseif cl == 203 then
	updateYuri('2','k')
	y "The truest form of writing is writing to oneself."
	elseif cl == 204 then
	y "You must be willing to open up to your readers, exposing your vulnerabilities and showing even the deepest reaches of your heart."
	elseif cl == 205 then
	updateMonika('2','a')
	m "Do you have writing experience too, Yuri?"
	elseif cl == 206 then
	m "Maybe if you share some of your work, you can set an example and help Natsuki feel comfortable enough to share hers."
	elseif cl == 207 then
	updateYuri('3','o')
	y "..."
	elseif cl == 208 then
	mc "I guess it's the same for Yuri..."
	elseif cl == 209 then
	bl "We all sit in silence for a moment."
	elseif cl == 210 then
	updateMonika('5a')
	m "Hey, I just got an idea!"
	elseif cl == 211 then
	m "How about this?"
	elseif cl == 212 then
	updateNatsuki('2','k')
	updateYuri('3','e')
	cw('ny',"...?")
	elseif cl == 213 then
	bl "Natsuki and Yuri look quizzically at Monika."
	elseif cl == 214 then
	updateMonika('2','b')
	m "Let's all go home and write a poem of our own!"
	elseif cl == 215 then
	m "Then, next time we meet, we'll all share them with each other."
	elseif cl == 216 then
	m "That way, everyone is even!"
	elseif cl == 217 then
	updateMonika('2','a')
	updateNatsuki('5','q')
	n "U-Um..."
	elseif cl == 218 then
	updateYuri('3','v')
	y "..."
	elseif cl == 219 then
	updateMonika('2','m')
	m "Ah..."
	elseif cl == 220 then
	m "I mean, I thought it was a good idea..."
	elseif cl == 221 then
	updateYuri('2','l')
	y "Well..."
	elseif cl == 222 then
	y "...I think you're right, Monika."
	elseif cl == 223 then
	updateYuri('2','f')
	y "We should probably start finding activities for all of us to participate in together."
	elseif cl == 224 then
	updateYuri('2','h')
	y "I did decide to take on the responsibility of Vice President, after all..."
	elseif cl == 225 then
	y "I need to do my best to nurture the club as well as its members."
	elseif cl == 226 then
	updateYuri('2','a')
	y "Besides, now that we have a new member..."
	elseif cl == 227 then
	y "It seems like a good step for us to take."
	elseif cl == 228 then
	cw('y',"Do you agree as well, "..player.."?")
	elseif cl == 229 then
	mc "Hold on...there's still one problem."
	elseif cl == 230 then
	updateMonika('1','d')
	m "Eh? What's that?"
	elseif cl == 231 then
	bl "Now that we've reached the most important topic, I bluntly come forth with what's been on my mind the entire time."
	elseif cl == 232 then
	mc "I never said I would join this club!"
	elseif cl == 233 then
	mc "Monika may have convinced me to stop by, but I never made any decision."
	elseif cl == 234 then
	mc "I still have other clubs to look at, and...um..."
	updateMonika('1','g')
	updateNatsuki('4','g')
	updateYuri('2','e')
	bl "I lose my train of thought."
	elseif cl == 235 then
	bl "All three girls stare back at me with dejected eyes."
	elseif cl == 236 then
	updateMonika('1','p')
	m "B-But..."
	elseif cl == 237 then
	updateYuri('2','v')
	y "I'm sorry, I thought..."
	elseif cl == 238 then
	updateNatsuki('5','s')
	n "Hmph."
	elseif cl == 239 then
	mc "Eh...?"
	elseif cl == 240 then
	bl "The girls exchange glances before Monika turns back to me."
	elseif cl == 241 then
	updateMonika('1','m')
	cw('m',"I...guess I need to tell you the truth, "..player..".")
	elseif cl == 242 then
	m "The thing is..."
	elseif cl == 243 then
	updateMonika('1','p')
	m "...We don't have enough members yet to form an official club."
	elseif cl == 244 then
	m "We need four..."
	elseif cl == 245 then
	m "And I've been trying really, really hard to find new members."
	elseif cl == 246 then
	m "And if we don't find one more before the festival..."
	elseif cl == 247 then
	mc "..."
	elseif cl == 248 then
	bl "I...I'm defenseless against these girls."
	elseif cl == 249 then
	bl "How am I supposed to make a clear-headed decision when it's like this?"
	elseif cl == 250 then
	bl "I would feel terrible for letting everyone down in this situation..."
	elseif cl == 251 then
	bl "And besides, the club itself seems pretty relaxed..."
	elseif cl == 252 then
	bl "So, if writing poems is the price I need to pay in order to spend every day with these beautiful girls..."
	elseif cl == 253 then
	mc "...Right."
	elseif cl == 254 then
	mc "Okay, I've decided, then."
	elseif cl == 255 then
	mc "I'll join the Literature Club."
	elseif cl == 256 then
	updateMonika('1','e')
	updateYuri('3','f')
	updateNatsuki('1','k')
	bl "One by one, the girls' eyes light up."
	elseif cl == 257 then
	m "Oh my goodness, really?"
	elseif cl == 258 then
	cw('m',"Do you really mean that, "..player.."?")
	elseif cl == 259 then
	mc "Yeah..."
	elseif cl == 260 then
	mc "It could be fun, right?"
	elseif cl == 261 then
	updateYuri('1','m')
	y "You really did scare me for a moment..."
	elseif cl == 262 then
	updateNatsuki('5','q')
	n "I mean, if you really just left after all this, I would be super pissed."
	elseif cl == 263 then
	cw('m',player..", I'm so happy...")
	elseif cl == 264 then
	updateMonika('1','k')
	m "We can become an official club now!"
	elseif cl == 265 then
	updateMonika('1','e')
	m "Thank you so much for this. You're really amazing."
	elseif cl == 266 then
	m "I'll do everything I can to give you a great time, okay?"
	elseif cl == 267 then
	mc "Ah...thanks, I guess."
	elseif cl == 268 then
	hideYuri()
	hideNatsuki()
	updateMonika('3','b',80)
	m "Okay, everyone!"
	elseif cl == 269 then
	m "I think with that, we can officially end today's meeting on a good note."
	elseif cl == 270 then
	m "Everyone remember tonight's assignment:"
	elseif cl == 271 then
	m "Write a poem to bring to the next meeting, so we can all share!"
	elseif cl == 272 then
	bl "Monika looks over at me once more."
	elseif cl == 273 then
	updateMonika('1','a')
	cw('m',player..", I look forward to seeing how you express yourself.")
	elseif cl == 274 then
	updateMonika('5a')
	m "Ehehe~"
	elseif cl == 275 then
	mc "Y-Yeah..."
	elseif cl == 276 then
	hideMonika()
	bl "Can I really impress the class star Monika with my mediocre writing skills?"
	elseif cl == 277 then
	bl "I already feel the anxiety welling up inside me."
	elseif cl == 278 then
	bl "Meanwhile, the girls continue to chit-chat as Yuri cleans up the tea set."
	elseif cl == 279 then
	mc "I guess I'll be on my way, then..."
	elseif cl == 280 then
	updateMonika('5a','',80)
	m "Okay!"
	elseif cl == 281 then
	m "I'll see you tomorrow, then."
	elseif cl == 282 then
	m "I can't wait!"
	
	elseif cl == 283 then
	bgUpdate('residential')
	hideMonika()
	bl "With that, I depart the clubroom and make my way home."
	elseif cl == 284 then
	bl "The whole way, my mind wanders back and forth between the three girls:"
	elseif cl == 285 then
	updateNatsuki('4','a',-40)
	bl "Natsuki,"
	elseif cl == 286 then
	updateYuri('1','a',80)
	bl "Yuri,"
	elseif cl == 287 then
	updateMonika('1','a',200)
	bl "and, of course, Monika."
	elseif cl == 288 then
	bl "Will I really be happy spending every day after school in a literature club?"
	elseif cl == 289 then
	bl "Perhaps I'll have the chance to grow closer to one of these girls..."
	elseif cl == 290 then
	hideAll()
	bl "Alright!"
	elseif cl == 291 then
	bl "I'll just need to make the most of my circumstances, and I'm sure good fortune will find me."
	elseif cl == 292 then
	bl "And I guess that starts with writing a poem tonight..."
	elseif cl == 293 then
	fadeOut(4)
	elseif cl == 294 then
	cl = 293
	
	elseif cl == 295 then
	audioUpdate('0')
	bgUpdate('black')
	menutext = 'You have unlocked a special poem.\nWould you like to read it?'
	choices = {'Yes','No'}
	choice_enable()
	elseif cl == 296 then
	if choicepick == 'Yes' then
		changeState('poem_special',sp[1])
	else
		scriptJump(297)
	end
	alpha = 20
	elseif cl >= 297 then
	cl = 297
	fadeOut(1)
	
	--1: x=80
	--2: x=20 x=140 ..or.. x=10 x=150
	--3: x=0-40 x=80 x=200
	--4: x=0-60 x=30 x=120 x=220
	end
end
