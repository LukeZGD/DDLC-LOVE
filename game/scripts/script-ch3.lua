function ch3script()
	if cl == 1977 then
		bgUpdate('club')
		audioUpdate('3')
		updateMonika('1','g',-40)
		cw('m',"Aw, man...")
	elseif cl == 1978 then
		cw('m',"I'm the last one here again!")
	elseif cl == 1979 then
		cw('mc',"Don't worry, I just walked in too.")
	elseif cl == 1980 then
		updateYuri('1','f',80)
		cw('y',"Were you practicing piano again?")
	elseif cl == 1981 then
		updateMonika('1','l')
		cw('m',"Yeah...")
	elseif cl == 1982 then
		cw('m',"Ahaha...")
    elseif cl == 1983 then
		updateYuri('1','m')
		cw('y',"You must have a lot of determination.")
	elseif cl == 1984 then
		cw('y',"Starting this club, and now picking up piano...")
	elseif cl == 1985 then
		updateYuri('1','a')
		updateMonika('1','a')
		cw('m',"Well, maybe not determination...")
	elseif cl == 1986 then
		cw('m',"But I guess passion.")
	elseif cl == 1987 then
		cw('m',"Remember that the club wouldn't be here if it wasn't for all of you.")
	elseif cl == 1988 then
		updateMonika('1','b')
		cw('m',"And I'm super happy that you're all willing to help out for the festival, too!")
	elseif cl == 1989 then
		updateNatsuki('1','z',200)
		cw('n',"Aaah, I can't wait for the festival!")
	elseif cl == 1990 then
		cw('n',"It's gonna be great!")
	elseif cl == 1991 then
		updateMonika('1','d')
		cw('m',"Eh?")
	elseif cl == 1992 then
		cw('m',"Weren't you complaining about it just yesterday, Natsuki?")
	elseif cl == 1993 then
		updateNatsuki('2','a')
		cw('n',"Well, yeah.")
	elseif cl == 1994 then
		cw('n',"I'm not talking about our part of the festival.")
	elseif cl == 1995 then
		updateNatsuki('4','l')
		cw('n',"But it's a whole day of school where we get to play and eat all kinds of delicious food!")
	elseif cl == 1996 then
		cw('mc',"You sound a bit like Sayori all of a sudden...")
	elseif cl == 1997 then
		updateNatsuki('4','a')
		cw('n',"Monika! Do they usually have fried squid?")
	elseif cl == 1998 then
		updateMonika('2','a')
		cw('m',"Squid...?")
	elseif cl == 1999 then
		cw('m',"That's a pretty specific thing to look forward to...")
	elseif cl == 2000 then
		updateNatsuki('2','k')
		cw('n',"Oh, come on.")
	elseif cl == 2001 then
		cw('n',"Are you saying you don't like squid?")
	elseif cl == 2002 then
		cw('n',"You, of all people?")
	elseif cl == 2003 then
		updateMonika('1','d')
		cw('m',"Eh? I didn't say I don't like it.")
	elseif cl == 2004 then
		cw('m',"Besides, what do you mean by 'you of all people'?")
	elseif cl == 2005 then
		updateNatsuki('1','d')
		cw('n',"Because!")
	elseif cl == 2006 then
		cw('n',"It's right in your name!")
	elseif cl == 2007 then
		updateNatsuki('4','z')
		cw('n',"Mon-ika!")
	elseif cl == 2008 then
		updateMonika('5b')
		cw('m',"Eh?!")
	elseif cl == 2009 then
		cw('m',"That's not how you say my name at all!")
	elseif cl == 2010 then
		cw('m',"Also, that joke makes no sense in translation!")
	elseif cl == 2011 then
		updateNatsuki('4','m')
		cw('n',"...?")
	elseif cl == 2012 then
		updateMonika('4','l')
		cw('m',"Ah...never mind!")
	elseif cl == 2013 then
		cw('m',"Let's just focus on our own event for now, okay?")
	elseif cl == 2014 then
		updateNatsuki('2','a')
		cw('n',"Ehehe.")
	elseif cl == 2015 then
		cw('n',"Fine, fine.")
	elseif cl == 2016 then
		cw('n',"Your reactions aren't as fun as Yuri's or Sayori's, anyway.")
	elseif cl == 2017 then
		updateYuri('2','h')
		cw('y',"Excuse me...")
	elseif cl == 2018 then
		cw('mc',"Where is Sayori, anyway...?")
	elseif cl == 2019 then
		cw('mc',"Oh, there you are.")
	elseif cl == 2020 then
		hideMonika()
		hideYuri()
		hideNatsuki()
		cw('bl',"Sayori is sitting at a desk in the corner of the room, looking down at nothing.")
	elseif cl == 2021 then
		cw('bl',"I walk over to her.")
	elseif cl == 2022 then
		cw('bl',"Hey, Sayori.")
	elseif cl == 2023 then
		updateSayori('1','k',80)
		cw('bl',"I wave my hand in front of her face.")
	elseif cl == 2024 then
		updateSayori('1','n')
		cw('s',"Eh--?")
	elseif cl == 2025 then
		cw('mc',"You're spacing out again.")
	elseif cl == 2026 then
		cw('s',"A-Ah...")
	elseif cl == 2027 then
		updateSayori('4','l')
		cw('s',"Ehehe, sorry...")
	elseif cl == 2028 then
		cw('s',"Don't mind me.")
	elseif cl == 2029 then --it's the magic number!
		updateSayori('4','y')
		cw('s',"You can go talk to everyone else.")
	elseif cl == 2030 then
		cw('mc',"Huh...")
	elseif cl == 2031 then
		cw('mc',"Is everything alright?")
	elseif cl == 2032 then
		updateSayori('1','h')
		cw('s',"O-Of course!")
	elseif cl == 2033 then
		cw('s',"Why wouldn't it be?")
	elseif cl == 2034 then
		cw('mc',"It just feels like you're a little off...")
	elseif cl == 2035 then
		cw('mc',"Sorry for assuming things.")
	elseif cl == 2036 then
		cw('s',"Jeez, you worry too much about me.")
	elseif cl == 2037 then
		updateSayori('4','r')
		cw('s',"I'm fine, see?")
	elseif cl == 2038 then
		cw('bl',"Sayori shows me a big smile.")
	elseif cl == 2039 then
		updateSayori('1','a')
		cw('s',"Don't let me distract you from having fun with everyone.")
	elseif cl == 2040 then
		cw('mc',"Well...alright.")
	elseif cl == 2041 then
		cw('mc',"If you say so.")
	elseif cl == 2042 then
		hideSayori()
	elseif cl == 2043 then
		cw('bl',"I worriedly glance at Sayori before turning back toward everyone else.")
	elseif cl == 2044 then
		cw('bl',"But the conversation has already dispersed, with everyone back at their usual activities.")
	elseif cl == 2045 then
		cw('bl',"Maybe I should ask Monika if she's noticed anything about Sayori recently...")
	elseif cl == 2046 then
		cw('bl',"Since they've been preparing for the festival, they must be spending a lot of time together.")
	elseif cl == 2047 then
		cw('bl',"I timidly approach Monika, who is shuffling through some papers at her desk.")
	elseif cl == 2048 then
		updateMonika('2','b',80)
		cw('m',player.."! What's up?")
	elseif cl == 2049 then
		cw('mc',"Hey, this might sound a little strange, but...")
	elseif cl == 2050 then
		cw('mc',"Have you noticed anything up with Sayori recently?")
	elseif cl == 2051 then
		updateMonika('1','d')
		cw('m',"Anything up with her...?")
	elseif cl == 2052 then
		cw('m',"In what way do you mean?")
	elseif cl == 2053 then
		cw('mc',"Maybe I'm reading into it a little too much, but she seems a bit downcast today...")
	elseif cl == 2054 then
		cw('m',"Oh? You think so?")
	elseif cl == 2055 then
		cw('m',"I can't say I've noticed anything about her...")
	elseif cl == 2056 then
		cw('bl',"Monika peers across the room at Sayori, who is idly dragging a rubber eraser up and down her desk.")
	elseif cl == 2057 then
		cw('m',"Maybe there is something on her mind...")
	elseif cl == 2058 then
		updateMonika('2','a')
		cw('m',"But I'm surprised I'm not the one asking you, "..player..".")
	elseif cl == 2059 then
		cw('m',"You certainly know her a lot better than I do.")
	elseif cl == 2060 then
		cw('mc',"Yeah, but she's never really like this...")
	elseif cl == 2061 then
		cw('mc',"She's always talked to me about things that bothered her.")
	elseif cl == 2062 then
		cw('mc',"But this time, when I asked her, she was really dismissive.")
	elseif cl == 2063 then
		cw('mc',"...Sorry, I know it's not your problem!")
	elseif cl == 2064 then
		cw('mc',"I just wanted to ask if you knew anything, so I'll drop it now...")
	elseif cl == 2065 then
		updateMonika('1','g')
		cw('m',"No, no...")
	elseif cl == 2066 then
		cw('m',"It's important to me, too.")
	elseif cl == 2067 then
		updateMonika('1','e')
		cw('m',"I mean, I'm also friends with her...")
	elseif cl == 2068 then
		cw('m',"And I also care about the well-being of my club members, you know?")
	elseif cl == 2069 then
		updateMonika('1','i')
		cw('m',"Maybe I'll try talking to her myself...")
	elseif cl == 2070 then
		cw('mc',"Eh? Are you sure about that...?")
	elseif cl == 2071 then
		cw('mc',"She seemed like she wanted to be left alone...")
	elseif cl == 2072 then
		cw('m',"Are you sure?")
	elseif cl == 2073 then
		cw('m',"Maybe she just has a hard time bringing it up with the person of interest...")
	elseif cl == 2074 then
		cw('mc',"Person of interest...?")
	elseif cl == 2075 then
		cw('mc',"What do you mean by that?")
	elseif cl == 2076 then
		updateMonika('2','e')
		cw('m',"I'm saying that maybe the thing on her mind is you, "..player..".")
	elseif cl == 2077 then
		cw('mc',"Me...?")
	elseif cl == 2078 then
		cw('mc',"How on Earth would you come to that conclusion?")
	elseif cl == 2079 then
		updateMonika('1','j')
		cw('m',"Well...")
	elseif cl == 2080 then
		cw('m',"I probably shouldn't say too much, but...")
	elseif cl == 2081 then
		updateMonika('1','a')
		cw('m',"Sayori talks about you more than anything else, you know?")
	elseif cl == 2082 then
		cw('mc',"Eh...?")
	elseif cl == 2083 then
		cw('m',"She's been so much happier ever since you've joined the club.")
	elseif cl == 2084 then
		cw('m',"It's like an extra light was turned on inside of her.")
	elseif cl == 2085 then
		cw('mc',"What?")
	elseif cl == 2086 then
		cw('mc',"No way...")
	elseif cl == 2087 then
		cw('mc',"Sayori...is always like that.")
	elseif cl == 2088 then
		cw('mc',"She's always been full of sunshine.")
	elseif cl == 2089 then
		cw('mc',"It's not any different now than it always has been.")
	elseif cl == 2090 then
		updateMonika('5a')
		cw('m',"Ehehe.")
	elseif cl == 2091 then
		cw('m',"You're so funny, "..player..".")
	elseif cl == 2092 then
		cw('m',"Have you thought that maybe you've always seen her as so cheerful...")
	elseif cl == 2093 then
		cw('m',"...because that's just how she is when she's around you?")
	elseif cl == 2094 then
		cw('mc',"...")
	elseif cl == 2095 then
		updateMonika('1','n')
		cw('m',"Ah...I said too much.")
	elseif cl == 2096 then
		cw('m',"I'm sorry...what do I know, anyway?")
	elseif cl == 2097 then
		updateMonika('1','a')
		cw('m',"I didn't mean to jump to conclusions, so you should just forget about what I said.")
	elseif cl == 2098 then
		cw('m',"I'll try to talk to her, so try not to think about it for now.")
	elseif cl == 2099 then
		cw('mc',"Ah...")
	elseif cl == 2100 then
		cw('mc',"Alright...")
	elseif cl == 2101 then
		cw('bl',"Monika smiles meaningfully.")
	elseif cl == 2102 then
		cw('bl',"I know she said to forget about it...")
	elseif cl == 2103 then
		cw('bl',"But I already know that I won't be able to get her words out of my head.")
	elseif cl == 2104 then
		hideMonika()
		cw('bl',"Monika stands up from her desk and walks across the room to where Sayori is sitting.")
	elseif cl == 2105 then
		cw('bl',"I watch her kneel down next to Sayori and gently talk to her.")
	elseif cl == 2106 then
		cw('bl',"But she's keeping her voice so quiet that I can't hear her from here.")
	elseif cl == 2107 then
		cw('bl',"I sigh and sit myself down.")
	elseif cl == 2108 then
		cw('bl',"I know Sayori told me not to worry about her, and to have fun with everyone else...")
	elseif cl == 2109 then
		cw('bl',"But that's impossible to do when she's behaving like this.")
	elseif cl == 2110 then
		cw('bl',"Exactly how much do I care about her, that I'm letting this weigh me down so much?")
	elseif cl == 2111 then
		cw('bl',"Now it feels like I'm the one behaving out of the ordinary...")
	elseif cl == 2112 then
		cw('bl',"But there's nothing I can do besides wait for Monika.")
	elseif cl == 2113 then
		scriptJump(1)
	elseif cl < 1977 then
		if Natsuki_appeal == 0 and Yuri_appeal == 0 then
			ch3_start_none()
		elseif Natsuki_appeal > 1 then
			ch3_start_natsuki()
		elseif Yuri_appeal > 1 then
			ch3_start_yuri()
		elseif poemwinner[2] == "Natsuki" then
			ch3_start_natsuki()
		elseif poemwinner[2] == "Yuri" then
			ch3_start_yuri()
		elseif poemwinner[1] == "Natsuki" then
			ch3_start_natsuki()
		elseif poemwinner[1] == "Yuri" then
			ch3_start_yuri()
		else
			ch3_start_none()
		end
	elseif cl > 2113 then
		ch3_end()
	end
end

function ch3_start_natsuki()
	if cl == 1 then
		audioUpdate('6')
		updateNatsuki('3','c',80)
		cw('n',"Hey, you.")
	elseif cl == 2 then
		cw('mc',"Eh?")
	elseif cl == 3 then
		cw('bl',"I look up to see Natsuki next to me.")
	elseif cl == 4 then
		cw('n',"Are you just gonna sit there and keep staring at nothing?")
	elseif cl == 5 then
		cw('n',"There isn't that much time, so...")
	elseif cl == 6 then
		cw('mc',"Ah, sorry.")
	elseif cl == 7 then
		cw('mc',"I didn't mean to make you worry or anything.")
	elseif cl == 8 then
		updateNatsuki('1','q')
		cw('n',"I-It's not like I'm worried!")
	elseif cl == 9 then
		cw('n',"I was just...")
	elseif cl == 10 then
		cw('bl',"Natsuki glances down at her side.")
	elseif cl == 11 then
		cw('bl',"She's holding a volume of manga in her hand.")
	elseif cl == 12 then
		cw('mc',"That's right...")
	elseif cl == 13 then
		cw('mc',"Something just came up for a minute, but we can get started now.")
	elseif cl == 14 then
		cw('mc',"I won't make you wait any longer.")
	elseif cl == 15 then
		updateNatsuki('5','n')
		cw('n',"Jeez...")
	elseif cl == 16 then
		cw('n',"Now you're making me feel like a jerk.")
	elseif cl == 17 then
		cw('n',"If something's bothering you, then you can just tell me to leave you alone, and I will.")
	elseif cl == 18 then
		updateNatsuki('5','u')
		cw('n',"I mean...")
	elseif cl == 19 then
		cw('n',"Assuming you didn't feel like talking about it or anything...")
	elseif cl == 20 then
		cw('bl',"She practically mumbles that last part.")
	elseif cl == 21 then
		cw('mc',"Nah...I'm probably making it seem like a bigger deal than it is.")
	elseif cl == 22 then
		cw('mc',"I've just been thinking about Sayori, that's all.")
	elseif cl == 23 then
		updateNatsuki('1','p')
		cw('n',"S-Sayori...?")
	elseif cl == 24 then
		cw('n',"Thinking about her...?")
	elseif cl == 25 then
		cw('mc',"Yeah, she seems pretty down today.")
	elseif cl == 26 then
		cw('mc',"But she didn't want to admit it to me.")
	elseif cl == 27 then
		cw('mc',"So I can't help but wonder if something happened to her.")
	elseif cl == 28 then
		updateNatsuki('1','q')
		cw('n',"Oh...")
	elseif cl == 29 then
		cw('bl',"Natsuki exhales.")
	elseif cl == 30 then
		updateNatsuki('4','w')
		cw('n',"Well, first of all...")
	elseif cl == 31 then
		cw('n',"You should really work on your phrasing!")
	elseif cl == 32 then
		updateNatsuki('4','c')
		cw('n',"But anyway...")
	elseif cl == 33 then
		cw('n',"You're her best friend, right?")
	elseif cl == 34 then
		cw('mc',"Yeah, I guess so...")
	elseif cl == 35 then
		cw('n',"Yeah.")
	elseif cl == 36 then
		updateNatsuki('3','k')
		cw('n',"Then in that case, I think you should trust her a little more.")
	elseif cl == 37 then
		cw('n',"If she needed you, then you would be the first person she would go to, right?")
	elseif cl == 38 then
		cw('mc',"Well... I guess that's true.")
	elseif cl == 39 then
		updateNatsuki('3','c')
		cw('n',"I mean, some people just have those days.")
	elseif cl == 40 then
		cw('n',"You can't always avoid it.")
	elseif cl == 41 then
		cw('n',"If anything, she probably doesn't want you to worry about her because it's not important.")
	elseif cl == 42 then
		cw('mc',"Yeah, that's kind of what she said to me...")
	elseif cl == 43 then
		cw('mc',"Maybe it's not right for me to go against her wishes.")
	elseif cl == 44 then
		updateNatsuki('3','a')
		cw('n',"Exactly.")
	elseif cl == 45 then
		cw('n',"If she needs you to worry about her, then it'll be a lot more obvious.")
	elseif cl == 46 then
		cw('mc',"Yeah...")
	elseif cl == 47 then
		cw('mc',"I should have thought of it that way from the start.")
	elseif cl == 48 then
		updateNatsuki('3','q')
		cw('bl',"Natsuki fiddles with the book she's holding in her hands.")
	elseif cl == 49 then
		updateNatsuki('1','q')
		cw('n',"She...")
	elseif cl == 50 then
		cw('n',"She really means a lot to you, doesn't she...?")
	elseif cl == 51 then
		cw('mc',"Ah--")
	elseif cl == 52 then
		cw('mc',"Don't get the wrong idea or anything...!")
	elseif cl == 53 then
		cw('mc',"We've just been friends for a long time.")
	elseif cl == 54 then
		cw('mc',"It's normal to be worried about your friends.")
	elseif cl == 55 then
		cw('mc',"I mean, you were worried about me, so--")
	elseif cl == 56 then
		updateNatsuki('4','w')
		cw('n',"I was not!!")
	elseif cl == 57 then
		cw('n',"Jeez...if you're fine, then let's hurry and get started already!")
	elseif cl == 58 then
		cw('mc',"Yeah, yeah...")
	elseif cl >= 59 then
		if n_exclusivewatched ~= 'true' and poemwinner[3] == "Natsuki" then
			scriptJump(1364)
		else
			ch3_start_none()
		end
	end
end

function ch3_start_yuri()
	if cl == 1 then
		cw('bl',"Why does it feel like I'm being watched...?")
	elseif cl == 2 then
		cw('bl',"I glance around the room.")
	elseif cl == 3 then
		updateYuri('2','t',80)
		cw('bl',"Suddenly, I notice Yuri peering at me from over her book.")
	elseif cl == 4 then
		updateYuri('4','b2')
		cw('bl',"But she looks away just as quickly with a flustered look on her face.")
	elseif cl == 5 then
		cw('bl',"I realize that she won't get anywhere like this.")
	elseif cl == 6 then
		cw('bl',"I've never really seen Yuri approach anyone or start a conversation on her own accord.")
	elseif cl == 7 then
		cw('bl',"So, I have no choice but to approach her myself.")
	elseif cl == 8 then
		cw('bl',"By now, it's a little easier for me to do that.")
	elseif cl == 9 then
		cw('bl',"I stand up from my desk and sit in one next to her own.")
	elseif cl == 10 then
		audioUpdate('6')
		updateYuri('2','v')
		cw('y',"...")
	elseif cl == 11 then
		cw('y',"I...didn't mean to bother you or anything...")
	elseif cl == 12 then
		cw('mc',"Relax, you didn't even do anything.")
	elseif cl == 13 then
		cw('y',"But...")
	elseif cl == 14 then
		cw('y',"I could tell that you wanted to be alone with your thoughts...")
	elseif cl == 15 then
		cw('mc',"Alone with my thoughts...?")
	elseif cl == 16 then
		cw('mc',"How were you even able to tell that I was thinking like that?")
	elseif cl == 17 then
		updateYuri('1','t')
		cw('y',"Well...")
	elseif cl == 18 then
		cw('y',"It's something that I do a lot...")
	elseif cl == 19 then
		cw('y',"So it wasn't hard for me to spot based on your posture and expression.")
	elseif cl == 20 then
		updateYuri('3','o')
		cw('y',"N-Not that I was staring or anything...!")
	elseif cl == 21 then
		cw('y',"I didn't do anything creepy like that...!")
	elseif cl == 22 then
		cw('mc',"In any case, I guess you were right.")
	elseif cl == 23 then
		cw('mc',"I'm sorry if I caused you any concern.")
	elseif cl == 24 then
		updateYuri('1','s')
		cw('y',"Don't apologize...")
	elseif cl == 25 then
		cw('y',"Your troubles are only the concern of those who willingly share in that concern.")
	elseif cl == 26 then
		cw('y',"Of course, there are certainly those who find the most comfort in keeping to themselves...")
	elseif cl == 27 then
		cw('y',"But if you would prefer to share what's on your mind, then I would be glad to listen.")
	elseif cl == 28 then
		cw('mc',"Ah, it's really not that big of a deal...")
	elseif cl == 29 then
		cw('mc',"I was just feeling a bit uneasy about Sayori.")
	elseif cl == 30 then
		updateYuri('2','t')
		cw('y',"Sayori...?")
	elseif cl == 31 then
		cw('mc',"Yeah...she seems a little off today, but when I asked her about it, she didn't want to admit it to me.")
	elseif cl == 32 then
		cw('mc',"So I can't help but wonder if something happened to her.")
	elseif cl == 33 then
		updateYuri('3','u')
		cw('y',"Oh?")
	elseif cl == 34 then
		cw('y',"That's quite romantic...")
	elseif cl == 35 then
		cw('mc',"Eh...?")
	elseif cl == 36 then
		updateYuri('4','c2')
		cw('y',"S-Sorry!")
	elseif cl == 37 then
		cw('y',"I didn't mean to say something stupid...!")
	elseif cl == 38 then
		cw('mc',"It's not that, I just didn't want you to misunderstand.")
	elseif cl == 39 then
		cw('mc',"Sayori and I have just been friends for a long time, that's all.")
	elseif cl == 40 then
		updateYuri('2','l')
		cw('y',"Ah...I see...")
	elseif cl == 41 then
		updateYuri('2','f')
		cw('y',"Then perhaps it is unusual for her to be dismissive to you about her feelings...")
	elseif cl == 42 then
		cw('mc',"Or maybe I'm just reading into it a little too much...")
	elseif cl == 43 then
		updateYuri('1','u')
		cw('y',player.."...")
	elseif cl == 44 then
		cw('y',"The world is full of meaning, often hidden deep beneath plain sight.")
	elseif cl == 45 then
		updateYuri('1','s')
		cw('y',"And there are many untold mysteries behind every person, no matter how well you may know them.")
	elseif cl == 46 then
		cw('mc',"Ah...")
	elseif cl == 47 then
		cw('mc',"So you think that there might be something behind it after all?")
	elseif cl == 48 then
		updateYuri('1','l')
		cw('y',"Mm...")
	elseif cl == 49 then
		cw('y',"I think that Sayori is a very complex person.")
	elseif cl == 50 then
		updateYuri('1','h')
		cw('y',"Her mannerisms on the outside don't always match what may be going on inside her head...")
	elseif cl == 51 then
		cw('y',"And she may not always know what she wants.")
	elseif cl == 52 then
		cw('y',"I noticed her strange behavior today, too...")
	elseif cl == 53 then
		cw('y',"And I also feel some concern for her.")
	elseif cl == 54 then
		updateYuri('1','f')
		cw('y',"But in your case, it looked like she was fully occupying your thoughts, wasn't she?")
	elseif cl == 55 then
		cw('mc',"Well...")
	elseif cl == 56 then
		cw('mc',"I guess that was the case.")
	elseif cl == 57 then
		updateYuri('3','u')
		cw('y',"Sayori...")
	elseif cl == 58 then
		cw('y',"She really...means a lot to you, doesn't she?")
	elseif cl == 59 then
		cw('mc',"Ah--I...I guess...")
	elseif cl == 60 then
		cw('mc',"But you don't need to put it that way!")
	elseif cl == 61 then
		cw('mc',"We're just good friends, that's all...")
	elseif cl == 62 then
		updateYuri('2','t')
		cw('y',"...")
	elseif cl == 63 then
		cw('bl',"Yuri suddenly looks deeply into my eyes.")
	elseif cl == 64 then
		cw('bl',"Her expression is gentle and curious, as if she was searching for something.")
	elseif cl == 65 then
		cw('bl',"Embarrassed, I avert my gaze.")
	elseif cl == 66 then
		updateYuri('2','m')
		cw('y',"Sometimes...")
	elseif cl == 67 then
		cw('y',"A person's mysteries are untold even to themselves.")
	elseif cl == 68 then
		updateYuri('2','a')
		cw('y',"And you, as someone honest and caring...")
	elseif cl == 69 then
		cw('y',"May uncover feelings you weren't aware were in you.")
	elseif cl == 70 then
		updateYuri('4','b2')
		cw('y',"T-That is...")
	elseif cl == 71 then
		cw('y',"I think that...")
	elseif cl == 72 then
		cw('y',"She would be a very fortunate person...")
	elseif cl == 73 then
		cw('y',"To have you...feel that way about her.")
	elseif cl == 74 then
		cw('mc',"Yuri...")
	elseif cl == 75 then
		cw('mc',"You're giving me too much credit.")
	elseif cl == 76 then
		cw('mc',"I'm a pretty simple guy.")
	elseif cl == 77 then
		cw('mc',"So I think I'm pretty good at understanding my own feelings.")
	elseif cl == 78 then
		cw('mc',"I'm not nearly as sophisticated as you.")
	elseif cl == 79 then
		updateYuri('2','t')
		cw('y',"A-Ah...")
	elseif cl == 80 then
		cw('y',"That's not...a compliment, is it?")
	elseif cl == 81 then
		cw('mc',"It is what it is.")
	elseif cl == 82 then
		cw('mc',"Anyway, as long as we're here, why don't we do some reading?")
	elseif cl == 83 then
		updateYuri('2','s')
		cw('y',"Well...")
	elseif cl == 84 then
		cw('y',"As long as you're okay with it.")
	elseif cl == 85 then
		cw('mc',"Yeah.")
	elseif cl == 86 then
		cw('mc',"I should be taking my mind off this whole thing anyway.")
	elseif cl >= 87 then
		if y_exclusivewatched ~= 'true' and poemwinner[3] == "Yuri" then
			scriptJump()
		else
			ch3_start_none()
		end
	end
end

function ch3_start_none()
	if cl < 87 then
		scriptJump(87)
	elseif cl == 87 then
		if audio1 ~= '3' then audioUpdate('0') end
		bgUpdate('club')
		cw('bl',"...")
	elseif cl == 88 then
		if audio1 ~= '3' then audioUpdate('3') end
		updateMonika('4','b',80)
		cw('m',"Okay, everyone!")
	elseif cl == 89 then
		cw('bl',"After some time passes, Monika calls out to the clubroom.")
	elseif cl == 90 then
		cw('m',"Why don't we share our poems now?")
	elseif cl == 91 then
		hideMonika()
		cw('bl',"Before I know it, everything is back to normal.")
	elseif cl == 92 then
		cw('bl',"Everyone goes to retrieve their poems, and I do the same.")
	elseif cl == 93 then
		cw('bl',"I make eye contact with Monika, and she smiles at me.")
	elseif cl == 94 then
		cw('bl',"I wonder what she was talking about with Sayori...")
	elseif cl == 95 then
		poeminitialize()
	end
end

function ch3_end()
	if cl == 2114 then
		audioUpdate('3')
		bgUpdate('club')
		updateMonika('4','b',80)
		cw('m',"...Okay, you three!")
	elseif cl == 2115 then
		cw('m',"We're all done sharing poems, right?")
	elseif cl == 2116 then
		cw('m',"Why don't we start figuring out--")
	elseif cl == 2117 then
		updateNatsuki('3','c',-40)
		cw('n',"Hold on a second!")
	elseif cl == 2118 then
		cw('n',"Is it just me, or did you say something strange just now?")
	elseif cl == 2119 then
		updateMonika('4','d')
		cw('m',"Eh...?")
	elseif cl == 2120 then
		updateYuri('1','e',200)
		cw('y',"Something did sound a bit unusual...")
	elseif cl == 2121 then
		cw('y',"That's right.")
	elseif cl == 2122 then
		updateYuri('1','f')
		cw('y',"You deviated from your usual catchphrase when addressing the club.")
	elseif cl == 2123 then
		updateMonika('1','n')
		cw('m',"C-Catchphrase?")
	elseif cl == 2124 then
		cw('m',"I don't have a catchphrase...")
	elseif cl == 2125 then
		updateNatsuki('4','q')
		cw('n',"Jeez...")
	elseif cl == 2126 then
		cw('n',"Why is the mood so weird today?")
	elseif cl == 2127 then
		cw('n',"Look, even Yuri isn't immune to it.")
	elseif cl == 2128 then
		updateYuri('4','b2')
		cw('y',"Uu...")
	elseif cl == 2129 then
		cw('y',"Stagnating air is common foreshadowing that something terrible is about to happen...")
	elseif cl == 2130 then
		cw('mc',"In your books, maybe!")
	elseif cl == 2131 then
		cw('mc',"Look, the only thing different is that Sayori isn't here.")
	elseif cl == 2132 then
		updateYuri('2','g')
		cw('y',"Ah...")
	elseif cl == 2133 then
		cw('y',"...It seems you're right.")
	elseif cl == 2134 then
		updateMonika('2','r')
		cw('m',"Sigh...")
	elseif cl == 2135 then
		updateMonika('2','d')
		cw('m',"Sayori always helps lighten the mood a little bit, doesn't she?")
	elseif cl == 2136 then
		cw('m',"It's almost like everyone's balance is thrown off a little when she's not around...")
	elseif cl == 2137 then
		updateNatsuki('3','k')
		cw('n',"Where the heck did she run off to, anyway?")
	elseif cl == 2138 then
		cw('n',"I thought she just went to pee.")
	elseif cl == 2139 then
		updateYuri('1','l')
		cw('y',"Natsuki, please show some decency...")
	elseif cl == 2140 then
		updateNatsuki('4','w')
		cw('n',"Oh, come on.")
	elseif cl == 2141 then
		cw('mc',"Ah, she actually wasn't feeling too well and went home early...")
	elseif cl == 2142 then
		updateYuri('2','t')
		cw('y',"Is that so...?")
	elseif cl == 2143 then
		cw('y',"I hope she's alright...")
	elseif cl == 2144 then
		updateNatsuki('5','c')
		cw('n',"Seriously?")
	elseif cl == 2145 then
		cw('n',"Of all the times to not go home with her, you pick the time she's not feeling well?")
	elseif cl == 2146 then
		cw('n',"So much for you two being all lovey-dovey.")
	elseif cl == 2147 then
		cw('mc',"Ah--no!")
	elseif cl == 2148 then
		cw('mc',"First of all, stop misunderstanding my friendship with Sayori!")
	elseif cl == 2149 then
		cw('mc',"And second...")
	elseif cl == 2150 then
		cw('mc',"She's kind of been avoiding me today, so I didn't want to force it...")
	elseif cl == 2151 then
		updateYuri('1','g')
		cw('y',"Hooooh?")
	elseif cl == 2152 then
		cw('mc',"That curious expression coming from Yuri, of all people??")
	elseif cl == 2153 then
		updateMonika('1','r')
		cw('m',"Calm down, guys...!")
	elseif cl == 2154 then
		updateMonika('1','d')
		cw('m',"I talked to her earlier, and everything is fine.")
	elseif cl == 2155 then
		cw('mc',"What did she say...?")
	elseif cl == 2156 then
		updateYuri('1','e')
		updateMonika('1','a')
		cw('m',"Anyway, we need to figure out the rest of the festival preparations, so...")
	elseif cl == 2157 then
		cw('m',"Let's decide what everyone will be doing this weekend.")
	elseif cl == 2158 then
		updateNatsuki('4','l')
		cw('n',"I already know what I'm doing!")
	elseif cl == 2159 then
		updateMonika('2','b')
		cw('m',"That's right.")
	elseif cl == 2160 then
		cw('m',"Natsuki will be making cupcakes.")
	elseif cl == 2161 then
		cw('m',"But we might need a lot of them, and different flavors...")
	elseif cl == 2162 then
		cw('m',"Can you handle that all by yourself, Natsuki?")
	elseif cl == 2163 then
		updateNatsuki('4','z')
		cw('n',"Challenge accepted!")
	elseif cl == 2164 then
		updateNatsuki('4','a')
		updateMonika('1','a')
		cw('m',"And as for myself...")
	elseif cl == 2165 then
		cw('m',"I'm going to be printing and assembling all the poetry pamphlets.")
	elseif cl == 2166 then
		cw('m',"Sayori will be helping me design them.")
	elseif cl == 2167 then
		cw('m',"And as for Yuri...")
	elseif cl == 2168 then
		updateMonika('1','d')
		cw('m',"...")
	elseif cl == 2169 then
		updateMonika('3','n')
		cw('m',"Yuri, you can...")
	elseif cl == 2170 then
		cw('m',"Ah... Um...")
	elseif cl == 2171 then
		updateNatsuki('3','c')
		cw('n',"...?")
	elseif cl == 2172 then
		updateMonika('5a')
		cw('m',"Guys...")
	elseif cl == 2173 then
		cw('m',"Can you help me come up with something for Yuri...?")
	elseif cl == 2174 then
		updateYuri('4','c2')
		cw('y',"I...")
	elseif cl == 2175 then
		cw('y',"I'm useless...")
	elseif cl == 2176 then
		updateMonika('1','g')
		cw('m',"N-No!")
	elseif cl == 2177 then
		cw('n',"That's not it at all!")
	elseif cl == 2178 then
		cw('m',"You're the most talented person here, you know!")
	elseif cl == 2179 then
		updateNatsuki('5','g')
		cw('n',"...")
	elseif cl == 2180 then
		updateMonika('1','g')
		cw('m',"N-Now Natsuki's pouting, too??")
	elseif cl == 2181 then
		cw('mc',"Jeez, even I can tell now...")
	elseif cl == 2182 then
		cw('mc',"I guess I never gave Sayori enough credit, but I can tell things are even harder on you when she's not around.")
	elseif cl == 2183 then
		cw('m',"Ah...")
	elseif cl == 2184 then
		cw('m',"That may be the case...")
	elseif cl == 2185 then
		updateMonika('1','i')
		cw('m',"But if I can't also be a leader on my own, then I won't grow as a person.")
    elseif cl == 2186 then
		updateMonika('2','i')
		cw('m',"So, Yuri...!")
	elseif cl == 2187 then
		updateMonika('2','a')
		cw('m',"You have beautiful handwriting, you know?")
	elseif cl == 2188 then
		cw('m',"So you should make some banners and decorations to help set the atmosphere.")
	elseif cl == 2189 then
		updateYuri('4','a2')
		cw('y',"Atmosphere...?")
	elseif cl == 2190 then
		cw('y',"Um, about that...")
	elseif cl == 2191 then
		cw('y',"I...")
	elseif cl == 2192 then
		updateYuri('2','r')
		cw('y',"I love atmosphere!")
	elseif cl == 2193 then
		updateYuri('2','l')
		cw('y',"Yuri's expression suddenly changes as she stares at her desk in focus and starts nodding to herself.")
	elseif cl == 2194 then
		cw('mc',"Your mind is already racing, I see...")
	elseif cl == 2195 then
		updateMonika('2','b')
		cw('m',"That's great!")
	elseif cl == 2196 then
		cw('m',"You'll be a wonderful help, Yuri.")
	elseif cl == 2197 then
		updateMonika('2','a')
		cw('m',"But anyway...")
	elseif cl == 2198 then
		cw('m',"That just leaves you, "..player..".")
	elseif cl == 2199 then
		cw('mc',"The one who is truly useless.")
	elseif cl == 2200 then
		updateMonika('1','k')
		cw('m',"Ahaha! Don't say that.")
	elseif cl == 2201 then
		cw('m',"In fact...")
	elseif cl == 2202 then
		cw('m',"Both Natsuki and Yuri have some pretty heavy tasks to handle.")
	elseif cl == 2203 then
		cw('m',"It would probably go a long way to give one of them a hand.")
	elseif cl == 2204 then
		updateMonika('1','m')
		cw('m',"You could always help me out, as well...")
	elseif cl == 2205 then
		updateMonika('1','a')
		cw('m',"I would be really appreciative of that.")
	elseif cl == 2206 then
		cw('mc',"Ah--")
	elseif cl == 2207 then
		cw('mc',"That's...")
	elseif cl == 2208 then
		cw('bl',"Is Monika suggesting I spend the weekend with one of my club members?")
	elseif cl == 2209 then
		cw('bl',"How on Earth are they going to respond to a suggestion like that...?")
	elseif cl == 2210 then
		updateYuri('1','u')
		cw('y',"Ah...")
	elseif cl == 2211 then
		cw('y',"I...suppose I wouldn't mind a bit of help...")
	elseif cl == 2212 then
		updateNatsuki('3','c')
		cw('n',"Well, even if you don't know how to bake, there's always some dirty work I could give to you.")
	elseif cl == 2213 then
		updateNatsuki('3','q')
		cw('n',"It's not like Monika's going to give me a choice, and you shouldn't be sitting on your butt anyway...")
	elseif cl == 2214 then
		cw('bl',"Natsuki tries to mumble a bunch of excuses like that.")
	elseif cl == 2215 then
		updateYuri('2','k')
		cw('y',"Um...")
	elseif cl == 2216 then
		cw('y',"If I recall, Natsuki...")
	elseif cl == 2217 then
		updateYuri('2','f')
		cw('y',"You mentioned that you would like to handle the baking on your own.")
	elseif cl == 2218 then
		cw('y',player.." may not like to be around if you only make him out to be a nuisance...")
	elseif cl == 2219 then
		updateYuri('2','i')
		cw('y',"So therefore...")
	elseif cl == 2220 then
		cw('y',"He may be more suited to assisting with the decorations.")
	elseif cl == 2221 then
		updateNatsuki('4','e')
		cw('n',"Hold on! I never said that!")
	elseif cl == 2222 then
		updateNatsuki('4','h')
		cw('n',"How hard could it be to make a few decorations, anyway?")
	elseif cl == 2223 then
		cw('n',"Sounds more like you're just making excuses for "..player.." to--")
	elseif cl == 2224 then
		updateYuri('3','n')
		cw('y',"W-What are you saying?!")
	elseif cl == 2225 then
		cw('y',"It will be extremely meticulous work...")
	elseif cl == 2226 then
		updateNatsuki('5','w')
		cw('n',"And baking isn't?")
	elseif cl == 2227 then
		cw('n',"Just what do you think--")
	elseif cl == 2228 then
		updateMonika('2','g')
		cw('m',"Guys, guys!")
	elseif cl == 2229 then
		cw('m',"Let's settle down for a moment...")
	elseif cl == 2230 then
		updateMonika('2','d')
		cw('m',"In the end, I think it's up to "..player.." to decide how he'd like to contribute.")
	elseif cl == 2231 then
		cw('m',"Besides...")
	elseif cl == 2232 then
		updateMonika('5a')
		cw('m',"He hasn't really gotten the chance to spend any time with me yet, you know?")
	elseif cl == 2233 then
		cw('m',"So I'm sure he's interested in--")
	elseif cl == 2234 then
		updateNatsuki('4','f')
		cw('n',"You literally just said--")
	elseif cl == 2235 then
		updateYuri('2','h')
		cw('y',"I-I'm surprised as well!")
	elseif cl == 2236 then
		cw('m',"Sorry, sorry!")
	elseif cl == 2237 then
		cw('m',"I was just saying, though...")
	elseif cl == 2238 then
		updateNatsuki('4','x')
		cw('n',"Jeez...")
	elseif cl == 2239 then
		cw('n',"Can we just settle this already?")
	elseif cl == 2240 then
		updateMonika('1','e')
		cw('m',"Yeah...")
	elseif cl == 2241 then
		cw('m',player..", you're okay with this, right?")
	elseif cl == 2242 then
		updateMonika('1','a')
		cw('m',"In the end, it's up to you.")
	elseif cl == 2243 then
		cw('mc',"Ah...")
	elseif cl == 2244 then
		cw('mc',"Of course.")
	elseif cl == 2245 then
		updateNatsuki('5','g')
		cw('n',"Hmph.")
	elseif cl == 2246 then
		updateYuri('1','f')
		cw('y',"Very well...")
	elseif cl == 2247 then
		updateMonika('1','a')
		cw('m',"In that case...")
	elseif cl == 2248 then
		cw('bl',"Everyone looks straight at me.")
	elseif cl == 2249 then
		menutext = "But of course, I'm going to go with--"
		choices = {"Natsuki.","Yuri.","Monika.","Sayori..."}
		choice_enable()
	elseif cl >= 2250 then
        if choicepick == "Natsuki." then
			ch3_end_natsuki()
        elseif choicepick == "Yuri." then
			ch3_end_yuri()
        elseif choicepick == "Monika." then
            ch3_end_monika()
        elseif choicepick == "Sayori..." then
            ch3_end_sayori()
		end
	end
end

function ch3_end_sayori()
	if cl == 2250 then
		help_sayori = true
		cw('mc',"I mean...")
	elseif cl == 2251 then
		cw('mc',"If it's going to be anyone, then I prefer helping Sayori.")
	elseif cl == 2252 then
		cw('mc',"I mean, we're already neighbors, and--")
	elseif cl == 2253 then
		updateYuri('2','f')
		cw('y',"But Monika said--")
	elseif cl == 2254 then
		updateNatsuki('4','w')
		cw('n',"Monika said that Sayori was helping her!")
	elseif cl == 2255 then
		cw('n',"Jeez...")
	elseif cl == 2256 then
		updateNatsuki('4','h')
		cw('n',"Do you really hate us that much?")
	elseif cl == 2257 then
		cw('mc',"N-No!")
	elseif cl == 2258 then
		cw('m',"Sorry, I didn't mean for this to be difficult...")
	elseif cl == 2259 then
		menutext = "Just think of the club, okay?"
		if help_monika == nil then
			choices = {"Natsuki.","Yuri.","Monika."}
		else
			choices = {"Natsuki.","Yuri."}
		end
        choice_enable()
	elseif cl == 2260 then
		scriptJump(2250)
	end
end

function ch3_end_monika()
	if cl == 2250 then
		help_monika = true
		cw('mc',"Well, I guess I should probably be helping Monika...")
	elseif cl == 2251 then
		updateMonika('5a')
		cw('m',"Yay, you picked me!")
	elseif cl == 2252 then
		updateNatsuki('3','e')
		audioUpdate('0')
		cw('n',"Hold on one second!")
	elseif cl == 2253 then
		updateYuri('2','r')
		cw('y',"Y-Yeah!")
	elseif cl == 2254 then
		audioUpdate('7')
		cw('n',"Monika, you're the one who needs the least help out of all of us!")
	elseif cl == 2255 then
		updateMonika('1','d')
		cw('m',"Eh? But...")
	elseif cl == 2256 then
		updateYuri('1','h')
		cw('y',"I agree with Natsuki.")
	elseif cl == 2257 then
		updateYuri('1','l')
		cw('y',"Not only is your work already most suitable for one person...")
	elseif cl == 2258 then
		cw('y',"But you already have Sayori as well.")
	elseif cl == 2259 then
		updateMonika('1','p')
		cw('m',"But "..player.." was the one who...")
	elseif cl == 2260 then
		cw('m',"Ah...")
	elseif cl == 2261 then
		updateNatsuki('3','c')
		cw('n',"That doesn't matter.")
	elseif cl == 2262 then
		cw('n',"You were the one who scared him into picking you in the first place.")
	elseif cl == 2263 then
		updateNatsuki('3','e')
		cw('n',"You're the club president, Monika.")
	elseif cl == 2264 then
		cw('n',"You're supposed to make responsible decisions for the club!")
	elseif cl == 2265 then
		updateYuri('2','f')
		cw('y',"Monika, you shouldn't let any ulterior motives interfere with this decision.")
	elseif cl == 2266 then
		updateMonika('2','i')
		cw('m',"Ulterior motives?")
	elseif cl == 2267 then
		cw('m',"W-What are you saying, Yuri?")
	elseif cl == 2268 then
		cw('m',"In fact, it sounds like you guys are the ones with ulterior motives!")
	elseif cl == 2269 then
		updateNatsuki('1','x')
		cw('n',"Excuse me?")
	elseif cl == 2270 then
		cw('m',"Otherwise...this wouldn't have been made into such a big deal in the first place!")
	elseif cl == 2271 then
		updateYuri('3','r')
		cw('y',"That's...completely false, Monika!")
	elseif cl == 2272 then
		updateNatsuki('3','e')
		cw('n',"Yeah!")
	elseif cl == 2273 then
		cw('n',"We have a lot of work to do, you know!")
	elseif cl == 2274 then
		cw('n',"We won't do as good of a job if you make us work alone.")
	elseif cl == 2275 then
		updateMonika('1','p')
		cw('m',"Ah...maybe...that's true...")
	elseif cl == 2276 then
		updateYuri('2','l')
		cw('y',"Think of the club, Monika...")
	elseif cl == 2277 then
		cw('y',"If we want our event to succeed, then we need to appropriately distribute our resources.")
	elseif cl == 2278 then
		updateMonika('3','n')
		cw('m',"Um...")
	elseif cl == 2279 then
		cw('m',"Ah...")
	elseif cl == 2280 then
		updateNatsuki('4','x')
		cw('n',"So are you going to do the right thing, President?")
	elseif cl == 2281 then
		updateMonika('1','p')
		cw('m',"Okay, okay!")
	elseif cl == 2282 then
		cw('m',"I get it!")
	elseif cl == 2283 then
		audioUpdate('0')
		updateNatsuki('4','g')
		updateYuri('2','g')
		updateMonika('1','r')
		cw('m',"Sigh...")
	elseif cl == 2284 then
		updateMonika('1','g')
		cw('m',"It's...technically most logical for .."player.." to help one of you two.")
	elseif cl == 2285 then
		cw('m',"So...")
	elseif cl == 2286 then
		updateMonika('1','c')
		cw('m',"I guess...that's what we'll do.")
	elseif cl == 2287 then
		audioUpdate('3')
		menutext = "Do you have a preference, "..player.."?"
		if help_sayori == nil then
			choices = {"Natsuki.","Yuri.","Sayori..."}
		else
			choices = {"Natsuki.","Yuri."}
		end
    elseif cl == 2288 then
		scriptJump(2250)
	end
end

function ch3_end_natsuki()
	if cl == 2250 then
		ch4_name = "Natsuki"
		cw('mc',"Well, baking sounds like it could be fun...")
	elseif cl == 2251 then
		cw('mc',"And you guys made it sound like a lot of work, so it could probably use two people.")
	elseif cl == 2252 then
		updateNatsuki('4','l')
		cw('n',"Don't worry!")
	elseif cl == 2253 then
		cw('n',"Baking is a ton of fun!")
		--[[
    n "You'll definitely agree!"
    show natsuki zorder 2 at t31
    show monika 1d zorder 3 at f32
    m "Eh?"
    m "Just a minute ago you were saying that--"
    show monika zorder 2 at t32
    show natsuki 1q zorder 3 at f31
    n "Th-That's because--!"
    n "..."
    n "...Never mind, okay?"
    show natsuki zorder 2 at t31
    show monika 2a zorder 3 at f32
    m "Well, anyway..."
    m "You'll be fine by yourself, right, Yuri?"
    show monika zorder 2 at t32
    show yuri 1j zorder 3 at f33
    y "Of course."
    y "I'm used to it, after all..."
    show yuri 1g zorder 2 at t33
    show monika 1e zorder 3 at f32
    m "..."
    show monika zorder 2 at t32
    mc "..."
    show monika zorder 3 at f32
    m 1n "That's...good..."
    "Even though Yuri is being melodramatic, it's a little hard to not feel bad..."
    show monika 1m zorder 2 at t32
    show natsuki 3a zorder 3 at f31
    n "So, that's everything, right?"
    n "Anything else we need to talk about?"
    show natsuki zorder 2 at t31
    show monika 1a zorder 3 at f32
    m "No, I think that's it..."
    m "Are you guys excited?"
    show monika zorder 2 at t32
    show natsuki 1z zorder 3 at f31
    n "Yes!"
    n "Everything except the performance is gonna be awesome!"
    show natsuki 1a zorder 2 at t31
    mc "I don't think that really counts..."
    show monika zorder 3 at f32
    m "What about you, [player]?"
    show monika zorder 2 at t32
    mc "Me?"
    mc "Ah, I guess you could say I'm interested to see how it'll turn out..."
    show monika 2b zorder 3 at f32
    m "That's good enough for me!"
    m "What about you, Yuri?"
    m 2d "...Yuri?"
    show monika zorder 2 at t32
    show natsuki 3c zorder 3 at f31
    n "She's still sulking."
    show natsuki zorder 2 at t31
    show yuri 4b zorder 3 at f33
    y "..."
    show yuri zorder 2 at t33
    show natsuki 5n zorder 3 at f31
    n "..."
    "Natsuki starts pouting, too."
    n "It's not..."
    n 5m "I mean, it's not that big of a deal or anything..."
    show natsuki zorder 2 at t31
    mc "Well, it might not be just that..."
    show natsuki zorder 3 at f31
    n "...?"
    show natsuki zorder 2 at t31
    mc "I think that Yuri might just be feeling a little underappreciated in general."
    mc "Having to come up with something for her to do, and then nobody offering to help."
    show natsuki zorder 3 at f31
    n 5q "That doesn't mean..."
    n "..."
    n 5r "Uu..."
    show natsuki 5u
    "Natsuki glances back and forth between everyone with a worried expression."
    n 1u "Look..."
    "Natsuki goes over and puts her hands down on Yuri's shoulders."
    n 1h "Yuri."
    n "You really are the most talented one here."
    n "And..."
    n "And you're going to help make the event a lot more fun and welcoming."
    n 1q "I mean, the cupcakes will probably help a lot too..."
    n 3h "But you're gonna make the atmosphere special."
    n "That'll be really important for the way that people feel during the performances."
    n "So..."
    n 4w "You need to stop being dumb and give yourself a little more credit!"
    "Natsuki releases her hands and turns around to face the other direction."
    show natsuki zorder 2 at t31
    show yuri zorder 3 at f33
    y 4a "..."
    y "You didn't...really mean that, did you?"
    show yuri zorder 2 at t33
    show natsuki 5u zorder 3 at f31
    n "Um..."
    n "N-Not really, but..."
    show natsuki zorder 2 at t31
    "Yuri isn't the only one surprised."
    "Monika and I are also taken aback by Natsuki's words."
    "Natsuki, of all people, to be saying such encouraging things."
    "But I begin to understand."
    "Natsuki was trying to sound like Sayori."
    "Even if it didn't work perfectly, I can tell that she tried to say something Sayori would say at a time like this."
    "Because Sayori always helps everyone smile and feel good about themselves."
    show yuri 2l zorder 3 at f33
    y "I'm sorry...for being dumb."
    y 2i "I'm going to do my best."
    y "And all of us are going to make it a really great event."
    show yuri zorder 2 at t33
    show natsuki zorder 3 at f31
    n 5j "Yeah."
    show natsuki zorder 2 at t31
    show monika 2k zorder 3 at f32
    m "Yeah!"
    m 2b "I hope to see everyone do their best."
    m "But with that..."
    m "There's nothing more for today."
    m "So I guess it's time for us to head out."
    show monika zorder 2 at t32
    show natsuki 3k zorder 3 at f31
    n "Okay, but I'm staying here a bit longer."
    n "I barely got to do any reading today, so..."
    show natsuki zorder 2 at t31
    show monika 2a zorder 3 at f32
    m "Fair enough, there's nothing wrong with that."
    hide natsuki
    hide monika
    hide yuri
    with wipeleft
    "Everyone packs up their things."
    "I start to follow Monika and Yuri out the door as they chat between each other."
    play music t6 fadeout 1
    show natsuki 4g zorder 2 at t11
    n "Um, where are you going?"
    mc "Eh...?"
    n 4c "We still need to figure out our plans for this weekend."
    n "You literally would've gotten home and realized that you didn't even have a way to contact me."
    mc "Oh, that's true..."
    mc "I have no idea how that slipped my mind."
    n 2c "Jeez, good thing I stopped you."
    n "I'm giving you my number, okay?"
    n 2q "You'd better not make it weird or anything!"
    mc "Why would I do that...?"
    n 1s "Hmph..."
    "Natsuki gives me her number."
    n 1c "Okay..."
    n "I'm coming over on Sunday."
    n "I'll bring all the ingredients."
    mc "Wait!"
    mc "You're coming to {i}my{/i} house?"
    n 2c "Well, yeah."
    n "What's wrong with that?"
    mc "I mean..."
    mc "I just figured that since I'm the one helping, I would be going to your house..."
    n "Yeah, right."
    n 5x "Like I could have a guy over my house..."
    n "My dad would kill me."
    mc "Really?"
    mc "That's kinda strict, if you ask me."
    n 5r "Yeah, how do you think I feel?"
    n "I can't do anything when my dad is home..."
    n 2q "Anyway...I just needed to complain for a second."
    n 2c "We have each other's numbers now."
    n "That's all I needed from you."
    n "I guess I'll text you when I'm coming over."
    mc "Alright, fine by me."
    n "Yeah."
    n 4a "I'm really gonna show you why I love baking so much."
    n "So you'd better look forward to it."
    mc "Oh?"
    mc "Didn't you say you were just going to give me the dirty work?"
    n 1r "Well--!"
    n "I was...just saying that."
    n 1q "It's not like I could act like...in front of everyone..."
    n "That I was looking forward to this."
    mc "Wait, really??"
    n 5w "Well, kind of!"
    n "Just because...I never got to bake with someone else before."
    n 5h "That's all it is, so..."
    mc "Alright, I get it."
    mc "Sorry for overreacting."
    mc "Anyway, I'll be heading out now."
    mc "See you on Sunday."
    n 5m "Ah--"
    n "..."
    n 5u "...Never mind."
	]]
    end
end

function ch3_end_yuri()
	if cl == 2250 then
		ch4_name = "Yuri"
		cw('mc',"Well, I'll probably be most useful helping out Yuri...")
		--[[
    show yuri zorder 3 at f33
    y 2n "M-Me...?"
    show yuri zorder 2 at t33
    show natsuki zorder 3 at f31
    n 4e "Are you serious?"
    n "Why would you--"
    show natsuki zorder 2 at t31
    show monika zorder 3 at f32
    m 1i "Natsuki."
    m "I can already tell you're about to say something mean."
    show monika zorder 2 at t32
    show natsuki zorder 3 at f31
    n 5r "N-No..."
    n "I was just saying--"
    n "Ugh..."
    show natsuki zorder 2 at t31
    show monika zorder 3 at f32
    m 2a "So, you'll be helping Yuri then, [player]?"
    show monika zorder 2 at t32
    mc "Yeah."
    mc "That's what I'm going to do."
    show yuri zorder 3 at f33
    y 1u "I'm glad."
    y "I have a bad habit of overthinking these sorts of things..."
    y "So I think your assistance will be very useful."
    show yuri zorder 2 at t33
    show monika zorder 3 at f32
    m "That's great to hear."
    m "Natsuki, will you be able to handle the baking yourself?"
    show monika zorder 2 at t32
    show natsuki zorder 3 at f31
    n 3w "I mean, yeah."
    n "I already said I would be fine."
    show natsuki zorder 2 at t31
    show monika zorder 3 at f32
    m 1i "Okay, okay..."
    "Everyone can tell that Natsuki is feeling a little sour."
    show monika zorder 2 at t32
    mc "So...is that everything we needed to go over?"
    show monika zorder 3 at f32
    m 1a "Yeah, that should be about it."
    m 2a "Are you guys excited?"
    show monika zorder 2 at t32
    show yuri zorder 3 at f33
    y 1i "Well, 'excited' may not be the right word..."
    y "But I suppose I'm looking forward to it a little bit."
    show yuri zorder 2 at t33
    show monika zorder 3 at f32
    m "Do you feel the same way, [player]?"
    show monika zorder 2 at t32
    mc "Me?"
    mc "Ah, I guess you could say I'm interested to see how it'll turn out..."
    show monika zorder 3 at f32
    m 2b "That's good enough for me!"
    m 2a "What about you, Natsuki?"
    show monika zorder 2 at t32
    show natsuki zorder 3 at f31
    n 5s "..."
    show monika zorder 2 at t32
    show yuri zorder 3 at f33
    y 2h "Natsuki!"
    show yuri zorder 2 at t33
    show natsuki zorder 3 at f31
    n 1o "What??"
    n 1m "Why is everyone yelling at me?"
    n "I didn't even do anything...!"
    show natsuki 1n zorder 2 at t31
    show yuri zorder 3 at f33
    y 3n "N-no--!"
    y "That's not what I meant at all!"
    y 3o "A-Ah..."
    "Yuri anxiously glances between everyone in the room."
    y 2w "I-I'm sorry for this!"
    y 2v "I don't really know why [player] picked me..."
    y "And also..."
    y 2t "Your cupcakes are the best cupcakes I've ever had!"
    y "They go really well with my tea!"
    y "And nothing that I do for the event will compare to that, so..."
    y 4b "So..."
    show yuri zorder 2 at t33
    show natsuki zorder 3 at f31
    n 3q "I get it, I get it."
    n 3h "I'm kinda surprised, though..."
    show natsuki zorder 2 at t31
    show yuri zorder 3 at f33
    y "W-Why?"
    show yuri zorder 2 at t33
    show natsuki zorder 3 at f31
    n 3q "Um..."
    n "Well, I'm the one acting immature..."
    n "I already know that."
    n 5h "But you're trying to cheer me up all of a sudden..."
    show natsuki zorder 2 at t31
    show yuri zorder 3 at f33
    y "I-I know I'm not very good at it..."
    y 2v "I'm sorry if I said something bad!"
    "Natsuki isn't the only one surprised."
    "Monika and I are also taken aback by Yuri's words."
    "When she already has trouble with words, trying to cheer someone up must be far out of her own comfort zone."
    "But I begin to understand."
    "Yuri was trying to sound like Sayori."
    "Even if it didn't work perfectly, I can tell that she tried to say something Sayori would say at a time like this."
    "Because Sayori always helps everyone smile and feel good about themselves."
    show yuri zorder 2 at t33
    show natsuki zorder 3 at f31
    n 1h "No..."
    n "I kinda appreciated it."
    n 1u "I'm sorry...for making a big deal out of nothing."
    n 1m "But I'm going to say this."
    show natsuki zorder 2 at t31
    show yuri zorder 3 at f33
    y 2e "...?"
    show yuri zorder 2 at t33
    show natsuki zorder 3 at f31
    n 4e "You better bet that my cupcakes are going to be the best part of the whole event!"
    show natsuki 4a zorder 2 at t31
    show yuri zorder 3 at f33
    y 2f "Ah..."
    y 1s "...I believe you."
    show yuri zorder 2 at t33
    show monika zorder 3 at f32
    m 2b "Yeah!"
    m "I hope to see everyone do their best."
    m "But with that..."
    m "There's nothing more for today."
    m "So I guess it's time for us to head out."
    show monika zorder 2 at t32
    show natsuki zorder 3 at f31
    n "Alright, let's get out of here, then."
    hide monika
    hide natsuki
    hide yuri
    with wipeleft
    "Everyone packs up their things."
    "I start to follow Monika and Natsuki out the door as they chat between each other."
    play music t6 fadeout 1
    show yuri 2t zorder 2 at t11
    y "U-Um--!"
    mc "Eh?"
    "I turn around."
    y "Sorry..."
    y 2s "I realized that I don't have any way of contacting you this weekend..."
    mc "Oh, you're right."
    mc "I can't believe that slipped my mind."
    mc "Should I give you my phone number?"
    y 1a "I think...that would be the best way, yes."
    mc "Alright, then..."
    "Yuri and I exchange phone numbers."
    y "Okay."
    y "Then, I'll be stopping by your house on Sunday..."
    mc "Eh?"
    mc "My house?"
    y 2t "I-Is that a problem...?"
    mc "No, not at all..."
    mc "I just thought that I would be the one going to your house, since I'm the one helping you."
    y "Ah, I suppose that makes sense..."
    y "But, if you don't mind..."
    y 1u "I think I would prefer going to your house."
    mc "Alright."
    mc "In that case, it won't be a problem."
    "I decide not to press Yuri for a reason."
    "It's not like it should matter much either way, so I'll just need to make sure my room is clean."
    mc "I hope I manage to make myself useful in some way..."
    mc "I'm not nearly as creative as you are."
    y 1a "Don't underestimate yourself, [player]."
    y "I think that we'll make a very productive team."
    y 1u "Even if you only chose me because you felt bad or something..."
    mc "Wait...!"
    mc "You don't actually think that, do you?"
    y 4b "..."
    y "I...don't know."
    y "It's difficult to come up with any other reason you may have chosen me..."
    mc "You're forgetting the one reason with the most common sense!"
    mc "I chose to help you because that's what I want to do."
    y 2v "B-But..."
    "Yuri thinks to herself with an extremely tense expression."
    mc "Yuri...you're overthinking this."
    mc "You wanted me to point out when you're overthinking, right?"
    y "Eh...?"
    y 4 "I...didn't realize..."
    mc "I'm telling you, I want to."
    mc "That's all there is to it."
    mc "Do you believe me?"
    y 1t "I..."
    "Yuri thinks really hard again."
    "She looks straight into my eyes for a long while."
    y 3l "...I believe you!"
    "As if it took her tremendous effort, Yuri finally says that and relaxes her expression."
    y 3s "And I'm really looking forward to Sunday."
    mc "Yeah..."
    mc "I am too."
    show yuri zorder 1 at thide
    hide yuri
    "After that exchange, I make my way out the door, and Yuri follows."
	]]
    end
end