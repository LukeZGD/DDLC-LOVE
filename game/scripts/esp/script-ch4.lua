function ch4script()
	if cl >= 2397 then
		scriptJump(1)
		audioUpdate('6',true)
	elseif cl == 1 then
		bgUpdate('residential')
		cw('bl',"It's already Sunday.")
	elseif cl > 1 and cl < 10 then
		if savevalue == "n" then
			if cl == 2 then
				cw('bl',"I've been getting increasingly anxious about Natsuki's upcoming visit.")
			elseif cl == 3 then
				cw('bl',"I keep telling myself there's no reason to be nervous, but it doesn't help much.")
			elseif cl == 4 then
				cw('bl',"I wonder if she'll act any different when it's just the two of us?")
			elseif cl == 5 then
				cw('bl',"Meanwhile, she's been texting me a lot.")
			elseif cl == 6 then
				cw('bl',"We sent each other one after exchanging numbers to double-check, but it turned into conversation.")
			elseif cl == 7 then
				cw('bl',"She's almost a different personality on the phone, using tons of emoji and cute language.")
			elseif cl == 8 then
				cw('bl',"She also really likes complaining about things, but I kind of saw that one coming.")
			elseif cl == 9 then
				cw('bl',"But putting Natsuki aside...")
			end
		else
			if cl == 2 then
				cw('bl',"I've been getting increasingly anxious about Yuri's upcoming visit.")
			elseif cl == 3 then
				cw('bl',"I keep telling myself there's no reason to be nervous, but it doesn't help much.")
			elseif cl == 4 then
				cw('bl',"Yuri is clearly an introvert and also an intimate person in general.")
			elseif cl == 5 then
				cw('bl',"There's no doubt that she'll open up a little bit when it's just the two of us.")
			elseif cl == 6 then
				cw('bl',"Meanwhile, we've even been texting occasionally.")
			elseif cl == 7 then
				cw('bl',"She was extremely apprehensive at first, but it wasn't long before I was already learning more about her.")
			elseif cl == 8 then
				cw('bl',"But putting Yuri aside...")
			elseif cl == 9 then
				scriptJump(10)
			end
		end
	elseif cl == 10 then
		cw('bl',"I haven't heard a thing from Sayori since she left club early the other day.")
	elseif cl == 11 then
		cw('bl',"It's not like we text each other all the time or anything...")
	elseif cl == 11 then
		cw('bl',"But I've been worried about her in the back of my mind.")
	elseif cl == 12 then
		cw('bl',"Between what Sayori said, and what Monika said...")
	elseif cl == 13 then
		cw('bl',"Is it really okay for me to put Sayori's feelings aside when she might need me?")
	elseif cl == 14 then
		bgUpdate('house')
		audioUpdate('0')
		cw('bl',"I decide to visit Sayori before "..savevalue.." comes over.")
	elseif cl == 15 then
		cw('bl',"Rather than asking, I simply tell her \"I'm coming over\", much like we've done in the past.")
	elseif cl == 16 then
		cw('bl',"Once I reach Sayori's house, I knock on the door before entering it myself.")
	elseif cl == 17 then
		cw('bl',"Again, we used to play so often that we've made it a habit of simply entering each other's houses like we were family.")
	elseif cl == 18 then
		bgUpdate('black')
		cw('bl',"The house is quiet.")
	elseif cl == 19 then
		cw('bl',"Sayori isn't anywhere on the first floor, so I assume she's up in her room.")
	elseif cl == 20 then
		cw('bl',"It's already strange of her not to run down and greet me.")
	elseif cl == 21 then
		cw('bl',"I head up to her bedroom, where I finally find her.")
	elseif cl == 22 then
		bgUpdate('sayori_bedroom')
		audioUpdate('10')
		cw('mc',"Sayori?")
	elseif cl == 23 then
		updateSayori('1b','a',80)
		cw('s',"Hi "..player.."~")
	elseif cl == 24 then
		updateSayori('1b','y')
		cw('bl',"I sit down in her room.")
	elseif cl == 25 then
		cw('bl',"Sayori forces a smile, but it's easy to tell that she's different.")
	elseif cl == 26 then
		cw('bl',"There's a minute of silence between us.")
	elseif cl == 27 then
		cw('s',"You haven't come over like this in a long time, have you?")
	elseif cl == 28 then
		cw('mc',"Ah... I guess you're right.")
	elseif cl == 29 then
		cw('mc',"It has been a long time.")
	elseif cl == 30 then
		cw('mc',"Not much has really changed, has it?")
	elseif cl == 31 then
		cw('bl',"Sayori's room is as messy as it's always been.")
	elseif cl == 32 then
		cw('bl',"I also recognize the same stuffed animals and wall decorations that she's had for years now.")
	elseif cl == 33 then
		updateSayori('2b','l')
		cw('s',"Ehehe~")
	elseif cl == 34 then
		cw('s',"If you came over more often, it wouldn't be such a mess.")
	elseif cl == 35 then
		cw('mc',"That's because I end up cleaning it for you...")
	elseif cl == 36 then
		updateSayori('1b','b')
		cw('s',"How come you suddenly wanted to come over today?")
	elseif cl == 37 then
		cw('s',"Aren't you supposed to see "..savevalue.." today?")
	elseif cl == 38 then
		cw('mc',"Yeah, but...")
	elseif cl == 39 then
		cw('mc',"...Wait, how did you know that?")
	elseif cl == 40 then
		cw('bl',"Sayori had already left by the time we decided that last meeting.")
	elseif cl == 41 then
		updateSayori('1b','a')
		cw('s',"Monika told me.")
	elseif cl == 42 then
		cw('s',"It's only natural for her to keep me informed about the festival preparations, right?")
	elseif cl == 43 then
		cw('mc',"Ah, that's true...")
	elseif cl == 44 then
		cw('mc',"But what about you?")
	elseif cl == 45 then
		cw('mc',"Aren't you going to be helping Monika today?")
	elseif cl == 46 then
		updateSayori('4b','b')
		cw('s',"Of course!")
	elseif cl == 47 then
		cw('s',"But I'm just helping her online.")
	elseif cl == 48 then
		cw('s',"We didn't plan to meet up or anything.")
	elseif cl == 49 then
		cw('mc',"Ah, so it's just me and "..savevalue..", then...")
	elseif cl == 50 then
		updateSayori('1b','a')
		cw('s',"Yep~")
	elseif cl == 51 then
		cw('bl',"There's more silence between us.")
	elseif cl == 52 then
		updateSayori('1b','k')
		cw('bl',"Sayori stares in a random direction.")
	elseif cl == 53 then
		cw('bl',"Everything about her behavior is really uncharacteristic.")
	elseif cl == 54 then
		cw('bl',"I finally get to the point.")
	elseif cl == 55 then
		cw('mc',"I just...wanted to see how you were doing.")
	elseif cl == 56 then
		cw('mc',"After you left on Friday.")
	elseif cl == 57 then
		cw('mc',"When something's wrong, you can't hide it from me!")
	elseif cl == 58 then
		cw('mc',"I know you too well.")
	elseif cl == 59 then
		cw('mc',"So...")
	elseif cl == 60 then
		cw('bl',"Sayori smiles, shaking her head.")
	elseif cl == 61 then
		updateSayori('1b','d')
		cw('s',"That's no good, "..player..".")
	elseif cl == 62 then
		cw('mc',"Eh?")
	elseif cl == 63 then
		cw('s',"Why can't it just be like it's always been?")
	elseif cl == 64 then
		updateSayori('1b','y')
		cw('s',"This is all my fault.")
	elseif cl == 65 then
		cw('s',"If I didn't get so weak and accidentally express my feelings...")
	elseif cl == 66 then
		updateSayori('1b','k')
		cw('s',"If I didn't make that stupid mistake...")
	elseif cl == 67 then
		cw('s',"Then you wouldn't have been worried about me at all.")
	elseif cl == 68 then
		cw('s',"You wouldn't have come here.")
	elseif cl == 69 then
		updateSayori('1b','d')
		cw('s',"You wouldn't have even been thinking about me right now.")
	elseif cl == 70 then
		cw('s',"But this...is just my punishment, isn't it?")
	elseif cl == 71 then
		cw('s',"I'm getting punished for being so selfish.")
	elseif cl == 72 then
		cw('s',"I think that's why the world decided to have you come over today.")
	elseif cl == 73 then
		cw('s',"It just wants to torture me.")
	elseif cl == 74 then
		updateSayori('4b','q')
		cw('s',"Ehehe~")
	elseif cl == 75 then
		cw('mc',"Sayori!")
	elseif cl == 76 then
		updateSayori('4b','b')
		cw('bl',"I grab Sayori by the shoulders.")
	elseif cl == 77 then
		cw('mc',"What on Earth are you saying?!")
	elseif cl == 78 then
		cw('mc',"Are you listening to yourself right now?")
	elseif cl == 79 then
		cw('mc',"I know something happened to you.")
	elseif cl == 80 then
		cw('mc',"There's no other explanation for you to be like this.")
	elseif cl == 81 then
		cw('mc',"So tell me, already...!")
	elseif cl == 82 then
		cw('mc',"Until I know, I won't be able to stop thinking about it!")
	elseif cl == 83 then
		updateSayori('4b','l')
		cw('s',"Ah...")
	elseif cl == 84 then
		cw('s', "Ahaha...")
	elseif cl == 85 then
		cw('bl',"Sayori gives me an empty smile.")
	elseif cl == 86 then
		updateSayori('4b','y')
		cw('s',"You really put me in a trap, "..player..".")
	elseif cl == 87 then
		cw('s',"But...")
	elseif cl == 88 then
		updateSayori('1b','a')
		cw('s',"You're wrong.")
	elseif cl == 89 then
		cw('s',"Nothing happened to me.")
	elseif cl == 90 then
		cw('s',"I've always been like this.")
	elseif cl == 91 then
		cw('s',"You're just seeing it for the first time.")
	elseif cl == 92 then
		cw('mc',"Seeing what?")
	elseif cl == 93 then
		cw('mc',"What are you talking about, Sayori?")
	elseif cl == 94 then
		updateSayori('1b','q')
		cw('s',"Ehehe~")
	elseif cl == 95 then
		updateSayori('1b','a')
		cw('s', "You're really just going to make me say it, aren't you, "..player.."?")
	elseif cl == 96 then
		cw('s',"I guess I have no choice this time.")
	elseif cl == 97 then
		updateSayori('1b','c')
		cw('s',"The thing is...")
	elseif cl == 98 then
		cw('s',"I've had really bad depression my whole life.")
	elseif cl == 99 then
		updateSayori('1b','b')
		cw('s',"Did you know that?")
	elseif cl == 100 then
		cw('s',"Why do you think I'm late to school every day?")
	elseif cl == 101 then
		cw('s',"Because most days, I can't even find a reason to get out of bed.")
	elseif cl == 102 then
		updateSayori('1b','y')
		cw('s',"What reason is there to do anything when I fully know how worthless I am?")
	elseif cl == 103 then
		cw('s', "Why go to school?")
	elseif cl == 104 then
		cw('s',"Why eat?")
	elseif cl == 105 then
		cw('s',"Why make friends?")
	elseif cl == 106 then
		cw('s',"Why make other people put their energy and caring to waste by having them spend it on me?")
	elseif cl == 107 then
		cw('s',"That's what it feels like.")
	elseif cl == 108 then
		cw('s',"And that's why I just want to make everyone happy...")
	elseif cl == 109 then
		cw('s',"Without anyone worrying about me.")
	elseif cl == 110 then
		cw('mc',"...")
	elseif cl == 111 then
		cw('bl',"I'm in shock.")
	elseif cl == 112 then
		cw('bl',"I can't even figure out how to respond.")
	elseif cl == 113 then
		cw('bl',"How is it possible that Sayori kept this from me the entire time that I've known her?")
	elseif cl == 114 then
		cw('bl',"Did she really want so badly for me to just not think about her?")
	elseif cl == 115 then
		cw('mc',"...Why, Sayori?")
	elseif cl == 116 then
		updateSayori('1b','g')
		cw('s', "Eh...?")
	elseif cl == 117 then
		cw('mc',"Why is it that you've never told me about this?")
	elseif cl == 118 then
		cw('mc',"It almost feels like I've been betrayed as your close friend.")
	elseif cl == 119 then
		cw('mc',"Because if I knew, I would have done everything I could to support you!")
	elseif cl == 120 then
		cw('mc',"Even if there's only so much that I could do...")
	elseif cl == 121 then
		cw('mc',"I would have tried a little bit harder to make every day a little better for you.")
	elseif cl == 122 then
		cw('mc',"That's why I'm your friend!")
	elseif cl == 123 then
		cw('mc',"All you had to do was tell me!")
	elseif cl == 124 then
		updateSayori('1b','k')
		cw('s',"You don't understand at all, "..player..".")
	elseif cl == 125 then
		cw('s',"Why do you think I didn't tell you?")
	elseif cl == 126 then
		updateSayori('1b','d')
		cw('s',"Because if I told you, then you would have to waste effort caring about me instead of doing important things.")
	elseif cl == 127 then
		cw('s',"I don't want to be cared about.")
	elseif cl == 128 then
		cw('s',"It's bittersweet, when people try to care about me.")
	elseif cl == 129 then
		updateSayori('1b','a')
		cw('s',"It feels nice sometimes.")
	elseif cl == 130 then
		cw('s',"But it also feels like a bat being swung against my head.")
	elseif cl == 131 then
		updateSayori('4b','q')
		cw('s',"Ahaha~")
	elseif cl == 132 then
		updateSayori('4b','a')
		cw('s',"That's why I wanted so badly for you to make friends with everyone else...")
	elseif cl == 133 then
		cw('s',"Helping everyone be happy together is the best thing for me.")
	elseif cl == 134 then
		updateSayori('1b','b')
		cw('s',"But then, I discovered something else, too.")
	elseif cl == 135 then
		cw('s',"Seeing you make friends and get closer with everyone in the club...")
	elseif cl == 136 then
		updateSayori('1b','k')
		cw('s',"It feels like a spear going through my heart.")
	elseif cl == 137 then
		cw('s',"So, that's why.")
	elseif cl == 138 then
		cw('s', "That's why I decided the world just wants to torture me.")
	elseif cl == 139 then
		updateSayori('1b','y')
		cw('s',"Every path leads to nothing but hurt.")
	elseif cl == 140 then
		cw('s',"Ahaha~")
	elseif cl == 141 then
		cw('mc',"You're right that I don't understand...")
	elseif cl == 142 then
		cw('mc',"I don't understand your feelings at all, Sayori.")
	elseif cl == 143 then
		cw('mc',"But I don't need to understand.")
	elseif cl == 144 then
		cw('mc',"Whatever it takes for me to help you stop hurting...")
	elseif cl == 145 then
		cw('mc',"That's what I'll do.")
	elseif cl == 146 then
		updateSayori('1b','d')
		cw('s',"No, "..player..".")
	elseif cl == 147 then
		cw('s',"There's nothing.")
	elseif cl == 148 then
		cw('s',"Nothing at all.")
	elseif cl == 149 then
		cw('s',"The only thing that could have helped is if everything could be like it always was.")
	elseif cl == 150 then
		updateSayori('1b','k')
		cw('s',"But I was selfish.")
	elseif cl == 151 then
		cw('s',"I finally showed you what a horrible person I am.")
	elseif cl == 152 then
		cw('bl',"Tears streak down Sayori's face.")
	elseif cl == 153 then
		updateSayori('1b','v')
		cw('s',"I made you join the literature club because I was selfish.")
	elseif cl == 154 then
		cw('s',"And I was punished by my heart hurting in a way that I couldn't understand.")
	elseif cl == 155 then
		cw('s',"And now you came here and I made you hurt, too.")
	elseif cl == 156 then
		updateSayori('1b','t')
		cw('s',"I'm just weak and selfish.")
	elseif cl == 157 then
		cw('s',"That's all I am.")
	elseif cl == 158 then
		cw('s',"And that's why I'm going to accept these punishments.")
	elseif cl == 159 then
		updateSayori('1b','v')
		cw('s',"Because I deserve every last one...!")
	elseif cl == 160 then
		cw('bl',"Without thinking, I once again grab Sayori's shoulders.")
	elseif cl == 161 then
		cw('bl',"This time, I pull her into a tight embrace.")
	elseif cl == 162 then
		bgUpdate('black')
		hideAll()
		cw('s',"A-Ah--")
	elseif cl == 163 then
		cw('s',player.."...")
	elseif cl == 164 then
		cw('mc',"Sayori.")
	elseif cl == 165 then
		cw('mc',"I don't care if you feel selfish.")
	elseif cl == 166 then
		cw('mc',"I'm really happy that you convinced me to join the club.")
	elseif cl == 167 then
		cw('mc',"Seeing you every day makes it worthwhile enough.")
	elseif cl == 168 then
		cw('mc',"If I make friends with everyone else, then that's just a bonus.")
	elseif cl == 169 then
		cw('mc',"But please never underestimate how much I care about you.")
	elseif cl == 170 then
		cw('mc', "I wouldn't have it any other way.")
	elseif cl == 171 then
		cw('s',player.."...")
	elseif cl == 172 then
		cw('bl',"Sayori isn't hugging me back.")
	elseif cl == 173 then
		cw('bl',"Despite my arms being wrapped around her, Sayori's arms remain at her sides.")
	elseif cl == 174 then
		cw('bl',"She starts sobbing next to my ear.")
	elseif cl == 175 then
		cw('s',"No...")
	elseif cl == 176 then
		cw('s',"Don't do this...to me...")
	elseif cl == 177 then
		cw('s',"Please don't do this...")
	elseif cl == 178 then
		cw('s',player.."...")
	elseif cl == 179 then
		cw('s',"I...")
	elseif cl == 180 then
		cw('bl',"Sayori barely manages to speak between her sobs.")
	elseif cl == 181 then
		cw('bl',"I don't know if I'm doing the right thing.")
	elseif cl == 182 then
		cw('bl',"But all I want is for her to know that I care.")
	elseif cl == 183 then
		cw('mc',"If you have it in you to call yourself selfish, then you have to let me be selfish too.")
	elseif cl == 184 then
		cw('mc',"No matter what it takes, I'll figure out what needs to change.")
	elseif cl == 185 then
		cw('mc',"I'll make these feelings go away.")
	elseif cl == 186 then
		cw('mc',"And if there's anything that you need me to do...")
	elseif cl == 187 then
		cw('mc',"Then you'd better tell me.")
	elseif cl == 188 then
		cw('mc',"I'll get mad if you don't.")
	elseif cl == 189 then
		cw('s',"...")
	elseif cl == 190 then
		cw('s',"I...don't know...")
	elseif cl == 191 then
		cw('s',"I don't know...")
	elseif cl == 192 then
		cw('s',"I don't know.")
	elseif cl == 193 then
		cw('bl',"Gently, Sayori finally puts her arms around me in return.")
	elseif cl == 194 then
		cw('s',"I don't know anything.")
	elseif cl == 195 then
		cw('s',"It's all really scary...")
	elseif cl == 196 then
		cw('s',"I don't understand any of my feelings, "..player.."...")
	elseif cl == 197 then
		cw('s',"The only time I'm not feeling nothing is when I'm feeling pain.")
	elseif cl == 198 then
		cw('s',"But...")
	elseif cl == 199 then
		cw('s',"Your hugs are so warm...")
	elseif cl == 200 then
		cw('s',"...And that's really scary, too.")
	elseif cl == 201 then
		bgUpdate('sayori_bedroom')
		updateSayori('1b','v',80)
		cw('bl',"Sayori lets me go.")
	elseif cl == 202 then
		cw('bl',"As she does so, I let her go as well.")
    elseif cl == 203 then
		cw('mc',"The festival is tomorrow.")
	elseif cl == 204 then
		updateSayori('1b','k')
		cw('s',"Yeah...")
	elseif cl == 205 then
		cw('mc', "It's going to be fun, right?")
	elseif cl == 206 then
		cw('s',"Yeah.")
	elseif cl == 207 then
		cw('mc',"How would you like for me to spend it all with you?")
	elseif cl == 208 then
		updateSayori('1b','h')
		cw('s',"U-Um...")
	elseif cl == 209 then
		cw('s',"Ah--")
	elseif cl == 210 then
		cw('mc',"It's what I want.")
	elseif cl == 211 then
		cw('mc',"I promise.")
	elseif cl == 212 then
		updateSayori('1b','k')
		cw('s',"I...")
	elseif cl == 213 then
		cw('s',"I think that would be nice, then...")
	elseif cl == 214 then
		cw('mc',"Yeah.")
	elseif cl == 215 then
		cw('bl',"Sayori wipes her eyes.")
	elseif cl == 216 then
		cw('bl',"If I could spend the whole day here, I would.")
	elseif cl == 217 then
		cw('mc',"Of all days, this has to be the one where I have other plans...")
	elseif cl == 218 then
		cw('mc',"Maybe I should cancel--")
	elseif cl == 219 then
		updateSayori('1b','h')
		cw('s',"No, don't--!")
	elseif cl == 220 then
		updateSayori('1b','g')
		cw('s',"Please don't...")
	elseif cl == 221 then
		cw('s',"If you did that...then I really wouldn't forgive you.")
	elseif cl == 222 then
		cw('mc',"But...")
	elseif cl == 223 then
		cw('mc',"It's almost time for "..savevalue.." to meet me at my house...")
	elseif cl == 224 then
		cw('mc',"At the very least, do you want to come along and help out?")
	elseif cl == 225 then
		cw('mc',"It would be fun.")
	elseif cl == 226 then
		cw('bl',"To my surprise, Sayori shakes her head.")
	elseif cl == 227 then
		updateSayori('1b','d')
		cw('s',"I'm sorry.")
	elseif cl == 228 then
		cw('s',"I don't know if that would be very good for me today.")
	elseif cl == 229 then
		cw('s',"You understand, right?")
	elseif cl == 230 then
		cw('mc',"Ah...")
	elseif cl == 231 then
		cw('mc', "It's...kind of hard for me to fully understand.")
	elseif cl == 232 then
		cw('mc',"But I'm trying my hardest.")
	elseif cl == 233 then
		cw('s',"It's okay.")
	elseif cl == 234 then
		cw('s',"Don't worry too much about it.")
	elseif cl == 235 then
		updateSayori('4b','a')
		cw('s',"I'll see you tomorrow, okay?")
	elseif cl == 236 then
		cw('mc',"...Alright.")
	elseif cl == 237 then
		cw('mc',"I look forward to it.")
	elseif cl == 238 then
		bgUpdate('residential')
		hideAll()
		cw('bl',"I say goodbye to Sayori and exit her house.")
	elseif cl == 239 then
		cw('bl',"On the way home, I find myself still feeling uneasy.")
	elseif cl == 240 then
		cw('bl',"But it's hard for me to keep thinking about it when "..savevalue.." is about to come over, too...")
	elseif cl == 241 then
		cw('bl',"I think Sayori is right.")
	elseif cl == 242 then
		cw('bl',"I shouldn't be worrying too much, and we're definitely going to have a great time tomorrow.")
	elseif cl == 243 then
		cw('bl',"I should just focus on what's ahead of me!")
	elseif cl >= 244 then
		if savevalue == 'n' then
			ch4_exclusive_natsuki()
		else
			ch4_exclusive_yuri()
		end
	end
end

function ch4_exclusive_natsuki()
	if cl == 244 then
		audioUpdate('6')
		bgUpdate('house')
		cw('bl', "I spend only a few minutes back at home anxiously awaiting Natsuki's arrival.")
	elseif cl == 245 then
		cw('bl',"Before I know it, she texts me to let me know she's outside the front door.")
	elseif cl == 246 then
		cw('bl',"Without delay, I open the front door to let her in.")
	elseif cl == 247 then
		updateNatsuki('2b','j',80)
		cw('mc',"...")
	elseif cl == 248 then
		cw('n',"'Sup?")
	elseif cl == 249 then
		cw('mc',"...Hey.")
	elseif cl == 250 then
		cw('bl',"I don't know what I was expecting, but seeing Natsuki in something other than her school uniform totally threw me off.")
	elseif cl == 251 then
		cw('bl',"Seeing her in such cute clothes makes the uniform seem totally unfitting in comparison.")
	elseif cl == 252 then
		updateNatsuki('4b','c')
		cw('n',"Jeez, don't make it feel so awkward already!")
	elseif cl == 253 then
		cw('n',"It's gonna be a long afternoon, so don't be weird just because you're not used to seeing me outside of school.")
	elseif cl == 254 then
		cw('n',"Anyway, I'm coming in.")
	elseif cl == 255 then
		bgUpdate('kitchen')
		updateNatsuki('1b','j')
		cw('mc',"I see you brought a lot of stuff...")
	elseif cl == 256 then
		cw('bl',"Natsuki is carrying a large bag that is probably full of baking supplies.")
	elseif cl == 257 then
		updateNatsuki('2b','j')
		cw('n',"Well, I didn't want to come all this way to find out that your kitchen isn't equipped for the job.")
	elseif cl == 258 then
		cw('n',"You bought everything I asked you to, right?")
	elseif cl == 259 then
		cw('mc',"Yeah, I did.")
	elseif cl == 260 then
		cw('bl',"Yesterday, Natsuki asked me to buy a bunch of ingredients if I didn't already have them at home.")
	elseif cl == 261 then
		updateNatsuki('2b','l')
		cw('n',"Good!")
	elseif cl == 262 then
		cw('n',"Glad I could count on you to do your part.")
	elseif cl == 263 then
		cw('mc',"Well...of course.")
	elseif cl == 264 then
		cw('bl',"I'm surprised to hear Natsuki suddenly say that, rather than something snarky like she usually does.")
	elseif cl == 265 then
		cw('bl',"Could it be that she is a little different outside of school after all?")
	elseif cl == 266 then
		cw('mc',"Anyway, let's go to the kitchen...")
	elseif cl == 267 then
		updateNatsuki('2b','y')
		cw('n',"What, you're not even gonna offer to take this heavy bag from me?")
	elseif cl == 268 then
		cw('n',"Where's your hospitality, "..player.."?")
	elseif cl == 269 then
		cw('mc',"Come on...")
	elseif cl == 270 then
		cw('mc',"Since when did I need to be a gentleman?")
	elseif cl == 271 then
		cw('bl',"I grab the bag Natsuki holds out to me.")
	elseif cl == 272 then
		cw('mc',"Ghk--")
	elseif cl == 273 then
		cw('mc',"This is ridiculously heavy--!")
	elseif cl == 274 then
		updateNatsuki('4b','z')
		cw('n',"Ahaha!")
	elseif cl == 275 then
		cw('n',"I carried that all the way here.")
	elseif cl == 276 then
		updateNatsuki('4b','l')
		cw('n',"Are you impressed?")
	elseif cl == 277 then
		cw('mc',"I see now...")
	elseif cl == 278 then
		cw('mc',"Yeah, I am impressed, Natsuki.")
	elseif cl == 279 then
		cw('mc',"It seems like I always underestimate you.")
	elseif cl == 280 then
		updateNatsuki('4b','y')
		cw('n',"Ehehe~")
	elseif cl == 281 then
		cw('n',"It's because I'm so small, isn't it?")
	elseif cl == 282 then
		updateNatsuki('4b','a')
		cw('n',"You jerk.")
	elseif cl == 283 then
		cw('bl',"Natsuki hits a fist into my chest.")
	elseif cl == 284 then
		cw('mc',"Hey, hey.")
	elseif cl == 285 then
		cw('mc',"Your size has nothing to do with it.")
	elseif cl == 286 then
		cw('mc',"Do you really hate being small that much?")
	elseif cl == 287 then
		updateNatsuki('1b','k')
		cw('n',"Eh?")
	elseif cl == 288 then
		cw('n',"Um...")
	elseif cl == 289 then
		updateNatsuki('1b','c')
		cw('n',"It's not like I hate it...")
	elseif cl == 290 then
		cw('n',"I mean, sometimes I like proving people wrong when they only think I'm worth my size.")
	elseif cl == 291 then
		updateNatsuki('1b','a')
		cw('n',"It's fun when I get to be small and also better than other people.")
	elseif cl == 292 then
		cw('n',"But...")
	elseif cl == 293 then
		updateNatsuki('5b','w')
		cw('n',"...Jeez, never mind!")
	elseif cl == 294 then
		cw('n', "What are you making me say?")
	elseif cl == 295 then
		updateNatsuki('5b','q')
		cw('n',"Don't think you can make me talk about weird things just because we're not at school!")
	elseif cl == 296 then
		cw('n',"Are we getting started, or what? There's a lot of stuff I gotta teach you.")
	elseif cl == 297 then
		cw('mc',"Ahaha.")
	elseif cl == 298 then
		updateNatsuki('5b','n')
		cw('n',"What??")
	elseif cl == 299 then
		cw('mc',"That's a little bit more like you.")
	elseif cl == 300 then
		cw('mc',"You're more fun when you just speak your mind like that.")
	elseif cl == 301 then
		updateNatsuki('1b','m')
		cw('n',"H-Hey!")
	elseif cl == 302 then
		cw('n',"Now you are treating me like a kid!")
	elseif cl == 303 then
		cw('n',"I was just trying to be a little nicer to you, you know.")
	elseif cl == 304 then
		updateNatsuki('1b','r')
		cw('n',"And just because I don't have a mature and sexy figure like Yuri doesn't mean you should treat me like--")
	elseif cl == 305 then
		updateNatsuki('1b','o')
		cw('n',"A-Ah--")
	elseif cl == 306 then
		cw('bl',"Natsuki catches her words, and her face turns red.")
	elseif cl == 307 then
		cw('mc', "Natsuki...")
	elseif cl == 308 then
		updateNatsuki('1b','p')
		cw('n', "Forget it!")
	elseif cl == 309 then
		cw('n',"I didn't say anything!")
	elseif cl == 310 then
		cw('mc',"I should apologize.")
	elseif cl == 311 then
		updateNatsuki('1b','h')
		cw('n',"Eh?")
	elseif cl == 312 then
		cw('mc',"I appreciate that you were trying to be nicer.")
	elseif cl == 313 then
		cw('mc',"I should have been a little more considerate, too.")
	elseif cl == 314 then
		cw('mc',"But also...")
	elseif cl == 315 then
		cw('mc',"If that's what you're thinking, then you should know that there are tons of guys who are into body types like yours.")
	elseif cl == 316 then
		updateNatsuki('1b','q')
		cw('n',"Ah...")
	elseif cl == 317 then
		cw('n',"How would...you know that, anyway?")
	elseif cl == 318 then
		cw('mc',"Just trust me on this one.")
	elseif cl == 319 then
		cw('n', "...")
	elseif cl == 320 then
		updateNatsuki('5b','x')
		cw('n',"...Gross.")
	elseif cl == 321 then
		cw('mc',"Hey!")
	elseif cl == 322 then
		cw('mc',"Was that to me?")
	elseif cl == 323 then
		updateNatsuki('5b','w')
		cw('n',"Who else?")
	elseif cl == 324 then
		cw('mc',"Man...")
	elseif cl == 325 then
		cw('mc',"Let's just get started already.")
	elseif cl == 326 then
		updateNatsuki('2b','l')
		cw('n', "Ahaha!")
	elseif cl == 327 then
		cw('n',"You get all sour when a girl calls you gross.")
	elseif cl == 328 then
		updateNatsuki('2b','d')
		cw('n',"I finally found your weakness, "..player..".")
	elseif cl == 329 then
		cw('bl',"Natsuki smiles deviously.")
	elseif cl == 330 then
		cw('mc',"Please spare me...")
	elseif cl == 331 then
		cw('bl',"Well, if Natsuki decides to dish out more insults like that, there's no way I'm not fighting back.")
	elseif cl == 332 then
		cw('bl',"But she's satisfied enough for now, finally starting to pull things out of her bag so we can get started.")
	elseif cl == 333 then
		event_initstart('wipe')
	elseif cl == 334 then
		scriptJump(901)
	elseif cl == 901 then
		cw('bl',"Before long, the whole kitchen is a mess.")
	elseif cl == 902 then
		cw('bl',"Spoons, dirty bowls, flour, spilled fluid, and plastic bags are strewn about every countertop.")
	elseif cl == 903 then
		cw('bl',"The mixer isn't big enough to make all the batter at once, so we've had to do it several times.")
	elseif cl == 904 then
		cw('bl',"Meanwhile, Natsuki is babysitting all of my movements to make sure I don't mess up her precious baking.")
	elseif cl == 905 then
		updateNatsuki('2b','k',80)
		cw('n',player..", where did you put the food coloring?")
	elseif cl == 906 then
		scriptJump(335)
	elseif cl == 335 then
		cw('n',"The batter's going in the oven soon, so I need to fill the trays.")
	elseif cl == 336 then
		cw('mc',"I think it's still in the bag next to the table.")
	elseif cl == 337 then
		cw('mc',"What are you using it for?")
	elseif cl == 338 then
		updateNatsuki('4b','l')
		cw('n', "To color the batter, of course!")
	elseif cl == 339 then
		updateNatsuki('4b','j')
		cw('n',"I'm making each tray a different color.")
	elseif cl == 340 then
		cw('n',"That way, even if the flavors aren't different, everyone can still pick their favorite.")
	elseif cl == 341 then
		cw('mc',"Ah, that's a cute idea.")
	elseif cl == 342 then
		cw('mc',"Are we doing anything like that with the icing?")
	elseif cl == 343 then
		updateNatsuki('4b','k')
		cw('n',"Do you want to?")
	elseif cl == 344 then
		cw('mc',"Ah...")
	elseif cl == 345 then
		cw('mc',"You're asking me?")
	elseif cl == 346 then
		cw('mc',"I don't really have a preference, so...")
	elseif cl == 347 then
		updateNatsuki('1b','m')
		cw('n', "Come on...")
	elseif cl == 348 then
		cw('n',"You're not putting any heart into this at all!")
	elseif cl == 349 then
		cw('n',"Can't you at least try to have fun?")
	elseif cl == 350 then
		cw('mc',"I'm having fun...")
	elseif cl == 351 then
		cw('bl',"I'm not really sure what Natsuki is trying to get out of me.")
	elseif cl == 352 then
		cw('bl',"Meanwhile, I see her separate the batter into smaller bowls and put a few drops of food coloring into each.")
	elseif cl == 353 then
		cw('mc',"Ah, that does look pretty cool.")
	elseif cl == 354 then
		updateNatsuki('2b','j')
		cw('n', "See?")
	elseif cl == 355 then
		cw('n',"It's not like baking is just about following instructions.")
	elseif cl == 356 then
		cw('n',"The presentation is where you get to be creative and have the most fun.")
	elseif cl == 357 then
		cw('n',"It's a million times more worth it in the end if just looking at it makes everyone's eyes lighten up.")
	elseif cl == 358 then
		cw('mc',"Like the ones you made on my first day, huh?")
	elseif cl == 359 then
		cw('bl',"I recall Natsuki proudly presenting her cat-shaped cupcakes, and Sayori and Monika's delighted expressions.")
	elseif cl == 360 then
		cw('bl',"I wonder if I can make Natsuki proud like that, too.")
	elseif cl == 361 then
		cw('mc',"Yeah...")
	elseif cl == 362 then
		cw('mc',"Maybe I will use the food coloring, then.")
	elseif cl == 363 then
		cw('n',"Sounds like you're starting to understand.")
	elseif cl == 364 then
		cw('n',"Just make sure you completely finish mixing the icing before you mess with the food coloring.")
	elseif cl == 365 then
		cw('mc',"Yeah, it's getting there.")
	elseif cl == 366 then
		cw('bl',"We were using the electric mixer for the batter, so I got stuck with a whisk and a huge bowl for the icing.")
	elseif cl == 367 then
		updateNatsuki('4b','c')
		cw('n',"Eh?")
	elseif cl == 368 then
		cw('n',"The icing's still all lumpy!")
	elseif cl == 369 then
		cw('n',"Are you even trying?")
	elseif cl == 370 then
		cw('mc',"Well, yeah...")
	elseif cl == 371 then
		cw('mc',"It'll just take a little longer.")
	elseif cl == 372 then
		updateNatsuki('4b','g')
		cw('n',"Jeez, I'll be here all night if you do it like that.")
	elseif cl == 373 then
		cw('n',"Here, look.")
	elseif cl == 374 then
		cw('bl',"Natsuki grabs the whisk from me and uses her other hand to tilt the bowl back.")
	elseif cl == 375 then
		updateNatsuki('4b','e')
		cw('n',"You really need to...beat...the crap out of it!")
	elseif cl == 376 then
		cw('bl',"After a few seconds, the consistency of the icing has already improved.")
	elseif cl == 377 then
		updateNatsuki('4b','a')
		cw('n',"See?")
	elseif cl == 378 then
		cw('bl',"As if to emphasize, Natsuki sticks a finger in the icing and pops it in her mouth.")
	elseif cl == 379 then
		cw('bl',"I reluctantly start to do the same.")
	elseif cl == 380 then
		updateNatsuki('1b','h')
		cw('n',"Hey!")
	elseif cl == 381 then
		cw('bl',"Natsuki suddenly grabs my wrist.")
	elseif cl == 382 then
		updateNatsuki('4b','h')
		cw('n',"I don't want your gross fingers in my icing.")
	elseif cl == 383 then
		cw('mc',"Your icing, eh?")
	elseif cl == 384 then
		cw('mc',"Are you forgetting who did all the work?")
	elseif cl == 385 then
		cw('bl',"I start to fight back, trying to inch my finger toward the bowl.")
	elseif cl == 386 then
		updateNatsuki('4b','y')
		cw('n',"Don't make me beat the crap out of you next!")
	elseif cl == 387 then
		cw('mc',"I'd like to see you try!")
	elseif cl == 388 then
		cw('bl',"I push harder, just enough for my finger to reach the icing.")
	elseif cl == 389 then
		cw('bl',"I triumphantly scoop some with my finger just as Natsuki tugs with all her might.")
	elseif cl == 390 then
		cw('mc',"Ah--!")
	elseif cl == 391 then
		cw('bl',"The force of Natsuki pulling me causes me to stumble, making her stumble in turn.")
	elseif cl == 392 then
		updateNatsuki('1b','x')
		cw('n',"Gross!")
	elseif cl == 393 then
		cw('n',"You got it on my face!")
	elseif cl == 394 then
		cw('mc',"Whose fault is that?!")
	elseif cl == 395 then
		cw('bl',"There's a big glob of icing on Natsuki's cheek.")
	elseif cl == 396 then
		updateNatsuki('1b','w')
		cw('n',"Nnn--")
	elseif cl == 397 then
		cw('bl',"She tries to reach it with her tongue, but it's too far away.")
	elseif cl == 398 then
		updateNatsuki('1b','r')
		cw('n',"Jeez...")
	elseif cl == 399 then
		cw('n',"You know what?")
	elseif cl == 400 then
		updateNatsuki('4b','d')
		cw('n',"Take this!")
	elseif cl == 401 then
		cw('bl',"Natsuki instead wipes it off with her finger before shoving her finger toward my own face.")
	elseif cl == 402 then
		cw('mc',"You wish--!")
	elseif cl == 403 then
		cw('bl',"I'm faster.")
	elseif cl == 404 then
		cw('bl',"I grab her wrist with my hand before it reaches my face.")
	elseif cl == 405 then
		cw('bl',"Natsuki tries to use her other hand to fight back, but I grab that one as well.")
	elseif cl == 406 then
		hideAll()
		persistent.clear[5] = 1
		if xaload == 0 then
			savepersistent()
		end
		bgUpdate('cg/n_cg3_cake')
		cgUpdate('n_cg3_exp1')
		cw('n',"Ahahaha! Stop!")
	elseif cl == 407 then
		cw('mc',"Not until you apologize for calling me gross!")
	elseif cl == 408 then
		cw('n',"Fine, fine!")
	elseif cl == 409 then
		cw('n',"I'm sorry for calling you gross.")
	elseif cl == 410 then
		cw('n',"You know I don't mean it.")
	elseif cl == 411 then
		cw('n',"It's just fun seeing you react to it.")
	elseif cl == 412 then
		cw('n',"...You do that to me all the time, you know!")
	elseif cl == 413 then
		cw('n',"Saying dumb things just to get a reaction out of me.")
	elseif cl == 414 then
		cw('n',"You really shouldn't tease girls like that.")
	elseif cl == 415 then
		cw('mc',"Is that so?")
	elseif cl == 416 then
		cw('mc',"In that case, I probably shouldn't do this, either...")
	elseif cl == 417 then
		bgUpdate('cg/n_cg3_base')
		cw('bl',"I take Natsuki's finger and put it in my mouth, licking off the icing.")
	elseif cl == 418 then
		cgUpdate('n_cg3_exp2')
		cw('n',"W-W-What--?")
	elseif cl == 419 then
		cw('n',"D-Did you seriously just--")
	elseif cl == 420 then
		cw('n',"A-Ah--")
	elseif cl == 421 then
		cw('bl',"Natsuki is so surprised that she can't even figure out how to get mad at me.")
	elseif cl == 422 then
		cw('bl',"Her face is entirely red.")
	elseif cl == 423 then
		cgHide()
		cw('n',player.."...")
	elseif cl == 424 then
		cw('n', "You really shouldn't do that kind of thing to girls...unless you really like them...")
	elseif cl == 425 then
		cw('n',"You know that...right?")
	elseif cl == 426 then
		cw('mc',"...")
	elseif cl == 427 then
		cw('bl',"What kind of question is she asking me, just like that?")
	elseif cl == 428 then
		cw('bl',"How did the mood turn to this so quickly?")
	elseif cl == 429 then
		cw('mc',"I...")
	elseif cl == 430 then
		cw('bl',"Natsuki gazes at me in silence.")
	elseif cl == 431 then
		cw('bl',"I notice her shallow breaths.")
	elseif cl == 432 then
		cw('bl',"Why am I starting to feel dizzy...?")
	elseif cl == 433 then
		cw('n',"Eh?!")
	elseif cl == 434 then
		bgUpdate('kitchen')
		cw('bl',"Out of nowhere, the fire alarm starts going off.")
	elseif cl == 435 then
		cw('bl',"Natsuki rushes over to the oven.")
	elseif cl == 436 then
		cw('mc',"Is something burning?")
	elseif cl == 437 then
		cw('mc',"I thought you didn't put the cupcakes in yet.")
	elseif cl == 438 then
		updateNatsuki('1b','w',80)
		cw('n',"*Cough*")
	elseif cl == 439 then
		cw('n',"No wonder...")
	elseif cl == 440 then
		updateNatsuki('1b','b')
		cw('n',"You left a dirty tray in here, dummy!")
	elseif cl == 441 then
		cw('n',"How could you make a mistake like that?")
	elseif cl == 442 then
		cw('mc',"You should have checked before turning the oven on!")
	elseif cl == 443 then
		updateNatsuki('1b','s')
		cw('n',"Don't blame me for your mistakes!")
	elseif cl == 444 then
		cw('n',"Jeez...")
	elseif cl == 445 then
		cw('bl',"Natsuki uses an oven mitt to grab the blackened tray out of the oven.")
	elseif cl == 446 then
		cw('bl',"She sets it on top of the stove.")
	elseif cl == 447 then
		cw('bl',"In another moment, the fire alarm stops.")
	elseif cl == 448 then
		updateNatsuki('1b','q')
		cw('n',"Anyway...")
	elseif cl == 449 then
		cw('n',"I'm...putting them in the oven now.")
	elseif cl == 450 then
		cw('mc',"Yeah...")
	elseif cl == 451 then
		cw('bl',"The tension from the moment before still lingers over our heads.")
	elseif cl == 452 then
		cw('bl',"But the moment has already been lost.")
	elseif cl == 453 then
		cw('bl',"I watch as Natsuki slides the cupcake trays into the oven.")
	elseif cl == 454 then
		cw('bl',"Then, I reluctantly pick up the whisk and continue with the icing, like nothing ever happened.")
	elseif cl == 455 then
		event_initstart('wipe')
		
	elseif cl == 456 then
		updateNatsuki('4b','z')
		cw('n',"Ahh, that smells so good!")
	elseif cl == 457 then
		cw('bl',"The cupcakes are ready to be pulled out of the oven.")
	elseif cl == 458 then
		cw('bl',"As soon as Natsuki opens the oven door, a blast of sweet-smelling warm air fills the room.")
	elseif cl == 459 then
		updateNatsuki('4b','l')
		cw('n',"Look at how cute they all look!")
	elseif cl == 460 then
		cw('bl',"She proudly shows off the different-colored cupcakes in each of the trays.")
	elseif cl == 461 then
		cw('mc',"They'll look even better once we add the icing.")
	elseif cl == 462 then
		updateNatsuki('2b','a')
		cw('n',"Not like you need to tell me that!")
	elseif cl == 463 then
		cw('n',"I brought decorating stuff, so I hope you can get creative.")
	elseif cl == 464 then
		cw('n',"Here, scoop the icing into these bags.")
	elseif cl == 465 then
		cw('bl',"Natsuki hands me some plastic bags.")
	elseif cl == 466 then
		updateNatsuki('2b','j')
		cw('n',"I have these nozzles that will make it look nice and fluffy.")
	elseif cl == 467 then
		cw('n',"This one can even make flowers!")
	elseif cl == 468 then
		cw('n',"We probably won't be using it this time, though.")
	elseif cl == 469 then
		cw('mc',"What's this one for?")
	elseif cl == 470 then
		cw('bl',"I pick up one of the nozzles that has a much thinner tip than the others.")
	elseif cl == 471 then
		updateNatsuki('4b','k')
		cw('n',"That one's really thin, so you can use it to make stripes or other patterns.")
	elseif cl == 472 then
		cw('n',"But you can also use it to write stuff on a cake.")
	elseif cl == 473 then
		cw('n',"Like, 'happy birthday!' or whatever.")
	elseif cl == 474 then
		cw('mc',"Huh, I see...")
	elseif cl == 475 then
		cw('mc',"That gives me an idea, actually.")
	elseif cl == 476 then
		cw('n',"Eh?")
	elseif cl == 477 then
		cw('mc',"Well, it's a literature event, right?")
	elseif cl == 478 then
		cw('mc',"We could make it more literature-themed by writing a different word on each of the cupcakes.")
	elseif cl == 479 then
		cw('mc',"It would be fun to see people choose their cupcake based on a word they like.")
	elseif cl == 480 then
		updateNatsuki('1b','q')
		cw('n',"Uu...")
	elseif cl == 481 then
		cw('mc',"Hm?")
	elseif cl == 482 then
		cw('n',"I was kind of expecting you to say something really stupid...")
	elseif cl == 483 then
		updateNatsuki('1b','s')
		cw('n',"But that's actually...a really cute idea, so...")
	elseif cl == 484 then
		cw('mc',"Ahaha.")
	elseif cl == 485 then
		cw('mc',"Maybe I'm getting it from you.")
	elseif cl == 486 then
		updateNatsuki('5b','h')
		cw('n',"W-What's that supposed to mean?")
	elseif cl == 487 then
		cw('n',"I'm not cute!")
	elseif cl == 488 then
		cw('mc',"Come on...")
	elseif cl == 489 then
		cw('mc',"We're not at school, nobody's judging.")
	elseif cl == 490 then
		cw('mc',"You can't dress and act like this and not expect me to think you're cute.")
	elseif cl == 491 then
		updateNatsuki('5b','s')
		cw('n',"W-Well...")
	elseif cl == 492 then
		cw('bl',"Natsuki's voice trails off.")
	elseif cl == 493 then
		cw('n',"Same with you...")
	elseif cl == 494 then
		cw('mc',"Eh?")
	elseif cl == 495 then
		cw('mc',"Did you say something?")
	elseif cl == 496 then
		updateNatsuki('1b','w')
		cw('n',"N-No, nothing!")
	elseif cl == 497 then
		cw('n',"Let's just do the icing!")
	elseif cl == 498 then
		cw('bl',"Natsuki picks up the pace and fastens a nozzle onto each of the bags.")
	elseif cl == 499 then
		updateNatsuki('1b','h')
		cw('n',"There's a lot to do, so we shouldn't be wasting time!")
	elseif cl == 500 then
		cw('n',"Here, I'll show you how to do it.")
	elseif cl == 501 then
		cw('bl',"Without giving me a chance to think about before, Natsuki quickly moves on.")
	elseif cl == 502 then
		cw('bl',"She shows me how to apply the icing, and then we each get to work.")
	elseif cl == 503 then
		event_initstart('wipe')

    elseif cl == 504 then
		cw('bl',"When we're finally finished, Natsuki puts them all side by side to admire our work.")
	elseif cl == 505 then
		updateNatsuki('4b','l',80)
		cw('n',"Look at how pretty they are together!")
	elseif cl == 506 then
		cw('mc', "Yeah, they are, aren't they?")
	elseif cl == 507 then
		updateNatsuki('1b','m')
		cw('n',"Uu... I wish I could have one now!")
	elseif cl == 508 then
		cw('mc',"Well, there's no reason you can't, right?")
	elseif cl == 509 then
		cw('mc',"I don't see any harm in that.")
	elseif cl == 510 then
		updateNatsuki('1b','c')
		cw('n',"Well, yeah, but...")
	elseif cl == 511 then
		cw('n',"My dad's making dinner tonight, so I really need to save my appetite.")
	elseif cl == 512 then
		cw('mc',"Ahaha.")
	elseif cl == 513 then
		cw('mc', "Sayori's the exact opposite in that regard.")
    elseif cl == 514 then
		cw('mc',"If she was here, we'd probably be down ten cupcakes already.")
	elseif cl == 515 then
		cw('mc',"And she would still eat dinner.")
	elseif cl == 516 then
		updateNatsuki('4b','g')
		cw('n',"Come on, that's just unhealthy!")
	elseif cl == 517 then
		updateNatsuki('4b','s')
		cw('n',"Besides, when my dad cooks, I need to eat as much of it as I can...")
	elseif cl == 518 then
		updateNatsuki('4b','q')
		cw('n', "...Well, anyway!")
	elseif cl == 519 then
		updateNatsuki('4b','c')
		cw('n',"I was hoping we would have time for manga, but I need to be home for dinner...")
	elseif cl == 520 then
		cw('mc',"Ah, already?")
	elseif cl == 521 then
		cw('mc',"That's a shame.")
	elseif cl == 522 then
		updateNatsuki('1b','g')
		cw('n',"It's your fault for working so slowly!")
	elseif cl == 523 then
		cw('n',"You should have thought about that.")
	elseif cl == 524 then
		cw('n',"It's not like you'll always have this chance.")
	elseif cl == 525 then
		cw('mc',"Man...")
	elseif cl == 526 then
		cw('bl',"As usual, Natsuki places the blame on me.")
	elseif cl == 527 then
		updateNatsuki('2b','k')
		cw('n',"You can bring the cupcakes tomorrow, right?")
	elseif cl == 528 then
		cw('n',"If you and Sayori each carry some, then you can probably do it in one trip.")
	elseif cl == 529 then
		cw('mc',"Yeah, I can do that.")
	elseif cl == 530 then
		cw('mc',"And don't worry, I won't let her eat any.")
	elseif cl == 531 then
		updateNatsuki('2b','a')
		cw('n',"Ahaha.")
	elseif cl == 532 then
		cw('n',"I wish she would listen to me the way she listens to you.")
	elseif cl == 533 then
		cw('mc',"Ah...")
	elseif cl == 534 then
		cw('mc',"Yeah.")
	elseif cl == 535 then
		hideNatsuki()
		cw('bl',"I again think back to the conversation I had with Sayori earlier today.")
	elseif cl == 536 then
		cw('bl',"I felt so helpless.")
	elseif cl == 537 then
		cw('bl',"Sayori always does listen to me, but at that point it felt like she couldn't listen to me at all.")
	elseif cl == 538 then
		updateNatsuki('4b','l',80)
		cw('n',"Okay, I'm all packed up.")
	elseif cl == 539 then
		cw('n',"Good work today!")
	elseif cl == 540 then
		cw('mc',"You too.")
	elseif cl == 541 then
		cw('mc',"I'll walk you out...I guess.")
	elseif cl == 542 then
		event_initstart('wipe','house')
		
	elseif cl == 543 then
		cw('bl',"Just like that, Natsuki is already about to leave.")
	elseif cl == 544 then
		cw('bl',"It feels like the afternoon went by in a flash.")
	elseif cl == 545 then
		cw('bl',"More than that...")
	elseif cl == 546 then
		cw('bl',"Did I even take the opportunity to get closer to her, like I wanted?")
	elseif cl == 547 then
		updateNatsuki('1b','h',80)
		cw('n',"Well...")
	elseif cl == 548 then
		cw('n',"I guess I'll be off, then...")
	elseif cl == 549 then
		updateNatsuki('1b','q')
		cw('n',"Thanks for all the help and everything...")
	elseif cl == 550 then
		cw('n',"I'll see you tomorrow.")
	elseif cl == 551 then
		cw('mc',"Wait, Natsuki.")
	elseif cl == 552 then
		updateNatsuki('1b','h')
		cw('n',"Eh?")
	elseif cl == 553 then
		cw('mc',"What you said before...about not always having this chance.")
	elseif cl == 554 then
		cw('mc', "It doesn't have to be that way at all!")
	elseif cl == 555 then
		cw('mc',"I had fun today.")
	elseif cl == 556 then
		cw('mc',"You showed me how fun baking can be, like you wanted.")
	elseif cl == 557 then
		cw('mc',"But aside from that...")
	elseif cl == 558 then
		cw('mc',"You can come over anytime, okay?")
	elseif cl == 559 then
		cw('mc',"I think that if possible, I'd like to spend more time like this.")
	elseif cl == 560 then
		cw('mc',"If you want to read manga, or go out somewhere--")
	elseif cl == 561 then
		updateNatsuki('1b','m')
		cw('n',"Um--")
	elseif cl == 562 then
		cw('n',"Do you...really mean that?")
	elseif cl == 563 then
		cw('bl',"Natsuki looks at me tensely, like she's trying to hide her expression.")
	elseif cl == 564 then
		cw('mc',"Yeah.")
	elseif cl == 565 then
		cw('mc',"I want to spend more time with you.")
	elseif cl == 566 then
		updateNatsuki('1b','q')
		cw('n',player.."...")
	elseif cl == 567 then
		cw('n',"I thought you only cared about getting this done...")
	elseif cl == 568 then
		updateNatsuki('1b','r')
		cw('n',"Uu...")
	elseif cl == 569 then
		updateNatsuki('1b','n')
		cw('n',"I'm sorry I had to leave so early today.")
	elseif cl == 570 then
		cw('n',"I really didn't want to!")
	elseif cl == 571 then
		cw('n',"I would really...stay here longer if I could.")
	elseif cl == 572 then
		cw('n',"I feel the same way as you, so...")
	elseif cl == 573 then
		audioUpdate('0')
		updateNatsuki('f_1b','f_i')
		cw('bl',"Natsuki suddenly gets closer to me.")
	elseif cl == 574 then
		cw('mc',"Wait, Natsuki--")
	elseif cl == 575 then
		cw('bl',"Standing inches from me, Natsuki looks up at me.")
	elseif cl == 576 then
		cw('bl',"I feel her fingers gently clutch at the sides of my shirt, as if holding onto me.")
	elseif cl == 577 then
		cw('bl',"Her rose-colored cheeks and matching eyes fill my vision, along with her slightly-parted lips.")
	elseif cl == 578 then
		cw('bl',"What is happening...?")
	elseif cl == 579 then
		cw('bl',"My head starts to go dizzy as I feel her soft breaths against me.")
	elseif cl == 580 then
		updateNatsuki('f_1b','f_h')
		cw('n',"I've felt it...")
	elseif cl == 581 then
		cw('n',"For a while now...")
	elseif cl == 582 then
		updateNatsuki('f_1b','f_o')
		cw('n', "--!!")
	elseif cl == 583 then
		updateNatsuki('1b','o')
		cw('bl',"Natsuki suddenly jumps back.")
	elseif cl == 584 then
		cw('n',"S-Sayori?!")
	elseif cl == 585 then
		cw('mc',"Eh?!")
	elseif cl == 586 then
		updateNatsuki('1b','o',150)
		updateSayori('1b','l',10)
		cw('s',"Ah...")
	elseif cl == 587 then
		cw('s',"H-Hi, "..player.."...")
	elseif cl == 588 then
		cw('mc',"Sayori--!")
	elseif cl == 589 then
		cw('mc',"Just now, we weren't--")
	elseif cl == 590 then
		updateSayori('1b','q')
		cw('s',"Ehehe~")
	elseif cl == 591 then
		cw('s',"It's okay, "..player..".")
	elseif cl == 592 then
		updateSayori('1b','a')
		cw('s',"I just stopped by to say hi~")
	elseif cl == 593 then
		updateNatsuki('5b','q')
		cw('n',"A-Ah...")
	elseif cl == 594 then
		cw('n',"Well...")
	elseif cl == 595 then
		updateNatsuki('5b','w')
		cw('n',"Y-You should have come a little earlier!")
	elseif cl == 596 then
		cw('n',"I'm already on my way out, so...")
	elseif cl == 597 then
		updateSayori('1b','h')
		cw('s',"Aw, really?")
	elseif cl == 598 then
		cw('s',"That's too bad...")
	elseif cl == 599 then
		updateNatsuki('2b','q')
		cw('n',"Yeah, well...")
	elseif cl == 600 then
		cw('n',"I'll still see you at the festival tomorrow, so it's fine.")
    elseif cl == 601 then
		updateNatsuki('2b','b')
		cw('n',"Just don't eat any cupcakes before then!")
	elseif cl == 602 then
		cw('n',"Anyway, later!")
	elseif cl == 603 then
		hideNatsuki()
		cw('bl',"Clearly flustered, Natsuki hurries off, and Sayori waves goodbye.")
	elseif cl >= 604 and cl < 901 then
		ch4_end()
	end
end

function ch4_exclusive_yuri()
	if cl == 244 then
		audioUpdate('6')
		bgUpdate('house')
		cw('bl',"As I approach my house, I see something that makes me feel a moment of panic.")
	elseif cl == 245 then
		cw('mc',"Yuri--?")
	elseif cl == 246 then
		updateYuri('2b','q',80)
		cw('y',"Ah...")
	elseif cl == 247 then
		cw('y',"Thank goodness...")
	elseif cl == 248 then
		cw('mc',"You're a little early...")
	elseif cl == 249 then
		cw('mc',"I'm sorry I wasn't home yet!")
	elseif cl == 250 then
		cw('mc',"Were you waiting for a long time?")
	elseif cl == 251 then
		updateYuri('1b','f')
		cw('y',"No, I just got here.")
	elseif cl == 252 then
		updateYuri('1b','h')
		cw('y',"But I started to get really nervous when nobody answered the doorbell...")
	elseif cl == 253 then
		cw('mc',"You always could have texted me.")
	elseif cl == 254 then
		cw('mc',"If I had known, I would have reassured you and hurried more on my way home.")
	elseif cl == 255 then
		updateYuri('2b','v')
		cw('y',"Ah...I suppose that's true...")
	elseif cl == 256 then
		cw('y',"I didn't think of that...for some reason.")
	elseif cl == 257 then
		cw('bl',"It should be common sense to do that, but I decide to ignore it.")
	elseif cl == 258 then
		cw('mc',"Anyway...let's go inside.")
	elseif cl == 259 then
		cw('mc',"I see you brought a lot of stuff with you.")
	elseif cl == 260 then
		updateYuri('1b','a')
		cw('y',"That's right.")
	elseif cl == 261 then
		cw('y',"And did you manage to find everything I asked you to buy as well?")
	elseif cl == 262 then
		cw('mc',"Yeah, pretty much.")
	elseif cl == 263 then
		cw('mc',"At least, I hope I got everything right.")
	elseif cl == 264 then
		cw('y',"I'm sure it will be fine.")
	elseif cl == 265 then
		bgUpdate('bedroom')
		hideAll()
		cw('bl',"I take Yuri to my room.")
	elseif cl == 266 then
		cw('bl', "The first thing she does is glance around curiously, which makes me feel anxious.")
	elseif cl == 267 then
		updateYuri('2b','m',80)
		cw('y',"It's so clean...")
	elseif cl == 268 then
		cw('mc',"Ahaha...")
	elseif cl == 269 then
		cw('mc',"I cleaned it before you came over, so...")
	elseif cl == 270 then
		updateYuri('2b','a')
		cw('y',"That's very considerate of you to do.")
	elseif cl == 271 then
		cw('mc',"Ah, no...")
	elseif cl == 272 then
		cw('mc',"I would be really embarrassed for my room to be a mess while you were here.")
	elseif cl == 273 then
		updateYuri('1b','a')
		cw('y',"Hmm...")
	elseif cl == 274 then
		cw('y',"Well, I do enjoy cleaning...")
	elseif cl == 275 then
		cw('y',"I would have gladly helped you clean.")
	elseif cl == 276 then
		cw('mc', "Ah--")
	elseif cl == 277 then
		cw('mc',"That would be even more embarrassing!")
	elseif cl == 278 then
		updateYuri('1b','e')
		cw('mc',"Wait, don't look in there--!")
	elseif cl == 279 then
		cw('bl',"I snatch Yuri's wrist, which was in the process of opening a desk drawer of mine.")
	elseif cl == 280 then
		updateYuri('3b','n')
		cw('y',"A-Ah...")
	elseif cl == 281 then
		cw('y',"I'm sorry...!")
	elseif cl == 282 then
		updateYuri('4b','b2')
		cw('y',"I wasn't thinking for some reason...")
	elseif cl == 283 then
		cw('y',"I was just spacing out!")
	elseif cl == 284 then
		cw('mc',"It's fine, it's fine...")
	elseif cl == 285 then
		cw('bl',"I let go of Yuri's wrist.")
	elseif cl == 286 then
		updateYuri('1b','l')
		cw('bl',"She puts both of her hands firmly in her lap, as if making sure she's keeping track of them.")
	elseif cl == 287 then
		cw('mc',"So, um...")
	elseif cl == 288 then
		cw('mc',"Should we...get started?")
	elseif cl == 289 then
		updateYuri('2b','u')
		cw('y',"Ah...")
	elseif cl == 290 then
		cw('y',"Yes...")
	elseif cl == 291 then
		updateYuri('2b','f')
		cw('y',"Um, I have a few things planned that you can help with...")
	elseif cl == 292 then
		cw('y',"Decorations and other atmospheric enhancements.")
	elseif cl == 293 then
		cw('mc',"Atmospheric enhancements...?")
	elseif cl == 294 then
		updateYuri('1b','a')
		cw('y',"You know...")
	elseif cl == 295 then
		cw('y',"Mood lighting, aromatherapy candles...")
	elseif cl == 296 then
		cw('mc',"Oh, wow.")
	elseif cl == 297 then
		cw('mc',"I didn't know you planned on taking it that far.")
	elseif cl == 298 then
		updateYuri('1b','c')
		cw('y',"Of course.")
	elseif cl == 299 then
		cw('y',"I want to help take our guests to a faraway place.")
	elseif cl == 300 then
		updateYuri('1b','a')
		cw('y',"Although many will stop by just out of curiosity...")
	elseif cl == 301 then
		updateYuri('1b','j')
		cw('y',"And for...cupcakes, I guess...")
	elseif cl == 302 then
		updateYuri('1b','a')
		cw('y',"I'm determined to provide an experience that will leave them wanting more.")
    elseif cl == 303 then
		cw('mc',"That's great.")
	elseif cl == 304 then
		cw('mc',"It's easy to forget that you're a pretty intense person.")
	elseif cl == 305 then
		updateYuri('1b','t')
		cw('y',"Ah--")
	elseif cl == 306 then
		updateYuri('2b','t')
		cw('y',"Intense...?")
	elseif cl == 307 then
		cw('mc',"I guess that's the best way to put it.")
	elseif cl == 308 then
		cw('y',"Is that...a bad thing?")
	elseif cl == 309 then
		cw('mc',"No, not at all.")
	elseif cl == 310 then
		cw('mc',"It's something that I like about you, actually.")
	elseif cl == 311 then
		updateYuri('3b','u')
		cw('y',"I-Is that so...?")
	elseif cl == 312 then
		cw('y',"That makes me feel relieved...")
	elseif cl == 313 then
		cw('y',"And kind of happy...")
	elseif cl == 314 then
		cw('mc',"Yeah, no need to be so anxious.")
	elseif cl == 315 then
		cw('mc',"You can relax a little.")
	elseif cl == 316 then
		updateYuri('3b','l')
		cw('y',"Relax...")
	elseif cl == 317 then
		updateYuri('1b','f')
		cw('y',"I brought some things for relaxation.")
	elseif cl == 318 then
		cw('y',"I was going to use them during the poetry event...")
	elseif cl == 319 then
		cw('mc',"Oh yeah? Like what?")
	elseif cl == 320 then
		cw('y',"Let's see...")
	elseif cl == 321 then
		cw('bl',"Yuri rummages through her bag.")
	elseif cl == 322 then
		cw('bl',"She pulls out a few candles and a wooden cylinder-   shaped object.")
	elseif cl == 323 then
		cw('y',"I did some shopping on the way here, so I happen to have these in my bag.")
	elseif cl == 324 then
		cw('y',"I planned to cover the windows in black paper and use the candles to light the room.")
	elseif cl == 325 then
		updateYuri('1b','a')
		cw('y',"I think that would be amazing, don't you?")
	elseif cl == 326 then
		cw('mc',"Yeah, that would be really neat.")
	elseif cl == 327 then
		cw('mc',"What's that wooden thing, though?")
	elseif cl == 328 then
		updateYuri('1b','f')
		cw('y',"Oh, this?")
	elseif cl == 329 then
		cw('y',"It's a diffuser for essential oils.")
	elseif cl == 330 then
		cw('y',"How familiar are you with aromatherapy?")
	elseif cl == 331 then
		cw('mc',"Not familiar at all...")
	elseif cl == 332 then
		updateYuri('1b','a')
		cw('y',"Ah, is that so?")
	elseif cl == 333 then
		cw('y',"It's one of my favorite contributors to a positive atmosphere.")
	elseif cl == 334 then
		cw('y',"Depending on the oils or herbs you choose, you can change the mood of the air itself.")
	elseif cl == 335 then
		cw('y',"You can even feel it permeate through your body.")
	elseif cl == 336 then
		updateYuri('3b','m')
		cw('y',"Relaxation, positive energy, romance, reflection...")
	elseif cl == 337 then
		cw('y',"It's almost like magic.")
	elseif cl == 338 then
		updateYuri('3b','a')
		cw('bl',"Yuri takes the cylinder and pushes a switch on the bottom.")
	elseif cl == 339 then
		cw('bl',"In just a moment, a thin ray of vapor begins to spout through a small hole on the top.")
	elseif cl == 340 then
		cw('mc', "Wow, that smells wonderful.")
	elseif cl == 341 then
		cw('mc',"What kind of mood is that one for?")
	elseif cl == 342 then
		updateYuri('1b','a')
		cw('y',"This is a Jasmine essential oil.")
	elseif cl == 343 then
		cw('y',"It smells a little sweet and flowery, right?")
	elseif cl == 344 then
		cw('mc',"Yeah, that's a good way to describe it.")
	elseif cl == 345 then
		updateYuri('1b','b')
		cw('y',"I chose Jasmine for the event because it provides more than relaxation.")
	elseif cl == 346 then
		cw('y',"Jasmine enhances your emotions and helps you feel them flow through your body.")
	elseif cl == 347 then
		updateYuri('1b','u')
		cw('y',"You feel warmer, and your heart pounds more heavily.")
	elseif cl == 348 then
		updateYuri('1b','a')
		cw('y',"Don't you think that will be perfect for sharing our poems?")
	elseif cl == 349 then
		cw('mc',"It does sound suitable...")
	elseif cl == 350 then
		cw('mc',"But you seem to know a lot about this, so I'll trust your opinion with anything.")
	elseif cl == 351 then
		updateYuri('1b','c')
		cw('bl',"Yuri smiles gently, clearly enjoying herself.")
	elseif cl == 352 then
		cw('bl',"She again reaches into her bag and pulls out several spools of thin ribbon.")
	elseif cl == 353 then
		updateYuri('1b','a')
		cw('mc',"What are those for?")
	elseif cl == 354 then
		updateYuri('1b','f')
		cw('y',"Well...")
	elseif cl == 355 then
		cw('y',"Did you purchase the origami paper I asked you to get?")
	elseif cl == 356 then
		cw('mc',"Yeah, I have it over here...")
	elseif cl == 357 then
		cw('y',"We won't be using the paper for folding origami.")
	elseif cl == 358 then
		cw('y',"What I'd like to do is write a different word on each paper.")
	elseif cl == 359 then
		cw('y',"We'll need about a hundred of them.")
	elseif cl == 360 then
		cw('mc',"Oh yeah?")
	elseif cl == 361 then
		cw('mc',"What will those be used for?")
	elseif cl == 362 then
		updateYuri('2b','f')
		cw('y',"Well, I'm going to cut pieces of ribbon to hang from the doorway of the classroom.")
	elseif cl == 363 then
		cw('y',"Then, we can fasten the paper onto the ribbons to create a doorway curtain.")
	elseif cl == 364 then
		updateYuri('2b','m')
		cw('y',"Wouldn't that be beautiful?")
	elseif cl == 365 then
		cw('y',"It would also catch the eye of those passing by the room...")
	elseif cl == 366 then
		updateYuri('2b','a')
		cw('y',"It may attract some to peek inside.")
	elseif cl == 367 then
		cw('mc',"That's really creative!")
	elseif cl == 368 then
		cw('mc',"I had no idea you'd be so good at this, Yuri.")
	elseif cl == 369 then
		updateYuri('4b','a2')
		cw('y',"Is...that so?")
	elseif cl == 370 then
		cw('y',"Well, I suppose I do get a little intense...as you'd put it.")
	elseif cl == 371 then
		updateYuri('3b','u')
		cw('y',"Uhuhu.")
	elseif cl == 372 then
		cw('bl',"Yuri giggles with red cheeks.")
	elseif cl == 373 then
		cw('bl',"Is it just me, or is she more relaxed when it's just the two of us?")
	elseif cl == 374 then
		cw('bl',"Or maybe it's the excitement she feels from sharing something that she enjoys.")
	elseif cl == 375 then
		updateYuri('1b','a')
		cw('y',"Here's a marker, "..player..".")
	elseif cl == 376 then
		cw('y',"You can write any characters you want.")
	elseif cl == 377 then
		cw('y',"I'll help you once I finish cutting the ribbons.")
	elseif cl == 378 then
		cw('mc',"Ah, alright.")
	elseif cl == 379 then
		cw('bl',"Sitting on the floor together, the two of us get to work.")
	elseif cl == 380 then
		cw('bl',"I carefully draw a different character on each paper, doing my best to manage my bad handwriting.")
	elseif cl == 381 then
		cw('bl',"Yuri unravels a long strand of red ribbon to her desired length.")
	elseif cl == 382 then
		cw('bl',"Then, she reaches into her bag once more and pulls out a pocket knife.")
	elseif cl == 383 then
		cw('mc',"Eh...?")
	elseif cl == 384 then
		cw('bl',"The knife is strangely beautiful.")
	elseif cl == 385 then
		cw('bl',"The silver handle has an intricate pattern of waves etched into it.")
	elseif cl == 386 then
		cw('bl',"The blade itself is gently tinted blue.")
	elseif cl == 387 then
		cw('mc',"That's no ordinary pocket knife...")
	elseif cl == 388 then
		cw('mc', "It looks really fancy.")
	elseif cl == 389 then
		updateYuri('4b','b2')
		cw('y',"A-Ah...")
	elseif cl == 390 then
		cw('y',"Well...")
	elseif cl == 391 then
		cw('bl',"Embarrassed, Yuri looks away.")
	elseif cl == 392 then
		cw('mc',"What is it?")
	elseif cl == 393 then
		cw('y',"You're going to think it's weird...")
	elseif cl == 394 then
		cw('mc',"Yuri, whatever it is, I have no reason to judge.")
	elseif cl == 395 then
		cw('mc',"To each their own, you know?")
	elseif cl == 396 then
		cw('y',"If you promise you won't be weirded out...")
	elseif cl == 397 then
		cw('mc',"Yeah, I promise.")
	elseif cl == 398 then
		updateYuri('2b','i')
		cw('y',"Alright...")
	elseif cl == 399 then
		cw('y',"The thing is, I'm kind of into knives...")
	elseif cl == 400 then
		cw('y',"They're just...so pretty...")
	elseif cl == 401 then
		updateYuri('2b','v')
		cw('y',"I-I can't help it!")
	elseif cl == 402 then
		cw('y',"I don't know what it is...")
	elseif cl == 403 then
		cw('y',"The combination of craftsmanship and feeling of danger, maybe...")
	elseif cl == 404 then
		updateYuri('4b','b2')
		cw('y',"Uu, what am I saying...?")
	elseif cl == 405 then
		cw('y',"Please don't think I'm weird for this...")
	elseif cl == 406 then
		cw('mc',"Ahaha.")
	elseif cl == 407 then
		cw('y',"You're laughing at me...")
	elseif cl == 408 then
		cw('mc',"No, I'm not laughing at you.")
	elseif cl == 409 then
		cw('mc',"It's just funny how nervous you got about sharing.")
	elseif cl == 410 then
		cw('mc',"It's...well, it's an interesting thing to be into, I guess.")
	elseif cl == 412 then
		cw('mc',"But I think it kind of suits you.")
	elseif cl == 413 then
		updateYuri('2b','t')
		cw('y',"Suits me...?")
	elseif cl == 414 then
		cw('mc',"Yeah... It's kind of intense. Ahaha.")
	elseif cl == 415 then
		cw('mc',"Besides, it's a really cool-looking knife, I can't deny that.")
	elseif cl == 416 then
		updateYuri('2b','u')
		cw('y',"It is, isn't it...?")
	elseif cl == 417 then
		cw('bl',"Yuri relaxes her expression once again.")
	elseif cl == 418 then
		updateYuri('1b','a')
		cw('y',"Would you like to hold it?")
	elseif cl == 419 then
		cw('mc',"Sure, I'll check it out.")
	elseif cl == 420 then
		cw('bl',"Yuri carefully hands me the knife, with the handle facing me.")
	elseif cl == 421 then
		cw('bl',"I take it and turn it around in my hands.")
	elseif cl == 422 then
		cw('bl',"It feels heavy, and extremely solid.")
	elseif cl == 423 then
		cw('bl',"Where do you even get a knife like this...?")
	elseif cl == 424 then
		cw('bl',"Curious of its sharpness, I feel the point of the knife with my index finger.")
    elseif cl == 425 then
		cw('mc',"Ow--!")
	elseif cl == 426 then
		updateYuri('3b','n')
		cw('y',player.."--!!")
	elseif cl == 427 then
		cw('y',"Why did you do that?!")
	elseif cl == 428 then
		cw('mc',"I didn't expect it to be that sharp...!")
	elseif cl == 429 then
		cw('mc',"I barely touched it at all.")
	elseif cl == 430 then
		cw('y',"I-It's my fault!")
	elseif cl == 431 then
		updateYuri('3b','o')
		cw('y',"I should have warned you...")
	elseif cl == 432 then
		cw('y',"This knife is extremely sharp...")
	elseif cl == 433 then
		cw('y',"It can cut through skin like it's paper.")
	elseif cl == 434 then
		updateYuri('2b','v')
		cw('y',"Oh no...")
	elseif cl == 435 then
		cw('bl',"A small drop of blood trickles down the side of my finger.")
	elseif cl == 436 then
		cw('bl',"Yuri takes my hand and gives the wound a closer look.")
	elseif cl == 437 then
		updateYuri('2b','t')
		cw('y',"Ah...")
	elseif cl == 438 then
		cw('bl',"She stares at it and noticeably fidgets.")
	elseif cl == 439 then
		cw('mc',"If you're squeamish, I'll go wash it off now--")
	elseif cl == 440 then
		cw('mc',"A-Ah!")
	elseif cl == 441 then
		cw('bl',"Without warning, Yuri puts my finger in her mouth and licks the wound.")
	elseif cl == 442 then
		cw('bl',"I feel her tongue curl around my finger.")
	elseif cl == 443 then
		cw('bl',"Startled, I instinctively pull my hand back.")
	elseif cl == 444 then
		cw('y',"O-Oh...")
	elseif cl == 445 then
		updateYuri('3b','o')
		cw('y',"P-Please forgive me!")
	elseif cl == 446 then
		cw('y',"I wasn't thinking!")
	elseif cl == 447 then
		updateYuri('4b','c2')
		cw('y',"I...")
	elseif cl == 448 then
		cw('bl',"Yuri lowers her head, her face burning up.")
	elseif cl == 449 then
		cw('mc',"Yuri...")
	elseif cl == 450 then
		cw('y',"That's the most embarrassing thing I've ever done...")
	elseif cl == 451 then
		cw('y',"How could I do something like that??")
	elseif cl == 452 then
		cw('y',"I'm sorry, I'm sorry...")
	elseif cl == 453 then
		cw('mc',"Ah...")
	elseif cl == 454 then
		cw('bl',"Sure, it was a little weird, and it took me by surprise...")
	elseif cl == 455 then
		cw('bl',"But I guess she was just trying to help, right...?")
	elseif cl == 456 then
		cw('mc',"Yuri, I think you're overreacting a little...")
	elseif cl == 457 then
		cw('y',"Uuuh...")
	elseif cl == 458 then
		cw('bl',"She doesn't lift her head.")
	elseif cl == 459 then
		cw('bl',"What if she doesn't recover from this for the rest of the afternoon?")
	elseif cl == 460 then
		cw('mc',"Alright, you know what...")
	elseif cl == 461 then
		cw('bl',"This might be a stupid thing to do, but I do it anyway.")
	elseif cl == 462 then
		cw('bl',"I take Yuri's hand and lick her index finger in return.")
	elseif cl == 463 then
		updateYuri('3b','n')
		cw('y',player.."--!!")
	elseif cl == 464 then
		cw('y',"D-Did you really just do that?")
	elseif cl == 465 then
		cw('mc',"N-Now we're even...")
	elseif cl == 466 then
		updateYuri('3b','v')
		cw('y',"...")
	elseif cl == 467 then
		cw('bl',"Yuri just looks at me like I did something wrong.")
	elseif cl == 468 then
		cw('mc',"Ahaha...")
	elseif cl == 469 then
		cw('mc',"I knew that would be a bad idea...")
	elseif cl == 470 then
		cw('bl',"If not for the sweet aroma of the Jasmine oil, the air would be extremely heavy right now.")
	elseif cl == 471 then
		updateYuri('1b','u')
		cw('y',"You're so weird, "..player..".")
	elseif cl == 472 then
		cw('bl',"Yuri giggles shyly.")
	elseif cl == 473 then
		cw('mc',"Eh...?")
	elseif cl == 474 then
		cw('bl',"Yuri calling me weird?")
	elseif cl == 475 then
		cw('bl',"I have no response to that...")
	elseif cl == 476 then
		updateYuri('1b','f')
		cw('y',"Where do you keep your bandages?")
	elseif cl == 477 then
		cw('mc',"Ah...")
	elseif cl == 478 then
		cw('mc',"I don't think I need one, actually.")
	elseif cl == 479 then
		cw('mc',"It was a tiny cut.")
	elseif cl == 480 then
		cw('mc',"Look, it already stopped bleeding.")
	elseif cl == 481 then
		updateYuri('1b','a')
		cw('y',"I see...")
	elseif cl == 482 then
		cw('y',"That's relieving.")
	elseif cl == 483 then
		cw('bl',"The tension is quickly lifted.")
	elseif cl == 484 then
		cw('bl',"We each resume our respective activities.")
	elseif cl == 485 then
		cw('bl',"I watch Yuri's knife cut through the ribbon like it's nothing but air.")
	elseif cl == 486 then
		cw('bl',"Meanwhile, I continue to make progress on the paper.")
	
	elseif cl == 487 then
		event_initstart('wipe')
	elseif cl == 488 then
		cw('bl',"After we finish attaching the paper to the ribbons, we lay them all out side by side.")
	elseif cl == 489 then
		cw('bl',"It looks better than I expected and will be very effective as a door curtain.")
	elseif cl == 490 then
		cw('mc',"It looks great.")
	elseif cl == 491 then
		cw('mc',"Good thinking coming up with this, Yuri.")
	elseif cl == 492 then
		updateYuri('1b','q',80)
		cw('y',"Ah, thanks...")
	elseif cl == 493 then
		cw('y',"It's just something I saw online, really.")
	elseif cl == 494 then
		updateYuri('1b','a')
		cw('y',"Are you ready to move onto the next task?")
	elseif cl == 495 then
		cw('mc', "Yeah, let's do it.")
	elseif cl == 496 then
		cw('mc',"What do you have in mind?")
	elseif cl == 497 then
		cw('y',"I'd like to create a banner.")
	elseif cl == 498 then
		cw('y',"That's why I asked you to buy the paint tablets.")
	elseif cl == 499 then
		cw('mc',"Ah, that's right.")
	elseif cl == 500 then
		cw('bl',"One of the items Yuri had asked me to buy was a kit of watercolor paint tablets.")
	elseif cl == 501 then
		updateYuri('1b','f')
		cw('y',"We'll need about six cups of water to put each of the tablets in.")
	elseif cl == 502 then
		cw('y',"Do you mind fetching those for us?")
	elseif cl == 503 then
		cw('mc',"Of course not.")
	elseif cl == 504 then
		cw('mc',"Six cups of water...")
	elseif cl == 505 then
		cw('mc',"I'll be right back in a minute.")
	elseif cl == 506 then
		updateYuri('1b','a')
		cw('y',"Thank you very much.")
	elseif cl == 507 then
		updateYuri('2b','f')
		cw('y',"Oh, and just a little bit of water is okay.")
	elseif cl == 508 then
		cw('y',"If you fill the cups too much, it will be too diluted.")
		
	elseif cl == 509 then
		event_initstart('wipe')
		cw('bl',"Taking Yuri's advice, I decide to use small plastic bathroom cups rather than full-sized glasses.")
	elseif cl == 510 then
		cw('bl',"I put them on a plate to catch any paint that drips, then bring it back into my room.")
	elseif cl == 511 then
		cw('bl',"Yuri?")
	elseif cl == 512 then
		updateYuri('1b','d',80)
		cw('y',"Yes?")
	elseif cl == 513 then
		cw('bl',"I come in to see Yuri quickly unrolling her sleeve, pulling it back over her arm.")
	elseif cl == 514 then
		cw('mc',"Ah, nothing...")
	elseif cl == 515 then
		cw('mc',"Your face is a little red.")
	elseif cl == 516 then
		cw('mc',"Is it too hot in here, or anything?")
	elseif cl == 517 then
		updateYuri('3b','q')
		cw('y',"Ah--")
	elseif cl == 518 then
		cw('y',"No, not at all!")
	elseif cl == 519 then
		cw('y',"There's nothing wrong, so...")
	elseif cl == 520 then
		cw('y',"Let's mix the paint.")
	elseif cl == 521 then
		cw('bl',"Yuri hurriedly dismisses me and takes it upon herself to unwrap the tablets, dropping them into the cups.")
	elseif cl == 522 then
		updateYuri('1b','a')
		cw('y',"So...")
	elseif cl == 523 then
		cw('y',"I thought we would do something simple that would look very nice.")
	elseif cl == 524 then
		cw('y',"I'd like to paint a gradient across the banner...")
	elseif cl == 525 then
		cw('y',"Starting with the colors for a sunrise, then daytime, then sunset and nighttime.")
	elseif cl == 526 then
		cw('y', "Once it dries, I'll write an inspirational quote across the banner.")
	elseif cl == 527 then
		cw('y',"We can hang it on the wall behind the podium at the front of the classroom.")
	elseif cl == 528 then
		cw('mc',"Ah, neat.")
	elseif cl == 529 then
		cw('mc',"What are you going to write?")
	elseif cl == 530 then
		updateYuri('2b','m')
		cw('y',"Well...")
	elseif cl == 531 then
		cw('y',"...It will be more fun to surprise you.")
	elseif cl == 532 then
		cw('bl',"Yuri smiles at me.")
	elseif cl == 533 then
		cw('mc',"If you say so...")
	elseif cl == 534 then
		hideYuri()
		cw('bl',"After rolling out the banner, Yuri and I kneel on opposite sides so we don't get in the way of each other.")
	elseif cl == 535 then
		cw('bl',"Yuri uses a brush and adds a few dots of different colors across the banner to serve as a color guide when we paint.")
	elseif cl == 536 then
		cw('mc',"This kind of reminds me of elementary school...")
	elseif cl == 537 then
		cw('bl',"Painting on a banner with watercolors feels a lot like the art class projects we had back then.")
	elseif cl == 538 then
		cw('bl',"It's relaxing.")
	elseif cl == 539 then
		updateYuri('2b','t',80)
		cw('y',"Ah...")
	elseif cl == 540 then
		cw('y',"I'm sorry if this feels too childish...!")
	elseif cl == 541 then
		cw('mc',"No, I didn't mean that at all.")
	elseif cl == 542 then
		cw('mc',"It's kind of fun, you know?")
	elseif cl == 543 then
		updateYuri('1b','s')
		cw('y',"...Yeah.")
	elseif cl == 544 then
		cw('y',"It is fun.")
	elseif cl == 545 then
		cw('y',"I'm glad you feel that way, too.")
	elseif cl == 546 then
		cw('bl',"Yuri stops painting for a moment, thinking to herself.")
	elseif cl == 547 then
		updateYuri('2b','l')
		cw('y',"For me...")
	elseif cl == 548 then
		cw('y',"I don't need to go out and do crazy things to have fun.")
	elseif cl == 549 then
		cw('y',"In fact, I usually don't even want to.")
	elseif cl == 550 then
		updateYuri('2b','f')
		cw('y',"I just like when I can spend time with one other person...")
	elseif cl == 551 then
		cw('y',"Even if it's something simple, like reading - it doesn't even matter if we don't talk much.")
	elseif cl == 552 then
		updateYuri('2b','a')
		cw('y',"Just having a friend next to me makes things feel a little bit nicer.")
	elseif cl == 553 then
		cw('y',"I think that's all it takes for me to be happy.")
	elseif cl == 554 then
		cw('mc',"Is that so...?")
	elseif cl == 555 then
		cw('bl',"Even if Yuri and I are quite different, I can understand where she's coming from.")
	elseif cl == 556 then
		cw('bl',"I feel that way about things like anime and games, where simply sharing the experience with someone can make me happy.")
	elseif cl == 557 then
		cw('mc',"I think I feel the same way.")
	elseif cl == 558 then
		cw('bl',"Yuri smiles gently.")
	elseif cl == 559 then
		updateYuri('1b','m')
		cw('y',"I knew you'd understand...")
	elseif cl == 560 then
		cw('bl',"Yuri leans over the banner to grab an unused paintbrush.")
	elseif cl == 561 then
		cw('bl',"But I move at the same time, causing my head to bump into hers.")
	elseif cl == 562 then
		updateYuri('3b','n')
		y "Kya--!"
	elseif cl == 563 then
		mc "S-Sorry!"
	elseif cl == 564 then
		bl "Yuri reels back, and I quickly lift my hands in surprise."
	elseif cl == 565 then
		mc "Are you hurt?"
	elseif cl == 566 then
		updateYuri('2b','v')
		y "N-No, I'm not hurt."
	elseif cl == 567 then
		y "It just startled me...that's all."
	elseif cl == 568 then
		y "Sorry, I should have asked you to get it for me..."
	elseif cl == 569 then
		mc "It's not your fault."
	elseif cl == 570 then
		mc "Ah, your face..."
	elseif cl == 571 then
		bl "There are droplets of paint on Yuri's face and neck."
	elseif cl == 572 then
		updateYuri('2b','t')
		y "Is there something on my face?"
	elseif cl == 573 then
		mc "Yeah, I accidentally got paint on you..."
	elseif cl == 574 then
		mc "Sorry, it's totally my fault!"
	elseif cl == 575 then
		mc "I'll get a towel right away."
	elseif cl == 576 then
		hideYuri()
		bl "I rush out and fetch a small towel, then I dampen it with hot water."
	elseif cl == 577 then
		bl "I return to my room and kneel back down in front of her."
	elseif cl == 578 then
		persistent.clear[6] = 1
		if xaload == 0 then
			savepersistent()
		end
		bgUpdate('cg/y_cg3_base')
		mc "Here..."
	elseif cl == 579 then
		bl "I pat down Yuri's face and neck with the towel."
	elseif cl == 580 then
		cgUpdate('y_cg3_exp1')
		y "Ah--"
	elseif cl == 581 then
		mc "Is something wrong?"
	elseif cl == 582 then
		y "It's hot...I just didn't expect it."
	elseif cl == 583 then
		mc "Sorry..."
	elseif cl == 584 then
		mc "I didn't want to use cold water."
	elseif cl == 585 then
		bl "Having finished, I start to retract my hand."
	elseif cl == 586 then
		bl "But Yuri suddenly holds my wrist."
	elseif cl == 587 then
		cgHide()
		y "Wait--"
	elseif cl == 588 then
		mc "Eh?"
	elseif cl == 589 then
		cgUpdate('y_cg3_exp1')
		y "Just...for a little longer."
	elseif cl == 590 then
		y "It feels really nice..."
	elseif cl == 591 then
		mc "Ah..."
	elseif cl == 592 then
		bl "I keep my hand still against Yuri's neck."
	elseif cl == 593 then
		cgHide()
		bl "She looks into my eyes."
	elseif cl == 594 then
		bl "It's an intense expression that I recognize from when she reads her books..."
	elseif cl == 595 then
		bl "Almost as if she's lost in a daze, enveloped by her own thoughts."
	elseif cl == 596 then
		bl "She breathes gently, half through slightly-parted lips."
	elseif cl == 597 then
		bl "What is happening...?"
	elseif cl == 598 then
		bl "Is it the aroma of the Jasmine oil giving me this dizzy feeling?"
	elseif cl == 599 then
		bl "Yuri's gentle fingers, wrapped around my wrist, send a tingling sensation through my arm."
	elseif cl == 600 then
		bl "And suddenly, her face seems to be much closer to mine than it was just a moment ago..."
	elseif cl == 601 then
		y "Ah..."
	elseif cl == 602 then
		bl "Yuri slowly pulls away."
	elseif cl == 603 then
		y "Sorry..."
	elseif cl == 604 then
		y "I've been feeling a little light-headed today."
	elseif cl == 605 then
		y "I didn't mean to space out..."
	elseif cl == 606 then
		mc "I-It's fine..."
	elseif cl == 607 then
		bgUpdate('bedroom')
		bl "The moment is over as soon as it began."
	elseif cl == 608 then
		bl "Yuri picks up her brush again."
	elseif cl == 609 then
		bl "But her movements seem clumsier, like she's unable to focus."
	elseif cl == 610 then
		bl "I remain silent, forced to ignore the event that just transpired."
	elseif cl == 611 then
		bl "I hesitantly retrieve my own brush and continue following Yuri's example."
	
	elseif cl == 612 then
		event_initstart('wipe')
	elseif cl == 613 then
		mc "That should do it..."
	elseif cl == 614 then
    bl "I finish filling the night sky with white dots that look like stars."
	elseif cl == 615 then
    bl "Looking at the banner as a whole, it's very pretty and natural-looking."
	elseif cl == 616 then
    updateYuri('1b','a',80)
    y "I think it came out better than I expected."
	elseif cl == 617 then
    y "I'm really happy with the results."
	elseif cl == 618 then
    mc "Yeah, me too."
	elseif cl == 619 then
    mc "Are you going to add the lettering now?"
	elseif cl == 620 then
	updateYuri('1b','f')
    y "Ah, not yet..."
	elseif cl == 621 then
    y "It needs to dry first."
	elseif cl == 622 then
    mc "That's true, but won't that take a while?"
	elseif cl == 623 then
	updateYuri('2b','h')
    y "Well..."
	elseif cl == 624 then
    y "Perhaps it would be best to leave it here, then have you bring it in the morning."
	elseif cl == 625 then
	updateYuri('2b','f')
    y "I can do the lettering in the classroom before our event starts."
	elseif cl == 626 then
    y "Is that okay?"
	elseif cl == 627 then
    mc "That's totally fine."
	elseif cl == 628 then
	updateYuri('1b','a')
    y "Wonderful."
	elseif cl == 629 then
    y "In that case..."
	elseif cl == 630 then
    y "I don't think there's anything more for us to do here."
	elseif cl == 631 then
    mc "Phew."
	elseif cl == 632 then
	updateYuri('1b','c')
    y "Ahaha."
	elseif cl == 633 then
    y "You say that like you're glad it's over."
	elseif cl == 634 then
	updateYuri('1b','a')
    y "Was I wrong to assume that you were at least enjoying yourself a little bit?"
	elseif cl == 635 then
    mc "Ah, no, it's not that."
	elseif cl == 636 then
    mc "I'm just glad that we managed to get everything done."
	elseif cl == 637 then
	updateYuri('2b','a')
    y "I see."
	elseif cl == 638 then
    y "I am, too."
	elseif cl == 639 then
    y "I was a little concerned about time..."
	elseif cl == 640 then
    y "I need to start making dinner soon."
	elseif cl == 641 then
    mc "Ah..."
	elseif cl == 642 then
    mc "So you don't have any time left?"
	elseif cl == 643 then
    bl "I was secretly hoping we would have extra time after finishing the work..."
	elseif cl == 644 then
	updateYuri('2b','l')
    y "Well..."
	elseif cl == 645 then
    y "..."
	elseif cl == 646 then
    bl "Yuri thinks to herself."
	elseif cl == 647 then
	updateYuri('2b','v')
    y "I-I think it would be too irresponsible of me to wait much longer..."
	elseif cl == 648 then
    y "I'm sorry!"
	elseif cl == 649 then
    y "I was hoping there would be more time as well..."
	elseif cl == 650 then
    mc "It's probably my fault."
	elseif cl == 651 then
    mc "Sorry for being such a slow worker."
	elseif cl == 652 then
	updateYuri('1b','t')
    y "No, it's not your fault at all."
	elseif cl == 653 then
    y "And...the important thing is that we got everything done, right?"
	elseif cl == 654 then
    mc "Yeah..."
	elseif cl == 655 then
	updateYuri('1b','u')
    y "So..."
	elseif cl == 656 then
    y "I shouldn't be disappointed...or anything."
	elseif cl == 657 then
    bl "Gathering all her things, Yuri seems to look a little downcast."
	elseif cl == 658 then
    bl "I understand why."
	elseif cl == 659 then
    bl "It sounded like she rarely gets the opportunity to spend time with friends in a relaxed environment."
	elseif cl == 660 then
    bl "But that doesn't mean this is the last time it can happen..."
	
	elseif cl == 661 then
	event_initstart('wipe','house')
	elseif cl == 662 then
	bl "Once Yuri packs up, I walk her out the front door."
	elseif cl == 663 then
	updateYuri('1b','a',80)
	y "Thank you very much for having me today."
	elseif cl == 664 then
    mc "No problem, I'm glad I was able to help."
	elseif cl == 665 then
	scriptJump(667)
	elseif cl == 667 then
    mc "Just let me know if there's anything else you need me to bring tomorrow."
	elseif cl == 668 then
    y "I will."
	elseif cl == 669 then
	updateYuri('1b','u')
    y "Well, then..."
	elseif cl == 670 then
	bl "Yuri fidgets."
	elseif cl == 671 then
	updateYuri('2b','u')
    y "I guess...I'll see you tomorrow."
	elseif cl == 672 then
    mc "Wait--"
	elseif cl == 673 then
	updateYuri('2b','t')
    bl "I kind of say that without thinking."
	elseif cl == 674 then
    mc "About today..."
	elseif cl == 675 then
    mc "It's fine that we didn't have as much time as we wanted."
	elseif cl == 676 then
    mc "Because we can do this again."
	elseif cl == 677 then
    mc "Whenever you want, you can come over, or we can go out somewhere--"
	elseif cl == 678 then
    mc "Ah, I forgot you don't like going out much--"
	elseif cl == 679 then
	updateYuri('2b','s')
	bl "As I stumble over my words, Yuri simply smiles bashfully."
	elseif cl == 680 then
    mc "Anyway..."
	elseif cl == 681 then
    mc "You know what I'm trying to say, so..."
	elseif cl == 682 then
	updateYuri('1b','s')
    cw('y',"You're very thoughtful, "..player..".")
	elseif cl == 683 then
	bl "Yuri takes a step closer to me, then briefly squeezes my hand."
	elseif cl == 684 then
	updateYuri('f_2bs')
	audioUpdate('0')
	y "I kind of like that about you..."
	elseif cl == 685 then
    mc "Well..."
	elseif cl == 686 then
	bl "How am I supposed to respond to that?"
	elseif cl == 687 then
	bl "But I don't even get a chance to, as Yuri suddenly pulls back."
	elseif cl == 688 then
	updateYuri('3b','n')
	y "S-Sayori--?"
	elseif cl == 689 then
	mc "Eh?!"
	elseif cl == 690 then
	updateSayori('1b','l',10)
	updateYuri('3b','n',150)
	s "Ah..."
	elseif cl == 691 then
	cw('s',"H-Hi, "..player.."...")
	elseif cl == 692 then
    mc "Sayori--!"
	elseif cl == 693 then
    mc "Just now, we weren't--"
	elseif cl == 694 then
	updateSayori('1b','q')
    s "Ehehe~"
	elseif cl == 695 then
    cw('s',"It's okay, "..player..".")
	elseif cl == 696 then
	updateSayori('1b','a')
    s "I just stopped by to say hi~"
	elseif cl == 697 then
	updateYuri('3b','q')
	y "U-Um..."
	elseif cl == 698 then
    y "Well, it's nice to see you..."
	elseif cl == 699 then
	updateYuri('3b','v')
    y "I'm sorry, but I'm already on my way to leave!"
	elseif cl == 700 then
	updateSayori('1b','h')
	s "Aw, really?"
	elseif cl == 701 then
    s "That's too bad..."
	elseif cl == 702 then
	updateYuri('2b','t')
	y "I'm sorry..."
	elseif cl == 703 then
    y "But we'll all be together at the festival tomorrow, so..."
	elseif cl == 704 then
    y "So that's fine, right?"
	elseif cl == 705 then
	updateSayori('4b','q')
	s "Of course!"
	elseif cl == 706 then
	bl "Sayori beams."
	elseif cl == 707 then
	updateSayori('4b','a')
	updateYuri('4b','c2')
	y "Y-Yeah, so..."
	elseif cl == 708 then
    y "I'll see you tomorrow!"
	elseif cl == 709 then
	hideYuri()
	bl "Clearly embarrassed, Yuri hurries off."
	elseif cl == 710 then
	bl "Sayori waves goodbye after her."
	elseif cl >= 711 then
	ch4_end()
	end
end

function ch4_end()
	if cl < 711 then
		scriptJump(711)
	elseif cl == 711 then
		audioUpdate('10')
		updateSayori('1b','a',80)
		cw('mc',"Sayori--")
	elseif cl == 712 then
		cw('mc',"I thought you didn't want to come over today!")
	elseif cl == 713 then
		updateSayori('2b','l')
		cw('s',"Ahaha, well...")
	elseif cl == 714 then
		cw('s',"I tried staying in my room...")
	elseif cl == 715 then
		cw('s',"But my imagination was being really mean to me...")
	elseif cl == 716 then
		updateSayori('1b','y')
		cw('s',"So I had to come here and see it for myself.")
	elseif cl == 717 then
		cw('mc',"See what?")
	elseif cl == 718 then
		cw('mc',"What are you talking about?")
	elseif cl == 719 then
		cw('s',"You know...")
	elseif cl == 720 then
		cw('s',"How much fun you were having with "..savevalue..".")
	elseif cl == 721 then
		cw('s',"And how close you got to her.")
	elseif cl == 722 then
		updateSayori('1b','t')
		cw('s',"It makes me...really happy...")
	elseif cl == 723 then
		cw('s',"That you've made such good friends.")
	elseif cl == 724 then
		cw('s',"That's all that matters to me.")
	elseif cl == 725 then
		cw('bl',"Tears start to fall down Sayori's face.")
	elseif cl == 726 then
		updateSayori('4b','v')
		cw('s',"That's all that matters to me--!")
	elseif cl == 727 then
		cw('s',"Why am I feeling this way, "..player.."?")
	elseif cl == 728 then
		cw('s',"I'm supposed to be happy for you.")	
	elseif cl == 729 then
		updateSayori('4b','w')
		cw('s',"Why does it feel like my heart is splitting in half?")
	elseif cl == 730 then
		cw('s',"It hurts so much...")
	elseif cl == 731 then
		cw('s',"Everything hurts so much...")
	elseif cl == 732 then
		cw('s',"This would be so much better if I could just disappear!")
	elseif cl == 733 then
		cw('mc',"Sayori, don't say that!")
	elseif cl == 734 then
		updateSayori('1b','w')
		cw('s',"It's true, "..player.."!")
	elseif cl == 735 then
		cw('s',"If I wasn't here, then you wouldn't have to waste your sympathy on me!")
	elseif cl == 736 then
		cw('s',"You wouldn't have to put up with me being selfish!")
	elseif cl == 737 then
		updateSayori('1b','v')
		cw('s',"Monika was right...")
	elseif cl == 738 then
		cw('s',"I should just...")
	elseif cl == 739 then
		cw('mc',"Monika...?")
	elseif cl == 740 then
		cw('mc',"Monika was right about what?")
	elseif cl == 741 then
		cw('s',"...")
	elseif cl == 742 then
		cw('mc',"Sayori...")
	elseif cl == 743 then
		cw('mc',"What I said before is true.")
	elseif cl == 744 then
		cw('mc',"I'm not going to let this continue.")
	elseif cl == 745 then
		cw('mc',"Caring about you like this isn't the burden your mind is making it out to be.")
	elseif cl == 746 then
		cw('mc',"It's something that makes me happy.")
	elseif cl == 747 then
		cw('mc',"It's something that I wouldn't trade for anything else.")
	elseif cl == 748 then
		cw('mc',"So, even if it takes an entire lifetime...")
	elseif cl == 749 then
		cw('mc',"I'm going to be by your side until you don't feel any more pain.")
	elseif cl == 750 then
		updateSayori('1b','k')
		cw('s',"B-But...")
	elseif cl == 751 then
		cw('bl',"Sayori looks away.")
	elseif cl == 752 then
		cw('bl',"I put a hand on her shoulder to reassure her.")
	elseif cl == 753 then
		cw('s',"I'm scared, "..player.."...")
	elseif cl == 754 then
		cw('s',"I'm really scared...")
	elseif cl == 755 then
		cw('mc',"What are you scared of, Sayori?")
	elseif cl == 756 then
		cw('s',"I'm scared that...")
	elseif cl == 757 then
		cw('s',"That I might like you more than you like me...")
	elseif cl == 758 then
		cw('mc',"Sayori...?")
	elseif cl == 759 then
		updateSayori('1b','u')
		cw('s',"It's true, isn't it?")
	elseif cl == 760 then
		cw('s',"I was weak and started to like you too much...")
	elseif cl == 761 then
		cw('s',"I did this to myself.")
	elseif cl == 762 then
		cw('s',player.."...")
	elseif cl == 763 then
		updateSayori('4b','w')
		cw('s',"I like you so much that I want to die!")
	elseif cl == 764 then
		cw('s',"That's how I feel!")
	elseif cl == 765 then
		updateSayori('2b','v')
		cw('s',"And...and...")
	elseif cl == 766 then
		cw('mc',"That's enough, Sayori...")
	elseif cl == 767 then
		cw('mc',"I don't want you to hurt anymore.")
	elseif cl == 768 then
		cw('bl',"I slide my hand down Sayori's arm and squeeze her hand in my own.")
	elseif cl == 769 then
		cw('mc',"Do you remember how I said I always know what's best for you?")
	elseif cl == 770 then
		cw('mc',"Do you still believe me?")
	elseif cl == 771 then
		cw('bl',"Wordlessly, Sayori nods.")
	elseif cl == 772 then
		cw('mc',"Even if you don't understand all of your own feelings...")
	elseif cl == 773 then
		cw('mc',"I know what you need the most right now.")
	elseif cl == 774 then
		cw('mc',"And that's what I'm going to give to you.")
	elseif cl == 775 then
		hideAll()
		bgUpdate('black')
		menutext = 'Sayori...'
		choices = {"I love you.","You'll always be my dearest friend."}
		choice_enable()
	elseif cl >= 776 then
		if choicepick == "I love you." or choicepick == 's_yes' then
			choicepick = 's_yes'
			ch4_end_yes()
		else
			choicepick = 's_no'
			ch4_end_no()
		end
		choices = {''}
	end
end

function ch4_end_yes()
	if cl == 776 then
	bgUpdate('house')
	updateSayori('2b','v',80)
	mc "I love you."
	elseif cl == 777 then
	updateSayori('1b','v')
	s "Eh--?"
	elseif cl == 778 then
    mc "Those are my true feelings."
	elseif cl == 779 then
    mc "So...there's no way you could like me more than I like you."
	elseif cl == 780 then
    mc "I should have realized it sooner."
	elseif cl == 781 then
    mc "But spending time with everyone at the club..."
	elseif cl == 782 then
    mc "Making new friends..."
	elseif cl == 783 then
    mc "And having fun with you every day..."
	elseif cl == 784 then
    mc "It helped me realize that you are truly the most important person to me."
	elseif cl == 785 then
    mc "That's why I'll accept any of your burdens."
	elseif cl == 786 then
    mc "As long as we continue like this every day..."
	elseif cl == 787 then
    mc "With you by my side..."
	elseif cl == 788 then
    mc "Then I know we'll both be happy."
	elseif cl == 789 then
    cw('s',player.."...")
	elseif cl == 790 then
		persistent.clear[9] = 1
		if xaload == 0 then
			savepersistent()
		end
		hideAll()
		bgUpdate('cg/s_cg3')
		bl "Suddenly, Sayori wraps her arms tightly around me."
	elseif cl == 791 then
	cw('s',player.."...")
	elseif cl == 792 then
    s "Is this...really okay?"
	elseif cl == 793 then
    mc "Yeah."
	elseif cl == 794 then
    bl "I hold Sayori in my arms and pull her closer."
	elseif cl == 795 then
    mc "You'll never have to let go of me again."
	elseif cl == 796 then
	cw('s',"I love you, "..player.."...")
	elseif cl == 797 then
    s "I want to be with you forever."
	elseif cl == 798 then
    mc "Me too."
	elseif cl == 799 then
    s "..."
	elseif cl == 800 then
    bl "I feel Sayori's grip around me weaken a little bit."
    elseif cl == 801 then
	s "What is this...?"
	elseif cl == 802 then
    mc "Sayori...?"
	elseif cl == 803 then
    s "I'm supposed to be happy right now..."
	elseif cl == 804 then
    s "I always thought this would be the happiest moment for me."
	elseif cl == 805 then
    s "But why...?"
	elseif cl == 806 then
    s "Even now..."
	elseif cl == 807 then
    s "Why won't the rainclouds go away?"
	elseif cl == 808 then
    cw('s',"They're not going away at all, "..player.."...")
	elseif cl == 809 then
    mc "It's okay, Sayori..."
	elseif cl == 810 then
    mc "It might take some time for things to get better again."
	elseif cl == 811 then
    mc "But no matter how long it takes, I'll be there every step of the way."
	elseif cl == 812 then
    mc "That's all that matters right now."
	elseif cl == 813 then
    s "O-Okay..."
	elseif cl == 814 then
    s "I...trust you..."
	elseif cl == 815 then
	bgUpdate('house')
	updateSayori('1b','v',80)
	bl "Sayori and I slowly release each other."
	elseif cl == 816 then
    mc "So..."
	elseif cl == 817 then
    mc "I guess that makes the festival tomorrow...our first date, huh?"
	elseif cl == 818 then
	updateSayori('1b','y')
    s "Ehehe..."
	elseif cl == 819 then
    s "What are you saying?"
	elseif cl == 820 then
    s "I don't want to think about those things, you know?"
	elseif cl == 821 then
    s "I want everything to be the same as it always has been."
	elseif cl == 822 then
    s "Even if we really are...a couple."
	elseif cl == 823 then
	updateSayori('1b','k')
    s "I don't know if I could handle anything more right now..."
	elseif cl == 824 then
    s "It's really new and scary to me."
	elseif cl == 825 then
    mc "I understand."
	elseif cl == 826 then
    mc "We'll go at whatever pace suits you best."
	elseif cl == 827 then
	updateSayori('1b','d')
    cw('s',"Hey, "..player.."...")
	elseif cl == 828 then
	bl "Sayori gazes at me once again, smiling sadly."
	elseif cl == 829 then
	updateSayori('4b','d')
    s "Even if I get really, really sad..."
	elseif cl == 830 then
    s "This is the best thing for me...right?"
	elseif cl == 831 then
    mc "Eh...?"
	elseif cl == 832 then
    bl "I don't really understand what Sayori means by that."
	elseif cl == 833 then
    mc "Are you saying that this is making you feel sad, Sayori?"
	elseif cl == 834 then
	updateSayori('4b','k')
    s "I-I don't know..."
	elseif cl == 835 then
    s "I don't understand what I'm feeling."
	elseif cl == 836 then
    s "It felt like a bunch of thorns when you told me you love me..."
	elseif cl == 837 then
	updateSayori('4b','d')
    s "But that's why I want to trust you."
	elseif cl == 838 then
    s "You know what's best for me..."
	elseif cl == 839 then
    mc "...Yeah."
	elseif cl == 840 then
    mc "I do."
	elseif cl == 841 then
    mc "That's my promise."
	elseif cl == 842 then
	hideSayori()
    bl "I say that, but in reality, I've never felt more uncertain when it comes to Sayori."
	elseif cl == 843 then
	bl "I know that I love her, and she loves me."
	elseif cl == 844 then
    bl "But I'm having as much trouble understanding Sayori's feelings as she is."
	elseif cl == 845 then
    bl "Even though I can comfort her..."
	elseif cl == 846 then
    bl "I keep wondering if I should be doing something more, or something different."
	elseif cl == 847 then
    bl "I know these thoughts will continue to plague me until things are back to the way they were."
	elseif cl == 848 then
    bl "Is that what Sayori meant by not wanting anything to change?"
	elseif cl == 849 then
    bl "I don't know."
	elseif cl == 850 then
    bl "But I know that I'll give it everything I've got."
	elseif cl == 851 then
    bl "Sayori is the most important person to me."
	elseif cl == 852 then
    bl "And I'll do whatever it takes to have a happy future with her."
	elseif cl == 853 then
	fadeOut(3)
	elseif cl >= 854 then
	cl = 853
	end
end

function ch4_end_no()
	if cl == 776 then
	bgUpdate('house')
	updateSayori('2b','v',80)
	mc "You'll always be my dearest friend."
	elseif cl == 777 then
    mc "What you need most is for things to be like they've always been."
	elseif cl == 778 then
    mc "Monika told me the truth..."
	elseif cl == 779 then
    mc "She told me how much happier you seemed after I joined the club."
	elseif cl == 780 then
    mc "I know you're struggling with some really difficult feelings right now."
	elseif cl == 781 then
    mc "But..."
	elseif cl == 782 then
    mc "Please trust me that I know what's best...and what will make you happy in the end."
	elseif cl == 783 then
    mc "I promise I'll help get things back to the way they were."
	elseif cl == 784 then
	updateSayori('1b','t')
    s "I..."
	elseif cl == 785 then
    s "I...see..."
	elseif cl == 786 then
	bl "Sayori forces a smile through an incredibly pained expression."
	elseif cl == 787 then
    s "Ahaha..."
	elseif cl == 788 then
    s "Is this what it feels like...to get stabbed in the chest?"
	elseif cl == 789 then
    s "I should write a poem about this..."
	elseif cl == 790 then
    mc "Sayori--"
	elseif cl == 791 then
    s "It's okay."
	elseif cl == 792 then
    s "This is just my punishment...remember?"
	elseif cl == 793 then
    s "For being so selfish..."
	elseif cl == 794 then
    s "So please..."
	elseif cl == 795 then
    s "Please don't worry about these stupid feelings."
	elseif cl == 796 then
    s "I know you're right."
	elseif cl == 797 then
    s "I knew this whole time that there's no happiness down that path."
	elseif cl == 798 then
    s "That's why I came here..."
	elseif cl == 799 then
    s "Just so I could get the answer I needed to hear."
	elseif cl == 800 then
    s "And the other thing..."
	elseif cl == 801 then
    s "You're also right that I just want it to go back to the way it was."
	elseif cl == 802 then
    s "I realize that now."
	elseif cl == 803 then
    cw('s',"You really do know me better than anyone, "..player..".")
	elseif cl == 804 then
	updateSayori('4b','v')
    s "I'll trust you with anything..."
	elseif cl == 805 then
    s "Anything at all..."
	elseif cl == 806 then
    s "So..."
	elseif cl == 807 then
    scriptJump(808)
	elseif cl == 808 then
	hideAll()
    bl "Sayori's smile finally breaks."
	elseif cl == 809 then
    bl "All of a sudden, she turns around and drops to her knees."
	elseif cl == 810 then
    s "AAAAAaaaaAAAAAAAAHH!!!!"
	elseif cl == 811 then
    bl "Clutching her head with both hands, she screams as loudly as she can."
	elseif cl == 812 then
    bl "I'm so shocked that I don't know how to react."
	elseif cl == 813 then
	updateSayori('4b','t',80)
    s "..."
    elseif cl == 814 then
	hideSayori()
    bl "Sayori looks over her shoulder and flashes me one more weak smile before turning around and running off."
	elseif cl == 815 then
    mc "Sayori!"
	elseif cl == 816 then
    bl "..."
	elseif cl == 817 then
    bl "I'm left helplessly standing in the front of my house."
	elseif cl == 818 then
    bl "Why am I feeling so horrible about this?"
	elseif cl == 819 then
    bl "There's nothing more that I could have done."
	elseif cl == 820 then
    bl "The most I can do is support Sayori through her feelings and help her on the path that's right."
	elseif cl == 821 then
    bl "But I'm having as much trouble understanding Sayori's feelings as she is."
	elseif cl == 822 then
    bl "Even though I can comfort her..."
	elseif cl == 823 then
    bl "I keep wondering if I should be doing something more, or something different."
	elseif cl == 824 then
    bl "I know these thoughts will continue to plague me until things are back to the way they were."
	elseif cl == 825 then
    bl "I'm going to give it everything I've got."
	elseif cl == 826 then
    bl "Sayori will always be my dearest friend."
	elseif cl == 827 then
    bl "And I'll do whatever it takes to put a smile on her face every day."
	elseif cl == 828 then
	fadeOut(3)
	elseif cl >= 829 then
	cl = 828
	end
end