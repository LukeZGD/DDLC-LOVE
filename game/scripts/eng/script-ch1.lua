function ch1script()
	--ch1-main
	if cl == 348 then
		bgUpdate('club')
		audioUpdate('2')
		updateMonika('5a','',80)
		cw('m',"Hi again, "..player.."!")
	elseif cl == 349 then
		cw('m',"Glad to see you didn't run away on us. Hahaha!")
	elseif cl == 350 then
		cw('mc',"Nah, don't worry.")
	elseif cl == 351 then
		cw('mc',"This might be a little strange for me, but I at least keep my word.")
	elseif cl == 352 then
		hideMonika()
		cw('bl',"Well, I'm back at the Literature Club.")
	elseif cl == 353 then
		cw('bl',"I was the last to come in, so everyone else is already hanging out.")
	elseif cl == 354 then
		updateYuri('1','a',80)
		cw('y',"Thanks for keeping your promise, "..player..".")
	elseif cl == 355 then
		cw('y',"I hope this isn't too overwhelming of a commitment for you.")
	elseif cl == 356 then
		updateYuri('1','u')
		cw('y',"Making you dive headfirst into literature when you're not accustomed to it...")
	elseif cl == 357 then
		updateNatsuki('4','b',200)
		cw('n',"Oh, come on! Like he deserves any slack.")
	elseif cl == 358 then
		cw('n',"Sayori told me you didn't even want to join any clubs this year.")
	elseif cl == 359 then
		cw('n',"And last year, too!")
	elseif cl == 360 then
		updateNatsuki('4','c')
		cw('n',"I don't know if you plan to just come here and hang out, or what...")
	elseif cl == 361 then
		cw('n',"But if you don't take us seriously, then you won't see the end of it.")
	elseif cl == 362 then
		updateMonika('2','b',-40)
		cw('m',"Natsuki, you certainly have a big mouth for someone who keeps her manga collection in the clubroom.")
	elseif cl == 363 then
		updateNatsuki('4','o')
		cw('n',"M-M-M...!!")
	elseif cl == 364 then
		hideMonika()
		cw('bl',"Natsuki finds herself stuck between saying \"Monika\" and \"Manga\".")
	elseif cl == 365 then
		updateNatsuki('1','v')
		cw('n',"Manga is literature!!")
	elseif cl == 366 then
		hideNatsuki()
		cw('bl',"Swiftly defeated, Natsuki plops back into her seat.")
	elseif cl == 367 then
		updateSayori('2','x',10)
		updateYuri('1','u',150)
		cw('s',"Don't worry, guys~")
	elseif cl == 368 then
		cw('s',player .. " always gives it his best as long as he's having fun.")
	elseif cl == 369 then
		cw('s',"He helps me with busywork without me even asking.")
	elseif cl == 370 then
		cw('s',"Like cooking, cleaning my room...")
	elseif cl == 371 then
		updateSayori('2','a')
		updateYuri('2','m')
		cw('y',"How dependable...")
	elseif cl == 372 then
		cw('mc',"Sayori, that's because your room is so messy it's distracting.")
	elseif cl == 373 then
		cw('mc',"And you almost set your house on fire once.")
	elseif cl == 374 then
		updateSayori('5a')
		cw('s',"Is that so... Ehehe...")
	elseif cl == 375 then
		updateYuri('1','s')
		cw('y',"You two are really good friends, aren't you?")
	elseif cl == 376 then
		cw('y',"I might be a little jealous...")
	elseif cl == 377 then
		updateSayori('1','a')
		cw('s','How come? You and '.. player .. ' can become good friends too!')
	elseif cl == 378 then
		updateYuri('4','b2')
		cw('y',"U-Um...")
	elseif cl == 379 then
		cw('mc',"S-Sayori--")
	elseif cl == 380 then
		cw('s',"Hmm?")
	elseif cl == 381 then
		cw('mc',"...")
	elseif cl == 382 then
		cw('bl','As usual, Sayori seems oblivious to the weird situation she just put me into.')
	elseif cl == 383 then
		updateSayori('4','x')
		cw('s',"Oh, oh! Yuri even brought you something today, you know~")
	elseif cl == 384 then
		updateYuri('3','n')
		cw('y',"W-Wait! Sayori...")
	elseif cl == 385 then
		cw('mc',"Eh? Me?")
	elseif cl == 386 then
		updateYuri('3','o')
		cw('y',"Um... Not really...")
	elseif cl == 387 then
		updateSayori('4','r')
		cw('s',"Don't be shy~")
	elseif cl == 388 then
		cw('y',"It's really nothing...")
	elseif cl == 389 then
		cw('mc',"What is it?")
	elseif cl == 390 then
		updateYuri('4','c2')
		cw('y',"N-Never mind!")
	elseif cl == 391 then
		cw('y',"Sayori made it sound like a big deal when it's really not...")
	elseif cl == 392 then
		cw('y',"Uuuuh, what do I do...")
	elseif cl == 393 then
		updateSayori('1','g')
		cw('s',"Eh? I'm sorry, Yuri, I wasn't thinking...")
	elseif cl == 394 then
		hideSayori()
		updateYuri('4','c2',80)
		cw('bl',"I guess that means it's up to me to rescue this situation...")
	elseif cl == 395 then
		cw('mc',"Hey, don't worry about it.")
	elseif cl == 396 then
		cw('mc',"First of all, I wasn't expecting anything in the first place.")
	elseif cl == 397 then
		cw('mc',"So any nice gesture from you is a pleasant surprise.")
	elseif cl == 398 then
		cw('mc',"It'll make me happy no matter what.")
	elseif cl == 399 then
		updateYuri('3','v')
		cw('y',"I-Is that so...")
	elseif cl == 400 then
		cw('mc',"Yeah. I won't make it a big deal if you don't want it to be.")
	elseif cl == 401 then
		cw('y',"Alright...")
	elseif cl == 402 then	
		updateYuri('1','a')
		cw('y',"Well, here.")
	elseif cl == 403 then
		cw('bl',"Yuri reaches into her bag and pulls out a book.")
	elseif cl == 404 then
		cw('y',"I didn't want you to feel left out...")
	elseif cl == 405 then
		cw('y',"So I picked out a book that I thought you might enjoy.")
	elseif cl == 406 then
		cw('y',"It's a short read, so it should keep your attention, even if you don't usually read.")
	elseif cl == 407 then
		cw('y',"And we could, you know...")
	elseif cl == 408 then
		updateYuri('4','b2')
		cw('y',"Discuss it...if you wanted...")
	elseif cl == 409 then
		cw('bl',"Th-This is...")
	elseif cl == 410 then
		cw('bl',"How is this girl accidentally being so cute?")
	elseif cl == 411 then
		cw('bl',"She even picked out a book she thinks I'll like, despite me not reading much...")
	elseif cl == 412 then
		cw('mc',"Yuri, thank you! I'll definitely read this!")
	elseif cl == 413 then
		cw('bl',"I enthusiastically take the book.")
	elseif cl == 414 then
		updateYuri('2','m')
		cw('y',"Phew...")
	elseif cl == 415 then
		updateYuri('2','a')
		cw('y',"Well, you can read it at your own pace.")
	elseif cl == 416 then
		cw('y',"I look forward to hearing what you think.")
	elseif cl == 417 then
		hideYuri()
		cw('bl',"Now that everyone's settled in, I expected Monika to kick off some scheduled activities for the club.")
	elseif cl == 418 then
		cw('bl',"But that doesn't seem to be the case.")
	elseif cl == 419 then
		cw('bl',"Sayori and Monika are having a cheery conversation in the corner.")
	elseif cl == 420 then
		cw('bl',"Yuri's face is already buried in a book.")
	elseif cl == 421 then
		cw('bl',"I can't help but notice her intense expression, like she was waiting for this chance.")
	elseif cl == 422 then
		cw('bl',"Meanwhile, Natsuki is rummaging around in the closet.")
		
	elseif cl == 652 then
		hideSayori()
		updateMonika('1','a',10)
		cw('m',"By the way, did you remember to write a poem last night?")
	elseif cl == 653 then
		cw('mc',"Y-Yeah...")
	elseif cl == 654 then
		cw('bl',"My relaxation ends.")
	elseif cl == 655 then
		cw('bl',"I can't believe I agreed to do something so embarrassing.")
	elseif cl == 656 then
		cw('bl',"I couldn't really find much inspiration, since I've never really done this before.")
	elseif cl == 657 then
		cw('m',"Well, now that everyone's ready, why don't you find someone to share with?")
	elseif cl == 658 then
		updateSayori('4','q',150)
		cw('s',"I can't wait~!")
	elseif cl == 659 then
		hideSayori()
		hideMonika()
		cw('bl',"Sayori and Monika enthusiastically pull out their poems.")
	elseif cl == 660 then
		cw('bl',"Sayori's is on a wrinkled sheet of loose leaf torn from a spiral notebook.")
	elseif cl == 661 then
		cw('bl',"On the other hand, Monika wrote hers in a composition notebook.")
	elseif cl == 662 then
		cw('bl',"I can already see Monika's pristine handwriting from where I sit.")
	elseif cl == 663 then
		cw('bl',"Natsuki and Yuri reluctantly comply as well, reaching into their bags.")
	elseif cl == 664 then
		cw('bl',"I do the same, myself.")
	elseif cl == 665 then
		poeminitialize()
	end

	--ch1-end
	if cl == 900 then
		audioUpdate('3')
		cw('mc',"Phew...")	
	elseif cl == 901 then
		cw('bl',"I guess that's everyone.")
	elseif cl == 902 then
		cw('bl',"I glance around the room.")
	elseif cl == 903 then
		cw('bl',"That was a little more stressful than I anticipated.")
	elseif cl == 904 then
		cw('bl',"It's as if everyone is judging me for my mediocre writing abilities...")
	elseif cl == 905 then
		cw('bl',"Even if they're just being nice, there's no way my poems can stand up to theirs.")
	elseif cl == 906 then
		cw('bl',"This is a literature club, after all.")
	elseif cl == 907 then
		cw('bl',"I sigh.")
	elseif cl == 908 then
		cw('bl',"I guess that's what I ended up getting myself into.")
	elseif cl == 909 then
		cw('bl',"Across the room, Sayori and Monika are happily chatting.")
	elseif cl == 910 then
		cw('bl',"My eyes land on Yuri and Natsuki.")
	elseif cl == 911 then
		updateYuri('2','g',10)
		updateNatsuki('2','g',150)
		cw('bl',"They gingerly exchange sheets of paper, sharing their respective poems.")
	elseif cl == 912 then
		updateYuri('2','i')
		cw('bl',"As they read in tandem, I watch each of their expressions change.")
	elseif cl == 913 then
		cw('bl',"Natsuki's eyebrows furrow in frustration.")
	elseif cl == 914 then
		cw('bl',"Meanwhile, Yuri smiles sadly.")
	elseif cl == 915 then
		updateNatsuki('1','q')
		cw('n',"(What's with this language...?)")
	elseif cl == 916 then
		updateYuri('2','f')
		cw('y',"Eh?")
	elseif cl == 917 then
		cw('y',"Um...did you say something?")
	elseif cl == 918 then
		updateNatsuki('2','c')
		cw('n',"Oh, it's nothing.")
	elseif cl == 919 then
		cw('bl',"Natsuki dismissively returns the poem to the desk with one hand.")
	elseif cl == 920 then
		cw('n',"I guess you could say it's fancy.")
	elseif cl == 921 then
		updateYuri('2','i')
		cw('y',"Ah-- Thanks...")
	elseif cl == 922 then
		cw('y',"Yours is...cute...")
	elseif cl == 923 then
		updateNatsuki('2','h')
		cw('n',"Cute?")
	elseif cl == 924 then
		updateNatsuki('1','h')
		cw('n',"Did you completely miss the symbolism or something?")
	elseif cl == 925 then
		cw('n',"It's clearly about the feeling of giving up.")
	elseif cl == 926 then
		cw('n',"How can that be cute?")
	elseif cl == 927 then
		updateYuri('3','f')
		cw('y',"I-I know that!")
	elseif cl == 928 then
		cw('y',"I just meant...")
	elseif cl == 929 then
		updateYuri('3','h')
		cw('y',"The language, I guess...")
	elseif cl == 930 then
		cw('y',"I was trying to say something nice...")
	elseif cl == 931 then
		cw('n',"Eh?")
	elseif cl == 932 then
		updateNatsuki('4','w')
		cw('n',"You mean you have to try that hard to come up with something nice to say?")
	elseif cl == 933 then
		cw('n',"Thanks, but it really didn't come out nice at all!")
	elseif cl == 934 then
		updateYuri('1','i')
		cw('y',"Um...")
	elseif cl == 935 then
		cw('y',"Well, I do have a couple suggestions...")
	elseif cl == 936 then
		updateNatsuki('5','x')
		cw('n',"Hmph.")
	elseif cl == 937 then
		cw('n',"If I was looking for suggestions, I would have asked someone who actually liked it.")
	elseif cl == 938 then
		cw('n',"Which people did, by the way.")
	elseif cl == 939 then
		updateNatsuki('5','e')
		cw('n',"Sayori liked it.")
	elseif cl == 940 then
		cw('n',"And "..player.." did, too!")
	elseif cl == 941 then
		cw('n',"So based on that, I'll gladly give you some suggestions of my own.")
	elseif cl == 942 then
		cw('n',"First of all--")
	elseif cl == 943 then
		updateYuri('2','l')
		cw('y',"Excuse me...")
	elseif cl == 944 then
		cw('y',"I appreciate the offer, but I've spent a long time establishing my writing style.")
	elseif cl == 945 then
		updateYuri('2','h')
		cw('y',"I don't expect it to change anytime soon, unless of course I come across something particularly inspiring.")
	elseif cl == 946 then
		cw('y',"Which I haven't yet.")
	elseif cl == 947 then
		updateNatsuki('1','o')
		cw('n',"Nn...!")
	elseif cl == 948 then
		updateYuri('1','k')
		cw('y',"And "..player.." liked my poem too, you know.")
	elseif cl == 949 then
		cw('y',"He even told me he was impressed by it.")
	elseif cl == 950 then
		audioUpdate('0')
		cw('bl',"Natsuki suddenly stands up.")
	elseif cl == 951 then
		updateNatsuki('4','y')
		cw('n',"Oh?")
	elseif cl == 952 then
		cw('n',"I didn't realize you were so invested in trying to impress our new member, Yuri.")
	elseif cl == 953 then
		audioUpdate('7')
		updateYuri('1','n')
		cw('y',"E-Eh?!")
	elseif cl == 954 then
		cw('y',"That's not what I...!")
	elseif cl == 955 then
		updateYuri('1','o')
		cw('y',"Uu...")
	elseif cl == 956 then
		cw('y',"You...You're just...")
	elseif cl == 957 then
		cw('bl',"Yuri stands up as well.")
	elseif cl == 958 then
		updateYuri('2','r')
		cw('y',"Maybe you're just jealous that "..player.." appreciates my advice more than he appreciated yours!")
	elseif cl == 959 then
		updateNatsuki('1','e')
		cw('n',"Huh! And how do you know he didn't appreciate my advice more?")
	elseif cl == 960 then
		cw('n',"Are you that full of yourself?")
	elseif cl == 961 then
		updateYuri('3','h')
		cw('y',"I...!")
	elseif cl == 962 then
		cw('y',"No...")
	elseif cl == 963 then
		cw('y',"If I was full of myself...")
	elseif cl == 964 then
		updateYuri('1','r')
		cw('y',"...I would deliberately go out of my way to make everything I do overly cutesy!")
	elseif cl == 965 then
		updateNatsuki('1','o')
		cw('n',"Uuuuuu...!")
	elseif cl == 966 then
		updateSayori('2','l',-40)
		updateYuri('1','r',80)
		updateNatsuki('1','o',200)
		cw('s',"U-Um!!")
	elseif cl == 967 then	
		cw('s',"Is everyone okay...?")
	elseif cl == 968 then
		hideSayori()
		updateNatsuki('1','f')
		cw('n',"Well, you know what?!")
	elseif cl == 969 then
		cw('n',"I wasn't the one whose boobs magically grew a size bigger as soon as "..player.." started showing up!!")
	elseif cl == 970 then
		updateYuri('3','p')
		cw('y',"N-Natsuki!!")
	elseif cl == 971 then
		updateMonika('3','l',-40)
		cw('m',"Um, Natsuki, that's a little--")
	elseif cl == 972 then
		updateYuri('3','p')
		updateNatsuki('1','e')
		cw('ny',"This doesn't involve you!")
	elseif cl == 973 then
		hideMonika()
		updateSayori('4','p',-40)
		cw('s',"I-I don't like fighting, guys...!")
	elseif cl == 974 then
		hideSayori()
		updateYuri('3','p',10)
		updateNatsuki('1','g',150)
		cw('bl',"Suddenly, both girls turn towards me, as if they just noticed I was standing there.")
	elseif cl == 975 then
		updateYuri('2','n')
		cw('y',player.."...!")
	elseif cl == 976 then
		cw('y',"She-- She's just trying to make me look bad...!")
	elseif cl == 977 then
		updateNatsuki('4','w')
		cw('n',"That's not true!")
	elseif cl == 978 then
		cw('n',"She started it!")
	elseif cl == 979 then
		updateNatsuki('4','e')
		cw('n',"If she could get over herself and learn to appreciate that simple writing is more effective...")
	elseif cl == 980 then
		cw('n',"Then this wouldn't have happened in the first place!")
	elseif cl == 981 then
		cw('n',"What's the point in making your poems all convoluted for no reason?")
	elseif cl == 982 then
		cw('n',"The meaning should jump out at the reader, not force them to have to figure it out.")
	elseif cl == 983 then
		updateNatsuki('1','f')
		cw('n',"Help me explain that to her, "..player.."!")
	elseif cl == 984 then
		updateYuri('3','o')
		cw('y',"W-Wait!")
	elseif cl == 985 then
		cw('y',"There's a reason we have so many deep and expressive words in our language!")
	elseif cl == 986 then
		updateYuri('3','w')
		cw('y',"It's the only way to convey complex feelings and meaning the most effectively.")
	elseif cl == 987 then
		cw('y',"Avoiding them is not only unnecessarily limiting yourself...it's also a waste!")
	elseif cl == 988 then
		updateYuri('1','t')
		cw('y',"You understand that, right, "..player.."?")
	elseif cl == 989 then
		cw('mc',"Um...!")
	elseif cl == 990 then
		updateYuri('1','t')
		updateNatsuki('1','e')
		cw('ny',"Well??")
	elseif cl == 991 then
		cw('mc',"...")
	elseif cl == 992 then
		cw('bl',"How did I get dragged into this in the first place?!")
	elseif cl == 993 then
		cw('bl',"It's not like I know anything about writing...")
	elseif cl == 994 then
		cw('bl',"But whomever I agree with, they'll probably think more highly of me!")
	elseif cl == 995 then
		menutext = "So, of course that's going to be...!"
		choices = {"Natsuki.","Yuri.","Help me, Sayori!!"}
		choice_enable()
	elseif cl >= 996 and cl < 1092 then
		if choicepick == 'Natsuki.' or choicepick == 'Natsuki' then
			choicepick = 'Natsuki'
			ch1_end_natsuki()
		elseif choicepick == "Yuri." or choicepick == 'Yuri' then
			choicepick = 'Yuri'
			ch1_end_yuri()
		elseif choicepick == "Help me, Sayori!!" or choicepick == 'Sayori' then
			choicepick = 'Sayori'
			ch1_end_sayori()
		end
		choices = {''}
		
	elseif cl == 1092 then
		updateMonika('4','b',80)
		cw('m',"Okay, everyone!")
	elseif cl == 1093 then
		cw('m',"It's just about time for us to leave.")
	elseif cl == 1094 then
		cw('m',"How did you all feel about sharing poems?")
	elseif cl == 1095 then
		updateMonika('4','a')
		updateSayori('4','x',-40)
		cw('s',"It was a lot of fun!")
	elseif cl == 1096 then
		hideSayori()
		updateYuri('1','i',-40)
		cw('y',"Well, I'd say it was worth it.")
	elseif cl == 1097 then
		hideYuri()
		updateNatsuki('4','q',-40)
		cw('n',"It was alright. Well, mostly.")
	elseif cl == 1098 then
		hideNatsuki()
		updateMonika('1','a')
		cw('m',player..", how about you?")
	elseif cl == 1099 then
		cw('mc',"...Yeah, I'd say the same.")
	elseif cl == 1100 then
		cw('mc',"It was a neat thing to talk about with everyone.")
	elseif cl == 1101 then
		updateMonika('1','j')
		cw('m',"Awesome!")
	elseif cl == 1102 then
		updateMonika('1','a')
		cw('m',"In that case, we'll do the same thing tomorrow.")
	elseif cl == 1103 then
		cw('m',"And maybe you learned something from your friends, too.")
	elseif cl == 1104 then
		updateMonika('3','b')
		cw('m',"So your poems will turn out even better!")
	elseif cl == 1105 then
		cw('mc',"...")
	elseif cl == 1106 then
		hideMonika()
		cw('bl',"I think to myself.")
	elseif cl == 1107 then
		cw('bl',"I did learn a little more about the kinds of poems everyone likes.")
	elseif cl == 1108 then
		cw('bl',"With any luck, that means I can at least do a better job impressing those I want to impress.")
	elseif cl == 1109 then
		cw('bl',"I nod to myself with newfound determination.")
	elseif cl == 1110 then
		updateSayori('1','x',80)
		cw('s',player.."!")
	elseif cl == 1111 then
		cw('s',"Ready to walk home?")
	elseif cl == 1112 then
		cw('mc',"Sure, let's go.")
	elseif cl == 1113 then
		updateSayori('4','q')
		cw('s',"Ehehe~")
	elseif cl == 1114 then
		cw('bl',"Sayori beams at me.")
	elseif cl == 1115 then
		cw('bl',"It truly has been a while since Sayori and I have spent this much time together.")
	elseif cl == 1116 then
		cw('bl',"I can't really say I'm not enjoying it, either.")
	elseif cl == 1117 then
		bgUpdate('residential')
		updateSayori('1','a')
		cw('mc',"Sayori...")
	elseif cl == 1118 then
		cw('mc',"About what happened earlier...")
	elseif cl == 1119 then
		updateSayori('1','b')
		cw('s',"Eh? What do you mean?")
	elseif cl == 1120 then
		cw('mc',"You know, between Yuri and Natsuki.")
	elseif cl == 1121 then
		cw('mc',"Does that kind of thing happen often?")
	elseif cl == 1122 then
		updateSayori('4','j')
		cw('s',"No, no, no!")
	elseif cl == 1123 then
		cw('s',"That's really the first time I've seen them fight like that...")
	elseif cl == 1124 then
		cw('s', "I promise they're both wonderful people.")
	elseif cl == 1125 then
		updateSayori('1','g')
		cw('s',"You don't... You don't hate them, do you??")
	elseif cl == 1126 then
		cw('mc', "No, I don't hate them!")
	elseif cl == 1127 then
		cw('mc', "I just wanted your opinion, that's all.")
	elseif cl == 1128 then
		cw('mc', "I can see why they'd make good friends with you.")
	elseif cl == 1129 then
		updateSayori('1','d')
		cw('s', "Phew...")
	elseif cl == 1130 then
		cw('s',"You know, "..player.."...")
	elseif cl == 1131 then
		cw('s',"It's nice that I get to spend time with you in the club.")
	elseif cl == 1132 then
		cw('s',"But I think seeing you get along with everyone is what makes me the happiest.")
	elseif cl == 1133 then
		updateSayori('1','x')
		cw('s', "And I think everyone really likes you, too!")
	elseif cl == 1134 then
		cw('mc', "That's--!")
	elseif cl == 1135 then
		updateSayori('4','q')
		cw('s',"Ehehe~")
	elseif cl == 1136 then
		cw('s',"Every day is going to be so much fun~")
	elseif cl == 1137 then
		cw('mc',"Sigh...")
	elseif cl == 1138 then
		cw('bl',"It looks like Sayori still hasn't caught onto the kind of situation I'm in.")
	elseif cl == 1139 then
		cw('bl',"Sure, being friends with everyone is nice, but...")
	elseif cl == 1140 then
		cw('bl', "...Does it really need to stop there?")
	elseif cl == 1141 then
		cw('mc', "We'll just have to see what the future holds, Sayori.")
	elseif cl == 1142 then
		cw('bl',"I pat Sayori on the shoulder.")
	elseif cl == 1143 then
		cw('bl',"I said that more to myself than to her, but it's easy to use Sayori as an internal monologue sometimes.")
	elseif cl == 1144 then
		updateSayori('1','x')
		cw('s',"Okay~!")
	elseif cl == 1145 then
		cw('bl',"Yeah...")
	elseif cl == 1146 then
		cw('bl',"Let's do this!")
	elseif cl == 1147 then
		fadeOut(1)
	elseif cl >= 1148 then
		cl = 1147
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=-40 x=80 x=200
		--4: x=-60 x=30 x=120 x=220	
	end
end

function ch1_end_natsuki()
	if cl == 996 then
		cw('mc',"Um...")
	elseif cl == 997 then
		cw('mc',"Yuri!")
	elseif cl == 998 then
		cw('mc',"You're really talented.")
	elseif cl == 999 then
		updateYuri('4','a2')
		cw('y',"Eh? W-Well...")
	elseif cl == 1000 then
		audioUpdate('8')
		cw('mc',"But Natsuki has a point!")
	elseif cl == 1001 then
		cw('mc',"I think that...")
	elseif cl == 1002 then
		cw('bl',"I wrack my brain in an attempt to back myself up.")
	elseif cl == 1003 then
		cw('mc',"I think that conveying feelings with few words...")
	elseif cl == 1004 then
		cw('mc',"Can be just as impressive as well!")
	elseif cl == 1005 then
		cw('mc',"It lets the reader's imagination take over.")
	elseif cl == 1006 then
		cw('mc',"And Natsuki's poem did a really good job at that!")
	elseif cl == 1007 then
		updateNatsuki('5','y')
		cw('n',"...Yeah!!")
	elseif cl == 1008 then
		cw('n',"It did, didn't it?!")
	elseif cl == 1009 then
		cw('n',"Ahah!")
	elseif cl == 1010 then
		cw('n',"Shows how much you know!")
	elseif cl == 1011 then
		updateYuri('4','b2')
		cw('y',"T-That's not...")
	elseif cl == 1012 then
		cw('mc',"Natsuki...")
	elseif cl == 1013 then
		cw('mc',"I think that's enough.")
	elseif cl == 1014 then
		updateNatsuki('1','m')
		cw('n',"Huh?")
	elseif cl == 1015 then
		cw('n',"Me?")
	elseif cl == 1016 then
		cw('n',"But she was so mean to me...!")
	elseif cl == 1017 then
		cw('bl',"Natsuki's voice whines.")
	elseif cl == 1018 then
		cw('mc',"Look...")
	elseif cl == 1019 then
		cw('mc',"What we talked about yesterday was right.")
	elseif cl == 1020 then
		cw('mc',"Writing is a really personal thing.")
	elseif cl == 1021 then
		cw('mc',"And sharing it can definitely be hard.")
	elseif cl == 1022 then
		cw('mc',"It looks like we learned that today.")
	elseif cl == 1023 then
		cw('mc',"Even small criticism can lead to something pretty heated.")
	elseif cl == 1024 then
		cw('bl',"I glance over my shoulder.")
	elseif cl == 1025 then
		cw('bl',"Sayori is nodding vigorously.")
	elseif cl == 1026 then
		cw('mc',"Yeah, so...")
	elseif cl == 1027 then
		cw('mc',"You don't need to feel threatened.")
	elseif cl == 1028 then
		cw('mc',"You're a great writer, Natsuki.")
	elseif cl == 1029 then
		updateNatsuki('1','h')
		cw('n',"Ah--")
	elseif cl == 1030 then
		cw('bl',"Natsuki's voice gets caught in surprise.")
	elseif cl == 1031 then
		updateNatsuki('1','q')
		cw('n',"...Thanks for noticing.")
	elseif cl == 1032 then
		cw('bl',"She finally mutters that, barely audible.")
	elseif cl == 1033 then
		cw('mc',"Yuri...")
	elseif cl == 1034 then
		updateYuri('4','a2')
		cw('y',"...?")
	elseif cl == 1035 then
		cw('bl',"Yuri looks at me dejectedly.")
	elseif cl == 1036 then
		cw('bl',"With a face like that, I can't help but feel bad for her as well.")
	elseif cl == 1037 then
		cw('mc',"I'm sure that Natsuki didn't mean everything she said.")
	elseif cl == 1038 then
		cw('mc',"So you don't need to feel threatened, either.")
	elseif cl == 1039 then
		updateYuri('2','v')
		cw('y',"Well...")
	elseif cl == 1040 then
		cw('y',"If you say so...")
	elseif cl == 1041 then
		updateNatsuki('1','g')
		cw('n',"Hey...!")
	elseif cl == 1042 then
		cw('n',"It's not like you need to apologize for me, "..player..".")
	elseif cl == 1043 then
		updateNatsuki('1','w')
		cw('n',"Sheesh.")
	elseif cl == 1044 then
		cw('bl',"Natsuki takes a breath.")
	elseif cl == 1045 then
		updateNatsuki('1','q')
		cw('n',"I...")
	elseif cl == 1046 then
		cw('n',"The thing about...")
	elseif cl == 1047 then
		cw('n',"Uu...")
	elseif cl == 1048 then
		cw('bl',"Natsuki glances around the room.")
	elseif cl == 1049 then
		updateNatsuki('1','x')
		cw('n',"Would everyone stop staring at me??")
	elseif cl == 1050 then
		cw('bl',"Unsurprisingly, Natsuki has a harder time with it than she boasted.")
	elseif cl == 1051 then
		cw('bl',"Sayori and Monika look away.")
	elseif cl == 1052 then
		updateNatsuki('1','i')
		cw('n',"Hmph.")
	elseif cl == 1053 then
		cw('n',"Anyway...!")
	elseif cl == 1054 then
		updateNatsuki('1','q')
		cw('n',"The thing about your boobs. I didn't mean it, okay?")
	elseif cl == 1055 then
		cw('n',"That's all.")
	elseif cl == 1056 then
		cw('bl',"Natsuki looks away, avoiding eye contact with anyone.")
	elseif cl == 1057 then
		updateSayori('4','x',-60)
		cw('s',"Yeah! You're naturally beautiful, Yuri!!")
	elseif cl == 1058 then
		cw('mc',"Sayori?!")
	elseif cl == 1059 then
		updateYuri('4','c2')
		cw('y',"...")
	elseif cl == 1060 then
		cw('y',"I-I'll go make some tea...")
	elseif cl == 1061 then
		hideYuri()
		updateSayori('4','h')
		cw('s',"Ehh?")
	elseif cl == 1062 then
		cw('s',"I was just trying to help!")
	elseif cl == 1063 then
		cw('mc',"I'm sure she appreciated it, Sayori.")
	elseif cl == 1064 then
		cw('bl',"I pat Sayori on the shoulder.")
	elseif cl == 1065 then
		hideSayori()
		hideNatsuki()
		updateMonika('4','m',80)
		cw('m',"Well, now that we're past that...")
	elseif cl == 1066 then
		updateMonika('4','b')
		cw('m',"Everyone's read each other's poems, right?")
	elseif cl == 1067 then
		cw('m',"I hope that it was worthwhile for everyone!")
	elseif cl == 1068 then
		updateMonika('5a')
		cw('m',"Especially you, "..player.."!")
	elseif cl == 1069 then
		cw('m',"And to be honest...")
	elseif cl == 1070 then
		cw('m',"It's a nice change of pace from the lazing around we got a little too used to.")
	elseif cl == 1071 then
		cw('m',"Ahahaha!")
	elseif cl == 1072 then
		cw('mc',"Ah, so my joining the club was responsible for ruining the atmosphere...")
	elseif cl == 1073 then
		updateMonika('1','d')
		cw('m',"No, not at all, not at all!")
	elseif cl == 1074 then
		cw('m',"There's still time before we go home.")
	elseif cl == 1075 then
		updateMonika('1','a')
		cw('m',"So we'll all relax for a bit.")
	elseif cl == 1076 then
		cw('m',"Of course, besides chatting, we do literature-related things in the clubroom...")
	elseif cl == 1077 then
		cw('m',"So maybe you can take the chance to pick up a book, or do some writing.")
	elseif cl == 1078 then
		updateMonika('1','b')
		cw('m',"After all, that's what the club is for!")
	elseif cl == 1079 then
		updateSayori('2','j',-40)
		cw('s',"I disagree, Monika!")
	elseif cl == 1080 then
		updateMonika('1','d')
		cw('m',"Eh? About what?")
	elseif cl == 1081 then
		updateSayori('2','i')
		cw('s',"That's not the most important thing about the literature club!")
	elseif cl == 1082 then
		cw('s',"The most important thing...")
	elseif cl == 1083 then
		updateSayori('4','r')
		cw('s',"Is having fun!")
	elseif cl == 1084 then
		updateMonika('2','l')
		cw('m',"Ahaha, of course...")
	elseif cl == 1085 then
		updateMonika('2','a')
		cw('m',"Well, I guess that's why you're the Vice President, Sayori.")
	elseif cl == 1086 then
		updateSayori('4','q')
		cw('s',"Ehehe...")
	elseif cl == 1087 then
		hideMonika()
		hideSayori()
		cw('bl',"In the end, though, Monika's right.")
	elseif cl == 1088 then
		cw('bl',"Being in the Literature Club probably means I can't spend all my time doing nothing.")
	elseif cl == 1089 then
		cw('bl',"But in the end...")
	elseif cl == 1090 then
		cw('bl',"...I guess it's been worth it so far.")
	elseif cl == 1091 then
		scriptJump(1092)
	end
end

function ch1_end_yuri()
	if cl == 996 then
		audioUpdate('0')
		cw('mc',"Natsuki.")
	elseif cl == 997 then
		cw('mc',"You're right that I liked your poem.")
	elseif cl == 998 then
		updateNatsuki('1','e')
		cw('n',"See??")
	elseif cl == 999 then
		updateNatsuki('1','g')
		audioUpdate('8')
		cw('mc',"Wait!")
	elseif cl == 1000 then
		cw('mc',"That's not an excuse for you to be so mean!")
	elseif cl == 1001 then
		cw('mc',"You shouldn't pick a fight just because someone's opinion is different.")
	elseif cl == 1002 then
		updateNatsuki('1','m')
		cw('n',"That's not what happened at all!")
	elseif cl == 1003 then
		cw('n',"Yuri wouldn't even take my poem seriously!")
	elseif cl == 1004 then
		cw('mc',"Mm...")
	elseif cl == 1005 then
		cw('mc',"I understand.")
	elseif cl == 1006 then
		cw('mc',"Yuri.")
	elseif cl == 1007 then
		updateYuri('2','t')
		cw('y',"Eh?")
	elseif cl == 1008 then
		cw('mc',"You're a seriously talented writer.")
	elseif cl == 1009 then
		cw('mc',"It's no secret that I was impressed.")
	elseif cl == 1010 then
		updateYuri('2','u')
		cw('y',"W-Well, that's...")
	elseif cl == 1011 then
		cw('mc',"But here's the thing.")
	elseif cl == 1012 then
		cw('mc',"No matter how simple or refined someone's writing style is...")
	elseif cl == 1013 then
		cw('mc',"They're still putting feelings into it, and it becomes something really personal.")
	elseif cl == 1014 then
		cw('mc',"That's why Natsuki felt threatened when you said her poem was cute.")
	elseif cl == 1015 then
		updateYuri('2','v')
		cw('y',"I...see...")
	elseif cl == 1016 then
		cw('y',"I didn't notice that I...")
	elseif cl == 1017 then
		updateYuri('2','w')
		cw('y',"I-I'm sorry...")
	elseif cl == 1018 then
		cw('y',"Uuu...")
	elseif cl == 1019 then
		hideYuri()
		updateNatsuki('1','m',80)
		cw('mc',"But Natsuki, you took it way too far!")
	elseif cl == 1020 then
		cw('mc',"Yuri means well, and if you just told her how you felt...")
	elseif cl == 1021 then
		cw('mc',"Then this wouldn't have happened in the first place.")
	elseif cl == 1022 then
		updateNatsuki('1','e')
		cw('n',"Are you kidding?")
	elseif cl == 1023 then
		cw('n',"That's exactly what I did!")
	elseif cl == 1024 then
		cw('n',"It was her that--")
	elseif cl == 1025 then
		updateNatsuki('1','e',10)
		updateMonika('2','i',150)
		cw('m',"Natsuki, I think that's enough.")
	elseif cl == 1026 then
		cw('m',"You both said some things that you didn't mean.")
	elseif cl == 1027 then
		cw('m',"Yuri apologized. Don't you think you should, too?")
	elseif cl == 1028 then
		updateNatsuki('1','x')
		cw('n',"Nnn...!")
	elseif cl == 1029 then
		cw('bl',"Natsuki clenches her fists.")
	elseif cl == 1030 then
		cw('bl',"In the end, nobody has taken her side.")
	elseif cl == 1031 then
		cw('bl',"She's trapped, at this point being defiant only because she can't handle the pressure.")
	elseif cl == 1032 then
		cw('bl',"I end up even feeling bad for her.")
	elseif cl == 1033 then
		updateSayori('2','h',-40)
		updateMonika('2','i',80)
		updateNatsuki('1','x',200)
		cw('s',"U-Um!")
	elseif cl == 1034 then
		cw('s',"Sometimes when I'm hurt...")
	elseif cl == 1035 then
		cw('s',"It helps to take a walk and clear my head!")
	elseif cl == 1036 then
		cw('mc',"Sayori, she doesn't need to--")
	elseif cl == 1037 then
		updateNatsuki('2','q')
		cw('n',"You know what?")
	elseif cl == 1038 then
		cw('n',"I'm going to do that.")
	elseif cl == 1039 then
		updateNatsuki('2','w')
		cw('n',"It'll spare me from having to look at all your faces right now.")
	elseif cl == 1040 then
		hideNatsuki()
		cw('bl',"Without warning, Natsuki snatches her own poem up from the desk and storms out.")
	elseif cl == 1041 then
		cw('bl',"On her way out, she crumples up the poem with her hands and throws it in the trash.")
	elseif cl == 1042 then
		updateSayori('1','k')
		cw('s',"Natsuki...")
	elseif cl == 1043 then
		updateMonika('1','r')
		cw('m',"She really didn't need to do that...")
	elseif cl == 1044 then
		hideSayori()
		hideMonika()
		cw('bl',"I look across the room.")
	elseif cl == 1045 then
		cw('bl',"Yuri has her chin buried in her hands while she stares down at her desk.")
	elseif cl == 1046 then
		cw('bl',"I gingerly approach her and sit in an adjacent chair.")
	elseif cl == 1047 then
		updateYuri('4','b2',80)
		cw('y',"Sigh...")
	elseif cl == 1048 then
		cw('mc',"Everything alright?")
	elseif cl == 1049 then
		cw('y',"I'm so embarrassed...")
	elseif cl == 1050 then
		cw('y',"I can't believe I acted like that.")
	elseif cl == 1051 then
		cw('y',"You probably hate me now...")
	elseif cl == 1052 then
		cw('mc',"No--Yuri!")
	elseif cl == 1053 then
		cw('mc',"How could anyone not have gotten frustrated after being treated like that?")
	elseif cl == 1054 then
		cw('mc',"You handled it as well as anyone could.")
	elseif cl == 1055 then
		cw('mc',"I don't think any less of you.")
	elseif cl == 1056 then
		updateYuri('2','v')
		cw('y',"Well...")
	elseif cl == 1057 then
		cw('y',"...Alright, I believe you.")
	elseif cl == 1058 then
		updateYuri('2','s')
		cw('y',"Thanks, "..player..". You're too kind.")
	elseif cl == 1059 then
		cw('y',"I'm thankful to have you a part of this club now.")
	elseif cl == 1060 then
		cw('mc',"Er-- It's nothing.")
	elseif cl == 1061 then
		updateYuri('2','v')
		cw('y',"One more thing...")
	elseif cl == 1062 then
		cw('y',"Um, that one thing that Natsuki said...")
	elseif cl == 1063 then
		updateYuri('4','c2')
		cw('y',"About...you know...")
	elseif cl == 1064 then
		cw('y',"I would never do anything...so shameful...")
	elseif cl == 1065 then
		cw('y',"So...")
	elseif cl == 1066 then
		cw('mc',"...Eh?")
	elseif cl == 1067 then
		cw('mc',"What thing did Natsuki say?")
	elseif cl == 1068 then
		updateYuri('3','n')
		cw('y',"--!")
	elseif cl == 1069 then
		cw('y',"U-Um!")
	elseif cl == 1070 then
		updateYuri('3','q')
		cw('y',"Well, never mind that...")
	elseif cl == 1071 then
		cw('y',"I-I'm going to go make some tea...")
	elseif cl == 1072 then
		cw('mc',"Ah, good idea.")
	elseif cl == 1073 then
		cw('mc',"Make enough for more than one person, okay?")
	elseif cl == 1074 then
		cw('y',"Y-Yeah.")
	elseif cl == 1075 then
		hideAll()
		scriptJump(1092)
	end
end

function ch1_end_sayori()
	if cl == 996 then
		cw('mc',"N-Natsuki...")
	elseif cl == 997 then
		updateNatsuki('5','f')
		cw('bl',"Natsuki glares at me, drying up any words I had in my mouth.")
	elseif cl == 998 then
		cw('bl',"So instead, I turn to Yuri.")
	elseif cl == 999 then
		cw('mc',"Yuri...")
	elseif cl == 1000 then
		updateYuri('4','a2')
		cw('y',"...")
	elseif cl == 1001 then
		cw('bl',"But Yuri's expression is so defenseless that I can't bring myself to say anything to her.")
	elseif cl == 1002 then
		audioUpdate('0')
		cw('mc',"...")
	elseif cl == 1003 then
		cw('mc',"...Sayori!")
	elseif cl == 1004 then
		updateSayori('4','m',-40)
		updateYuri('4','a2',80)
		updateNatsuki('5','f',200)
		cw('s',"Eh?!")
	elseif cl == 1005 then
		cw('mc',"...Yeah!")
	elseif cl == 1006 then
		cw('mc',"Everyone's fighting is making Sayori uncomfortable.")
	elseif cl == 1007 then
		cw('mc',"How can the two of you keep fighting when you know you're making your friend feel like this?")
	elseif cl == 1008 then
		updateSayori('4','d')
		cw('s',player.."...")
	elseif cl == 1009 then
		updateNatsuki('4','w')
		cw('n',"Well... That's her problem! This isn't about her.")
	elseif cl == 1010 then
		updateYuri('2','g')
		cw('y',"I-I agree...")
	elseif cl == 1011 then
		cw('y',"It's unfair for others to interject their own feelings into our conflict.")
	elseif cl == 1012 then
		updateNatsuki('4','c')
		cw('n',"Yeah, unless Sayori wants to tell Yuri what a stuck-up jerk she's being.")
	elseif cl == 1013 then
		audioUpdate('7')
		updateYuri('3','r')
		cw('y',"She would never...!")
	elseif cl == 1014 then
		cw('y',"It's your immaturity that's made her upset in the first place!")
	elseif cl == 1015 then
		updateNatsuki('1','e')
		cw('n',"Excuse me?")
	elseif cl == 1016 then
		cw('n',"Are you listening to yourself?")
	elseif cl == 1017 then
		updateNatsuki('1','x')
		cw('n',"This is exactly why...")
	elseif cl == 1018 then
		updateNatsuki('1','w')
		cw('n',"Exactly why nobody likes--")
	elseif cl == 1019 then
		audioUpdate('0')
		updateSayori('4','p')
		cw('s',"Stop!!")
	elseif cl == 1020 then
		updateNatsuki('3','f')
		updateNatsuki('1','o')
		cw('ny',"--")
	elseif cl == 1021 then
		audioUpdate('8')
		updateSayori('1','h')
		cw('s',"Natsuki! Yuri!")
	elseif cl == 1022 then
		cw('s',"You guys are my friends!")
	elseif cl == 1023 then
		updateSayori('1','v')
		cw('s',"I-I just want everyone to get along and be happy!")
	elseif cl == 1024 then
		cw('s',"My friends are wonderful people...")
	elseif cl == 1025 then
		cw('s',"And I love them because of their differences!")
	elseif cl == 1026 then
		updateSayori('1','g')
		cw('s',"Natsuki's poems...")
	elseif cl == 1027 then
		cw('s',"They're amazing because they give you so many feelings with just a few words!")
	elseif cl == 1028 then
		cw('s',"And Yuri's poems are amazing because they paint beautiful pictures in your head!")
	elseif cl == 1029 then
		updateSayori('4','k')
		cw('s',"Everyone's so talented...")
	elseif cl == 1030 then
		cw('s',"...So why are we fighting...?")
	elseif cl == 1031 then
		updateNatsuki('1','r')
		cw('n',"Be-Because...")
	elseif cl == 1032 then
		updateYuri('3','v')
		cw('y',"Well...")
	elseif cl == 1033 then
		updateSayori('1','j')
		cw('s',"Also!")
	elseif cl == 1034 then
		cw('s',"Natsuki's cute and there's nothing wrong with that!")
	elseif cl == 1035 then
		updateSayori('1','i')
		cw('s',"And Yuri's boobs are the same as they always were!")
	elseif cl == 1036 then
		updateSayori('1','j')
		cw('s',"Big and beautiful!!")
	elseif cl == 1037 then
		updateSayori('1','i')
		updateNatsuki('1','o')
		cw('n',"...")
	elseif cl == 1038 then
		updateYuri('3','n')
		cw('y',"...")
	elseif cl == 1039 then
		cw('mc',"Sayori...")
	elseif cl == 1040 then
		cw('bl',"Sayori stands triumphantly.")
	elseif cl == 1041 then
		cw('bl',"Monika stands behind her with a bewildered expression.")
	elseif cl == 1042 then
		updateYuri('3','q')
		cw('y',"I'll...make some tea...")
	elseif cl == 1043 then
		hideYuri()
		cw('bl',"Yuri rushes off.")
	elseif cl == 1044 then
		hideNatsuki()
		cw('bl',"Natsuki sits down with a blank expression on her face, staring at nothing.")
	elseif cl == 1045 then
		hideSayori()
		updateMonika('1','i',80)
		cw('mc',"So, this is why Sayori is Vice President...")
	elseif cl == 1046 then
		cw('bl',"I whisper to Monika.")
	elseif cl == 1047 then
		cw('bl',"She nods in return.")
	elseif cl == 1048 then
		updateMonika('1','d')
		cw('m',"To be honest...")
	elseif cl == 1049 then
		cw('m',"I might come off as a good leader, and I can organize things...")
	elseif cl == 1050 then
		updateMonika('3','e')
		cw('m',"But I'm not very good with people...")
	elseif cl == 1051 then
		cw('m',"I couldn't even bring myself to interject.")
	elseif cl == 1052 then
		updateMonika('1','m')
		cw('m',"As President, that's kind of embarrassing of me.")
	elseif cl == 1053 then
		updateMonika('1','l')
		cw('m',"Ahaha...")
	elseif cl == 1054 then
		cw('mc',"Nah...")
	elseif cl == 1055 then
		cw('mc',"It's not like I can blame you.")
	elseif cl == 1056 then
		cw('mc',"I wasn't able to say anything, either.")
	elseif cl == 1057 then
		cw('m',"Well...")
	elseif cl == 1058 then
		updateMonika('2','a')
		cw('m',"I guess that just means Sayori is amazing in her own ways, isn't she?")
	elseif cl == 1059 then
		cw('mc',"You could say that.")
	elseif cl == 1060 then
		cw('mc',"She might be an airhead, but sometimes it's weirdly suspicious that she knows exactly what she's doing.")
	elseif cl == 1061 then
		updateMonika('5a','')
		cw('m',"I see~")
	elseif cl == 1062 then
		cw('m',"Take good care of her, okay?")
	elseif cl == 1063 then
		cw('m',"I would hate to see her get herself hurt.")
	elseif cl == 1064 then
		cw('mc',"That makes two of us...")
	elseif cl == 1065 then
		cw('mc',"You can count on me.")
	elseif cl == 1066 then
		cw('bl',"Monika smiles sweetly at me, causing my stomach to knot.")
	elseif cl == 1067 then
		cw('bl',"Such a genuine person really does make a good President, regardless of what she says.")
	elseif cl == 1068 then
		cw('bl',"If only I could get the chance to talk to her a little more...")
	elseif cl == 1069 then
		scriptJump(1092)
	end
end
