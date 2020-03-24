function ch0script()
	--ch0-main
	if cl == 1 then
		bgUpdate('residential')
		audioUpdate('2')
		cw('???',"Spanish test")
	elseif cl == 2 then  
		cw('bl', 'I see an annoying girl running toward me from the distance, waving her arms in the air like she\'s totally oblivious to any attention she might draw to herself.')
	elseif cl == 3 then
		cw('bl', 'That girl is Sayori, my neighbor and good friend since we were children.')
	elseif cl == 4 then
		cw('bl',"You know, the kind of friend you\'d never see yourself making today, but it just kind of works out because you've known each other for so long?")
	elseif cl == 5 then
		cw('bl','We used to walk to school together on days like this, but starting around high school she would oversleep more and more frequently, and I would get tired of waiting up.')
	elseif cl == 6 then
		cw('bl','But if she\'s going to chase after me like this, I almost feel better off running away.')
	elseif cl == 7 then
		cw('bl','However, I just sigh and idle in front of the crosswalk and let Sayori catch up to me.')
	elseif cl == 8 then
		updateSayori('4','p',80)
		cw('s',"Haaahhh...haaahhh...")
	elseif cl == 9 then 
		cw('s',"I overslept again!")
	elseif cl == 10 then 
		cw('s',"But I caught you this time!")
    elseif cl == 11 then
		cw('mc',"Maybe, but only because I decided to stop and wait for you.")
	elseif cl == 12 then
		updateSayori('5c')
		cw('s',"Eeehhhhh, you say that like you were thinking about ignoring me!")
	elseif cl == 13 then 
		cw('s',"That\'s mean, " .. player .. "!")
	elseif cl == 14 then
		cw('mc',"Well, if people stare at you for acting weird then I don't want them to think we're a couple or something.")
	elseif cl == 15 then
		updateSayori('1','a')
		cw('s',"Fine, fine.")
	elseif cl == 16 then 
		cw('s',"But you did wait for me, after all.")
	elseif cl == 17 then
		cw('s',"I guess you don't have it in you to be mean even if you want to~")
	elseif cl == 18 then
		cw('mc',"Whatever you say, Sayori...")
	elseif cl == 19 then
		updateSayori('1','q')
		cw('s',"Ehehe~")
	elseif cl == 20 then
		hideSayori()
		cw('bl','We cross the street together and make our way to school.')
	elseif cl == 21 then
		cw('bl','As we draw near, the streets become increasingly speckled with other students making their daily commute.')
	elseif cl == 22 then
		updateSayori('3','a',80)
		cw('s','By the way, ' .. player .. '...')
	elseif cl == 23 then 
		cw('s',"Have you decided on a club to join yet?")
	elseif cl == 24 then
		cw('mc',"A club?")
	elseif cl == 25 then
		cw('mc',"I told you already, I\'m really not interested in joining any clubs.")
	elseif cl == 26 then 
		cw('mc',"I haven't been looking, either.")
	elseif cl == 27 then
		updateSayori('4','h')
		cw('s',"Eh? That's not true!")
	elseif cl == 28 then
		cw('s',"You told me you would join a club this year!")
	elseif cl == 29 then
		cw('mc',"Did I...?")
	elseif cl == 30 then
		cw('bl','I\'m sure it\'s possible that I did, in one of our many conversations where I dismissively go along with whatever she\'s going on about.')
	elseif cl == 31 then
		cw('bl','Sayori likes to worry a little too much about me, when I\'m perfectly content just getting by on the average while spending my free time on games and anime.')
	elseif cl == 32 then
		updateSayori('4','j')
		cw('s',"Uh-huh!")
	elseif cl == 33 then
		cw('s',"I was talking about how I\'m worried that you won\'t learn how to socialize or have any skills before college.")
	elseif cl == 34 then
		cw('s',"Your happiness is really important to me, you know!")
	elseif cl == 35 then
		cw('s',"And I know you\'re happy now, but I\'d die at the thought of you becoming a NEET in a few years because you\'re not used to the real world!")
	elseif cl == 36 then
		updateSayori('4','g')
		cw('s',"You trust me, right?")
	elseif cl == 37 then
		cw('s',"Don't make me keep worrying about you...")
	elseif cl == 38 then 
		cw('mc',"Alright, alright...")
	elseif cl == 39 then
		cw('mc',"I'll look at a few clubs if it makes you happy.")
	elseif cl == 40 then 
		cw('mc',"No promises, though.")
	elseif cl == 41 then
		updateSayori('1','h')
		cw('s',"Will you at least promise me you'll try a little?")
	elseif cl == 42 then
		cw('mc',"Yeah, I guess I'll promise you that.")
	elseif cl == 43 then
		updateSayori('4','r')
		cw('s',"Yaay~!")
	elseif cl == 44 then
		cw('bl','Why do I let myself get lectured by such a carefree girl?')
	elseif cl == 45 then
		cw('bl','More than that, I\'m surprised I even let myself relent to her.')
	elseif cl == 46 then
		cw('bl','I guess seeing her worry so much about me makes me want to ease her mind at least a little bit - even if she does exaggerate everything inside of her head.')
	elseif cl == 47 then
		hideSayori()
		bgUpdate('class')
		cw('bl','The school day is as ordinary as ever, and it\'s over before I know it.')
	elseif cl == 48 then
		cw('bl','After I pack up my things, I stare blankly at the wall, looking for an ounce of motivation.')
	elseif cl == 49 then
		cw('mc',"Clubs...")
	elseif cl == 50 then
		cw('bl','Sayori wants me to check out some clubs.')
	elseif cl == 51 then
		cw('mc','I guess I have no choice but to start with the anime club...')
	elseif cl == 52 then
		cw('s',"Hellooo?")
	elseif cl == 53 then
		updateSayori('1','b',80)
		cw('mc',"Sayori...?")
	elseif cl == 54 then
		cw('bl','Sayori must have come into the classroom while I was spacing out.')
	elseif cl == 55 then
		cw('bl','I look around and realize that I\'m the only one left in the classroom.')
	elseif cl == 56 then
		updateSayori('1','a')
		cw('s',"I thought I\'d catch you coming out of the classroom, but I saw you just sitting here and spacing out, so I came in.")
	elseif cl == 57 then
		cw('s',"Honestly, you\'re even worse than me sometimes... I\'m impressed!")
	elseif cl == 58 then
		cw('mc',"You don\'t need to wait up for me if it's going to make you late to your own club.")
	elseif cl == 59 then
		updateSayori('1','y')
		cw('s',"Well, I thought you might need some encouragement, so I thought, you know...")
	elseif cl == 60 then
		cw('mc',"Know what?")
	elseif cl == 61 then
		updateSayori('1','a')
		cw('s',"Well, that you could come to my club!")
	elseif cl == 62 then
		cw('mc',"Sayori...")
	elseif cl == 63 then
		updateSayori('4','r')
		cw('s',"Yeah??")
	elseif cl == 64 then
		cw('mc',"...There is no way I'm going to your club.")
	elseif cl == 65 then
		updateSayori('5d','')
		cw('s',"Eeeehhhhh?! Meanie!")
	elseif cl == 66 then
		cw('bl','Sayori is vice president of the Literature Club.')
	elseif cl == 67 then
		cw('bl','Not that I was ever aware that she had any interest in literature.')
	elseif cl == 68 then
		cw('bl','In fact, I\'m 99% sure she only did it because she thought it would be fun to help start a new club.')
	elseif cl == 69 then
		cw('bl','Since she was the first one to show interest after the one who proposed the club, she inherited the title "Vice President".')
	elseif cl == 70 then
		cw('bl','That said, my interest in literature is guaranteed to be even less.')
	elseif cl == 71 then
		cw('mc',"Yeah. I\'m going to the anime club.")
	elseif cl == 72 then
		updateSayori('1','g')
		cw('s',"C'mon, please?")
	elseif cl == 73 then
		cw('mc',"Why do you care so much, anyway?")
	elseif cl == 74 then
		updateSayori('5b','')
		cw('s',"Well...")
	elseif cl == 75 then
		cw('s',"I kind of told the club yesterday I would bring in a new member...")
    elseif cl == 76 then
		cw('s',"And Natsuki made cupcakes and everything...")
	elseif cl == 77 then 
		cw('s',"Ehehe...")
	elseif cl == 78 then
		cw('mc',"Don\'t make promises you can\'t keep!")
	elseif cl == 79 then
		cw('bl','I can\'t tell if Sayori is really that much of an airhead, or if she\'s so cunning as to have planned all of this out.')
    elseif cl == 80 then 
		cw('bl','I let out a long sigh.')
	elseif cl == 81 then
		cw('mc',"Fine... I\'ll stop by for a cupcake, okay?")
    elseif cl == 82 then
		updateSayori('4','r')
		cw('s',"Yes! Let\'s go~!")
	elseif cl == 83 then
		hideSayori()
		bgUpdate('corridor')
		audioUpdate('0')
		cw('bl','And thus, today marks the day I sold my soul for a cupcake.')
	elseif cl == 84 then
		cw('bl','I dejectedly follow Sayori across the school and upstairs - a section of the school I rarely visit, being generally used for third-year classes and activities.')
	elseif cl == 85 then 
		cw('bl','Sayori, full of energy, swings open the classroom door.')
	elseif cl == 86 then
		bgUpdate('club')
		audioUpdate('3')
		updateSayori('4','a',-50)
		cw('s',"Everyone! The new member is here~!")
	elseif cl == 87 then
		cw('mc',"I told you, don't call me a 'new member - '")
	elseif cl == 88 then
		hideSayori()
		cw('bl','Eh? I glance around the room.')
	elseif cl == 89 then
		updateYuri('1','a',80)
		cw('Girl 1',"Welcome to the Literature Club. It's a pleasure meeting you.")
    elseif cl == 90 then 
		cw('Girl 1',"Sayori always says nice things about you.")
	elseif cl == 91 then
		updateNatsuki('4','c',10)
		updateYuri('1','a',150)
		cw('Girl 2',"Seriously? You brought a boy?")
	elseif cl == 92 then 
		cw('Girl 2',"Way to kill the atmosphere.")
	elseif cl == 93 then
		updateMonika('1','k',-40)
		updateNatsuki('4','c',80)
		updateYuri('1','a',200)
		cw('Girl 3',"Ah, " .. player .. "! What a nice surprise!")
	elseif cl == 94 then 
		cw('Girl 3',"Welcome to the club!")
	elseif cl == 95 then
		updateMonika('1','a')
		cw('mc',"...")
	elseif cl == 96 then 
		cw('bl','All words escape me in this situation.')
    elseif cl == 97 then 
		cw('bl','This club...')
    elseif cl == 98 then
		cw('bl','...is full of incredibly cute girls!!')
	elseif cl == 99 then
		hideMonika()
		hideYuri()
		updateNatsuki('2','c')
		cw('Girl 2',"What are you looking at?")
	elseif cl == 100 then 
		cw('Girl 2',"If you want to say something, say it.")
	elseif cl == 101 then
		cw('mc',"S-Sorry...")
	elseif cl == 102 then
		updateYuri('2','l',200)
		cw('Girl 1',"Natsuki...")
	elseif cl == 103 then
		updateNatsuki('5','s')
		cw('Girl 2',"Hmph.")
	elseif cl == 104 then
		cw('bl','The girl with the sour attitude, whose name is apparently Natsuki, is one I don\'t recognize.')
	elseif cl == 105 then
		cw('bl','Her small figure makes me think she\'s probably a first-year.')
    elseif cl == 106 then
		cw('bl','She is also the one who made cupcakes, according to Sayori.')
	elseif cl == 107 then
		updateSayori('2','q',-40)
		cw('s',"You can just ignore her when she gets moody~")
	elseif cl == 108 then
		cw('bl','Sayori says that quietly into my ear, then turns back toward the other girls.')
	elseif cl == 109 then
		updateSayori('1','x')
		cw('s',"Anyway! This is Natsuki, always full of energy.")
    elseif cl == 110 then 
		cw('s',"And this is Yuri, the smartest in the club!")
	elseif cl == 111 then
		updateYuri('4','b2')
		cw('y',"D-don't say things like that...")
	elseif cl == 112 then
		cw('bl','Yuri, who appears comparably more mature and timid, seems to have a hard time keeping up with people like Sayori and Natsuki.')
	elseif cl == 113 then
		cw('mc',"Ah... Well, it\'s nice to meet both of you.")
	elseif cl == 114 then
		hideYuri()
		hideNatsuki()
		updateSayori('1','a')
		cw('s',"And it sounds like you already know Monika, is that right?")
	elseif cl == 115 then
		updateMonika('2','a',80)
		cw('m',"That's right.")
	elseif cl == 116 then 
		cw('m',"It's great to see you again, " .. player .. ".")
	elseif cl == 117 then
		updateMonika('5a','')
		cw('bl','Monika smiles sweetly.')
	elseif cl == 118 then
		cw('bl','We do know each other - well, we rarely talked, but we were in the same class last year.')
	elseif cl == 119 then
		cw('bl','Monika was probably the most popular girl in class - smart, beautiful, athletic.')
	elseif cl == 120 then 
		cw('bl','Basically, completely out of my league.')
	elseif cl == 121 then
		cw('bl','So, having her smile at me so genuinely feels a little...')
    elseif cl == 122 then
		cw('mc',"Y-You too, Monika.")
	elseif cl == 123 then
		hideMonika()
		updateSayori('4','x')
		cw('s',"Come sit down, " .. player .. '! We made room for you at the table, so you can sit next to me or Monika.')
    elseif cl == 124 then 
		cw('s',"I'll get the cupcakes~")
	elseif cl == 125 then
		updateNatsuki('1','b',80)
		cw('n',"Hey! I made them, I'll get them!")
    elseif cl == 126 then
		updateSayori('5a','')
		cw('s',"Sorry, I got a little too excited~")
    elseif cl == 127 then
		updateYuri('1','a',200)
		cw('y',"Then, how about I make some tea as well?")
	elseif cl == 128 then
		hideSayori()
		hideYuri()
		hideNatsuki()
		cw('bl','The girls have a few desks arranged to form a table.')
	elseif cl == 129 then
		cw('bl','As Sayori mentioned, it\'s been widened so that there is one space next to Monika and one space next to Sayori.')
    elseif cl == 130 then
		cw('bl','Natsuki and Yuri walk over to the corner of the room, where Natsuki grabs a wrapped tray and Yuri opens the closet.')
	elseif cl == 131 then
		cw('bl','Still feeling awkward, I take a seat next to Sayori.')
    elseif cl == 132 then
		cw('bl','Natsuki proudly marches back to the table, tray in hand.')
	elseif cl == 133 then
		updateNatsuki('2','z',80)
		cw('n',"Okaaay, are you ready?")
	elseif cl == 134 then
		cw('n',"...Ta-daaa!")
	elseif cl == 135 then
		updateSayori('4','m',-40)
		updateMonika('2','d',200)
		cw('s',"Uwooooah!")
	elseif cl == 136 then
		cw('bl','Natsuki lifts the foil off the tray to reveal a dozen white, fluffy cupcakes decorated to look like little cats.')
	elseif cl == 137 then
		cw('bl','The whiskers are drawn with icing, and little pieces of chocolate were used to make ears.')
	elseif cl == 138 then
		updateSayori('4','r')
		cw('s',"So cuuuute~!")
	elseif cl == 139 then
		updateMonika('2','b')
		cw('m',"I had no idea you were so good at baking, Natsuki!")
	elseif cl == 140 then
		updateNatsuki('2','d')
		cw('n',"Ehehe. Well, you know.")
	elseif cl == 141 then 
		cw('n',"Just hurry and take one!")
	elseif cl == 142 then
		cw('bl','Sayori grabs one first, then Monika. I follow.')
	elseif cl == 143 then
		updateSayori('4','q')
		cw('s',"It's delicious!")
	elseif cl == 144 then
		cw('bl','Sayori talks with her mouth full and has already managed to get icing on her face.')
	elseif cl == 145 then
		cw('bl','I turn the cupcake around in my fingers, looking for the best angle to take a bite.')
	elseif cl == 146 then
		hideSayori()
		hideMonika()
		updateNatsuki('1','c')
		cw('bl','Natsuki is quiet.')
	elseif cl == 147 then
		cw('bl','I can\'t help but notice her sneaking glances in my direction.')
    elseif cl == 148 then 
		cw('bl','Is she waiting for me to take a bite?')
    elseif cl == 149 then 
		cw('bl','I finally bite down.')
    elseif cl == 150 then
		cw('bl','The icing is sweet and full of flavor - I wonder if she made it herself.')
    elseif cl == 151 then
		cw('mc',"This is really good.")
    elseif cl == 152 then 
		cw('mc',"Thank you, Natsuki.")
	elseif cl == 153 then
		updateNatsuki('5','h')
		cw('n',"W-Why are you thanking me? It's not like I...!")
	elseif cl == 154 then 
		cw('bl',"(Haven't I heard this somewhere before...?)")
	elseif cl == 155 then
		updateNatsuki('5','s')
		cw('n',"...Made them for you or anything.")
	elseif cl == 156 then
		cw('mc',"Eh? I thought you technically did. Sayori said--")
	elseif cl == 157 then
		updateNatsuki('1','2c')
		cw('n',"Well, maybe!")
    elseif cl == 158 then 
		cw('n',"But not for, y-you know, you! Dummy...")
	elseif cl == 159 then
		cw('n',"Alright, alright...")
	elseif cl == 160 then
		hideNatsuki()
		cw('bl','I give up on Natsuki\'s weird logic and dismiss the conversation.')
    elseif cl == 161 then 
		cw('bl',"Yuri returns to the table, carrying a tea set.")
    elseif cl == 162 then
		cw('bl','She carefully places a teacup in front of each of us before setting down the teapot next to the cupcake tray.')
	elseif cl == 163 then
		updateYuri('1','a',10)
		cw('mc',"You keep a whole tea set in this classroom?")
	elseif cl == 164 then
		cw('y',"Don't worry, the teachers gave us permission.")
	elseif cl == 165 then
		cw('y',"After all, doesn't a hot cup of tea help you enjoy a good book?")
	elseif cl == 166 then
		cw('mc',"Ah... I-I guess...")
	elseif cl == 167 then
		updateMonika('4','a',150)
		cw('m',"Ehehe, don't let yourself get intimidated, Yuri's just trying to impress you.")
	elseif cl == 168 then
		updateYuri('3','n')
		cw('y',"Eh?! T-That''s not...")
	elseif cl == 169 then
		cw('bl',"Insulted, Yuri looks away.")
	elseif cl == 170 then
		updateYuri('4','b2')
		cw('y',"I meant that, you know...")
    elseif cl == 171 then 
		cw('mc',"I believe you.")
	elseif cl == 172 then
		cw('mc',"Well, tea and reading might not be a pastime for me, but I at least enjoy tea.")
	elseif cl == 173 then
		updateYuri('2','u')
		cw('y',"I'm glad...")
    elseif cl == 174 then 
		cw('bl','Yuri faintly smiles to herself in relief.')
	elseif cl == 175 then
		cw('bl',"Monika raises an eyebrow, then smiles at me.")
	elseif cl == 176 then
		hideYuri()
		updateMonika('1','a',80)
		cw('m',"So, what made you consider the Literature Club?")
	elseif cl == 177 then 
		cw('mc',"Um...")
	elseif cl == 178 then 
		cw('bl',"I was afraid of this question.")
    elseif cl == 179 then
		cw('bl','Something tells me I shouldn\'t tell Monika that I was practically dragged here by Sayori.')
	elseif cl == 180 then
		cw('mc',"Well, I haven't joined any clubs yet, and Sayori seemed really happy here, so...")
	elseif cl == 181 then 
		updateMonika('1','j')
		cw('m',"That's okay! Don't be embarrassed!")
	elseif cl == 182 then
		updateMonika('1','b')
		cw('m',"We\'ll make sure you feel right at home, okay?")
	elseif cl == 183 then
		cw('m',"As president of the Literature Club, it\'s my duty to make the club fun and exciting for everyone!")
	elseif cl == 184 then 
		updateMonika('1','a')
		cw('mc',"Monika, I\'m surprised.")
	elseif cl == 185 then 
		cw('mc',"How come you decided to start your own club?")
    elseif cl == 186 then
		cw('mc',"You could probably be a board member for any of the major clubs.")
    elseif cl == 187 then 
		cw('mc',"Weren\'t you a leader of the debate club last year?")
    elseif cl == 188 then 
		updateMonika('5a','')
		cw('m',"Ahaha, well, you know...")
	elseif cl == 189 then
		cw('m',"To be honest, I can\'t stand all of the politics around the major clubs.")
	elseif cl == 190 then
		cw('m',"It feels like nothing but arguing about the budget and publicity and how to prepare for events...")
	elseif cl == 191 then
		cw('m',"I\'d much rather take something I personally enjoy and make something special out of it.")
	elseif cl == 192 then
		updateMonika('1','b',80)
		cw('m',"And if it encourages others to get into literature, then I\'m fulfilling that dream!")
	elseif cl == 193 then
		updateMonika('1','a')
		updateSayori('3','q',-40)
		cw('s',"Monika really is a great leader!")
	elseif cl == 194 then
		updateYuri('1','a',200)
		cw('bl','Yuri also nods in agreement.')
	elseif cl == 195 then
		hideSayori()
		hideYuri()
		cw('mc',"Then I\'m surprised there aren\'t more people in the club yet.")
    elseif cl == 196 then 
		cw('mc',"It must be hard to start a new club.")
    elseif cl == 197 then
		updateMonika('3','b')
		cw('m',"You could put it that way.")
    elseif cl == 198 then
		cw('m',"Not many people are very interested in putting out all the effort to start something brand new...")
    elseif cl == 199 then
		cw('m',"Especially when it\'s something that doesn\'t grab your attention, like literature.")
	elseif cl == 200 then
		cw('m',"You have to work hard to convince people that you\'re both fun and worthwhile.")
	elseif cl == 201 then
		cw('m',"But it makes school events, like the festival, that much more important.")
	elseif cl == 202 then
		updateMonika('2','k')
		cw('m',"I\'m confident that we can all really grow this club before we graduate!")
	elseif cl == 203 then 
		cw('m',"Right, everyone?")
	elseif cl == 204 then
		updateSayori('4','r',10)
		updateMonika('2','a',150)
		cw('s',"Yeah!")
	elseif cl == 205 then
		updateYuri('1','a',-40)
		updateSayori('4','r',80)
		updateMonika('2','a',200)
		cw('y',"We\'ll do our best.")
	elseif cl == 206 then
		updateNatsuki('4','d',-60)
		updateYuri('1','a',30)
		updateSayori('4','r',120)
		updateMonika('2','a',220)
		cw('n',"You know it!")
	elseif cl == 207 then
		cw('bl',"Everyone enthusiastically agrees.")
    elseif cl == 208 then 
		cw('bl',"Such different girls, all interested in the same goal...")
    elseif cl == 209 then
		cw('bl',"Monika must have worked really hard just to find these three.")
    elseif cl == 210 then
		cw('bl',"Maybe that's why they were all so delighted by the idea of a new member joining.")
	elseif cl == 211 then
		cw('bl',"Though I still don't really know if I can keep up with their level of enthusiasm about literature...")
	elseif cl == 212 then
		hideMonika()
		hideNatsuki()
		hideSayori()
		updateYuri('1','a',80)
		cw('y','So, ' .. player .. ', what kinds of things do you like to read?')
	elseif cl == 213 then
		cw('mc',"Well... Ah...")
	elseif cl == 214 then
		cw('bl',"Considering how little I\'ve read these past few years, I don\'t really have a good way of answering that.")
	elseif cl == 215 then
		cw('mc',"...Manga...")
	elseif cl == 216 then
		cw('bl',"I mutter quietly to myself, half-joking.")
	elseif cl == 217 then
		updateNatsuki('1','c',-50)
		cw('bl',"Natsuki's head suddenly perks up.")
	elseif cl == 218 then
		cw('bl',"It looks like she wants to say something, but she keeps quiet.")
	elseif cl == 219 then
		hideNatsuki()
		updateYuri('3','u')
		cw('y',"N-Not much of a reader, I guess...")
	elseif cl == 220 then
		cw('mc',"...Well, that can change...")
	elseif cl == 221 then
		cw('bl',"What am I saying?")
	elseif cl == 222 then
		cw('bl',"I spoke without thinking after seeing Yuri's sad smile.")
	elseif cl == 223 then
		cw('mc',"Anyway, what about you, Yuri?")
	elseif cl == 224 then
		updateYuri('1','l')
		cw('y',"Well, let\'s see...")
	elseif cl == 225 then
		cw('bl',"Yuri traces the rim of her teacup with her finger.")
	elseif cl == 226 then
		updateYuri('1','a')
		cw('y',"My favorites are usually novels that build deep and complex fantasy worlds.")
	elseif cl == 227 then
		cw('y',"The level of creativity and craftsmanship behind them is amazing to me.")
	elseif cl == 228 then
		updateYuri('1','f')
		cw('y',"And telling a good story in such a foreign world is equally impressive.")
	elseif cl == 229 then
		cw('bl',"Yuri goes on, clearly passionate about her reading.")
	elseif cl == 230 then
		cw('bl',"She seemed so reserved and timid since the moment I walked in, but it\'s obvious by the way her eyes light up that she finds her comfort in the world of books, not people.")
	elseif cl == 231 then
		updateYuri('2','m')
		cw('y',"But you know, I like a lot of things.")
	elseif cl == 232 then
		cw('y',"Stories with deep psychological elements usually immerse me as well.")
	elseif cl == 233 then
		updateYuri('2','a')
		cw('y',"Isn\'t it amazing how a writer can so deliberately take advantage of your own lack of imagination to completely throw you for a loop?")
	elseif cl == 234 then
		cw('y',"Anyway, I\'ve been reading a lot of horror lately...")
	elseif cl == 235 then
		cw('mc',"Ah, I read a horror book once...")
	elseif cl == 236 then
		cw('bl',"I desperately grasp something I can relate to at the minimal level.")
	elseif cl == 237 then
		cw('bl',"At this rate, Yuri might as well be having a conversation with a rock.")
	elseif cl == 238 then
		updateMonika('1','d',200)
		cw('m',"Really?  I wouldn\'t have expected that, Yuri.")
	elseif cl == 239 then
		cw('m',"For someone as gentle as you...")
	elseif cl == 240 then
		updateYuri('1','a')
		cw('y',"I guess you could say that.")
	elseif cl == 241 then
		cw('y',"But if a story makes me think,  or takes me to another world, then I really can\'t put it down.")
	elseif cl == 242 then
		cw('y',"Surreal horror is often very successful at changing the way you look at the world, if only for a brief moment.")
	elseif cl == 243 then
		updateNatsuki('5','q',-40)
		cw('n',"Ugh, I hate horror...")
	elseif cl == 244 then
		updateYuri('1','f')
		cw('y',"Oh? Why\'s that?")
	elseif cl == 245 then
		updateNatsuki('5','c')
		cw('n',"Well, I just...")
	elseif cl == 246 then
		cw('bl',"Natsuki\'s eyes dart over to me for a split second.")
	elseif cl == 247 then
		updateNatsuki('5','q')
		cw('n',"Never mind.")
	elseif cl == 248 then
		updateMonika('1','a')
		cw('m',"That\'s right, you usually like to write about cute things, don\'t you, Natsuki?")
	elseif cl == 249 then
		updateNatsuki('1','o') 
		cw('n',"W-What?")
	elseif cl == 250 then
		cw('n',"What gives you that idea?")
	elseif cl == 251 then
		updateMonika('3','b')
		cw('m',"You left a piece of scrap paper behind last club meeting.")
	elseif cl == 252 then
		cw('m',"It looked like you were working on a poem called--")
	elseif cl == 253 then
		updateNatsuki('1','p') 
		cw('n',"Don\'t say it out loud!!")
	elseif cl == 254 then
		cw('n',"And give that back!")
	elseif cl == 255 then
		updateMonika('1','j')
		cw('m',"Fine, fine~")
	elseif cl == 256 then
		hideMonika()
		hideYuri()
		updateNatsuki('1','r',30)
		updateSayori('4','q',-60)
		cw('s',"Ehehe, your cupcakes, your poems...")
	elseif cl == 257 then
		cw('s',"Everything you do is just as cute as you are~")
	elseif cl == 258 then
		updateSayori('4','q',0)
		updateNatsuki('1','r')
		cw('bl',"Sayori sidles up behind Natsuki and puts her hands on her shoulders.")
	elseif cl == 259 then
		updateNatsuki('1','v')
		cw('n',"I\'m not cute!!")
	elseif cl == 260 then
		hideSayori()
		updateNatsuki('1','v',80)
		cw('mc',"Natsuki, you write your own poems?")
	elseif cl == 261 then
		updateNatsuki('1','c')
		cw('n',"Eh? Well, I guess sometimes.")
	elseif cl == 262 then
		cw('n',"Why do you care?")
	elseif cl == 263 then
		cw('mc',"I think that\'s impressive.")
	elseif cl == 264 then
		cw('mc',"Why don\'t you share them sometime?")
	elseif cl == 265 then
		updateNatsuki('5','q')
		cw('n',"N-No!")
	elseif cl == 266 then
		cw('bl',"Natsuki averts her eyes.")
	elseif cl == 267 then
		cw('n',"You wouldn\'t...like them...")
	elseif cl == 268 then
		cw('mc',"Ah...not a very confident writer yet?")
	elseif cl == 269 then
		updateYuri('2','f',-40)
		cw('y',"I understand how Natsuki feels.")
	elseif cl == 270 then
		cw('y',"Sharing that level of writing takes more than just confidence.")
	elseif cl == 271 then
		updateYuri('2','l')
		cw('y',"The truest form of writing is writing to oneself.")
	elseif cl == 272 then
		cw('y',"You must be willing to open up to your readers, exposing your vulnerabilities and showing even the deepest reaches of your heart.")
	elseif cl == 273 then
		hideNatsuki()
		updateMonika('2','a',200)
		cw('m',"Do you have writing experience too, Yuri?")
	elseif cl == 274 then
		cw('m',"Maybe if you share some of your work, you can set an example and help Natsuki feel comfortable enough to share hers.")
	elseif cl == 275 then
		updateYuri('3','o')
		cw('y',"...")
	elseif cl == 276 then
		cw('mc',"I guess it\'s the same for Yuri...")
	elseif cl == 277 then
		updateSayori('2','g',80)
		cw('s',"Aww... I wanted to read everyone\'s poems...")
	elseif cl == 278 then
		hideMonika()
		hideSayori()
		hideYuri()
		cw('bl',"We all sit in silence for a moment.")
	elseif cl == 279 then
		updateMonika('5a','',80)
		cw('m',"Okay!")
	elseif cl == 280 then
		cw('m',"I have an idea, everyone~")
	elseif cl == 281 then
		updateYuri('3','e',-40)
		updateNatsuki('2','c',200)
		cw('ny',"...?")
	elseif cl == 282 then
		cw('bl',"Natsuki and Yuri look quizzically at Monika.")
	elseif cl == 283 then
		updateMonika('2','b')
		cw('m',"Let\'s all go home and write a poem of our own!")
	elseif cl == 284 then
		cw('m',"Then, next time we meet, we\'ll all share them with each other.")
	elseif cl == 285 then
		cw('m',"That way, everyone is even!")
	elseif cl == 286 then
		updateNatsuki('5','q')
		cw('n',"U-Um...")
	elseif cl == 287 then
		updateYuri('3','v')
		cw('y',"...")
	elseif cl == 288 then
		updateSayori('4','r',-60)
		updateMonika('2','b',120)
		updateYuri('3','v',30)
		updateNatsuki('5','q',220)
		cw('s',"Yeaaah! Let\'s do it!")
	elseif cl == 289 then
		updateMonika('1','a')
		cw('m',"Plus, now that we have a new member, I think it will help us all get a little more comfortable with each other, and strengthen the bond of the club.")
	elseif cl == 290 then
		cw('m','Isn\'t that right, ' .. player .. '?')
	elseif cl == 291 then
		cw('bl',"Monika smiles warmly at me once again.")
	elseif cl == 292 then
		cw('mc',"Hold on...there\'s still one problem.")
	elseif cl == 293 then
		updateMonika('2','d')
		cw('m',"Eh? What\'s that?")
	elseif cl == 294 then
		cw('bl',"Now that we\'re back to the original topic of me joining the club, I bluntly come forth with what\'s been on my mind the entire time.")
	elseif cl == 295 then
		cw('mc',"I never said I would join this club!")
	elseif cl == 296 then
		cw('mc',"Sayori may have convinced me to stop by, but I never made any decision.")
	elseif cl == 297 then
		cw('mc',"I still have other clubs to look at, and...um...")
	elseif cl == 298 then
		updateMonika('1','g')
		updateYuri('2','e')
		updateSayori('1','g')
		updateNatsuki('4','g')
		cw('bl',"I lose my train of thought.")
	elseif cl == 299 then
		cw('bl',"All four girls stare back at me with dejected eyes.")
	elseif cl == 300 then
		updateMonika('1','p')
		cw('m',"B-But...")
	elseif cl == 301 then
		updateYuri('2','v')
		cw('y',"I\'m sorry, I thought...")
	elseif cl == 302 then
		updateNatsuki('5','s')
		cw('n',"Hmph.")
	elseif cl == 303 then
		updateSayori('1','k')
		cw('s',player .. '...')
	elseif cl == 304 then
		cw('mc',"Y-You all...")
	elseif cl == 305 then
		cw('bl',"I...I\'m defenseless against these girls.")
	elseif cl == 306 then
		cw('bl',"How am I supposed to make a clear-headed decision when it\'s like this?")
	elseif cl == 307 then
		cw('bl',"That is, if writing poems is the price I need to pay in order to spend every day with these beautiful girls...")
	elseif cl == 308 then
		cw('mc',"...Right.")
	elseif cl == 309 then
		cw('mc',"Okay, I\'ve decided, then.")
	elseif cl == 310 then
		cw('mc',"I\'ll join the Literature Club.")
	elseif cl == 311 then
		updateMonika('1','e')
		updateNatsuki('1','c')
		updateSayori('4','b')
		updateYuri('3','f')
		cw('bl',"One by one, the girls\' eyes light up.")
	elseif cl == 312 then
		updateSayori('4','r')
		cw('s',"Yesss! I\'m so happyyy~")
	elseif cl == 313 then
		cw('bl',"Sayori wraps her arms around me, jumping up and down.")
	elseif cl == 314 then
		cw('mc',"H-Hey-")
	elseif cl == 315 then
		updateYuri('1','m')
		cw('y',"You really did scare me for a moment...")
	elseif cl == 316 then
		updateNatsuki('5','q')
		cw('n',"If you really just came for the cupcakes, I would be super pissed.")
	elseif cl == 317 then
		updateMonika('5a','')
		cw('m', "Then that makes it official!")
	elseif cl == 318 then
		cw('m',"Welcome to the Literature Club!")
	elseif cl == 319 then
		cw('mc',"Ah...thanks, I guess.")
	elseif cl == 320 then
		hideNatsuki()
		hideSayori()
		hideYuri()
		updateMonika('3','b',80)
		cw('m',"Okay, everyone!")
	elseif cl == 321 then
		cw('m',"I think with that, we can officially end today\'s meeting on a good note.")
	elseif cl == 322 then
		cw('m',"Everyone remember tonight\'s assignment.")
	elseif cl == 323 then
		cw('m',"Write a poem to bring to the next meeting, so we can all share!")
	elseif cl == 324 then
		cw('bl',"Monika looks over at me once more.")
	elseif cl == 325 then
		updateMonika('1','a')
		cw('m',player .. ', I look forward to seeing how you express yourself.')
	elseif cl == 326 then
		updateMonika('5a','')
		cw('m',"Ehehe~")
	elseif cl == 327 then
		cw('mc',"Y-Yeah...")
	elseif cl == 328 then
		hideMonika()
		cw('bl',"Can I really impress the class star Monika with my mediocre writing skills?")
	elseif cl == 329 then
		cw('bl',"I already feel the anxiety welling up inside me...")
	elseif cl == 330 then
		cw('bl',"Meanwhile, the girls continue to chit-chat as Yuri and Natsuki clean up their food.")
	elseif cl == 331 then
		updateSayori('1','a',80)
		cw('s','Hey, ' .. player .. ', since we\'re already here, do you want to walk home together?')
	elseif cl == 332 then
		cw('bl',"That\'s right--Sayori and I never walk home together anymore because she always stayed after school for clubs.")
	elseif cl == 333 then
		cw('mc',"Sure, might as well.")
	elseif cl == 334 then
		updateSayori('4','q')
		cw('s',"Yaay~")
	elseif cl == 335 then
		hideSayori()
		bgUpdate('residential')
		cw('bl',"With that, the two of us depart the clubroom and make our way home.")
	elseif cl == 336 then
		cw('bl', "The whole way, my mind wanders back and forth between the four girls:")
	elseif cl == 337 then
		updateSayori('1','a',-60)
		cw('bl',"Sayori,")
	elseif cl == 338 then
		updateNatsuki('4','a',30)
		cw('bl',"Natsuki,")
	elseif cl == 339 then
		updateYuri('1','a',120)
		cw('bl',"Yuri,")
	elseif cl == 340 then
		updateMonika('1','a',220)
		cw('bl',"and, of course, Monika.")
	elseif cl == 341 then
		cw('bl',"Will I really be happy spending every day after school in a literature club?")
	elseif cl == 342 then
		cw('bl',"Perhaps I\'ll have the chance to grow closer to one of these girls...")
	elseif cl == 343 then
		hideAll()
		cw('bl',"Alright!")
	elseif cl == 344 then
		cw('bl',"I\'ll just need to make the most of my circumstances, and I\'m sure good fortune will find me.")
	elseif cl == 345 then
		cw('bl',"And I guess that starts with writing a poem tonight...")
	elseif cl == 346 then
		poemstate = 0
		fadeOut(1)
	elseif cl == 347 then
		cl = 346
	end 
	
	--ch0-kill
	if cl == 10001 then
		bgUpdate('residential')
		audioUpdate('2')
		hideAll()
		updateSayori('1','b',80)
		cw('s',"...")
	elseif cl == 10002 then 
		cw('s',"...")
	elseif cl == 10003 then 
		cw('s',"W-What...")
	elseif cl == 10004 then 
		updateSayori('1','g') 
		cw('s',"...")
	elseif cl == 10005 then 
		cw('s',"This...")
	elseif cl == 10006 then 
		cw('s',"What is this...?")
	elseif cl == 10007 then 
		cw('s',"Oh no...")
	elseif cl == 10008 then 
		updateSayori('1','u') 
		cw('s',"No...")
	elseif cl == 10009 then 
		cw('s',"This can\'t be it.")
	elseif cl == 10010 then 
		cw('s',"This can\'t be all there is.")
	elseif cl == 10011 then 
		updateSayori('4','w')
		cw('s',"What is this?")
	elseif cl == 10012 then 
		cw('s',"What am I?")
	elseif cl == 10013 then 
		cw('s',"Make it stop!")
	elseif cl == 10014 then 
		cw('s',"PLEASE MAKE IT STOP!")
	elseif cl == 10015 then 
		persistent.chr.s = 0
		savepersistent()
		game_quit()
	end
	
	--NEW GAME
	if cl == 10016 then 
		bgUpdate('warning')
		cw('bl','Esto es un port no oficial de Doki Doki Literature Club.')
	elseif cl == 10017 then
		cw('bl','This port, or the original game is not suitable for children or those who are easily disturbed.')
	elseif cl == 10018 then
		cw('bl','Individuals suffering from anxiety or depression may not have a safe experience playing this game. For content warnings, please visit: http://ddlc.moe/warning.html')
	elseif cl == 10019 then
		cw('bl','By playing Doki Doki Literature Club, you agree that you are at least 13 years of age, and you consent to your exposure of highly disturbing content.')
	elseif cl == 10020 then
		menutext = ''
		choices = {'I agree.','I do not agree.'}
		choice_enable()
	elseif cl >= 10021 then
		if choicepick == 'I do not agree.' then
			game_quit()
		else
			cl = 10021
			bgUpdate('warning2')
			if xaload > 120 then
				--make persistent and settings files then go to splash screen
				savepersistent()
				savesettings()
				changeState('splash')
			end
		end
	end
end