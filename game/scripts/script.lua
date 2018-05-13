require "scripts.script-ch1"
require "scripts.script-exclusives-sayori"
require "scripts.script-exclusives-natsuki"
require "scripts.script-exclusives-yuri"

function cw(p1, stext)
	if p1 == 's' then
		ct = 'Sayori'
	elseif p1 == 'n' then
		ct = 'Natsuki'
	elseif p1 == 'y' then
		ct = 'Yuri'
	elseif p1 == 'm' then
		ct = 'Monika'
	elseif p1 == 'mc' then
		ct = player
	elseif p1 == 'bl' then
		ct = ''
	end
	
	--this is some kind of word wrapping haha
	slen = string.len(stext)
	ca = string.sub(stext, 1, caa)
	
	if slen >= 45 then 
		caa = string.find(stext, "%s", 45)
		cb = string.sub(stext, caa+1, cba)
	end 
	
	if slen >= 95 then 
		cba = string.find(stext, "%s", 95) 
		cc = string.sub(stext, cba+1, cca)
	end
	
	if slen >= 145 then 
		cca = string.find(stext, "%s", 145)
		cd = string.sub(stext, cca+1)
	end
	
end

function ch0script()

	love.graphics.setBackgroundColor ( 0, 0, 0 )
	ca = ""
	cb = ""
	cc = ""
	cd = ""
	
	if cl >= 348 then
		ch1script() --go to script-ch1 (day 2)
	end
	
	--start of script-ch0 (day 1)
	if cl == 1 then
		bgUpdate('residential')
		audioUpdate('2')
		ct = '???'
		ca = '"Heeeeeeeyyy!!"'
	elseif cl == 2 then  
		cw('bl', 'I see an annoying girl running toward me from the distance, waving her arms in the air like she\'s totally oblivious to any attention she might draw to herself.')
	elseif cl == 3 then
		cw('bl', 'That girl is Sayori, my neighbor and good friend since we were children.')
	elseif cl == 4 then
		ca = 'You know, the kind of friend you\'d never see '
		cb = 'yourself making today, but it just kind of works'
		cc = 'out because you\'ve known each other for so'
		cd = 'long?'
	elseif cl == 5 then
		ca = 'We used to walk to school together on days like '
		cb = 'this, but starting around high school she would '
		cc = 'oversleep more and more frequently, and I would'
		cd = 'get tired of waiting up.'
	elseif cl == 6 then
		ca = 'But if she\'s going to chase after me like'
		cb = 'this, I almost feel better off running away.'
	elseif cl == 7 then
		ca = 'However, I just sigh and idle in front of the'
		cb = 'crosswalk and let Sayori catch up to me.'
	elseif cl == 8 then
		sx = 80
		updateSayori('2l','2r','p')
		ct = 'Sayori'
		ca = '"Haaahhh...haaahhh..."'
	elseif cl == 9 then 
		ca = '"I overslept again!"'
	elseif cl == 10 then 
		ca = '"But I caught you this time!"'
    elseif cl == 11 then
		ct = player
		ca = '"Maybe, but only because I decided to stop and '
		cb = 'wait for you."'
	elseif cl == 12 then
		updateSayori('3c','','')
		ct = 'Sayori'
		ca = '"Eeehhhhh, you say that like you were thinking '
		cb = 'about ignoring me!"'
	elseif cl == 13 then 
		ca = '"That\'s mean, ' .. player .. '!"'
	elseif cl == 14 then
		ct = player
		ca = '"Well, if people stare at you for acting weird '
		cb = 'then I don\'t want them to think we\'re a'
		cc = 'couple or something."'
	elseif cl == 15 then
		updateSayori('1l','1r','a')
		ct = 'Sayori'
		ca = '"Fine, fine."'
	elseif cl == 16 then 
		ca = '"But you did wait for me, after all."'
	elseif cl == 17 then
		ca = '"I guess you don\'t have it in you to be mean '
		cb = 'even if you want to~"'
	elseif cl == 18 then
		ct = player
		ca = '"Whatever you say, Sayori..."'
	elseif cl == 19 then
		sc = 'q'
		ct = 'Sayori'
		ca = '"Ehehe~"'
	elseif cl == 20 then
		hideSayori()
		ct = ''
		ca = 'We cross the street together and make our way '
		cb = 'to school.'
	elseif cl == 21 then
		ca = 'As we draw near, the streets become increasingly '
		cb = 'speckled with other students making their '
		cc = 'daily commute.'
	elseif cl == 22 then
		updateSayori('2l','1r','a')
		ct = 'Sayori'
		ca = '"By the way, ' .. player .. '..."'
	elseif cl == 23 then 
		ca = '"Have you decided on a club to join yet?"'
	elseif cl == 24 then
		ct = player
		ca = '"A club?"'
	elseif cl == 25 then
		ca = '"I told you already, I\'m really not interested '
		cb = 'in joining any clubs."'
	elseif cl == 26 then ca = '"I haven\'t been looking, either."'
	elseif cl == 27 then
		updateSayori('2l','2r','h')
		ct = 'Sayori'
		ca = '"Eh? That\'s not true!"'
	elseif cl == 28 then
		ca = '"You told me you would join a club this year!"'
	elseif cl == 29 then
		ct = player
		ca = '"Did I...?"'
	elseif cl == 30 then
		ct = ''
		ca = 'I\'m sure it\'s possible that I did, in one of '
		cb = 'our many conversations where I dismissively '
		cc = 'go along with whatever she\'s going on about.'
	elseif cl == 31 then
		ca = 'Sayori likes to worry a little too much about'
		cb = 'me, when I\'m perfectly content just getting'
		cc = 'by on the average while spending my free'
		cd = 'time on games and anime.'
	elseif cl == 32 then
		sc = 'j'
		ct = 'Sayori'
		ca = '"Uh-huh!"'
	elseif cl == 33 then
		ca = '"I was talking about how I\'m worried that you'
		cb = ' won\'t learn how to socialize or have any skills'
		cc = 'before college."'
	elseif cl == 34 then
		ca = '"Your happiness is really important to me,'
		cb = 'you know!"'
	elseif cl == 35 then
		ca = '"And I know you\'re happy now, but I\'d die'
		cb = 'at the thought of you becoming a NEET in a'
		cc = 'few years because you\'re not used to the'
		cd = 'real world!"'
	elseif cl == 36 then
		updateSayori('2l','2r','g')
		ca = '"You trust me, right?"'
	elseif cl == 37 then
		ca = '"Don\'t make me keep worrying about you..."'
	elseif cl == 38 then 
		ct = player
		ca = '"Alright, alright..."'
	elseif cl == 39 then
		ca = '"I\'ll look at a few clubs if it makes you'
		cb = 'happy."'
	elseif cl == 40 then ca = '"No promises, though."'
	elseif cl == 41 then
		updateSayori('1l','1r','h')
		ct = 'Sayori'
		ca = '"Will you at least promise me you\'ll try '
		cb = 'a little?"'
	elseif cl == 42 then
		ct = player
		ca = '"Yeah, I guess I\'ll promise you that."'
	elseif cl == 43 then
		updateSayori('2l','2r','r')
		ct = 'Sayori'
		ca = '"Yaay~!"'
	elseif cl == 44 then
		ct = ''
		ca = 'Why do I let myself get lectured by such'
		cb = 'a carefree girl?'
	elseif cl == 45 then
		ca = 'More than that, I\'m surprised I even'
		cb = 'let myself relent to her.'
	elseif cl == 46 then
		ca = 'I guess seeing her worry so much about me'
		cb = 'makes me want to ease her mind at least a'
		cc = 'little bit - even if she does exaggerate'
		cd = 'everything inside of her head.'
	elseif cl == 47 then
		hideSayori()
		bgUpdate('class')
		ca = 'The school day is as ordinary as ever,'
		cb = 'and it\'s over before I know it.'
	elseif cl == 48 then
		ca = 'After I pack up my things, I stare blankly'
		cb = 'at the wall, looking for an ounce of'
		cc = 'motivation.'
	elseif cl == 49 then
		ct = player
		ca = '"Clubs..."'
	elseif cl == 50 then
		ct = ''
		ca = 'Sayori wants me to check out some clubs.'
	elseif cl == 51 then
		ca = 'I guess I have no choice but to start'
		cb = 'with the anime club...'
	elseif cl == 52 then
		ct = 'Sayori'
		ca = '"Hellooo?"'
	elseif cl == 53 then
		updateSayori('1l','1r','b')
		ct = player
		ca = '"Sayori...?"'
	elseif cl == 54 then
		ct = ''
		ca = 'Sayori must have come into the'
		cb = 'classroom while I was spacing out.'
	elseif cl == 55 then
		ca = 'I look around and realize that I\'m the'
		cb = 'only one left in the classroom.'
	elseif cl == 56 then
		sc = 'a'
		ct = 'Sayori'
		ca = '"I thought I\'d catch you coming out of the'
		cb = 'classroom, but I saw you just sitting here'
		cc = 'and spacing out, so I came in."'
	elseif cl == 57 then
		ca = '"Honestly, you\'re even worse than me'
		cb = 'sometimes... I\'m impressed!"'
	elseif cl == 58 then
		ct = player
		ca = '"You don\'t need to wait up for me if it\'s'
		cb = 'going to make you late to your own club."'
	elseif cl == 59 then
		sc = 'y'
		ct = 'Sayori'
		ca = '"Well, I thought you might need some'
		cb = 'encouragement, so I thought, you know..."'
	elseif cl == 60 then
		ct = player
		ca = '"Know what?"'
	elseif cl == 61 then
		sc = 'a'
		ct = 'Sayori'
		ca = '"Well, that you could come to my club!"'
	elseif cl == 62 then
		ct = player
		ca = '"Sayori..."'
	elseif cl == 63 then
		updateSayori('2l','2r','r')
		ct = 'Sayori'
		ca = '"Yeah??"'
	elseif cl == 64 then
		ct = player
		ca = '"...There is no way I\'m going to your club."'
	elseif cl == 65 then
		updateSayori('3d','','')
		ct = 'Sayori'
		ca = '"Eeeehhhhh?! Meanie!"'
	elseif cl == 66 then
		ct = ''
		ca = 'Sayori is vice president of the Literature Club.'
	elseif cl == 67 then
		ca = 'Not that I was ever aware that she had any'
		cb = 'interest in literature.'
	elseif cl == 68 then
		ca = 'In fact, I\'m 99% sure she only did it because'
		cb = 'she thought it would be fun to help start a'
		cc = 'new club.'
	elseif cl == 69 then
		ca = 'Since she was the first one to show interest'
		cb = 'after the one who proposed the club, she'
		cc = 'inherited the title \"Vice President\".'
	elseif cl == 70 then
		ca = 'That said, my interest in literature is'
		cb = 'guaranteed to be even less.'
	elseif cl == 71 then
		ct = player
		ca = '"Yeah. I\'m going to the anime club."'
	elseif cl == 72 then
		updateSayori('1l','1r','g')
		ct = 'Sayori'
		ca = '"C\'mon, please?"'
	elseif cl == 73 then
		ct = player
		ca = '"Why do you care so much, anyway?"'
	elseif cl == 74 then
		updateSayori('3b','','')
		ct = 'Sayori'
		ca = '"Well..."'
	elseif cl == 75 then
		ca = '"I kind of told the club yesterday I would'
		cb = 'bring in a new member..."'
    elseif cl == 76 then
		ca = '"And Natsuki made cupcakes and'
		cb = 'everything..."'
	elseif cl == 77 then 
		ca = '"Ehehe..."'
	elseif cl == 78 then
		ct = player
		ca = '"Don\'t make promises you can\'t keep!"'
	elseif cl == 79 then
		ct = ''
		ca = 'I can\'t tell if Sayori is really that much'
		cb = 'of an airhead, or if she\'s so cunning as to'
		cc = 'have planned all of this out.'
    elseif cl == 80 then 
		ca = 'I let out a long sigh.'
	elseif cl == 81 then
		ct = player
		ca = '"Fine... I\'ll stop by for a cupcake, okay?"'
    elseif cl == 82 then
		updateSayori('2l','2r','r')
		ct = 'Sayori'
		ca = '"Yes! Let\'s go~!"'
	elseif cl == 83 then
		hideSayori()
		bgUpdate('corridor')
		audioUpdate('0')
		ct = ''
		ca = 'And thus, today marks the day I sold'
		cb = 'my soul for a cupcake.'
	elseif cl == 84 then
		ca = 'I dejectedly follow Sayori across the school'
		cb = 'and upstairs - a section of the school I'
		cc = 'rarely visit,being generally used for'
		cd = 'third-year classes and activities.'
	elseif cl == 85 then 
		ca = 'Sayori, full of energy, swings open the'
		cb = 'classroom door.'
	end
	
	if cl == 86 then
		bgUpdate('club')
		audioUpdate('3')
		updateSayori('2l','2r','a')
		sx = 0 - 50
		ct = 'Sayori'
		ca = '"Everyone! The new member is here~!"'
	elseif cl == 87 then
		ct = player
		ca = '"I told you, don\'t call me a \'new member - \'"'
	elseif cl == 88 then
		hideSayori()
		ct = ''
		ca = 'Eh? I glance around the room.'
	elseif cl == 89 then
		updateYuri('1l','1r','a')
		ct = 'Girl 1'
		ca = '"Welcome to the Literature Club. It\'s a pleasure'
		cb = 'meeting you."'
    elseif cl == 90 then 
		ca = '"Sayori always says nice things about you."'
	elseif cl == 91 then
		updateNatsuki('2l','2r','c')
		yx = 140
		nx = 20
		ct = 'Girl 2'
		ca = '"Seriously? You brought a boy?"'
	elseif cl == 92 then 
		ca = '"Way to kill the atmosphere."'
	elseif cl == 93 then
		updateMonika('1l','1r','k')
		nx = 80
		yx = 200
		mx = 0 - 40
		ct = 'Girl 3'
		ca = '"Ah, ' .. player .. '! What a nice surprise!"'
	elseif cl == 94 then 
		ca = '"Welcome to the club!"'
	elseif cl == 95 then
		mc = 'a'
		ct = player
		ca = '"..."'
	elseif cl == 96 then 
		ct = ''
		ca = 'All words escape me in this situation.'
    elseif cl == 97 then 
		ca = 'This club...'
    elseif cl == 98 then
		ca = '...is full of incredibly cute girls!!'
	elseif cl == 99 then
		hideMonika()
		hideYuri()
		updateNatsuki('1l','2r','c')
		ct = 'Girl 2'
		ca = '"What are you looking at?"'
	elseif cl == 100 then 
		ca = '"If you want to say something, say it."'
	elseif cl == 101 then
		ct = player
		ca = '"S-Sorry..."'
	elseif cl == 102 then
		updateYuri('1l','2r','l')
		yx = 200
		ct = 'Girl 1'
		ca = '"Natsuki..."'
	elseif cl == 103 then
		updateNatsuki('3','','s')
		ct = 'Girl 2'
		ca = '"Hmph."'
	elseif cl == 104 then
		ct = ''
		ca = 'The girl with the sour attitude, whose name is'
		cb = 'apparently Natsuki, is one I don\'t recognize.'
	elseif cl == 105 then
		ca = 'Her small figure makes me think she\'s probably a'
		cb = 'first-year.'
    elseif cl == 106 then
		ca = 'She is also the one who made cupcakes,'
		cb = 'according to Sayori.'
	elseif cl == 107 then
		updateSayori('1l','2r','q')
		sx = 0 - 40
		ct = 'Sayori'
		ca = '"You can just ignore her when she gets moody~"'
	elseif cl == 108 then
		ct = ''
		ca = 'Sayori says that quietly into my ear, then turns'
		cb = 'back toward the other girls.'
	elseif cl == 109 then
		updateSayori('1l','1r','x')
		ct = 'Sayori'
		ca = '"Anyway! This is Natsuki, always full of energy."'
    elseif cl == 110 then 
		ca = '"And this is Yuri, the smartest in the club!"'
	elseif cl == 111 then
		updateYuri('3','','b2')
		ct = 'Yuri'
		ca = '"D-don\'t say things like that..."'
	elseif cl == 112 then
		ct = ''
		ca = 'Yuri, who appears comparably more mature and'
		cb = 'timid, seems to have a hard time keeping up '
		cc = 'with people like Sayori and Natsuki.'
	elseif cl == 113 then
		ct = player
		ca = '"Ah... Well, it\'s nice to meet both of you."'
	elseif cl == 114 then
		hideYuri()
		hideNatsuki()
		sc = 'a'
		ct = 'Sayori'
		ca = '"And it sounds like you already know Monika, is '
		cb = 'that right?"'
	elseif cl == 115 then
		updateMonika('1l','2r','a')
		mx = 80
		ct = 'Monika'
		ca = '"That\'s right."'
	elseif cl == 116 then 
		ca = '"It\'s great to see you again, ' .. player .. '."'
	elseif cl == 117 then
		updateMonika('3a','','')
		ct = ''
		ca = 'Monika smiles sweetly.'
	elseif cl == 118 then
		ca = 'We do know each other - well, we rarely talked,'
		cb = 'but we were in the same class last year.'
	elseif cl == 119 then
		ca = 'Monika was probably the most popular girl in'
		cb = 'class - smart, beautiful, athletic.'
	elseif cl == 120 then 
		ca = 'Basically, completely out of my league.'
	elseif cl == 121 then
		ca = 'So, having her smile at me so genuinely feels'
		cb = 'a little...'
    elseif cl == 122 then
		ct = player
		ca = '"Y-You too, Monika."'
	elseif cl == 123 then
		hideMonika()
		updateSayori('2l','2r','x')
		ct = 'Sayori'
		ca = '"Come sit down, ' .. player .. '! We made room for you at'
		cb = 'the table, so you can sit next to me or Monika."'
    elseif cl == 124 then 
		ca = '"I\'ll get the cupcakes~"'
	elseif cl == 125 then
		updateNatsuki('1l','1r','b')
		nx = 80 
		ct = 'Natsuki'
		ca = '"Hey! I made them, I\'ll get them!"'
    elseif cl == 126 then
		updateSayori('3a','','')
		ct = 'Sayori'
		ca = '"Sorry, I got a little too excited~"'
    elseif cl == 127 then
		updateYuri('1l','1r','a')
		yx = 200
		ct = 'Yuri'
		ca = '"Then, how about I make some tea as well?"'
	elseif cl == 128 then
		hideSayori()
		hideYuri()
		hideNatsuki()
		ct = ''
		ca = 'The girls have a few desks arranged to form a'
		cb = 'table.'
	elseif cl == 129 then
		ca = 'As Sayori mentioned, it\'s been widened so that'
		cb = 'there is one space next to Monika and one space'
		cc = 'next to Sayori.'
    elseif cl == 130 then
		ca = 'Natsuki and Yuri walk over to the corner of the'
		cb = 'room, where Natsuki grabs a wrapped tray and'
		cc = 'Yuri opens the closet.'
	elseif cl == 131 then
		ca = 'Still feeling awkward, I take a seat next to'
		cb = 'Sayori.'
    elseif cl == 132 then
		ca = 'Natsuki proudly marches back to the table, tray'
		cb = 'in hand.'
	elseif cl == 133 then
		updateNatsuki('1l','2r','z')
		nx = 80
		ct = 'Natsuki'
		ca = '"Okaaay, are you ready?"'
	elseif cl == 134 then
		ca = '"...Ta-daaa!"'
	elseif cl == 135 then
		updateSayori('2l','2r','m')
		updateMonika('1l','2r','d')
		sx = 0-40
		mx = 200
		ct = 'Sayori'
		ca = '"Uwooooah!"'
	elseif cl == 136 then
		ct = ''
		ca = 'Natsuki lifts the foil off the tray to reveal a'
		cb = 'dozen white, fluffy cupcakes decorated to look '
		cc = 'like little cats.'
	elseif cl == 137 then
		ca = 'The whiskers are drawn with icing, and little'
		cb = 'pieces of chocolate were used to make ears.'
	elseif cl == 138 then
		sc = 'r'
		ct = 'Sayori'
		ca = '"So cuuuute~!"'
	elseif cl == 139 then
		mc = 'b'
		ct = 'Monika'
		ca = '"I had no idea you were so good at baking,'
		cb = 'Natsuki!"'
	elseif cl == 140 then
		nc = 'd'
		ct = 'Natsuki'
		ca = '"Ehehe. Well, you know."'
	elseif cl == 141 then 
		ca = '"Just hurry and take one!"'
	elseif cl == 142 then
		ct = ''
		ca = 'Sayori grabs one first, then Monika. I follow.'
	elseif cl == 143 then
		sc = 'q'
		ct = 'Sayori'
		ca = '"It\'s delicious!"'
	elseif cl == 144 then
		ct = ''
		ca = 'Sayori talks with her mouth full and has already'
		cb = 'managed to get icing on her face.'
	elseif cl == 145 then
		ca = 'I turn the cupcake around in my fingers, looking'
		cb = 'for the best angle to take a bite.'
	elseif cl == 146 then
		hideSayori()
		hideMonika()
		updateNatsuki('1l','1r','c')
		ct = ''
		ca = 'Natsuki is quiet.'
	elseif cl == 147 then
		ca = 'I can\'t help but notice her sneaking glances in'
		cb = 'my direction.'
    elseif cl == 148 then 
		ca = 'Is she waiting for me to take a bite?'
    elseif cl == 149 then 
		ca = 'I finally bite down.'
    elseif cl == 150 then
		ca = 'The icing is sweet and full of flavor - I wonder if'
		cb = 'she made it herself.'
    elseif cl == 151 then
		ct = player
		ca = '"This is really good."'
    elseif cl == 152 then 
		ca = '"Thank you, Natsuki."'
	elseif cl == 153 then
		updateNatsuki('3','','h')
		ct = 'Natsuki'
		ca = '"W-Why are you thanking me? It\'s not like I...!"'
	elseif cl == 154 then 
		ct = ''
		ca = "(Haven\'t I heard this somewhere before...?)"
	elseif cl == 155 then
		nc = 's' 
		ct = 'Natsuki'
		ca = '"...Made them for you or anything."'
	elseif cl == 156 then
		ct = player
		ca = '"Eh? I thought you technically did. Sayori said--"'
	elseif cl == 157 then
		updateNatsuki('1l','1r','2btc')
		ct = 'Natsuki'
		ca = '"Well, maybe!"'
    elseif cl == 158 then 
		ca = '"But not for, y-you know, you! Dummy..."' 
	elseif cl == 159 then
		ct = player
		ca = '"Alright, alright..."'
	elseif cl == 160 then
		hideNatsuki()
		ct = ''
		ca = 'I give up on Natsuki\'s weird logic and dismiss the'
		cb = 'conversation.'
    elseif cl == 161 then 
		ca = "Yuri returns to the table, carrying a tea set."
    elseif cl == 162 then
		ca = 'She carefully places a teacup in front of each'
		cb = 'of us before setting down the teapot next to the'
		cc = 'cupcake tray.'
	elseif cl == 163 then
		updateYuri('1l','1r','a')
		yx = 10
		ct = player
		ca = '"You keep a whole tea set in this classroom?"'
	elseif cl == 164 then
		ct = 'Yuri'
		ca = '"Don\'t worry, the teachers gave us permission."'
	elseif cl == 165 then
		ca = '"After all, doesn\'t a hot cup of tea help you '
		cb = 'enjoy a good book?"'
	elseif cl == 166 then
		ct = player
		ca = '"Ah... I-I guess..."'
	elseif cl == 167 then
		updateMonika('2l','2r','a')
		mx = 150
		ct = 'Monika'
		ca = '"Ehehe, don\'t let yourself get intimidated,'
		cb = 'Yuri\'s just trying to impress you."'
	elseif cl == 168 then
		updateYuri('2l','2r','n')
		ct = 'Yuri'
		ca = '"Eh?! T-That\'s not..."'
	elseif cl == 169 then
		ct = '' 
		ca = "Insulted, Yuri looks away."
	elseif cl == 170 then
		updateYuri('3','','b2')
		ct = 'Yuri' 
		ca ='"I meant that, you know..."'
    elseif cl == 171 then 
		ct = player 
		ca = '"I believe you."'
	elseif cl == 172 then
		ca = '"Well, tea and reading might not be a pastime for'
		cb = 'me, but I at least enjoy tea."'
	elseif cl == 173 then
		updateYuri('1l','2r','u')
		ct = 'Yuri' 
		ca = '"I\'m glad..."'
    elseif cl == 174 then 
		ct = '' 
		ca = 'Yuri faintly smiles to herself in relief.'
	elseif cl == 175 then
		ca = "Monika raises an eyebrow, then smiles at me."
	elseif cl == 176 then
		hideYuri()
		updateMonika('1l','1r','a')
		mx = 80
		ct = 'Monika'
		ca = '"So, what made you consider the Literature Club?"'
	elseif cl == 177 then 
		ct = player 
		ca = '"Um..."'
	elseif cl == 178 then 
		ct = '' 
		ca = "I was afraid of this question."
    elseif cl == 179 then
		ca = 'Something tells me I shouldn\'t tell Monika that'
		cb = 'I was practically dragged here by Sayori.'
	elseif cl == 180 then
		ct = player
		ca = '"Well, I haven\'t joined any clubs yet, and Sayori'
		cb = 'seemed really happy here, so..."'
	elseif cl == 181 then 
		mc = 'j'
		ct = 'Monika'
		ca = '"That\'s okay! Don\'t be embarrassed!"'
	elseif cl == 182 then
		mc = 'b'
		ca = '"We\'ll make sure you feel right at home, okay?"'
	elseif cl == 183 then
		ca = '"As president of the Literature Club, it\'s my'
		cb = 'duty to make the club fun and exciting for'
		cc = 'everyone!"'
	elseif cl == 184 then 
		mc = 'a' 
		ct = player 
		ca = '"Monika, I\'m surprised."'
	elseif cl == 185 then 
		ca = '"How come you decided to start your own club?"'
    elseif cl == 186 then
		ca = '"You could probably be a board member for any '
		cb = 'of the major clubs."'
    elseif cl == 187 then 
		ca = '"Weren\'t you a leader of the debate club last' 
		cb = 'year?"'
    elseif cl == 188 then 
		updateMonika('3a','','')
		ct = 'Monika' 
		ca = '"Ahaha, well, you know..."'
	elseif cl == 189 then
		ca = '"To be honest, I can\'t stand all of the politics'
		cb = 'around the major clubs."'
	elseif cl == 190 then
		ca = '"It feels like nothing but arguing about the'
		cb = 'budget and publicity and how to prepare for'
		cc = 'events..."'
	elseif cl == 191 then
		ca = '"I\'d much rather take something I personally'
		cb = 'enjoy and make something special out of it."'
	elseif cl == 192 then
		updateMonika('1l','1r','b')
		mx = 80
		ca = '"And if it encourages others to get into literature,'
		cb = 'then I\'m fulfilling that dream!"'
	elseif cl == 193 then
		mc = 'a'
		updateSayori('2l','1r','q')
		sx = 0-40
		ct = 'Sayori'
		ca = '"Monika really is a great leader!"'
	elseif cl == 194 then
		updateYuri('1l','1r','a')
		yx = 200
		ct = ''
		ca = 'Yuri also nods in agreement.'
	elseif cl == 195 then
		hideSayori()
		hideYuri()
		ct = player
		ca = '"Then I\'m surprised there aren\'t more people in'
		cb = 'the club yet."'
    elseif cl == 196 then 
		ca = '"It must be hard to start a new club."'
    elseif cl == 197 then
		updateMonika('2l','1r','b')
		ct = 'Monika' 
		ca = '"You could put it that way."'
    elseif cl == 198 then
		ca = '"Not many people are very interested in putting'
		cb = 'out all the effort to start something brand new..."'
    elseif cl == 199 then
		ca = '"Especially when it\'s something that doesn\'t grab'
		cb = 'your attention, like literature."'
	elseif cl == 200 then
		ca = '"You have to work hard to convince people that'
		cb = 'you\'re both fun and worthwhile."'
	elseif cl == 201 then
		ca = '"But it makes school events, like the festival,'
		cb = 'that much more important."'
	elseif cl == 202 then
		updateMonika('1l','2r','k')
		ca = '"I\'m confident that we can all really grow this'
		cb = 'club before we graduate!"'
	elseif cl == 203 then 
		ca = '"Right, everyone?"' 
	elseif cl == 204 then
		updateSayori('2l','2r','r')
		mc = 'a'
		sx = 10
		mx = 150
		ct = 'Sayori'
		ca = '"Yeah!"'
	elseif cl == 205 then
		updateYuri('1l','1r','a')
		yx = 0-40
		sx = 80
		mx = 200
		ct = 'Yuri'
		ca = '"We\'ll do our best."'
	elseif cl == 206 then
		updateNatsuki('2l','2r','d')
		nx = 0 - 60
		yx = 30
		sx = 120
		mx = 220
		ct = 'Natsuki'
		ca = '"You know it!"'
	elseif cl == 207 then
		ct = ''
		ca = "Everyone enthusiastically agrees."
    elseif cl == 208 then 
		ca = "Such different girls, all interested in the same"
		cb = "goal..."
    elseif cl == 209 then
		ca = "Monika must have worked really hard just to find "
		cb = "these three."
    elseif cl == 210 then
		ca = "Maybe that's why they were all so delighted by "
		cb = "the idea of a new member joining."
	elseif cl == 211 then
		ca = "Though I still don't really know if I can keep up "
		cb = "with their level of enthusiasm about literature..."
	elseif cl == 212 then
		hideMonika()
		hideNatsuki()
		hideSayori()
		updateYuri('1l','1r','a')
		yx = 80
		ct = 'Yuri'
		ca = '"So, ' .. player .. ', what kinds of things do you like to '
		cb = 'read?"'
	elseif cl == 213 then
		ct = player
		ca = '"Well... Ah..."'
	elseif cl == 214 then
		ct = ''
		ca = "Considering how little I\'ve read these past few"
		cb = "years, I don\'t really have a good way of answering "
		cc = "that."
	elseif cl == 215 then
		ct = player
		ca = '"...Manga..."'
	elseif cl == 216 then
		ct = ''
		ca = "I mutter quietly to myself, half-joking."
	elseif cl == 217 then
		nxh = nx
		nyh = ny
		updateNatsuki('1l','1r','c')
		nx = 0 - 50	
		ca = "Natsuki's head suddenly perks up."
	elseif cl == 218 then
		ca = "It looks like she wants to say something, "
		cb = "but she keeps quiet."
	elseif cl == 219 then
		hideNatsuki()
		updateYuri('2l','2r','u')
		ct = "Yuri"
		ca = '"N-Not much of a reader, I guess..."'
	elseif cl == 220 then
		ct = player
		ca = '"...Well, that can change..."'
	elseif cl == 221 then
		ct = ''
		ca = "What am I saying?"
	elseif cl == 222 then
		ca = "I spoke without thinking after seeing Yuri's sad "
		cb = "smile."
	elseif cl == 223 then
		ct = player
		ca = '"Anyway, what about you, Yuri?"'
	elseif cl == 224 then
		updateYuri('1l','1r','l')
		ct = "Yuri"
		ca = '"Well, let\'s see..."'
	elseif cl == 225 then
		ct = ''
		ca = "Yuri traces the rim of her teacup with her finger."
	elseif cl == 226 then
		updateYuri('1l','1r','a')
		ct = "Yuri"
		ca = '"My favorites are usually novels that build deep '
		cb = 'and complex fantasy worlds."'
	elseif cl == 227 then
		ca = '"The level of creativity and craftsmanship behind '
		cb = 'them is amazing to me."'
	elseif cl == 228 then
		yc = 'f'
		ca = '"And telling a good story in such a foreign'
		cb = 'world is equally impressive."'
	elseif cl == 229 then
		ct = ''
		ca = "Yuri goes on, clearly passionate about her reading."
	elseif cl == 230 then
		ca = "She seemed so reserved and timid since the "
		cb = "moment I walked in, but it\'s obvious by the way "
		cc = "her eyes light up that she finds her comfort in the "
		cd = "world of books, not people."
	elseif cl == 231 then
		updateYuri('1l','2r','m')
		ct = "Yuri"
		ca = '"But you know, I like a lot of things."'
	elseif cl == 232 then
		ca = '"Stories with deep psychological elements '
		cb = 'usually immerse me as well."'
	elseif cl == 233 then
		updateYuri('1l','2r','a')
		ca = '"Isn\'t it amazing how a writer can so '
		cb = 'deliberately take advantage of your own lack of '
		cc = 'imagination to completely throw you for a loop?"'
	elseif cl == 234 then
		ca = '"Anyway, I\'ve been reading a lot of horror'
		cb = 'lately..."'
	elseif cl == 235 then
		ct = player
		ca = '"Ah, I read a horror book once..."'
	elseif cl == 236 then
		ct = ''
		ca = "I desperately grasp something I can relate to at "
		cb = "the minimal level."
	elseif cl == 237 then
		ca = "At this rate, Yuri might as well be having a "
		cb = "conversation with a rock."
	elseif cl == 238 then
		updateMonika('1l','1r','d')
		mx = 200
		ct = "Monika"
		ca = '"Really?  I wouldn\'t have expected that, Yuri."'	
	elseif cl == 239 then
		ca = '"For someone as gentle as you..."'
	elseif cl == 240 then
		yb = '1r'
		ct = "Yuri"
		ca = '"I guess you could say that."'
	elseif cl == 241 then
		ca = '"But if a story makes me think,  or takes me to '
		cb = 'another world, then I really can\'t put it down."'
	elseif cl == 242 then
		ca = '"Surreal horror is often very successful at '
		cb = 'changing the way you look at the world, if only '
		cc = 'for a brief moment."'
	elseif cl == 243 then
		updateNatsuki('3','','q')
		nx = 0 - 40
		ct = "Natsuki"
		ca = '"Ugh, I hate horror..."'
	elseif cl == 244 then
		updateYuri('1l','1r','f')
		ct = "Yuri"
		ca = '"Oh? Why\'s that?"'
	elseif cl == 245 then
		updateNatsuki('3','','c')
		ct = "Natsuki"
		ca = '"Well, I just..."'
	elseif cl == 246 then
		ct = ''
		ca = "Natsuki\'s eyes dart over to me for a split second."
	elseif cl == 247 then
		updateNatsuki('3','','q')
		ct = "Natsuki"
		ca = '"Never mind."'
	elseif cl == 248 then
		updateMonika('1l','1r','a')
		ct = "Monika"
		ca = '"That\'s right, you usually like to write about cute '
		cb = 'things, don\'t you, Natsuki?"'
	elseif cl == 249 then
		updateNatsuki('1l','1r','o') 
		ct = "Natsuki"
		ca = '"W-What?"'
	elseif cl == 250 then
		ca = '"What gives you that idea?"'
	elseif cl == 251 then
		updateMonika('2l','1r','b')
		ct = "Monika"
		ca = '"You left a piece of scrap paper behind last club'
		cb = 'meeting."'
	elseif cl == 252 then
		ca = '"It looked like you were working on a poem '
		cb = 'called--"'
	elseif cl == 253 then
		updateNatsuki('1l','1r','p') 
		ct = "Natsuki"
		ca = '"Don\'t say it out loud!!"'
	elseif cl == 254 then
		ca = '"And give that back!"'
	elseif cl == 255 then
		updateMonika('1l','1r','j')
		ct = "Monika"
		ca = '"Fine, fine~"'
	elseif cl == 256 then
		hideMonika()
		hideYuri()
		nx = 30
		sx = 0 - 60
		updateNatsuki('1l','1r','r')
		updateSayori('2l','2r','q')
		ct = "Sayori"
		ca = '"Ehehe, your cupcakes, your poems..."'
	elseif cl == 257 then
		ca = '"Everything you do is just as cute as you are~"'
	elseif cl == 258 then
		sx = 0
		updateNatsuki('1l','1r','r')
		ct = ''
		ca = "Sayori sidles up behind Natsuki and puts her hands "
		cb = "on her sholders"
	elseif cl == 259 then
		updateNatsuki('1l','1r','v')
		ct = "Natsuki"
		ca = '"I\'m not cute!!"'
	elseif cl == 260 then
		hideSayori()
		nx = 80
		ct = player
		ca = '"Natsuki, you write your own poems?"'
	elseif cl == 261 then
		updateNatsuki('1l','1r','c')
		ct = "Natsuki"
		ca = '"Eh? Well, I guess sometimes."'
	elseif cl == 262 then
		ca = "Why do you care?"
	elseif cl == 263 then
		ct = player
		ca = '"I think that\'s impressive."'
	elseif cl == 264 then
		ca = '"Why don\'t you share them sometime?"'
	elseif cl == 265 then
		updateNatsuki('3','','q')
		ct = "Natsuki"
		ca = '"N-No!"'
	elseif cl == 266 then
		ct = ''
		ca = "Natsuki averts her eyes."
	elseif cl == 267 then
		ct = "Natsuki"
		ca = '"You wouldn\'t...like them..."'
	elseif cl == 268 then
		ct = player
		ca = '"Ah...not a very confident writer yet?"'
	elseif cl == 269 then
		updateYuri('1l','2r','f')
		yx = 0 - 40
		ct = "Yuri"
		ca = '"I understand how Natsuki feels."'
	elseif cl == 270 then
		ca = '"Sharing that level of writing takes more than just '
		cb = 'confidence."'
	elseif cl == 271 then
		updateYuri('1l','2r','l')
		ca = '"The truest form of writing is writing to oneself."'
	elseif cl == 272 then
		ca = '"You must be willing to open up to your readers, '
		cb = 'exposing your vulnerabilities and showing even '
		cc = 'the deepest reaches of your heart."'
	elseif cl == 273 then
		hideNatsuki()
		updateMonika('1l','2r','a')
		mx = 200
		ct = "Monika"
		ca = '"Do you have writing experience too, Yuri?"'
	elseif cl == 274 then
		ca = '"Maybe if you share some of your work, you can '
		cb = 'set an example and help Natsuki feel comfortable '
		cc = 'enough to share hers."'
	elseif cl == 275 then
		updateYuri('2l','2r','o')
		ct = "Yuri"
		ca = '"..."'
	elseif cl == 276 then
		ct = player
		ca = '"I guess it\'s the same for Yuri..."'
	elseif cl == 277 then
		updateSayori('1l','2r','g')
		sx = 80
		ct = "Sayori"
		ca = '"Aww... I wanted to read everyone\'s poems..."'
	elseif cl == 278 then
		hideMonika()
		hideSayori()
		hideYuri()
		ct = ''
		ca = "We all sit in silence for a moment."
	elseif cl == 279 then
		updateMonika('3a','','')
		mx = 80
		ct = "Monika"
		ca = '"Okay!"'
	elseif cl == 280 then
		ca = '"I have an idea, everyone~"'
	elseif cl == 281 then
		updateYuri('2l','2r','e')
		updateNatsuki('1l','2r','c')
		nx = 200
		yx = 0 - 40
		mx = 80
		ct = "Nat & Yuri"
		ca = '"...?"'
	elseif cl == 282 then
		ct = ''
		ca = "Natsuki and Yuri look quizzically at Monika."
	elseif cl == 283 then
		updateMonika('1l','2r','b')
		ct = "Monika"
		ca = '"Let\'s all go home and write a poem of our own!"'
	elseif cl == 284 then
		ca = '"Then, next time we meet, we\'ll all share them '
		cb = 'with each other."'
	elseif cl == 285 then
		ca = '"That way, everyone is even!"'
	elseif cl == 286 then
		updateNatsuki('3','','q')
		ct = "Natsuki"
		ca = '"U-Um..."'
	elseif cl == 287 then
		updateYuri('2l','2r','v')
		ct = "Yuri"
		ca = '"..."'
	elseif cl == 288 then
		mx = 120
		nx = 220
		yx = 30
		updateSayori('2l','2r','r')
		sx = 0 - 60
		ct = "Sayori"
		ca = '"Yeaaah! Let\'s do it!"'
	elseif cl == 289 then
		updateMonika('1l','1r','a')
		ct = "Monika"
		ca = '"Plus, now that we have a new member, I think '
		cb = 'it will help us all get a little more comfortable '
		cc = 'with each other, and strengthen the bond of the '
		cd = 'club."'
	elseif cl == 290 then
		ca = '"Isn\'t that right, ' .. player .. '?"'
	elseif cl == 291 then
		ct = ''
		ca = "Monika smiles warmly at me once again."
	elseif cl == 292 then
		ct = player
		ca = '"Hold on...there\'s still one problem."'
	elseif cl == 293 then
		mc = 'd'
		ct = "Monika"
		ca = '"Eh? What\'s that?"'
	elseif cl == 294 then
		ct = ''
		ca = "Now that we\'re back to the original topic of me "
		cb = "joining the club, I bluntly come forth with what\'s "
		cc = "been on my mind the entire time."
	elseif cl == 295 then
		ct = player
		ca = '"I never said I would join this club!"'
	elseif cl == 296 then
		ca = '"Sayori may have convinced me to stop by, but I '
		cb = 'never made any decision."'
	elseif cl == 297 then
		ca = '"I still have other clubs to look at, and...um..."'
	elseif cl == 298 then
		updateMonika('1l','1r','g')
		updateYuri('1l','2r','e')
		updateSayori('1l','1r','g')
		updateNatsuki('2l','2r','g')
		ct = ''
		ca = "I lose my train of thought."
	elseif cl == 299 then
		ca = "All four girls stare back at me with dejected eyes."
	elseif cl == 300 then
		updateMonika('1l','1r','p')
		ct = "Monika"
		ca = '"B-But..."'
	elseif cl == 301 then
		updateYuri('1l','2r','v')
		ct = "Yuri"
		ca = '"I\'m sorry, I thought..."'
	elseif cl == 302 then
		updateNatsuki('3','','s')
		ct = "Natsuki"
		ca = '"Hmph."'
	elseif cl == 303 then
		updateSayori('1l','1r','k')
		ct = "Sayori"
		ca = '"' .. player .. '..."'
	elseif cl == 304 then
		ct = player
		ca = '"Y-You all..."'
	elseif cl == 305 then
		ct = ''
		ca = "I...I\'m defenseless against these girls."
	elseif cl == 306 then
		ca = "How am I supposed to make a clear-headed "
		cb = "decision when it\'s like this?"
	elseif cl == 307 then
		ca = "That is, if writing poems is the price I "
		cb = "need to pay in order to spend every day "
		cc = "with these beautiful girls..."
	elseif cl == 308 then
		ct = player
		ca = '"...Right."'
	elseif cl == 309 then
		ca = '"Okay, I\'ve decided, then."'
	elseif cl == 310 then
		ca = '"I\'ll join the Literature Club."'
	elseif cl == 311 then
		updateMonika('1l','1r','e')
		updateNatsuki('1l','1r','c')
		updateSayori('2l','2r','b')
		updateYuri('2l','2r','f')
		ct = ''
		ca = "One by one, the girls\' eyes light up."
	elseif cl == 312 then
		updateSayori('2l','2r','r')
		ct = "Sayori"
		ca = '"Yesss! I\'m so happyyy~"'
	elseif cl == 313 then
		ct = ''
		ca = "Sayori wraps her arms around me, jumping "
		cb = "up and down."
	elseif cl == 314 then
		ct = player
		ca = '"H-Hey-"'
	elseif cl == 315 then
		updateYuri('1l','1r','m')
		ct = "Yuri"
		ca = '"You really did scare me for a moment..."'
	elseif cl == 316 then
		updateNatsuki('3','','q')
		ct = "Natsuki"
		ca = '"If you really just came for the cupcakes,'
		cb = 'I would be super pissed."'
	elseif cl == 317 then
		updateMonika('3a','','')
		ct = "Monika"
		ca = '"Then that makes it official!"'
	elseif cl == 318 then
		ca = '"Welcome to the Literature Club!"'
	elseif cl == 319 then
		ct = player
		ca = '"Ah...thanks, I guess."'
	elseif cl == 320 then
		hideNatsuki()
		hideSayori()
		hideYuri()
		mx = 80
		updateMonika('2l','1r','b')
		ct = "Monika"
		ca = '"Okay, everyone!"'
	elseif cl == 321 then
		ca = '"I think with that, we can officially '
		cb = 'end today\'s meeting on a good note."'
	elseif cl == 322 then
		ca = '"Everyone remember tonight\'s assignment."'
	elseif cl == 323 then
		ca = '"Write a poem to bring to the next meeting, '
		cb = 'so we can all share!"'
	elseif cl == 324 then
		ct = ''
		ca = "Monika looks over at me once more."
	elseif cl == 325 then
		updateMonika('1l','1r','a')
		ct = "Monika"
		ca = '"' .. player .. ', I look forward to seeing how you '
		cb = 'express yourself."'
	elseif cl == 326 then
		updateMonika('3a','','')
		ca = '"Ehehe~"'
	elseif cl == 327 then
		ct = player
		ca = '"Y-Yeah..."'
	elseif cl == 328 then
		hideMonika()
		ct = ''
		ca = "Can I really impress the class star Monika "
		cb = "with my mediocre writing skills?"
	elseif cl == 329 then
		ca = "I already feel the anxiety welling up "
		cb = "inside me..."
	elseif cl == 330 then
		ca = "Meanwhile, the girls continue to chit-chat "
		cb = "as Yuri and Natsuki clean up their food."
	elseif cl == 331 then
		updateSayori('1l','1r','a')
		sx = 80
		ct = "Sayori"
		ca = '"Hey, ' .. player .. ', since we\'re already '
		cb = 'here, do you want to walk home together?"'
	elseif cl == 332 then
		ct = ''
		ca = "That\'s right--Sayori and I never walk home "
		cb = "together anymore because she always stayed "
		cc = "after school for clubs."
	elseif cl == 333 then
		ct = player
		ca = '"Sure, might as well."'
	elseif cl == 334 then
		updateSayori('2l','2r','q')
		ct = "Sayori"
		ca = '"Yaay~"'
	elseif cl == 335 then
		hideSayori()
		bgUpdate('residential')
		ct = ''
		ca = "With that, the two of us depart the "
		cb = "clubroom and make our way home."
	elseif cl == 336 then
		ca = "The whole way, my mind wanders back and "
		cb = "forth between the four girls:"
	elseif cl == 337 then
		updateSayori('1l','1r','a')
		sx = 0 - 60
		ca = "Sayori,"
	elseif cl == 338 then
		nxh = nx
		nyh = ny
		updateNatsuki('2l','2r','a')
		nx = 30
		ca = "Natsuki,"
	elseif cl == 339 then
		updateYuri('1l','1r','a')
		yx = 120
		ca = "Yuri,"
	elseif cl == 340 then
		updateMonika('1l','1r','a')
		mx = 220
		ca = "and, of course, Monika."
	elseif cl == 341 then
		ca = "Will I really be happy spending every "
		cb = "day after school in a literature club?"
	elseif cl == 342 then
		ca = "Perhaps I\'ll have the chance to grow "
		cb = "closer to one of these girls..."
	elseif cl == 343 then
		hideMonika()
		hideYuri()
		hideNatsuki()
		hideSayori()
		ca = "Alright!"
	elseif cl == 344 then
		ca = "I\'ll just need to make the most of my "
		cb = "circumstances, and I\'m sure good "
		cc = "fortune will find me."
	elseif cl == 345 then
		ca = "And I guess that starts with writing a "
		cb = "poem tonight..."
	elseif cl == 346 then
		poemstate = 0
		splashalpha(4)
	elseif cl == 347 then
		cl = 346
	end 
	
	if cl == 10001 then
		updateSayori('1l','1r','b')
		ct = 'Sayori'
		ca = '"..."'
	elseif cl == 10002 then 
		ca = '"..."'
	elseif cl == 10003 then 
		ca = '"W-What..."'
	elseif cl == 10004 then 
		sc = 'g' 
		ca = '"..."'
	elseif cl == 10005 then 
		ca = '"This..."'
	elseif cl == 10006 then 
		ca = '"What is this...?"'
	elseif cl == 10007 then 
		ca = '"Oh no..."'
	elseif cl == 10008 then 
		sc = 'u' 
		ca = '"No..."'
	elseif cl == 10009 then 
		ca = '"This can\'t be it."'
	elseif cl == 10010 then 
		ca = '"This can\'t be all there is."'
	elseif cl == 10011 then 
		updateSayori('2l','2r','w')
		ca = '"What is this?"'
	elseif cl == 10012 then 
		ca = '"What am I?"'
	elseif cl == 10013 then 
		ca = '"Make it stop!"'
	elseif cl == 10014 then 
		ca = '"PLEASE MAKE IT STOP!"'
	elseif cl == 10015 then 
		cl = 10000
		savenumber = 1
		savegame()
		love.quit()
	end
	
	if cl == 10016 then --NEW GAME
		bgUpdate('warning')
		ca = 'This is an unofficial port of Doki Doki Literature'
		cb = 'Club. If you are using a New 3DS/2DS and have'
		cc = 'CFW, turn off L2 Cache.'
	elseif cl == 10017 then
		ca = 'This port, nor the original game is not suitable'
		cb = 'for children or those who are easily disturbed.'
	elseif cl == 10018 then
		ca = 'Individuals suffering from anxiety or depression'
		cb = 'may not have a safe experience playing this game.'
		cc = 'For content warnings, please visit:'
		cd = 'http://ddlc.moe/warning.html'
	elseif cl == 10019 then
		ca = 'By playing Doki Doki Literature Club, you agree '
		cb = 'that you are at least 13 years of age, and you '
		cc = 'consent to your exposure of highly disturbing'
		cd = 'content.'
		timer = 1000
	elseif cl >= 10020 then
		timer = timer + 1
		cl = 10020
		bgUpdate('warning2')
		if timer == 1001 then 
			sfx1:play()
		elseif timer == 1150 then
			cl = 1
			player = ""
			savegame()
			resetchr()
			love.graphics.setBackgroundColor(255,255,255)
			alpha = 0
			xaload = 0
			audioUpdate('1')
			timer = 0
			state = 'splash1'
		 end
	end
	
end	