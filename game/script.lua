function ch0script()

	ch0a = ""
	ch0b = ""
	ch0c = ""
	ch0d = ""
	
	love.graphics.setBackgroundColor ( 0, 0, 0 )
	
	if ch0ln == 1 then
	ch0t = '???'
	ch0a = '"Heeeeeeeyyy!!"'
	elseif ch0ln == 2 then  
	ch0t = ''
	ch0a = 'I see an annoying girl running toward me from'
	ch0b = 'the distance, waving her arms in the air like'
	ch0c = 'she\'s totally oblivious to any attention she'
	ch0d = 'might draw to herself.'
	elseif ch0ln == 3 then
	ch0a = 'That girl is Sayori, my neighbor and good'
	ch0b = 'friend since we were children.'
	elseif ch0ln == 4 then
	ch0a = 'You know, the kind of friend you\'d never see '
	ch0b = 'yourself making today, but it just kind of works'
	ch0c = 'out because you\'ve known each other for so'
	ch0d = 'long?'
	elseif ch0ln == 5 then
	ch0a = 'We used to walk to school together on days like '
	ch0b = 'this, but starting around high school she would '
	ch0c = 'oversleep more and more frequently, and I would'
	ch0d = 'get tired of waiting up.'
	elseif ch0ln == 6 then
    ch0a = 'But if she\'s going to chase after me like'
	ch0b = 'this, I almost feel better off running away.'
	elseif ch0ln == 7 then
    ch0a = 'However, I just sigh and idle in front of the'
	ch0b = 'crosswalk and let Sayori catch up to me.'
	sload = 1
	elseif ch0ln == 8 then
	sa = '2l' sb = '2r' sc = 'p'
	ch0t = 'Sayori'
	ch0a = '"Haaahhh...haaahhh..."'
	elseif ch0ln == 9 then ch0a = '"I overslept again!"'
	elseif ch0ln == 10 then ch0a = '"But I caught you this time!"'
    elseif ch0ln == 11 then
	ch0t = player
	ch0a = '"Maybe, but only because I decided to stop and '
	ch0b = 'wait for you."'
	elseif ch0ln == 12 then
	sa = '3c' sb = '' sc = ''
	ch0t = 'Sayori'
	ch0a = '"Eeehhhhh, you say that like you were thinking '
	ch0b = 'about ignoring me!"'
	elseif ch0ln == 13 then ch0a = '"That\'s mean, ' .. player .. '!"'
	elseif ch0ln == 14 then
	ch0t = player
	ch0a = '"Well, if people stare at you for acting weird '
	ch0b = 'then I don\'t want them to think we\'re a'
	ch0c = 'couple or something."'
	elseif ch0ln == 15 then
	sa = '1l' sb = '1r' sc = 'a'
	ch0t = 'Sayori'
	ch0a = '"Fine, fine."'
	elseif ch0ln == 16 then ch0a = '"But you did wait for me, after all."'
	elseif ch0ln == 17 then
	ch0a = '"I guess you don\'t have it in you to be mean '
	ch0b = 'even if you want to~"'
	elseif ch0ln == 18 then
	ch0t = player
	ch0a = '"Whatever you say, Sayori..."'
	elseif ch0ln == 19 then
	sc = 'q' sload = 2
	ch0t = 'Sayori'
	ch0a = '"Ehehe~"'
	elseif ch0ln == 20 then
	hideSayori()
	ch0t = ''
	ch0a = 'We cross the street together and make our way '
	ch0b = 'to school.'
	elseif ch0ln == 21 then
	ch0a = 'As we draw near, the streets speckled with '
	ch0b = 'other students making their daily commute.'
	sload = 1
	elseif ch0ln == 22 then
	sa = '2l' sb = '1r' sc = "a"
	ch0t = 'Sayori'
	ch0a = '"By the way, ' .. player .. '..."'
	elseif ch0ln == 23 then ch0a = '"Have you decided on a club to join yet?"'
	elseif ch0ln == 24 then
	ch0t = player
	ch0a = '"A club?"'
	elseif ch0ln == 25 then
	ch0a = '"I told you already, I\'m really not interested '
	ch0b = 'in joining any clubs."'
	elseif ch0ln == 26 then ch0a = '"I haven\'t been looking, either."'
	elseif ch0ln == 27 then
	sa = "2l" sb = "2r" sc = "h"
	ch0t = 'Sayori'
	ch0a = '"Eh? That\'s not true!"'
	elseif ch0ln == 28 then
	ch0a = '"You told me you would join a club this year!"'
	elseif ch0ln == 29 then
	ch0t = player
	ch0a = '"Did I...?"'
	elseif ch0ln == 30 then
	ch0t = ''
	ch0a = 'I\'m sure it\'s possible that I did, in one of '
	ch0b = 'our many conversations where I dismissively '
	ch0c = 'go along with whatever she\'s going on about.'
	elseif ch0ln == 31 then
	ch0a = 'Sayori likes to worry a little too much about'
	ch0b = 'me, when I\'m perfectly content just getting'
	ch0c = 'by on the average while spending my free'
	ch0d = 'time on games and anime.'
	elseif ch0ln == 32 then
	sc = "j"
	ch0t = 'Sayori'
	ch0a = '"Uh-huh!"'
	elseif ch0ln == 33 then
	ch0a = '"I was talking about how I\'m worried that you'
	ch0b = ' won\'t learn how to socialize or have any skills'
	ch0c = 'before college."'
	elseif ch0ln == 34 then
	ch0a = '"Your happiness is really important to me,'
	ch0b = 'you know!"'
	elseif ch0ln == 35 then
	ch0a = '"And I know you\'re happy now, but I\'d die'
	ch0b = 'at the thought of you becoming a NEET in a'
	ch0c = 'few years because you\'re not used to the'
	ch0d = 'real world!"'
	elseif ch0ln == 36 then
	sc = 'g'
	ch0a = '"You trust me, right?"'
	elseif ch0ln == 37 then
	ch0a = '"Don\'t make me keep worrying about you..."'
	elseif ch0ln == 38 then 
	ch0t = player
	ch0a = '"Alright, alright..."'
	elseif ch0ln == 39 then
	ch0a = '"I\'ll look at a few clubs if it makes you'
	ch0b = 'happy."'
	elseif ch0ln == 40 then ch0a = '"No promises, though."'
	elseif ch0ln == 41 then
	sa = '1l' sb = '1r'
	ch0t = 'Sayori'
	ch0a = '"Will you at least promise me you\'ll try '
	ch0b = 'a little?"'
	elseif ch0ln == 42 then
	ch0t = player
	ch0a = '"Yeah, I guess I\'ll promise you that."'
	elseif ch0ln == 43 then
	sa = '2l' sb = '2r' sc = 'r'
	ch0t = 'Sayori'
	ch0a = '"Yaay~!"'
	elseif ch0ln == 44 then
	ch0t = ''
	ch0a = 'Why do I let myself get lectured by such'
	ch0b = 'a carefree girl?'
	elseif ch0ln == 45 then
	ch0a = 'More than that, I\'m surprised I even'
	ch0b = 'let myself relent to her.'
	elseif ch0ln == 46 then
	ch0a = 'I guess seeing her worry so much about me'
	ch0b = 'makes me want to ease her mind at least a'
	ch0c = 'little bit - even if she does exaggerate'
	ch0d = 'everything inside of her head.'
	--sload = 2
	fade = 1
	elseif ch0ln == 47 then
	hideSayori()
	ch0a = 'The school day is as ordinary as ever,'
	ch0b = 'and it\'s over before I know it.'
	elseif ch0ln == 48 then
	ch0a = 'After I pack up my things, I stare blankly'
	ch0b = 'at the wall, looking for an ounce of'
	ch0c = 'motivation.'
	elseif ch0ln == 49 then
	ch0t = player
	ch0a = '"Clubs..."'
	elseif ch0ln == 50 then
	ch0t = ''
	ch0a = 'Sayori wants me to check out some clubs.'
	elseif ch0ln == 51 then
	ch0a = 'I guess I have no choice but to start'
	ch0b = 'with the anime club...'
	elseif ch0ln == 52 then
	ch0t = 'Sayori'
	ch0a = '"Hellooo?"'
	sload = 1
	elseif ch0ln == 53 then
	sa = '1l' sb = '1r' sc = 'b'
	ch0t = player
	ch0a = '"Sayori...?"'
	elseif ch0ln == 54 then
	ch0t = ''
	ch0a = 'Sayori must have come into the'
	ch0b = 'classroom while I was spacing out.'
	elseif ch0ln == 55 then
	ch0a = 'I look around and realize that I\'m the'
	ch0b = 'only one left in the classroom.'
	elseif ch0ln == 56 then
	sc = 'a'
	ch0t = 'Sayori'
	ch0a = '"I thought I\'d catch you coming out of the'
	ch0b = 'classroom, but I saw you just sitting here'
	ch0c = 'and spacing out, so I came in."'
	elseif ch0ln == 57 then
	ch0a = '"Honestly, you\'re even worse than me'
	ch0b = 'sometimes... I\'m impressed!"'
	elseif ch0ln == 58 then
	ch0t = player
	ch0a = '"You don\'t need to wait up for me if it\'s'
	ch0b = 'going to make you late to your own club."'
	elseif ch0ln == 59 then
	sc = 'y'
	ch0t = 'Sayori'
	ch0a = '"Well, I thought you might need some'
	ch0b = 'encouragement, so I thought, you know..."'
	elseif ch0ln == 60 then
	ch0t = player
	ch0a = '"Know what?"'
	elseif ch0ln == 61 then
	sc = 'a'
	ch0t = 'Sayori'
	ch0a = '"Well, that you could come to my club!"'
	elseif ch0ln == 62 then
	ch0t = player
	ch0a = '"Sayori..."'
	elseif ch0ln == 63 then
	sa = '2l' sb = '2r' sc = 'r'
	ch0t = 'Sayori'
	ch0a = '"Yeah??"'
	elseif ch0ln == 64 then
	ch0t = player
	ch0a = '"...There is no way I\'m going to your club."'
	elseif ch0ln == 65 then
	sa = '3d' sb = '' sc = ''
	ch0t = 'Sayori'
	ch0a = '"Eeeehhhhh?! Meanie!"'
	elseif ch0ln == 66 then
	ch0t = ''
	ch0a = 'Sayori is vice president of the Literature Club.'
	elseif ch0ln == 67 then
    ch0a = 'Not that I was ever aware that she had any'
	ch0b = 'interest in literature.'
	elseif ch0ln == 68 then
    ch0a = 'In fact, I\'m 99% sure she only did it because'
	ch0b = 'she thought it would be fun to help start a'
	ch0c = 'new club.'
	elseif ch0ln == 69 then
    ch0a = 'Since she was the first one to show interest'
	ch0b = 'after the one who proposed the club, she'
	ch0c = 'inherited the title \"Vice President\".'
	elseif ch0ln == 70 then
    ch0a = 'That said, my interest in literature is'
	ch0b = 'guaranteed to be even less.'
	elseif ch0ln == 71 then
	ch0t = player
    ch0a = '"Yeah. I\'m going to the anime club."'
	elseif ch0ln == 72 then
	sa = '1l' sb = '1r' sc = 'g'
	ch0t = 'Sayori'
	ch0a = '"C\'mon, please?"'
	elseif ch0ln == 73 then
	ch0t = player
	ch0a = '"Why do you care so much, anyway?"'
	elseif ch0ln == 74 then
	sa = '3b' sb = '' sc = ''
	ch0t = 'Sayori'
	ch0a = '"Well..."'
	elseif ch0ln == 75 then
	ch0a = '"I kind of told the club yesterday I would'
	ch0b = 'bring in a new member..."'
    elseif ch0ln == 76 then
	ch0a = '"And Natsuki made cupcakes and'
	ch0b = 'everything..."'
	elseif ch0ln == 77 then ch0a = '"Ehehe..."'
	elseif ch0ln == 78 then
	ch0t = player
	ch0a = '"Don\'t make promises you can\'t keep!"'
	elseif ch0ln == 79 then
	ch0t = ''
	ch0a = 'I can\'t tell if Sayori is really that much'
	ch0b = 'of an airhead, or if she\'s so cunning as to'
	ch0c = 'have planned all of this out.'
    elseif ch0ln == 80 then ch0a = '"I let out a long sigh."'
	elseif ch0ln == 81 then
	ch0t = player
	ch0a = '"Fine... I\'ll stop by for a cupcake, okay?"'
    elseif ch0ln == 82 then
	sa = '2l' sb = '2r' sc = 'r'
	ch0t = 'Sayori'
	ch0a = '"Yes! Let\'s go~!"'
	audio1 = 1
	sload = 2
	elseif ch0ln == 83 then
	hideSayori()
	timer = 502
	ch0t = ''
	ch0a = 'And thus, today marks the day I sold'
	ch0b = 'my soul for a cupcake.'
    elseif ch0ln == 84 then
	timer = 502
	ch0a = 'I dejectedly follow Sayori across the school'
	ch0b = 'and upstairs - a section of the school I'
	ch0c = 'rarely visit,being generally used for'
	ch0d = 'third-year classes and activities.'
	elseif ch0ln == 85 then 
	timer = 502
	ch0a = 'Sayori, full of energy, swings open the'
	ch0b = 'classroom door.'
	audio1 = 1
	sload = 1
	end
	if ch0ln == 86 then
	sa = '1l' sb = '1r' sc = 'a' sx = 0 - 50
	ch0t = 'Sayori'
	ch0a = '"Everyone! The new member is here~!"'
	elseif ch0ln == 87 then
	ch0t = player
	ch0a = '"I told you, don\'t call me a \'new member--\'"'
	sload = 2
	elseif ch0ln == 88 then
	hideSayori()
	ch0t = ''
	ch0a = 'Eh? I glance around the room.'
	yload = 1
	elseif ch0ln == 89 then
	ya = '1l' yb = '1r' yc = 'a'
	ch0t = 'Girl 1'
	ch0a = '"Welcome to the Literature Club. It\'s a pleasure'
	ch0b = 'meeting you."'
    elseif ch0ln == 90 then 
	ch0a = '"Sayori always says nice things about you."'
	nload = 1
	elseif ch0ln == 91 then
	yx = 140
	na = '2l' nb = '2r' nc = 'c' nx = 20
	ch0t = 'Girl 2'
	ch0a = '"Seriously? You brought a boy?"'
	elseif ch0ln == 92 then 
	ch0a = '"Way to kill the atmosphere."'
	mload = 1
	elseif ch0ln == 93 then
	nx = 80
	yx = 200
	ma = '1l' mb = '1r' mc = 'k' mx = 0 - 40
	ch0t = 'Girl 3'
	ch0a = '"Ah, MC! What a nice surprise!"'
	elseif ch0ln == 94 then ch0a = '"Welcome to the club!"'
	elseif ch0ln == 95 then
	mc = 'a'
	ch0t = player
	ch0a = "'...'"
	elseif ch0ln == 96 then ch0a = '"All words escape me in this situation."'
    elseif ch0ln == 97 then ch0a = '"This club..."'
    elseif ch0ln == 98 then
	ch0a = '"...is full of incredibly cute girls!!"'
	mload = 2
	yload = 2
	elseif ch0ln == 99 then
	hideMonika()
	hideYuri()
	na = '1l'
	ch0t = 'Girl 2'
	ch0a = '"What are you looking at?"'
	elseif ch0ln == 100 then ch0a = '"If you want to say something, say it."'
	elseif ch0ln == 101 then
	ch0t = player
	ch0a = '"S-Sorry..."'
	yload = 1
	elseif ch0ln == 102 then
	ya = '1l' yb = '1r' yc = 'l' yx = 200
	ch0t = 'Girl 1'
	ch0a = '"Natsuki..."'
	elseif ch0ln == 103 then
	na='3' nb='' nc='s' nxh=nx+4 nyh=ny+6
	ch0t = 'Girl 2'
	ch0a = '"Hmph."'
	elseif ch0ln == 104 then
	ch0t = ''
	ch0a = 'The girl with the sour attitude, whose name is'
	ch0b = 'apparently Natsuki, is one I don\'t recognize.'
	elseif ch0ln == 105 then
	ch0a = 'Her small figure makes me think she\'s probably a'
	ch0b = 'first-year.'
    elseif ch0ln == 106 then
	ch0a = 'She is also the one who made cupcakes,'
	ch0b = 'according to Sayori.'
	sload = 1
	elseif ch0ln == 107 then
	sa = '1l' sb = '2r' sc = 'q' sx = 0 - 40
	ch0t = 'Sayori'
	ch0a = '"You can just ignore her when she gets moody~"'
	elseif ch0ln == 108 then
	ch0t = ''
    ch0a = '"Sayori says that quietly into my ear, then turns'
	ch0b = 'back toward the other girls."'
	elseif ch0ln == 109 then
	sa = '1l' sb = '1r' sc = 'x'
	ch0t = 'Sayori'
	ch0a = '"Anyway! This is Natsuki, always full of energy."'
    elseif ch0ln == 110 then ch0a = '"And this is Yuri, the smartest in the club!"'
	elseif ch0ln == 111 then
	ya = '3' yb = '' yc = 'b2'
	ch0t = 'Yuri'
	ch0a = '"D-don\'t say things like that..."'
	elseif ch0ln == 112 then
	ch0t = ''
	ch0a = 'Yuri, who appears comparably more mature and'
	ch0b = 'timid, seems to have a hard time keeping up '
	ch0c = 'with people like Sayori and Natsuki.'
	elseif ch0ln == 113 then
	ch0t = player
	ch0a = '"Ah... Well, it\'s nice to meet both of you."'
	nload = 2
	yload = 2
	elseif ch0ln == 114 then
	hideYuri()
	hideNatsuki()
	ch0t = 'Sayori'
	ch0a = '"And it sounds like you already know Monika, is '
	ch0b = 'that right?"'
	mload = 1
	elseif ch0ln == 115 then
	ma = '1l' mb = '2r' mc = 'a' mx = 80
	ch0t = 'Monika'
	ch0a = '"That\'s right."'
	elseif ch0ln == 116 then ch0a = '"It\'s great to see you again, ' .. player .. '."'
	elseif ch0ln == 117 then
	hideMonika()
	ma = '3a'
	ch0t = ''
	ch0a = 'Monika smiles sweetly.'
	elseif ch0ln == 118 then
	ch0a = 'We do know each other - well, we rarely talked,'
	ch0b = 'but we were in the same class last year.'
	elseif ch0ln == 119 then
    ch0a = 'Monika was probably the most popular girl in'
	ch0b = 'class - smart, beautiful, athletic.'
	elseif ch0ln == 120 then ch0a = 'Basically, completely out of my league.'
    ch0a = 'So, having her smile at me so genuinely feels'
	ch0b = 'a little...'
    elseif ch0ln == 121 then
	ch0t = player
	ch0a = '"Y-You too, Monika."'
	mload = 2
	elseif ch0ln == 122 then
	hideMonika()
	sa = '2l' sb = '2r' sc = 'x'
	ch0t = 'Sayori'
	ch0a = '"Come sit down, ' .. player .. '! We made room for you at'
	ch0b = 'the table, so you can sit next to me or Monika."'
    elseif ch0ln == 123 then 
	ch0a = '"I\'ll get the cupcakes~"'
	nload = 1
    elseif ch0ln == 124 then
	na = '1l' nb = '1r' nc = 'b' nx = 80 nxh = nx
	ch0t = 'Natsuki'
    ch0a = '"Hey! I made them, I\'ll get them!"'
    elseif ch0ln == 125 then
	sa = '3a' sb = '' sc = ''
    ch0t = 'Sayori'
	ch0a = '"Sorry, I got a little too excited~"'
	yload = 1
    elseif ch0ln == 126 then
	ya = '1l' yb = '1r' yc = 'a' yx = 200
	ch0t = 'Yuri'
	ch0a = '"Then, how about I make some tea as well?"'
	sload = 2
	nload = 2
	yload = 2
	elseif ch0ln == 127 then
	hideSayori()
	hideYuri()
	hideNatsuki()
	ch0t = ''
    ch0a = 'The girls have a few desks arranged to form a'
	ch0b = 'table.'
	elseif ch0ln == 128 then
    ch0a = 'As Sayori mentioned, it\'s been widened so that'
	ch0b = 'there is one space next to Monika and one space'
	ch0c = 'next to Sayori.'
    elseif ch0ln == 129 then
	ch0a = 'Natsuki and Yuri walk over to the corner of the'
	ch0b = 'room, where Natsuki grabs a wrapped tray and'
	ch0c = 'Yuri opens the closet.'
	elseif ch0ln == 130 then
	ch0a = 'Still feeling awkward, I take a seat next to'
	ch0b = 'Sayori.'
    elseif ch0ln == 131 then
	ch0a = 'Natsuki proudly marches back to the table, tray'
	ch0b = 'in hand.'
	nload = 1
	elseif ch0ln == 132 then
	na = '1l' nb = '2r' nc = 'z' nx = 80
	ch0t = 'Natsuki'
	ch0a = '"Okaaay, are you ready?"'
	elseif ch0ln == 133 then
	ch0a = '"...Ta-daaa!"'
	mload = 1
	sload = 1
	elseif ch0ln == 134 then
	sa = '2l' sb = '2r' sc = 'n' sx = 0-40
	ma = '1l' mb = '2r' mc = 'd' mx = 200
	ch0t = 'Sayori'
	ch0a = '"Uwooooah!"'
	elseif ch0ln == 135 then
	ch0t = ''
	ch0a = 'Natsuki lifts the foil off the tray to reveal a'
	ch0b = 'dozen white, fluffy cupcakes decorated to look '
	ch0c = 'like little cats.'
	elseif ch0ln == 136 then
	ch0a = 'The whiskers are drawn with icing, and little'
	ch0b = 'pieces of chocolate were used to make ears.'
	elseif ch0ln == 137 then
	sc = 'r'
	ch0t = 'Sayori'
	ch0a = '"So cuuuute~!"'
	elseif ch0ln == 138 then
	mc = 'b'
	ch0t = 'Monika'
	ch0a = '"I had no idea you were so good at baking,'
	ch0b = 'Natsuki!"'
	elseif ch0ln == 139 then
	nc = 'd'
	ch0t = 'Natsuki'
	ch0a = '"Ehehe. Well, you know."'
	elseif ch0ln == 140 then ch0a = '"Just hurry and take one."'
	elseif ch0ln == 141 then
	ch0t = ''
	ch0a = 'Sayori grabs one first, then Monika. I follow.'
	elseif ch0ln == 142 then
	sc = 'q'
	ch0t = 'Sayori'
	ch0a = '"It\'s delicious!"'
	elseif ch0ln == 143 then
	ch0t = ''
	ch0a = 'Sayori talks with her mouth full and has already'
	ch0b = 'managed to get icing on her face.'
	elseif ch0ln == 144 then
	ch0a = 'I turn the cupcake around in my fingers, looking'
	ch0b = 'for the best angle to take a bite.'
	sload = 2
	mload = 2
	nload = 1
	elseif ch0ln == 145 then
	hideSayori()
	hideMonika()
	na = '1l' nb = '1r' nc = 'c'
	ch0t = ''
	ch0a = 'Natsuki is quiet.'
	elseif ch0ln == 146 then
	ch0a = 'I can\'t help but notice her sneaking glances in'
	ch0b = 'my direction.'
    elseif ch0ln == 147 then ch0a = 'Is she waiting for me to take a bite?'
    elseif ch0ln == 148 then ch0a = 'I finally bite down.'
    elseif ch0ln == 149 then
	ch0a = 'The icing is sweet and full of flavor - I wonder if'
	ch0b = 'she made it herself.'
    elseif ch0ln == 150 then
	ch0t = player
	ch0a = '"This is really good."'
    elseif ch0ln == 151 then ch0a = '"Thank you, Natsuki."'
	elseif ch0ln == 152 then
	na = '3' nb = '' nc = 'h' nxh=nx+4 nyh=ny+6
	ch0t = 'Natsuki'
	ch0a = '"W-Why are you thanking me? It\'s not like I...!"'
	elseif ch0ln == 153 then 
	ch0t = ''
	ch0a = '"(Haven\'t I heard this somewhere before...?)"'
	elseif ch0ln == 154 then
	nc = 's' nxh=nx+4 nyh=ny+6
	ch0t = 'Natsuki'
	ch0a = '"...Made them for you or anything."'
	elseif ch0ln == 155 then
	ch0t = player
	ch0a = '"Eh? I thought you technically did. Sayori said--"'
	elseif ch0ln == 156 then
	na = '1l' nb = '1r' nc='2btc' nxh=nx nyh=ny
	ch0t = 'Natsuki'
	ch0a = '"Well, maybe!"'
    elseif ch0ln == 157 then ch0a = '"But not for, y-you know, you! Dummy..."' 
	elseif ch0ln == 158 then
	ch0t = player
	ch0a = '"Alright, alright..."'
	nload = 2
	elseif ch0ln == 159 then
	hideNatsuki()
	ch0t = ''
	ch0a = 'I give up on Natsuki\'s weird logic and dismiss the'
	ch0b = 'conversation.'
    elseif ch0ln == 160 then ch0a = "Yuri returns to the table, carrying a tea set."
    elseif ch0ln == 161 then
	ch0a = 'She carefully places a teacup in front of each'
	ch0b = 'of us before setting down the teapot next to the'
	ch0c = 'cupcake tray.'
	yload = 1
	elseif ch0ln == 162 then
	ya = '1l' yb ='1r' yc = 'a' yx = 10
	ch0t = player
	ch0a = '"You keep a whole tea set in this classroom?"'
	elseif ch0ln == 163 then
	ch0t = 'Yuri'
    ch0a = '"Don\'t worry, the teachers gave us permission."'
	elseif ch0ln == 164 then
    ch0a = '"After all, doesn\'t a hot cup of tea help you '
	ch0b = 'enjoy a good book?"'
	elseif ch0ln == 165 then
	ch0t = player
	ch0a = '"Ah... I-I guess..."'
	mload = 1
	elseif ch0ln == 166 then
	ma = '2l' mb = '2r' mc = 'a' mx = 150
	ch0t = 'Monika'
	ch0a = '"Ehehe, don\'t let yourself get intimidated,'
	ch0b = 'Yuri\'s just trying to impress you."'
	elseif ch0ln == 167 then
	ya = '2l' yb = '2r' yc = 'n'
	ch0t = 'Yuri'
	ch0a = '"Eh?! T-That\'s not..."'
	elseif ch0ln == 168 then
	ch0t = '' ch0a = "Insulted, Yuri looks away."
	elseif ch0ln == 169 then
	ya = '3' yb = '' yc = 'b2'
	ch0t = 'Yuri' ch0a ='"I meant that, you know..."'
    elseif ch0ln == 170 then ch0t = player ch0a = '"I believe you."'
    ch0a = '"Well, tea and reading might not be a pastime for'
	ch0b = 'me, but I at least enjoy tea."'
	elseif ch0ln == 171 then
	ya = '1l' yb = '2r' yc = 'u'
    ch0t = 'Yuri' ch0a = '"I\'m glad..."'
    elseif ch0ln == 172 then ch0t = '' ch0a = 'Yuri faintly smiles to herself in relief.'
	elseif ch0ln == 173 then
	ch0a = "Monika raises an eyebrow, then smiles at me."
	yload = 2
	elseif ch0ln == 174 then
	hideYuri()
	ma = '1l' mb = '1r' mc = 'a' mx = 80
	ch0t = 'Monika'
	ch0a = '"So, what made you consider the Literature Club?"'
	elseif ch0ln == 175 then ch0t = player ch0a = '"Um..."'
	elseif ch0ln == 176 then ch0t = '' ch0a = "I was afraid of this question."
    elseif ch0ln == 177 then
	ch0a = 'Something tells me I shouldn\'t tell Monika that'
	ch0b = 'I was practically dragged here by Sayori.'
	elseif ch0ln == 178 then
	ch0t = player
	ch0a = '"Well, I haven\'t joined any clubs yet, and Sayori'
	ch0b = 'seemed really happy here, so..."'
	elseif ch0ln == 179 then 
	mc = 'j'
	ch0t = 'Monika'
	ch0a = '"That\'s okay! Don\'t be embarrassed!"'
	elseif ch0ln == 180 then
	mc = 'b'
	ch0a = '"We\'ll make sure you feel right at home, okay?"'
	elseif ch0ln == 181 then
	ch0a = '"As president of the Literature Club, it\'s my'
	ch0b = 'duty to make the club fun and exciting for'
	ch0c = 'everyone!"'
	elseif ch0ln == 182 then mc = 'a' ch0t = player ch0a = '"Monika, I\'m surprised."'
	elseif ch0ln == 183 then ch0a = '"How come you decided to start your own club?"'
    elseif ch0ln == 184 then
	ch0a = '"You could probably be a board member for any of'
	ch0b = 'the major clubs."'
    elseif ch0ln == 185 then ch0a = '"Weren\'t you a leader of the debate club last' ch0b = 'year?"'
    elseif ch0ln == 186 then 
	ma = '3a' mb = '' mc = ''
	ch0t = 'Monika' ch0a = '"Ahaha, well, you know..."'
	elseif ch0ln == 187 then
    ch0a = '"To be honest, I can\'t stand all of the politics'
	ch0b = 'around the major clubs."'
	elseif ch0ln == 188 then
	ch0a = '"It feels like nothing but arguing about the budget'
	ch0b = 'and publicity and how to prepare for events..."'
	elseif ch0ln == 189 then
	ch0a = '"I\'d much rather take something I personally enjoy'
	ch0b = 'and make something special out of it."'
	elseif ch0ln == 190 then
	ma = '1l' mb = '1r' mc = 'b'
    ch0a = '"And if it encourages others to get into literature,'
	ch0b = 'then I\'m fulfilling that dream!"'
	sload = 1
	elseif ch0ln == 191 then
	mc = 'a'
	sa = '2l' sb = '1r' sc= 'q' sx = 0-40
	ch0t = 'Sayori'
	ch0a = '"Monika really is a great leader!"'
	yload = 1
	elseif ch0ln == 192 then
	ya = '1l' yb = '1r' yc = 'a' yx = 200
	ch0t = ''
	ch0a = 'Yuri also nods in agreement.'
	sload = 2 yload = 2
	elseif ch0ln == 193 then
	hideSayori()
	hideYuri()
	ch0t = player
	ch0a = '"Then I\'m surprised there aren\'t more people in'
	ch0b = 'the club yet."'
    elseif ch0ln == 194 then ch0a = "It must be hard to start a new club."
    elseif ch0ln == 195 then
	ma = '1l' mb = '1r' mc = 'b'
	ch0t = 'Monika' ch0a = '"You could put it that way."'
    elseif ch0ln == 196 then
	ch0a = '"Not many people are very interested in putting'
	ch0b = 'out all the effort to start something brand new..."'
    elseif ch0ln == 197 then
	ch0a = '"Especially when it\'s something that doesn\'t grab'
	ch0b = 'your attention, like literature."'
	elseif ch0ln == 198 then
	ch0a = '"You have to work hard to convince people that'
	ch0b = 'you\'re both fun and worthwhile."'
	elseif ch0ln == 199 then
	ch0a = '"But it makes school events, like the festival,'
	ch0b = 'that much more important."'
	elseif ch0ln == 200 then
	ma = '1l' mb = '2r' mc = 'k'
	ch0a = '"I\'m confident that we can all really grow this'
	ch0b = 'club before we graduate!"'
	elseif ch0ln == 201 then ch0a = '"Right, everyone?"' sload = 1
	elseif ch0ln == 202 then
	sa = '2l' sb = '2r' sc = 'r' sx = 10
	mx = 150
	yload = 1
	ch0t = 'Sayori'
	ch0a = '"Yeah!"'
	elseif ch0ln == 203 then
	ya = '1l' yb = '1r' yc = 'a' yx = 0-40
	sx = 80
	mx = 200
	nload = 1
	ch0t = 'Yuri'
	ch0b = '"We\'ll do our best."'
	elseif ch0ln == 204 then
	na = '2l' nb = '2r' nc = 'd' nx = 0 - 60
	yx = 30
	sx = 120
	mx = 220
	ch0t = 'Natsuki'
	ch0a = '"You know it!"'
	elseif ch0ln == 205 then
	ch0t = ''
	ch0a = "Everyone enthusiastically agrees."
    elseif ch0ln == 206 then ch0a = "Such different girls, all interested in the same goal..."
    elseif ch0ln == 207 then
	ch0a = "Monika must have worked really hard just to find these "
	ch0b = "three."
    elseif ch0ln == 208 then
	ch0a = "Maybe that's why they were all so delighted by the idea"
	ch0b = "of a new member joining."
	elseif ch0ln == 209 then
    ch0a = "Though I still don't really know if I can keep up with"
	ch0b = "their level of enthusiasm about literature..."
	sload = 2
	nload = 2
	mload = 2
	elseif ch0ln == 210 then
	--refln'"Sayori is vice president of the Literature Club."'
	end

	if ch0ln == 10001 then
	sa = '1l' sb = '1r' sc = 'b'
	ch0t = 'Sayori'
	ch0a = '"..."'
	elseif ch0ln == 10002 then ch0a = '"..."'
	elseif ch0ln == 10003 then ch0a = '"W-What..."'
	elseif ch0ln == 10004 then sc = 'g' ch0a = '"..."'
	elseif ch0ln == 10005 then ch0a = '"This..."'
	elseif ch0ln == 10006 then ch0a = '"What is this...?"'
	elseif ch0ln == 10007 then ch0a = '"Oh no..."'
	elseif ch0ln == 10008 then sc = 'u' ch0a = '"No..."'
	elseif ch0ln == 10009 then ch0a = '"This can\'t be it."'
	elseif ch0ln == 10010 then ch0a = '"This can\'t be all there is."'
	elseif ch0ln == 10011 then sa = '2l' sb = '2r' sc='w' ch0a = '"What is this?"'
	elseif ch0ln == 10012 then ch0a = '"What am I?"'
	elseif ch0ln == 10013 then ch0a = '"Make it stop!"'
	elseif ch0ln == 10014 then ch0a = '"PLEASE MAKE IT STOP!"'
	elseif ch0ln == 10015 then 
	file = io.open("save.txt", "w")
	file:write('10000')
	file:close()
	love.event.quit()
	end
	
	if ch0ln == 10016 then
	ch0a = 'This is an unofficial port of Doki Doki Literature'
	ch0b = 'Club.'
	elseif ch0ln == 10017 then
	ch0a = 'This port, nor the original game is not suitable'
	ch0b = 'for children or those who are easily disturbed.'
	elseif ch0ln == 10018 then
	ch0a = 'Individuals suffering from anxiety or depression'
	ch0b = 'may not have a safe experience playing this game.'
	ch0c = 'For content warnings, please visit:'
	ch0d = 'http://ddlc.moe/warning.html'
	elseif ch0ln == 10019 then
	ch0a = 'By playing Doki Doki Literature Club, you agree '
	ch0b = 'that you are at least 13 years of age, and you '
	ch0c = 'consent to your exposure of highly disturbing'
	ch0d = 'content.'
	timer = 1000
	elseif ch0ln == 10020 then
	timer = timer + 1
	if timer == 1001 then sfx1play()
	elseif timer == 1150 then
		file = io.open("save.txt", "w")
		file:write('1')
		file:close()
		resetchr()
		love.graphics.setBackgroundColor(255,255,255)
		ch0ln = 1
		audioUpdate('1')
		timer = 0
		state = 'splash1'
	end
	
	end
	
end	