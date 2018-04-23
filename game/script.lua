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
	elseif ch0ln == 8 then
		updateSayori('2l','2r','p')
		ch0t = 'Sayori'
		ch0a = '"Haaahhh...haaahhh..."'
	elseif ch0ln == 9 then 
		ch0a = '"I overslept again!"'
	elseif ch0ln == 10 then 
		ch0a = '"But I caught you this time!"'
    elseif ch0ln == 11 then
		ch0t = player
		ch0a = '"Maybe, but only because I decided to stop and '
		ch0b = 'wait for you."'
	elseif ch0ln == 12 then
		updateSayori('3c','','')
		ch0t = 'Sayori'
		ch0a = '"Eeehhhhh, you say that like you were thinking '
		ch0b = 'about ignoring me!"'
	elseif ch0ln == 13 then 
		ch0a = '"That\'s mean, ' .. player .. '!"'
	elseif ch0ln == 14 then
		ch0t = player
		ch0a = '"Well, if people stare at you for acting weird '
		ch0b = 'then I don\'t want them to think we\'re a'
		ch0c = 'couple or something."'
	elseif ch0ln == 15 then
		updateSayori('1l','1r','a')
		ch0t = 'Sayori'
		ch0a = '"Fine, fine."'
	elseif ch0ln == 16 then 
		ch0a = '"But you did wait for me, after all."'
	elseif ch0ln == 17 then
		ch0a = '"I guess you don\'t have it in you to be mean '
		ch0b = 'even if you want to~"'
	elseif ch0ln == 18 then
		ch0t = player
		ch0a = '"Whatever you say, Sayori..."'
	elseif ch0ln == 19 then
		sc = 'q'
		ch0t = 'Sayori'
		ch0a = '"Ehehe~"'
	elseif ch0ln == 20 then
		hideSayori()
		ch0t = ''
		ch0a = 'We cross the street together and make our way '
		ch0b = 'to school.'
	elseif ch0ln == 21 then
		ch0a = 'As we draw near, the streets become increasingly '
		ch0b = 'speckled with other students making their '
		ch0c = 'daily commute.'
	elseif ch0ln == 22 then
		updateSayori('2l','1r','a')
		ch0t = 'Sayori'
		ch0a = '"By the way, ' .. player .. '..."'
	elseif ch0ln == 23 then 
		ch0a = '"Have you decided on a club to join yet?"'
	elseif ch0ln == 24 then
		ch0t = player
		ch0a = '"A club?"'
	elseif ch0ln == 25 then
		ch0a = '"I told you already, I\'m really not interested '
		ch0b = 'in joining any clubs."'
	elseif ch0ln == 26 then ch0a = '"I haven\'t been looking, either."'
	elseif ch0ln == 27 then
		updateSayori('2l','2r','h')
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
		sc = 'j'
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
		updateSayori('2l','2r','g')
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
		updateSayori('1l','1r','h')
		ch0t = 'Sayori'
		ch0a = '"Will you at least promise me you\'ll try '
		ch0b = 'a little?"'
	elseif ch0ln == 42 then
		ch0t = player
		ch0a = '"Yeah, I guess I\'ll promise you that."'
	elseif ch0ln == 43 then
		updateSayori('2l','2r','r')
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
	elseif ch0ln == 53 then
		updateSayori('1l','1r','b')
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
		updateSayori('2l','2r','r')
		ch0t = 'Sayori'
		ch0a = '"Yeah??"'
	elseif ch0ln == 64 then
		ch0t = player
		ch0a = '"...There is no way I\'m going to your club."'
	elseif ch0ln == 65 then
		updateSayori('3d','','')
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
		updateSayori('1l','1r','g')
		ch0t = 'Sayori'
		ch0a = '"C\'mon, please?"'
	elseif ch0ln == 73 then
		ch0t = player
		ch0a = '"Why do you care so much, anyway?"'
	elseif ch0ln == 74 then
		updateSayori('3b','','')
		ch0t = 'Sayori'
		ch0a = '"Well..."'
	elseif ch0ln == 75 then
		ch0a = '"I kind of told the club yesterday I would'
		ch0b = 'bring in a new member..."'
    elseif ch0ln == 76 then
		ch0a = '"And Natsuki made cupcakes and'
		ch0b = 'everything..."'
	elseif ch0ln == 77 then 
		ch0a = '"Ehehe..."'
	elseif ch0ln == 78 then
		ch0t = player
		ch0a = '"Don\'t make promises you can\'t keep!"'
	elseif ch0ln == 79 then
		ch0t = ''
		ch0a = 'I can\'t tell if Sayori is really that much'
		ch0b = 'of an airhead, or if she\'s so cunning as to'
		ch0c = 'have planned all of this out.'
    elseif ch0ln == 80 then 
		ch0a = 'I let out a long sigh.'
	elseif ch0ln == 81 then
		ch0t = player
		ch0a = '"Fine... I\'ll stop by for a cupcake, okay?"'
    elseif ch0ln == 82 then
		updateSayori('2l','2r','r')
		ch0t = 'Sayori'
		ch0a = '"Yes! Let\'s go~!"'
		audio1 = 1
	elseif ch0ln == 83 then
		hideSayori()
		ch0t = ''
		ch0a = 'And thus, today marks the day I sold'
		ch0b = 'my soul for a cupcake.'
	elseif ch0ln == 84 then
		ch0a = 'I dejectedly follow Sayori across the school'
		ch0b = 'and upstairs - a section of the school I'
		ch0c = 'rarely visit,being generally used for'
		ch0d = 'third-year classes and activities.'
	elseif ch0ln == 85 then 
		ch0a = 'Sayori, full of energy, swings open the'
		ch0b = 'classroom door.'
		audio1 = 1
	end
	
	if ch0ln == 86 then
		updateSayori('2l','2r','a')
		sx = 0 - 50
		ch0t = 'Sayori'
		ch0a = '"Everyone! The new member is here~!"'
	elseif ch0ln == 87 then
		ch0t = player
		ch0a = '"I told you, don\'t call me a \'new member - \'"'
	elseif ch0ln == 88 then
		hideSayori()
		ch0t = ''
		ch0a = 'Eh? I glance around the room.'
	elseif ch0ln == 89 then
		updateYuri('1l','1r','a')
		ch0t = 'Girl 1'
		ch0a = '"Welcome to the Literature Club. It\'s a pleasure'
		ch0b = 'meeting you."'
    elseif ch0ln == 90 then 
		ch0a = '"Sayori always says nice things about you."'
	elseif ch0ln == 91 then
		updateNatsuki('2l','2r','c')
		yx = 140
		nx = 20
		ch0t = 'Girl 2'
		ch0a = '"Seriously? You brought a boy?"'
	elseif ch0ln == 92 then 
		ch0a = '"Way to kill the atmosphere."'
	elseif ch0ln == 93 then
		updateMonika('1l','1r','k')
		nx = 80
		yx = 200
		mx = 0 - 40
		ch0t = 'Girl 3'
		ch0a = '"Ah, ' .. player .. '! What a nice surprise!"'
	elseif ch0ln == 94 then 
		ch0a = '"Welcome to the club!"'
	elseif ch0ln == 95 then
		mc = 'a'
		ch0t = player
		ch0a = "'...'"
	elseif ch0ln == 96 then 
		ch0t = ''
		ch0a = 'All words escape me in this situation.'
    elseif ch0ln == 97 then 
		ch0a = 'This club...'
    elseif ch0ln == 98 then
		ch0a = '...is full of incredibly cute girls!!'
	elseif ch0ln == 99 then
		hideMonika()
		hideYuri()
		updateNatsuki('1l','2r','c')
		ch0t = 'Girl 2'
		ch0a = '"What are you looking at?"'
	elseif ch0ln == 100 then 
		ch0a = '"If you want to say something, say it."'
	elseif ch0ln == 101 then
		ch0t = player
		ch0a = '"S-Sorry..."'
	elseif ch0ln == 102 then
		updateYuri('1l','2r','l')
		yx = 200
		ch0t = 'Girl 1'
		ch0a = '"Natsuki..."'
	elseif ch0ln == 103 then
		updateNatsuki('3','','s')
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
	elseif ch0ln == 107 then
		updateSayori('1l','2r','q')
		sx = 0 - 40
		ch0t = 'Sayori'
		ch0a = '"You can just ignore her when she gets moody~"'
	elseif ch0ln == 108 then
		ch0t = ''
		ch0a = 'Sayori says that quietly into my ear, then turns'
		ch0b = 'back toward the other girls.'
	elseif ch0ln == 109 then
		updateSayori('1l','1r','x')
		ch0t = 'Sayori'
		ch0a = '"Anyway! This is Natsuki, always full of energy."'
    elseif ch0ln == 110 then 
		ch0a = '"And this is Yuri, the smartest in the club!"'
	elseif ch0ln == 111 then
		updateYuri('3','','b2')
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
	elseif ch0ln == 114 then
		hideYuri()
		hideNatsuki()
		sc = 'a'
		ch0t = 'Sayori'
		ch0a = '"And it sounds like you already know Monika, is '
		ch0b = 'that right?"'
	elseif ch0ln == 115 then
		updateMonika('1l','2r','a')
		mx = 80
		ch0t = 'Monika'
		ch0a = '"That\'s right."'
	elseif ch0ln == 116 then 
		ch0a = '"It\'s great to see you again, ' .. player .. '."'
	elseif ch0ln == 117 then
		updateMonika('3a','','')
		ch0t = ''
		ch0a = 'Monika smiles sweetly.'
	elseif ch0ln == 118 then
		ch0a = 'We do know each other - well, we rarely talked,'
		ch0b = 'but we were in the same class last year.'
	elseif ch0ln == 119 then
		ch0a = 'Monika was probably the most popular girl in'
		ch0b = 'class - smart, beautiful, athletic.'
	elseif ch0ln == 120 then 
		ch0a = 'Basically, completely out of my league.'
	elseif ch0ln == 121 then
		ch0a = 'So, having her smile at me so genuinely feels'
		ch0b = 'a little...'
    elseif ch0ln == 122 then
		ch0t = player
		ch0a = '"Y-You too, Monika."'
	elseif ch0ln == 123 then
		hideMonika()
		updateSayori('2l','2r','x')
		ch0t = 'Sayori'
		ch0a = '"Come sit down, ' .. player .. '! We made room for you at'
		ch0b = 'the table, so you can sit next to me or Monika."'
    elseif ch0ln == 124 then 
		ch0a = '"I\'ll get the cupcakes~"'
	elseif ch0ln == 125 then
		updateNatsuki('1l','1r','b')
		nx = 80 
		ch0t = 'Natsuki'
		ch0a = '"Hey! I made them, I\'ll get them!"'
    elseif ch0ln == 126 then
		updateSayori('3a','','')
		ch0t = 'Sayori'
		ch0a = '"Sorry, I got a little too excited~"'
    elseif ch0ln == 127 then
		updateYuri('1l','1r','a')
		yx = 200
		ch0t = 'Yuri'
		ch0a = '"Then, how about I make some tea as well?"'
	elseif ch0ln == 128 then
		hideSayori()
		hideYuri()
		hideNatsuki()
		ch0t = ''
		ch0a = 'The girls have a few desks arranged to form a'
		ch0b = 'table.'
	elseif ch0ln == 129 then
		ch0a = 'As Sayori mentioned, it\'s been widened so that'
		ch0b = 'there is one space next to Monika and one space'
		ch0c = 'next to Sayori.'
    elseif ch0ln == 130 then
		ch0a = 'Natsuki and Yuri walk over to the corner of the'
		ch0b = 'room, where Natsuki grabs a wrapped tray and'
		ch0c = 'Yuri opens the closet.'
	elseif ch0ln == 131 then
		ch0a = 'Still feeling awkward, I take a seat next to'
		ch0b = 'Sayori.'
    elseif ch0ln == 132 then
		ch0a = 'Natsuki proudly marches back to the table, tray'
		ch0b = 'in hand.'
	elseif ch0ln == 133 then
		updateNatsuki('1l','2r','z')
		nx = 80
		ch0t = 'Natsuki'
		ch0a = '"Okaaay, are you ready?"'
	elseif ch0ln == 134 then
		ch0a = '"...Ta-daaa!"'
	elseif ch0ln == 135 then
		updateSayori('2l','2r','m')
		updateMonika('1l','2r','d')
		sx = 0-40
		mx = 200
		ch0t = 'Sayori'
		ch0a = '"Uwooooah!"'
	elseif ch0ln == 136 then
		ch0t = ''
		ch0a = 'Natsuki lifts the foil off the tray to reveal a'
		ch0b = 'dozen white, fluffy cupcakes decorated to look '
		ch0c = 'like little cats.'
	elseif ch0ln == 137 then
		ch0a = 'The whiskers are drawn with icing, and little'
		ch0b = 'pieces of chocolate were used to make ears.'
	elseif ch0ln == 138 then
		sc = 'r'
		ch0t = 'Sayori'
		ch0a = '"So cuuuute~!"'
	elseif ch0ln == 139 then
		mc = 'b'
		ch0t = 'Monika'
		ch0a = '"I had no idea you were so good at baking,'
		ch0b = 'Natsuki!"'
	elseif ch0ln == 140 then
		nc = 'd'
		ch0t = 'Natsuki'
		ch0a = '"Ehehe. Well, you know."'
	elseif ch0ln == 141 then 
		ch0a = '"Just hurry and take one!"'
	elseif ch0ln == 142 then
		ch0t = ''
		ch0a = 'Sayori grabs one first, then Monika. I follow.'
	elseif ch0ln == 143 then
		sc = 'q'
		ch0t = 'Sayori'
		ch0a = '"It\'s delicious!"'
	elseif ch0ln == 144 then
		ch0t = ''
		ch0a = 'Sayori talks with her mouth full and has already'
		ch0b = 'managed to get icing on her face.'
	elseif ch0ln == 145 then
		ch0a = 'I turn the cupcake around in my fingers, looking'
		ch0b = 'for the best angle to take a bite.'
	elseif ch0ln == 146 then
		hideSayori()
		hideMonika()
		updateNatsuki('1l','1r','c')
		ch0t = ''
		ch0a = 'Natsuki is quiet.'
	elseif ch0ln == 147 then
		ch0a = 'I can\'t help but notice her sneaking glances in'
		ch0b = 'my direction.'
    elseif ch0ln == 148 then 
		ch0a = 'Is she waiting for me to take a bite?'
    elseif ch0ln == 149 then 
		ch0a = 'I finally bite down.'
    elseif ch0ln == 150 then
		ch0a = 'The icing is sweet and full of flavor - I wonder if'
		ch0b = 'she made it herself.'
    elseif ch0ln == 151 then
		ch0t = player
		ch0a = '"This is really good."'
    elseif ch0ln == 152 then 
		ch0a = '"Thank you, Natsuki."'
	elseif ch0ln == 153 then
		updateNatsuki('3','','h')
		ch0t = 'Natsuki'
		ch0a = '"W-Why are you thanking me? It\'s not like I...!"'
	elseif ch0ln == 154 then 
		ch0t = ''
		ch0a = "(Haven\'t I heard this somewhere before...?)"
	elseif ch0ln == 155 then
		nc = 's' 
		ch0t = 'Natsuki'
		ch0a = '"...Made them for you or anything."'
	elseif ch0ln == 156 then
		ch0t = player
		ch0a = '"Eh? I thought you technically did. Sayori said--"'
	elseif ch0ln == 157 then
		updateNatsuki('1l','1r','2btc')
		ch0t = 'Natsuki'
		ch0a = '"Well, maybe!"'
    elseif ch0ln == 158 then 
		ch0a = '"But not for, y-you know, you! Dummy..."' 
	elseif ch0ln == 159 then
		ch0t = player
		ch0a = '"Alright, alright..."'
	elseif ch0ln == 160 then
		hideNatsuki()
		ch0t = ''
		ch0a = 'I give up on Natsuki\'s weird logic and dismiss the'
		ch0b = 'conversation.'
    elseif ch0ln == 161 then 
		ch0a = "Yuri returns to the table, carrying a tea set."
    elseif ch0ln == 162 then
		ch0a = 'She carefully places a teacup in front of each'
		ch0b = 'of us before setting down the teapot next to the'
		ch0c = 'cupcake tray.'
	elseif ch0ln == 163 then
		updateYuri('1l','1r','a')
		yx = 10
		ch0t = player
		ch0a = '"You keep a whole tea set in this classroom?"'
	elseif ch0ln == 164 then
		ch0t = 'Yuri'
		ch0a = '"Don\'t worry, the teachers gave us permission."'
	elseif ch0ln == 165 then
		ch0a = '"After all, doesn\'t a hot cup of tea help you '
		ch0b = 'enjoy a good book?"'
	elseif ch0ln == 166 then
		ch0t = player
		ch0a = '"Ah... I-I guess..."'
	elseif ch0ln == 167 then
		updateMonika('2l','2r','a')
		mx = 150
		ch0t = 'Monika'
		ch0a = '"Ehehe, don\'t let yourself get intimidated,'
		ch0b = 'Yuri\'s just trying to impress you."'
	elseif ch0ln == 168 then
		updateYuri('2l','2r','n')
		ch0t = 'Yuri'
		ch0a = '"Eh?! T-That\'s not..."'
	elseif ch0ln == 169 then
		ch0t = '' 
		ch0a = "Insulted, Yuri looks away."
	elseif ch0ln == 170 then
		updateYuri('3','','b2')
		ch0t = 'Yuri' 
		ch0a ='"I meant that, you know..."'
    elseif ch0ln == 171 then 
		ch0t = player 
		ch0a = '"I believe you."'
	elseif ch0ln == 172 then
		ch0a = '"Well, tea and reading might not be a pastime for'
		ch0b = 'me, but I at least enjoy tea."'
	elseif ch0ln == 173 then
		updateYuri('1l','2r','u')
		ch0t = 'Yuri' 
		ch0a = '"I\'m glad..."'
    elseif ch0ln == 174 then 
		ch0t = '' 
		ch0a = 'Yuri faintly smiles to herself in relief.'
	elseif ch0ln == 175 then
		ch0a = "Monika raises an eyebrow, then smiles at me."
	elseif ch0ln == 176 then
		hideYuri()
		updateMonika('1l','1r','a')
		mx = 80
		ch0t = 'Monika'
		ch0a = '"So, what made you consider the Literature Club?"'
	elseif ch0ln == 177 then 
		ch0t = player 
		ch0a = '"Um..."'
	elseif ch0ln == 178 then 
		ch0t = '' 
		ch0a = "I was afraid of this question."
    elseif ch0ln == 179 then
		ch0a = 'Something tells me I shouldn\'t tell Monika that'
		ch0b = 'I was practically dragged here by Sayori.'
	elseif ch0ln == 180 then
		ch0t = player
		ch0a = '"Well, I haven\'t joined any clubs yet, and Sayori'
		ch0b = 'seemed really happy here, so..."'
	elseif ch0ln == 181 then 
		mc = 'j'
		ch0t = 'Monika'
		ch0a = '"That\'s okay! Don\'t be embarrassed!"'
	elseif ch0ln == 182 then
		mc = 'b'
		ch0a = '"We\'ll make sure you feel right at home, okay?"'
	elseif ch0ln == 183 then
		ch0a = '"As president of the Literature Club, it\'s my'
		ch0b = 'duty to make the club fun and exciting for'
		ch0c = 'everyone!"'
	elseif ch0ln == 184 then 
		mc = 'a' 
		ch0t = player 
		ch0a = '"Monika, I\'m surprised."'
	elseif ch0ln == 185 then 
		ch0a = '"How come you decided to start your own club?"'
    elseif ch0ln == 186 then
		ch0a = '"You could probably be a board member for any '
		ch0b = 'of the major clubs."'
    elseif ch0ln == 187 then 
		ch0a = '"Weren\'t you a leader of the debate club last' 
		ch0b = 'year?"'
    elseif ch0ln == 188 then 
		updateMonika('3a','','')
		ch0t = 'Monika' 
		ch0a = '"Ahaha, well, you know..."'
	elseif ch0ln == 189 then
		ch0a = '"To be honest, I can\'t stand all of the politics'
		ch0b = 'around the major clubs."'
	elseif ch0ln == 190 then
		ch0a = '"It feels like nothing but arguing about the'
		ch0b = 'budget and publicity and how to prepare for'
		ch0c = 'events..."'
	elseif ch0ln == 191 then
		ch0a = '"I\'d much rather take something I personally'
		ch0b = 'enjoy and make something special out of it."'
	elseif ch0ln == 192 then
		updateMonika('1l','1r','b')
		mx = 80
		ch0a = '"And if it encourages others to get into literature,'
		ch0b = 'then I\'m fulfilling that dream!"'
	elseif ch0ln == 193 then
		mc = 'a'
		updateSayori('2l','1r','q')
		sx = 0-40
		ch0t = 'Sayori'
		ch0a = '"Monika really is a great leader!"'
	elseif ch0ln == 194 then
		updateYuri('1l','1r','a')
		yx = 200
		ch0t = ''
		ch0a = 'Yuri also nods in agreement.'
	elseif ch0ln == 195 then
		hideSayori()
		hideYuri()
		ch0t = player
		ch0a = '"Then I\'m surprised there aren\'t more people in'
		ch0b = 'the club yet."'
    elseif ch0ln == 196 then 
		ch0a = '"It must be hard to start a new club."'
    elseif ch0ln == 197 then
		updateMonika('2l','1r','b')
		ch0t = 'Monika' 
		ch0a = '"You could put it that way."'
    elseif ch0ln == 198 then
		ch0a = '"Not many people are very interested in putting'
		ch0b = 'out all the effort to start something brand new..."'
    elseif ch0ln == 199 then
		ch0a = '"Especially when it\'s something that doesn\'t grab'
		ch0b = 'your attention, like literature."'
	elseif ch0ln == 200 then
		ch0a = '"You have to work hard to convince people that'
		ch0b = 'you\'re both fun and worthwhile."'
	elseif ch0ln == 201 then
		ch0a = '"But it makes school events, like the festival,'
		ch0b = 'that much more important."'
	elseif ch0ln == 202 then
		updateMonika('1l','2r','k')
		ch0a = '"I\'m confident that we can all really grow this'
		ch0b = 'club before we graduate!"'
	elseif ch0ln == 203 then 
		ch0a = '"Right, everyone?"' 
	elseif ch0ln == 204 then
		updateSayori('2l','2r','r')
		mc = 'a'
		sx = 10
		mx = 150
		ch0t = 'Sayori'
		ch0a = '"Yeah!"'
	elseif ch0ln == 205 then
		updateYuri('1l','1r','a')
		yx = 0-40
		sx = 80
		mx = 200
		ch0t = 'Yuri'
		ch0a = '"We\'ll do our best."'
	elseif ch0ln == 206 then
		updateNatsuki('2l','2r','d')
		nx = 0 - 60
		yx = 30
		sx = 120
		mx = 220
		ch0t = 'Natsuki'
		ch0a = '"You know it!"'
	elseif ch0ln == 207 then
		ch0t = ''
		ch0a = "Everyone enthusiastically agrees."
    elseif ch0ln == 208 then 
		ch0a = "Such different girls, all interested in the same"
		ch0b = "goal..."
    elseif ch0ln == 209 then
		ch0a = "Monika must have worked really hard just to find "
		ch0b = "these three."
    elseif ch0ln == 210 then
		ch0a = "Maybe that's why they were all so delighted by "
		ch0b = "the idea of a new member joining."
	elseif ch0ln == 211 then
		ch0a = "Though I still don't really know if I can keep up "
		ch0b = "with their level of enthusiasm about literature..."
	elseif ch0ln == 212 then
		hideMonika()
		hideNatsuki()
		hideSayori()
		updateYuri('1l','1r','a')
		yx = 80
		ch0t = 'Yuri'
		ch0a = '"So, ' .. player .. ', what kinds of things do you like to '
		ch0b = 'read?"'
	elseif ch0ln == 213 then
		ch0t = player
		ch0a = '"Well... Ah..."'
	elseif ch0ln == 214 then
		ch0t = ''
		ch0a = "Considering how little I\'ve read these past few"
		ch0b = "years, I don\'t really have a good way of answering "
		ch0c = "that."
	elseif ch0ln == 215 then
		ch0t = player
		ch0a = '"...Manga..."'
	elseif ch0ln == 216 then
		ch0t = ''
		ch0a = "I mutter quietly to myself, half-joking."
	elseif ch0ln == 217 then
		nxh = nx
		nyh = ny
		updateNatsuki('1l','1r','c')
		nx = 0 - 50	
		ch0a = "Natsuki's head suddenly perks up."
	elseif ch0ln == 218 then
		ch0a = "It looks like she wants to say something, "
		ch0b = "but she keeps quiet."
	elseif ch0ln == 219 then
		hideNatsuki()
		updateYuri('2l','2r','u')
		ch0t = "Yuri"
		ch0a = '"N-Not much of a reader, I guess..."'
	elseif ch0ln == 220 then
		ch0t = player
		ch0a = '"...Well, that can change..."'
	elseif ch0ln == 221 then
		ch0t = ''
		ch0a = "What am I saying?"
	elseif ch0ln == 222 then
		ch0a = "I spoke without thinking after seeing Yuri's sad "
		ch0b = "smile."
	elseif ch0ln == 223 then
		ch0t = player
		ch0a = '"Anyway, what about you, Yuri?"'
	elseif ch0ln == 224 then
		updateYuri('1l','1r','l')
		ch0t = "Yuri"
		ch0a = '"Well, let\'s see..."'
	elseif ch0ln == 225 then
		ch0t = ''
		ch0a = "Yuri traces the rim of her teacup with her finger."
	elseif ch0ln == 226 then
		updateYuri('1l','1r','a')
		ch0t = "Yuri"
		ch0a = '"My favorites are usually novels that build deep '
		ch0b = 'and complex fantasy worlds."'
	elseif ch0ln == 227 then
		ch0a = '"The level of creativity and craftsmanship behind '
		ch0b = 'them is amazing to me."'
	elseif ch0ln == 228 then
		yc = 'f'
		ch0a = '"And telling a good story in such a foreign'
		ch0b = 'world is equally impressive."'
	elseif ch0ln == 229 then
		ch0t = ''
		ch0a = "Yuri goes on, clearly passionate about her reading."
	elseif ch0ln == 230 then
		ch0a = "She seemed so reserved and timid since the "
		ch0b = "moment I walked in, but it\'s obvious by the way "
		ch0c = "her eyes light up that she finds her comfort in the "
		ch0d = "world of books, not people."
	elseif ch0ln == 231 then
		updateYuri('1l','2r','m')
		ch0t = "Yuri"
		ch0a = '"But you know, I like a lot of things."'
	elseif ch0ln == 232 then
		ch0a = '"Stories with deep psychological elements '
		ch0b = 'usually immerse me as well."'
	elseif ch0ln == 233 then
		updateYuri('1l','2r','a')
		ch0a = '"Isn\'t it amazing how a writer can so '
		ch0b = 'deliberately take advantage of your own lack of '
		ch0c = 'imagination to completely throw you for a loop?"'
	elseif ch0ln == 234 then
		ch0a = '"Anyway, I\'ve been reading a lot of horror'
		ch0b = 'lately..."'
	elseif ch0ln == 235 then
		ch0t = player
		ch0a = '"Ah, I read a horror book once..."'
	elseif ch0ln == 236 then
		ch0t = ''
		ch0a = "I desperately grasp something I can relate to at "
		ch0b = "the minimal level."
	elseif ch0ln == 237 then
		ch0a = "At this rate, Yuri might as well be having a "
		ch0b = "conversation with a rock."
	elseif ch0ln == 238 then
		updateMonika('1l','1r','d')
		mx = 200
		ch0t = "Monika"
		ch0a = '"Really?  I wouldn\'t have expected that, Yuri."'	
	elseif ch0ln == 239 then
		ch0a = '"For someone as gentle as you..."'
	elseif ch0ln == 240 then
		yb = '1r'
		ch0t = "Yuri"
		ch0a = '"I guess you could say that."'
	elseif ch0ln == 241 then
		ch0a = '"But if a story makes me think,  or takes me to '
		ch0b = 'another world, then I really can\'t put it down."'
	elseif ch0ln == 242 then
		ch0a = '"Surreal horror is often very successful at '
		ch0b = 'changing the way you look at the world, if only '
		ch0c = 'for a brief moment."'
	elseif ch0ln == 243 then
		updateNatsuki('3','','q')
		nx = 0 - 40
		ch0t = "Natsuki"
		ch0a = '"Ugh, I hate horror..."'
	elseif ch0ln == 244 then
		updateYuri('1l','1r','f')
		ch0t = "Yuri"
		ch0a = '"Oh? Why\'s that?"'
	elseif ch0ln == 245 then
		updateNatsuki('3','','c')
		ch0t = "Natsuki"
		ch0a = '"Well, I just..."'
	elseif ch0ln == 246 then
		ch0t = ''
		ch0a = "Natsuki\'s eyes dart over to me for a split second."
	elseif ch0ln == 247 then
		updateNatsuki('3','','q')
		ch0t = "Natsuki"
		ch0a = '"Never mind."'
	elseif ch0ln == 248 then
		updateMonika('1l','1r','a')
		ch0t = "Monika"
		ch0a = '"That\'s right, you usually like to write about cute '
		ch0b = 'things, don\'t you, Natsuki?"'
	elseif ch0ln == 249 then
		updateNatsuki('1l','1r','o') 
		ch0t = "Natsuki"
		ch0a = '"W-What?"'
	elseif ch0ln == 250 then
		ch0a = '"What gives you that idea?"'
	elseif ch0ln == 251 then
		updateMonika('2l','1r','b')
		ch0t = "Monika"
		ch0a = '"You left a piece of scrap paper behind last club'
		ch0b = 'meeting."'
	elseif ch0ln == 252 then
		ch0a = '"It looked like you were working on a poem '
		ch0b = 'called--"'
	elseif ch0ln == 253 then
		updateNatsuki('1l','1r','p') 
		ch0t = "Natsuki"
		ch0a = '"Don\'t say it out loud!!"'
	elseif ch0ln == 254 then
		ch0a = '"And give that back!"'
	elseif ch0ln == 255 then
		updateMonika('1l','1r','j')
		ch0t = "Monika"
		ch0a = '"Fine, fine~"'
	elseif ch0ln == 256 then
		hideMonika()
		hideYuri()
		nx = 30
		sx = 0 - 60
		updateNatsuki('1l','1r','r')
		updateSayori('2l','2r','q')
		ch0t = "Sayori"
		ch0a = '"Ehehe, your cupcakes, your poems..."'
	elseif ch0ln == 257 then
		ch0a = '"Everything you do is just as cute as you are~"'
	elseif ch0ln == 258 then
		sx = 0
		updateNatsuki('1l','1r','r')
		ch0t = ''
		ch0a = "Sayori sidles up behind Natsuki and puts her hands "
		ch0b = "on her sholders"
	elseif ch0ln == 259 then
		updateNatsuki('1l','1r','v')
		ch0t = "Natsuki"
		ch0a = '"I\'m not cute!!"'
	elseif ch0ln == 260 then
		hideSayori()
		nx = 80
		ch0t = player
		ch0a = '"Natsuki, you write your own poems?"'
	elseif ch0ln == 261 then
		updateNatsuki('1l','1r','c')
		ch0t = "Natsuki"
		ch0a = '"Eh? Well, I guess sometimes."'
	elseif ch0ln == 262 then
		ch0a = "Why do you care?"
	elseif ch0ln == 263 then
		ch0t = player
		ch0a = '"I think that\'s impressive."'
	elseif ch0ln == 264 then
		ch0a = '"Why don\'t you share them sometime?"'
	elseif ch0ln == 265 then
		updateNatsuki('3','','q')
		ch0t = "Natsuki"
		ch0a = '"N-No!"'
	elseif ch0ln == 266 then
		ch0t = ''
		ch0a = "Natsuki averts her eyes."
	elseif ch0ln == 267 then
		ch0t = "Natsuki"
		ch0a = '"You wouldn\'t...like them..."'
	elseif ch0ln == 268 then
		ch0t = player
		ch0a = '"Ah...not a very confident writer yet?"'
	elseif ch0ln == 269 then
		updateYuri('1l','2r','f')
		yx = 0 - 40
		ch0t = "Yuri"
		ch0a = '"I understand how Natsuki feels."'
	elseif ch0ln == 270 then
		ch0a = '"Sharing that level of writing takes more than just '
		ch0b = 'confidence."'
	elseif ch0ln == 271 then
		updateYuri('1l','2r','l')
		ch0a = '"The truest form of writing is writing to oneself."'
	elseif ch0ln == 272 then
		ch0a = '"You must be willing to open up to your readers, '
		ch0b = 'exposing your vulnerabilities and showing even '
		ch0c = 'the deepest reaches of your heart."'
	elseif ch0ln == 273 then
		hideNatsuki()
		updateMonika('1l','2r','a')
		mx = 200
		ch0t = "Monika"
		ch0a = '"Do you have writing experience too, Yuri?"'
	elseif ch0ln == 274 then
		ch0a = '"Maybe if you share some of your work, you can '
		ch0b = 'set an example and help Natsuki feel comfortable '
		ch0c = 'enough to share hers."'
	elseif ch0ln == 275 then
		updateYuri('2l','2r','o')
		ch0t = "Yuri"
		ch0a = '"..."'
	elseif ch0ln == 276 then
		ch0t = player
		ch0a = '"I guess it\'s the same for Yuri..."'
	elseif ch0ln == 277 then
		updateSayori('1l','2r','g')
		sx = 80
		ch0t = "Sayori"
		ch0a = '"Aww... I wanted to read everyone\'s poems..."'
	elseif ch0ln == 278 then
		hideMonika()
		hideSayori()
		hideYuri()
		ch0t = ''
		ch0a = "We all sit in silence for a moment."
	elseif ch0ln == 279 then
		updateMonika('3a','','')
		mx = 80
		ch0t = "Monika"
		ch0a = '"Okay!"'
	elseif ch0ln == 280 then
		ch0a = '"I have an idea, everyone~"'
	elseif ch0ln == 281 then
		updateYuri('2l','2r','e')
		updateNatsuki('1l','2r','c')
		nx = 200
		yx = 0 - 40
		mx = 80
		ch0t = "Nat & Yuri"
		ch0a = '"...?"'
	elseif ch0ln == 282 then
		ch0t = ''
		ch0a = "Natsuki and Yuri look quizzically at Monika."
	elseif ch0ln == 283 then
		updateMonika('1l','2r','b')
		ch0t = "Monika"
		ch0a = '"Let\'s all go home and write a poem of our own!"'
	elseif ch0ln == 284 then
		ch0a = '"Then, next time we meet, we\'ll all share them '
		ch0b = 'with each other."'
	elseif ch0ln == 285 then
		ch0a = '"That way, everyone is even!"'
	elseif ch0ln == 286 then
		updateNatsuki('3','','q')
		ch0t = "Natsuki"
		ch0a = '"U-Um..."'
	elseif ch0ln == 287 then
		updateYuri('2l','2r','v')
		ch0t = "Yuri"
		ch0a = '"..."'
	elseif ch0ln == 288 then
		mx = 120
		nx = 220
		yx = 30
		updateSayori('2l','2r','r')
		sx = 0 - 60
		ch0t = "Sayori"
		ch0a = '"Yeaaah! Let\'s do it!"'
	elseif ch0ln == 289 then
		updateMonika('1l','1r','a')
		ch0t = "Monika"
		ch0a = '"Plus, now that we have a new member, I think '
		ch0b = 'it will help us all get a little more comfortable '
		ch0c = 'with each other, and strengthen the bond of the '
		ch0d = 'club."'
	elseif ch0ln == 290 then
		ch0a = '"Isn\'t that right, ' .. player .. '?"'
	elseif ch0ln == 291 then
		ch0t = ''
		ch0a = "Monika smiles warmly at me once again."
	elseif ch0ln == 292 then
		ch0t = player
		ch0a = '"Hold on...there\'s still one problem."'
	elseif ch0ln == 293 then
		mc = 'd'
		ch0t = "Monika"
		ch0a = '"Eh? What\'s that?"'
	elseif ch0ln == 294 then
		ch0t = ''
		ch0a = "Now that we\'re back to the original topic of me "
		ch0b = "joining the club, I bluntly come forth with what\'s "
		ch0c = "been on my mind the entire time."
	elseif ch0ln == 295 then
		ch0t = player
		ch0a = '"I never said I would join this club!"'
	elseif ch0ln == 296 then
		ch0a = '"Sayori may have convinced me to stop by, but I '
		ch0b = 'never made any decision."'
	elseif ch0ln == 297 then
		ch0a = '"I still have other clubs to look at, and...um..."'
	elseif ch0ln == 298 then
		updateMonika('1l','1r','g')
		updateYuri('1l','2r','e')
		updateSayori('1l','1r','g')
		updateNatsuki('2l','2r','g')
		ch0t = ''
		ch0a = "I lose my train of thought."
	elseif ch0ln == 299 then
		ch0a = "All four girls stare back at me with dejected eyes."
	elseif ch0ln == 300 then
		updateMonika('1l','1r','p')
		ch0t = "Monika"
		ch0a = '"B-But..."'
	elseif ch0ln == 301 then
		updateYuri('1l','2r','v')
		ch0t = "Yuri"
		ch0a = '"I\'m sorry, I thought..."'
	elseif ch0ln == 302 then
		updateNatsuki('3','','s')
		ch0t = "Natsuki"
		ch0a = '"Hmph."'
	elseif ch0ln == 303 then
		updateSayori('1l','1r','k')
		ch0t = "Sayori"
		ch0a = '"' .. player .. '..."'
	elseif ch0ln == 304 then
		ch0t = player
		ch0a = '"Y-You all..."'
	elseif ch0ln == 305 then
		ch0t = ''
		ch0a = "I...I\'m defenseless against these girls."
	elseif ch0ln == 306 then
		ch0a = "How am I supposed to make a clear-headed "
		ch0b = "decision when it\'s like this?"
	elseif ch0ln == 307 then
		ch0a = "That is, if writing poems is the price I "
		ch0b = "need to pay in order to spend every day "
		ch0c = "with these beautiful girls..."
	elseif ch0ln == 308 then
		ch0t = player
		ch0a = '"...Right."'
	elseif ch0ln == 309 then
		ch0a = '"Okay, I\'ve decided, then."'
	elseif ch0ln == 310 then
		ch0a = '"I\'ll join the Literature Club."'
	elseif ch0ln == 311 then
		updateMonika('1l','1r','e')
		updateNatsuki('1l','1r','c')
		updateSayori('2l','2r','b')
		updateYuri('2l','2r','f')
		ch0t = ''
		ch0a = "One by one, the girls\' eyes light up."
	elseif ch0ln == 312 then
		updateSayori('2l','2r','r')
		ch0t = "Sayori"
		ch0a = '"Yesss! I\'m so happyyy~"'
	elseif ch0ln == 313 then
		ch0t = ''
		ch0a = "Sayori wraps her arms around me, jumping "
		ch0b = "up and down."
	elseif ch0ln == 314 then
		ch0t = player
		ch0a = '"H-Hey-"'
	elseif ch0ln == 315 then
		updateYuri('1l','1r','m')
		ch0t = "Yuri"
		ch0a = '"You really did scare me for a moment..."'
	elseif ch0ln == 316 then
		updateNatsuki('3','','q')
		ch0t = "Natsuki"
		ch0a = '"If you really just came for the cupcakes,'
		ch0b = 'I would be super pissed."'
	elseif ch0ln == 317 then
		updateMonika('3a','','')
		ch0t = "Monika"
		ch0a = '"Then that makes it official!"'
	elseif ch0ln == 318 then
		ch0a = '"Welcome to the Literature Club!"'
	elseif ch0ln == 319 then
		ch0t = player
		ch0a = '"Ah...thanks, I guess."'
	elseif ch0ln == 320 then
		hideNatsuki()
		hideSayori()
		hideYuri()
		mx = 80
		updateMonika('2l','1r','b')
		ch0t = "Monika"
		ch0a = '"Okay, everyone!"'
	elseif ch0ln == 321 then
		ch0a = '"I think with that, we can officially '
		ch0b = 'end today\'s meeting on a good note."'
	elseif ch0ln == 322 then
		ch0a = '"Everyone remember tonight\'s assignment."'
	elseif ch0ln == 323 then
		ch0a = '"Write a poem to bring to the next meeting, '
		ch0b = 'so we can all share!"'
	elseif ch0ln == 324 then
		ch0t = ''
		ch0a = "Monika looks over at me once more."
	elseif ch0ln == 325 then
		updateMonika('1l','1r','a')
		ch0t = "Monika"
		ch0a = '"' .. player .. ', I look forward to seeing how you '
		ch0b = 'express yourself."'
	elseif ch0ln == 326 then
		updateMonika('3a','','')
		ch0a = '"Ehehe~"'
	elseif ch0ln == 327 then
		ch0t = player
		ch0a = '"Y-Yeah..."'
	elseif ch0ln == 328 then
		hideMonika()
		ch0t = ''
		ch0a = "Can I really impress the class star Monika "
		ch0b = "with my mediocre writing skills?"
	elseif ch0ln == 329 then
		ch0a = "I already feel the anxiety welling up "
		ch0b = "inside me..."
	elseif ch0ln == 330 then
		ch0a = "Meanwhile, the girls continue to chit-chat "
		ch0b = "as Yuri and Natsuki clean up their food."
	elseif ch0ln == 331 then
		updateSayori('1l','1r','a')
		sx = 80
		ch0t = "Sayori"
		ch0a = '"Hey, ' .. player .. ', since we\'re already '
		ch0b = 'here, do you want to walk home together?"'
	elseif ch0ln == 332 then
		ch0t = ''
		ch0a = "That\'s right--Sayori and I never walk home "
		ch0b = "together anymore because she always stayed "
		ch0c = "after school for clubs."
	elseif ch0ln == 333 then
		ch0t = player
		ch0a = '"Sure, might as well."'
	elseif ch0ln == 334 then
		updateSayori('2l','2r','q')
		ch0t = "Sayori"
		ch0a = '"Yaay~"'
	elseif ch0ln == 335 then
		hideSayori()
		ch0t = ''
		ch0a = "With that, the two of us depart the "
		ch0b = "clubroom and make our way home."
	elseif ch0ln == 336 then
		ch0a = "The whole way, my mind wanders back and "
		ch0b = "forth between the four girls:"
	elseif ch0ln == 337 then
		updateSayori('1l','1r','a')
		sx = 0 - 60
		ch0a = "Sayori,"
	elseif ch0ln == 338 then
		nxh = nx
		nyh = ny
		updateNatsuki('2l','2r','a')
		nx = 30
		ch0a = "Natsuki,"
	elseif ch0ln == 339 then
		updateYuri('1l','1r','a')
		yx = 120
		ch0a = "Yuri,"
	elseif ch0ln == 340 then
		updateMonika('1l','1r','a')
		mx = 220
		ch0a = "and, of course, Monika."
	elseif ch0ln == 341 then
		ch0a = "Will I really be happy spending every "
		ch0b = "day after school in a literature club?"
	elseif ch0ln == 342 then
		ch0a = "Perhaps I\'ll have the chance to grow "
		ch0b = "closer to one of these girls..."
	elseif ch0ln == 343 then
		hideMonika()
		hideYuri()
		hideNatsuki()
		hideSayori()
		ch0a = "Alright!"
	elseif ch0ln == 344 then
		ch0a = "I\'ll just need to make the most of my "
		ch0b = "circumstances, and I\'m sure good "
		ch0c = "fortune will find me."
	elseif ch0ln == 345 then
		ch0a = "And I guess that starts with writing a "
		ch0b = "poem tonight..."
	elseif ch0ln == 346 then
		ch0ln = 346
		splashalpha(4)
		
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
	end 
	
	if ch0ln == 10001 then
		updateSayori('1l','1r','b')
		ch0t = 'Sayori'
		ch0a = '"..."'
	elseif ch0ln == 10002 then 
		ch0a = '"..."'
	elseif ch0ln == 10003 then 
		ch0a = '"W-What..."'
	elseif ch0ln == 10004 then 
		sc = 'g' 
		ch0a = '"..."'
	elseif ch0ln == 10005 then 
		ch0a = '"This..."'
	elseif ch0ln == 10006 then 
		ch0a = '"What is this...?"'
	elseif ch0ln == 10007 then 
		ch0a = '"Oh no..."'
	elseif ch0ln == 10008 then 
		sc = 'u' 
		ch0a = '"No..."'
	elseif ch0ln == 10009 then 
		ch0a = '"This can\'t be it."'
	elseif ch0ln == 10010 then 
		ch0a = '"This can\'t be all there is."'
	elseif ch0ln == 10011 then 
		updateSayori('2l','2r','w')
		ch0a = '"What is this?"'
	elseif ch0ln == 10012 then 
		ch0a = '"What am I?"'
	elseif ch0ln == 10013 then 
		ch0a = '"Make it stop!"'
	elseif ch0ln == 10014 then 
		ch0a = '"PLEASE MAKE IT STOP!"'
	elseif ch0ln == 10015 then 
		file = io.open("save.txt", "w")
		file:write('10000')
		file:close()
		love.event.quit()
	end
	
	if ch0ln == 10016 then --NEW GAME
		ch0a = 'This is an unofficial port of Doki Doki Literature'
		ch0b = 'Club. If you are using a New 3DS/2DS and have'
		ch0c = 'CFW, turn off L2 Cache. If you don\'t have CFW,'
		ch0d = 'then you\'re kinda out of luck until a fix is found.'
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
		ch0ln = 10020
		if timer == 1001 then sfx1play()
		elseif timer == 1150 then
			file = io.open("save.txt", "w")
			file:write('1')
			file:close()
			resetchr()
			love.graphics.setBackgroundColor(255,255,255)
			alpha = 0
			ch0ln = 1
			fileContent = 1
			audioUpdate('1')
			timer = 0
			state = 'splash1'
		 end
	
	end
	
end	

--script dependent functions are also added here

function bgCheck() --background changes
	if ch0ln <= 46 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/residential.png')
	elseif ch0ln <= 82 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/class.png')
	elseif ch0ln <= 85 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/corridor.png')
	elseif ch0ln <= 334 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/club.png')
	elseif ch0ln <= 346 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/residential.png')
	elseif ch0ln <= 10015 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/residential.png')
	elseif ch0ln <= 10019 then
		bgch = love.graphics.newImage('./images/bg/warning.png')
	elseif ch0ln == 10020 then
		bgch = love.graphics.newImage('./images/bg/warning2.png')
	end
	
end

function audioCheck() --audio changes
	if audio1 == 1 then
		if ch0ln <= 82 then 
			audioUpdate('2')
			audio1 = 0
		elseif ch0ln <= 85 then
			audioUpdate('0')
			audio1 = 0
		elseif ch0ln <= 346 then
			audioUpdate('3')
			audio1 = 0
		end
	end
end