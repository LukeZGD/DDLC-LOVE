function poemresponses()
	if cl == 666 then		
		--set up menutext/poem finish
		if poemsread == 0 then
			audioUpdate('5')
			menutext = "Who should I show my poem to first?"
		else
			menutext = "Who should I show my poem to next?"
		end
		
		choice1 = choices[1]
		choice2 = choices[2]
		choice3 = choices[3]
		choice4 = choices[4]

		if xaload == 0 or autotimer ~= 0 then
			menu_enable('choice', 5)
		end
		
	elseif cl == 667 or cl == 668 then --first time poem script
		if chapter == 1 and poemsread == 0 then
			if choicepick == 'Sayori' then
                if cl == 667 then cw('bl',"I'm definitely most comfortable sharing it with Sayori first.")
                elseif cl == 668 then cw('bl',"She's my good friend, after all.") end
			elseif choicepick == 'Natsuki' then
                if cl == 667 then cw('bl',"I told Natsuki I was interested in her poems yesterday.")
                elseif cl == 668 then cw('bl',"It's probably only fair if I shared mine with her first.") end
            elseif choicepick == 'Yuri' then
                if cl == 667 then cw('bl',"Yuri seems the most experienced, so I should start with her.")
                elseif cl == 668 then cw('bl',"I can trust her opinion to be fair.") end
            elseif choicepick == 'Monika' then
				if cl == 667 then cw('bl',"I should start with Monika.")
				elseif cl == 668 then cw('bl',"Yesterday she seemed eager to read my poem, and I want her to know I'm putting in effort.") end
			end
		elseif chapter > 1 or poemsread > 0 then
			cl = 669
		end
		
	elseif cl >= 669 then
		if choicepick == 'Sayori' then
			poemresponse_sayori()
		elseif choicepick == 'Natsuki' then
			poemresponse_natsuki()
		elseif choicepick == 'Yuri' then
			poemresponse_yuri()
		elseif choicepick == 'Monika' then
			poemresponse_monika()
		end
		
		if cl == 669 then cl = cl+1 end
	end
end

function poemfinish(a)
	if a == 's' then
		readpoem.s = 1
		choices[1] = ''
	elseif a == 'n' then
		readpoem.n = 1
		choices[2] = ''
	elseif a == 'y' then
		readpoem.y = 1
		choices[3] = ''
	elseif a == 'm' then
		readpoem.m = 1
		choices[4] = ''
	end
	poemsread = poemsread + 1
	hideAll()
	if poemsread == 4 or poemsread == 3 and chapter > 5 then
		--poem finish, jump to script depending on chapter
		poemsread = -1
		readpoem = {s=0,n=0,y=0,m=0}
		if chapter == 1 then
			cl = 900
			ch1script()
		end
	else
		autotimer = 0
		cl = 666
		poemresponses()
	end
end
	
function poemresponse_sayori()
	s.x = 80
	if cl <= 669 then updateSayori('1','a') end
	
	poemopinion = "med"
	if s_poemappeal[chapter] < 0 then
		poemopinion = "bad"
	elseif s_poemappeal[chapter] > 0 then
		poemopinion = "good"
	end
	
	if poemopinion == "med" then
		if chapter == 1 then ch1_s_med()
		elseif chapter == 2 then ch2_s_med()
		elseif chapter == 3 then ch3_s_bad()
		end
	elseif poemopinion == "bad" then
		if chapter == 1 then ch1_s_bad()
		elseif chapter == 2 then ch2_s_bad()
		elseif chapter == 3 then ch3_s_bad()
		end
	elseif poemopinion == "good" then
		if chapter == 1 then ch1_s_good()
		elseif chapter == 2 then ch2_s_good()
		elseif chapter == 3 then ch3_s_good()
		end
	end
end

function poemresponse_natsuki()
	n.x = 80
    if cl <= 669 then updateNatsuki('1','c') end
	
    poemopinion = "med"
	if n_poemappeal[chapter] < 0 then
		poemopinion = "bad"
	elseif n_poemappeal[chapter] > 0 then
		poemopinion = "good"
	end
	
	if poemopinion == "med" then
		if chapter == 1 then ch1_n_med()
		elseif chapter == 2 then ch2_n_med()
		elseif chapter == 3 then ch3_n_med()
		end
	elseif poemopinion == "bad" then
		if chapter == 1 then ch1_n_bad()
		elseif chapter == 2 then ch2_n_bad()
		elseif chapter == 3 then ch3_n_bad()
		end
	elseif poemopinion == "good" then
		if chapter == 1 then ch1_n_good()
		elseif chapter == 2 then ch2_n_good()
		elseif chapter == 3 then ch3_n_good()
		end
	end
end

function poemresponse_yuri()
	y.x = 80
	if cl <= 669 then updateYuri('1','a') end
	
    poemopinion = "med"
	if y_poemappeal[chapter] < 0 then
		poemopinion = "bad"
	elseif y_poemappeal[chapter] > 0 then
		poemopinion = "good"
	end
	
	if poemopinion == "med" then
		if chapter == 1 then 
			ch1_y_bad()
		elseif chapter == 2 then ch2_y_med()
		elseif chapter == 3 then ch3_y_med()
		end
	elseif poemopinion == "bad" then
		if chapter == 1 then ch1_y_bad()
		elseif chapter == 2 then ch2_y_bad()
		elseif chapter == 3 then ch3_y_bad()
		end
	elseif poemopinion == "good" then
		if chapter == 1 then ch1_y_good()
		elseif chapter == 2 then ch2_y_good()
		elseif chapter == 3 then ch3_y_good()
		end
	end
end

function poemresponse_monika()
	m.x = 80
	if cl <= 669 then updateMonika('1','a') end
    if chapter == 1 then ch1_m_start()
	elseif chapter == 2 then ch2_m_start()
	elseif chapter == 3 then ch3_m_start()
	end
end

function ch1_y_bad()
	if cl == 670 then
		cw('y',"...")
	elseif cl == 671 then
		cw('y',"Mm...")
	elseif cl == 672 then
		cw('y',"...")
	elseif cl == 673 then
		cw('bl',"Yuri stares at the poem.")
	elseif cl == 674 then
		cw('bl',"A minute passes, more than enough time for her to finish reading.")
	elseif cl == 675 then
		cw('mc',"Um...")
	elseif cl == 675 then
		cw('y',"Oh!")
	elseif cl == 676 then
		updateYuri('3','n')
		cw('y',"S-Sorry...!")
	elseif cl == 677 then
		cw('y',"I forgot to start speaking...")
	elseif cl == 678 then
		cw('y',"U-Um!")
	elseif cl == 679 then
		cw('mc',"It\'s fine, don\'t force yourself.")
	elseif cl == 680 then
		updateYuri('2','v')
		cw('y',"I\'m not...")
	elseif cl == 681 then
		cw('y',"I just need to put my thoughts into words.")
	elseif cl == 682 then
		cw('y',"Hold on...")
	elseif cl == 683 then
		cw('y',"...Okay.")
	elseif cl == 684 then
		updateYuri('1','f')
		cw('y',"This is your first time writing a poem, right?")
	elseif cl == 685 then
		cw('mc',"Er, yeah...")
	elseif cl == 686 then
		cw('mc',"Why do you ask?")
	elseif cl == 687 then
		cw('y',"I\'m just making sure.")
	elseif cl == 688 then
		cw('y',"I guessed that it might be after reading through it.")
	elseif cl == 689 then
		cw('y',"Ah, so it\'s that bad.")
	elseif cl == 690 then
		updateYuri('2','p')
		cw('y',"No!!")
	elseif cl == 691 then
		updateYuri('2','o')
		cw('y',"...Did I just raise my voice...?")
	elseif cl == 692 then
		updateYuri('4','c2')
		cw('y',"Uu, I\'m so sorry...")
	elseif cl == 693 then
		cw('bl',"Yuri buries her face in her hands.")
	elseif cl == 694 then
		cw('bl',"I couldn't help but notice that it's been several minutes and we really haven't gotten anywhere.")
	elseif cl == 695 then
		cw('bl',"It might take Yuri a while to get used to new people...")
	elseif cl == 696 then
		cw('mc',"It\'s fine, I really didn\'t notice.")
	elseif cl == 697 then
		cw('mc',"What were you saying?")
	elseif cl == 698 then
		updateYuri('2','u')
		cw('y',"Right...um...")
	elseif cl >= 699 then
		ch1_y_shared()
	end
end

function ch1_y_shared()
	if cl < 705 then
		xaload = -1
		cl = 705
	elseif cl == 705 then
		updateYuri('1','a')
		cw('y',"It\'s just that there are specific writing habits that are usually typical of new writers.")
	elseif cl == 706 then
		cw('y',"And having been through that myself, I kind of learned to pick up on them.")
	elseif cl == 707 then
		updateYuri('1','i')
		cw('y',"I think the most noticeable thing I recognize in new writers is that they try to make their style very deliberate.")
	elseif cl == 708 then
		cw('y',"In other words, they tend to pick a writing style separate from the topic matter, and they form-fit the two together.")
	elseif cl == 709 then
		updateYuri('1','a')
		cw('y',"The end result is that both the style and the expressiveness are weakened.")
	elseif cl == 710 then
		cw('bl',"Once Yuri finds her train of thought, it's as if her demeanor totally changes.")
	elseif cl == 711 then
		cw('bl',"Her stammering is completely gone, and she sounds like an expert.")
	elseif cl == 712 then
		updateYuri('1','k')
		cw('y',"Of course, that\'s not something you can be blamed for.")
	elseif cl == 713 then
		cw('y',"There are so many different skills and techniques that go into writing even a simple poem.")
	elseif cl == 714 then
		updateYuri('1','a')
		cw('y',"Not just finding them and building them, but getting them to work together is probably the most challenging part.")
	elseif cl == 715 then
		cw('y',"It might take you some time, but it all comes with practice, and learning by example, and trying new things.")
	elseif cl == 716 then
		cw('y',"I also hope that everyone else in the club gives you valuable feedback.")
	elseif cl == 717 then
		updateYuri('1','l')
		cw('y',"Natsuki can be a little bit biased, though...")
	elseif cl == 718 then
		cw('mc',"Biased? How?")
	elseif cl == 719 then
		updateYuri('2','a')
        cw('y',"U-Um...")
	elseif cl == 720 then
		cw('y',"Well...")
	elseif cl == 721 then
		cw('y',"Never mind...")
	elseif cl == 722 then
		cw('y',"I shouldn\'t be talking about people like that...")
	elseif cl == 723 then
		cw('y',"Sorry...")
	elseif cl == 724 then
		cw('mc',"It\'s fine.")
	elseif cl == 725 then
		cw('bl',"I'm not sure if Yuri is apologizing to herself, to me, or to Natsuki.")
	elseif cl == 726 then
		cw('mc',"Do you mind if I read your poem now?")
	elseif cl == 727 then
		updateYuri('3','c')
		cw('y',"Please do!")
	elseif cl == 728 then
		cw('y',"I\'d love to share my thought process behind it...")
	elseif cl == 729 then
		cw('bl',"Yuri smiles dreamily, as if that's a rare opportunity for her.")
	elseif cl == 730 then
		cw('bl',"Which itself is kind of funny...")
	elseif cl == 731 then
		cw('bl',"...After all, isn't this supposed to be a literature club?")
	elseif cl == 732 then
		poem("poem_y1","yuri")
	elseif cl == 733 then
		poem_disable()
		audioUpdate('5')
		updateYuri('3','t')
		cw('y',"...")
	elseif cl == 734 then
		cw('y',"I...I\'m sorry I have such terrible handwriting!")
	elseif cl == 735 then
		cw('mc',"What??")
	elseif cl == 736 then
		cw('mc',"I wasn\'t thinking that at all...")
	elseif cl == 737 then
		updateYuri('2','v')
		cw('y',"But it took you a long time to read...")
	elseif cl == 738 then
		cw('mc',"Ah--")
	elseif cl == 739 then
		cw('mc',"Well, I just don\'t read script very often...")
	elseif cl == 740 then
		cw('mc',"I actually think your handwriting is pretty.")
	elseif cl == 741 then
		updateYuri('2','t')
		cw('y',"Eh?")
	elseif cl == 742 then
		updateYuri('2','u')
		cw('y',"That\'s...a relief...")
	elseif cl == 743 then
		cw('mc',"Also, I liked the poem.")
	elseif cl == 744 then
		cw('mc',"Even though it\'s short, it was really descriptive.")
	elseif cl == 745 then
		updateYuri('2','t')
		cw('y',"It wasn\'t too short?")
	elseif cl == 746 then
		cw('y',"I usually write longer poems...")
	elseif cl == 747 then
		cw('mc',"Not at all.")
	elseif cl == 748 then
		updateYuri('1','m')
		cw('y',"I\'m...really glad you like it.")
	elseif cl == 749 then
		cw('y',"I\'ll be honest...")
	elseif cl == 750 then
		updateYuri('1','a')
		cw('y',"Since it\'s our first time sharing, I wanted to write something a little more mild.")
	elseif cl == 751 then
		cw('y',"Something easy to digest, I suppose.")
	elseif cl == 752 then
		cw('y',"Are you into ghosts, Yuri?")
	elseif cl == 753 then
		updateYuri('1','m')
		cw('y',"Huhu.")
	elseif cl == 754 then
		cw('y',"Actually, the story isn\'t about a ghost at all, "..player..".")
	elseif cl == 755 then
		cw('mc',"Really?")
	elseif cl == 756 then
		cw('mc',"I must have totally missed the point...")
	elseif cl == 757 then
		updateYuri('1','u')
		cw('y',"Well, I suppose you did only glance over it, after all...")
	elseif cl == 758 then
		cw('y',"But remember that poets often express their own thoughts, feelings, and experiences in their work.")
	elseif cl == 759 then
		updateYuri('1','a')
		cw('y',"They usually do more than tell a simple story, or paint a picture.")
	elseif cl == 760 then
		cw('y',"In this case, perhaps the subject of the poem is only being symbolically compared to a ghost.")
	elseif cl == 761 then
		updateYuri('2','l')
		cw('y',"Lingering in her last remaining place of comfort, unable to let go of the past.")
	elseif cl == 762 then
		cw('y',"And soon to be left with nothing...")
	elseif cl == 763 then
		cw('mc',"...That\'s a lot more solemn, putting it that way.")
    elseif cl == 764 then
		cw('mc',"I hadn\'t even thought of that...")
	elseif cl == 765 then
		cw('mc',"That\'s impressive.")
	elseif cl >= 766 then
		if poemopinion == "good" then
			if cl == 766 then
				updateYuri('2','f')
				cw('y',"Eh?")
			elseif cl == 767 then
				cw('y',"I-It\'s nothing, really!")
			elseif cl == 768 then
				cw('y',"Yours was impressive too, so...")
			elseif cl == 769 then
				cw('mc',"Nah...")
			elseif cl == 770 then
				cw('mc',"If anything, I could probably learn a thing or two from you.")
			elseif cl == 771 then
				updateYuri('3','a')
				cw('y',"...You think so?")
			elseif cl == 772 then
				cw('mc',"Yeah, of course.")
			elseif cl == 773 then
				cw('y',"Ah...")
			elseif cl == 774 then
				updateYuri('2','s')
				cw('y',"You know...")
			elseif cl == 775 then
				cw('y',"I was really nervous about doing all this.")
			elseif cl == 776 then
				cw('y',"But in the end, I enjoyed it.")
			elseif cl == 777 then
				cw('y',"I\'m going to keep doing my best for you, "..player..".")
			elseif cl == 778 then
				cw('mc',"Ah...")
			elseif cl == 779 then
				cw('mc',"Me too.")
			elseif cl == 780 then
				poemfinish('y')
			end
		else
			if cl == 766 then
				updateYuri('1','u')
				cw('y',"It\'s nothing, really...")
			elseif cl == 767 then
				cw('y',"Well...it makes me happy that you think that.")
			elseif cl == 768 then
				updateYuri('1','a')
				cw('y',"Just remember that it won\'t be long before you pick up on these things, too.")
			elseif cl == 769 then
				cw('mc',"Yeah, maybe you\'re right.")
			elseif cl == 770 then
				cw('mc',"I guess I\'ll have to keep trying.")
			elseif cl == 771 then
				cw('y',"I\'m counting on you.")
			elseif cl == 772 then
				poemfinish('y')
			end
		end
	end
end

function ch1_y_good()
	if cl == 670 then
		updateYuri('1','e')
		cw('y',"...")
	elseif cl == 671 then
		cw('bl',"As Yuri reads the poem, I notice her eyes lighten.")
	elseif cl == 672 then
		updateYuri('2','f')
		cw('y',"...Exceptional.")
	elseif cl == 673 then
		cw('mc',"Eh? What was that?")
	elseif cl == 674 then
		cw('y',"...?")
	elseif cl == 675 then
		updateYuri('1','n')
		cw('y',"D-Did I say that out loud...?")
	elseif cl == 676 then
		cw('bl',"Yuri first covers her mouth, but then ends up covering her whole face.")
	elseif cl == 677 then
		updateYuri('4','c2')
		cw('y',"I...!")
	elseif cl == 678 then
		cw('y',"Uu...")
	elseif cl == 679 then
		cw('y',"(He\'s going to hate me...)")
	elseif cl == 680 then
		cw('mc',"Um...")
	elseif cl == 681 then
		cw('mc',"You really didn\'t do anything wrong, Yuri...")
	elseif cl == 682 then
		updateYuri('4','a2')
		cw('y',"Eh...?")
	elseif cl == 683 then
		cw('y',"That\'s...")
	elseif cl == 684 then
		updateYuri('2','q')
		cw('y',"I-I guess you\'re right...")
	elseif cl == 685 then
		cw('y',"What am I getting so nervous for?")
	elseif cl == 686 then
		cw('y',"A-Ahaha...")
	elseif cl == 687 then
		updateYuri('2','l')
		cw('bl',"Yuri takes a breath.")
	elseif cl == 688 then
		cw('y',"So...")
	elseif cl == 689 then
		updateYuri('1','a')
		cw('y',"What kind of writing experience do you have?")
	elseif cl == 690 then
		cw('y',"Your use of imagery and metaphors indicates you\'ve written a lot of poetry before.")
	elseif cl == 691 then
		cw('mc',"Really...?")
	elseif cl == 692 then
		cw('mc',"Wow, that\'s a huge compliment coming from you.")
	elseif cl == 693 then
		cw('mc',"This is actually my first time, really.")
	elseif cl == 694 then
		updateYuri('1','e')
		cw('y',"Huh...?")
	elseif cl == 695 then
		cw('bl',"Yuri stares at me blankly, then looks at my poem again.")
	elseif cl == 696 then
		updateYuri('2','h')
		cw('y',"...")
	elseif cl == 697 then
		cw('y',"...Well, I know that!")
	elseif cl == 698 then
		cw('y',"I just meant...u-um...")
	elseif cl == 699 then
		cw('bl',"Yuri trails off, unable to find an excuse.")
	elseif cl == 700 then
		cw('bl',"She traces her finger along the words in the poem, as if breaking it down more thoroughly.")
	elseif cl == 701 then
		updateYuri('2','l')
		cw('y',"...Yeah.")
	elseif cl == 702 then
		cw('y',"Okay.")
	elseif cl == 703 then
		cw('y',"This is the reason I was able to tell.")
	elseif cl >= 704 then 
		ch1_y_shared()
	end
end

function ch1_n_end()
	if cl < 705 then
		cl = 705
		xaload = -1
	elseif cl == 705 then
		poem('poem_n1','natsuki')
	elseif cl == 706 then
		poem_disable()
		audioUpdate('5')
		updateNatsuki('2','q')
		cw('n',"Yeah...")
	elseif cl == 707 then
		cw('n',"I told you that you weren\'t gonna like it.")
	elseif cl == 708 then
		cw('mc',"I like it.")
	elseif cl == 709 then
		updateNatsuki('2','h')
		cw('n',"What?")
	elseif cl == 710 then
		cw('n',"Just be honest!")
	elseif cl == 711 then
		cw('mc',"I am.")
	elseif cl == 712 then
		cw('mc',"Why are you so convinced that I wouldn\'t like it?")
	elseif cl == 713 then
		updateNatsuki('5','w')
		cw('n',"Well--")
	elseif cl == 714 then
		cw('n',"Because!")
	elseif cl == 715 then
		cw('n',"Everyone in high school thinks that writing has to be all sophisticated and stuff...")
	elseif cl == 716 then
		updateNatsuki('2','q')
		cw('n',"So people don\'t even take my writing seriously.")
	elseif cl == 717 then
		cw('mc',"But isn\'t the point of poems for people to express themselves?")
	elseif cl == 718 then
		cw('mc',"Your writing style wouldn\'t make your message any less valid.")
	elseif cl == 719 then
		updateNatsuki('1','k')
		cw('n',"Yes! Exactly!")
	elseif cl == 720 then
		cw('n',"I like when it\'s easy to read, but it hits you hard.")
	elseif cl == 721 then
		updateNatsuki('1','c')
		cw('n',"Like in this poem.")
	elseif cl == 722 then
		cw('n',"Seeing everyone around you do great things can be really disheartening...")
	elseif cl == 723 then
		cw('n',"So I decided to write about it.")
	elseif cl == 724 then
		cw('mc',"Yeah, I understand.")
	elseif cl == 725 then
		updateNatsuki('2','a')
		cw('n',"But the other nice thing about simple writing is that it puts more weight on the wordplay.")
	elseif cl == 726 then
		cw('n',"Like I set up for a rhyme at the end, but then made it fall flat on purpose.")
	elseif cl == 727 then
		cw('n',"It helps bring out the feeling in the last line.")
	elseif cl == 728 then
		cw('mc',"So you did...")
	elseif cl == 729 then
		cw('mc',"I guess more went into it than I realized.")
	elseif cl == 730 then
		updateNatsuki('4','y')
		cw('n',"That\'s what it means to be a pro!")
	elseif cl == 731 then
		cw('n',"I\'m glad you learned something.")
	elseif cl == 732 then
		cw('n',"Didn\'t expect that from the youngest one here, did you?")
	elseif cl == 733 then
		cw('mc',"Yeah...guess not.")
	elseif cl == 734 then
		cw('bl',"I decide to humor her with that last comment.")
	elseif cl == 735 then
		cw('bl',"I don\'t really care how old everyone is, but if Natsuki is feeling proud then I won\'t take that away from her.")
	elseif cl == 736 then
		poemfinish('n')
	end
end

function ch1_n_bad()
	if cl == 670 then
		cw('n',"...")
	elseif cl == 671 then
		cw('n',"...?")
	elseif cl == 672 then
		updateNatsuki('2','b')
		cw('n',player..", if you\'re not going to take this club seriously then go home.")
	elseif cl == 673 then
		cw('mc',"W-What??")
	elseif cl == 674 then
		cw('mc',"Harsh...")
	elseif cl == 675 then
		updateNatsuki('4','2c')
		cw('n',"What, you expect me to believe that you actually put effort into this?")
	elseif cl == 676 then
		cw('n',"Do you think I\'m stupid?")
	elseif cl == 677 then
		cw('mc',"I\'m not a writer!")
	elseif cl == 678 then
		cw('mc',"Maybe it\'s not very good, but yeah, I did put in effort.")
	elseif cl == 679 then
		cw('mc',"We all start somewhere, right?")
	elseif cl == 680 then
		cw('mc',"If you\'re still proud of the first poem you ever wrote, then I\'d like to read it.")
	elseif cl == 681 then
		updateNatsuki('1','o')
		cw('n',"!!")
	elseif cl == 682 then
		cw('mc',"Painful to think about?")
	elseif cl == 683 then
		updateNatsuki('1','r')
		cw('n',"...")
	elseif cl == 684 then
		updateNatsuki('4','q')
		cw('n',"Fine.")
	elseif cl == 685 then
		cw('n',"Well, sorry.")
	elseif cl == 686 then
		updateNatsuki('4','c')
		cw('n',"You\'ll get better, anyway.")
	elseif cl == 687 then
		cw('n',"I\'d tell you what to improve, but you\'re better off just trying again.")
	elseif cl == 688 then
		cw('mc',"Fair enough...")
	elseif cl == 689 then
		cw('mc',"Well, to each their own, I guess.")
	elseif cl == 690 then
		updateNatsuki('4','q')
		cw('n',"Anyway, I guess I gotta share mine now...")
	elseif cl == 691 then
		cw('n',"Knowing you, you\'ll probably think it\'s stupid.")
	elseif cl >= 692 then
		ch1_n_end()
	end
end

function ch1_n_med()
	if cl == 670 then
		cw('n',"...")
	elseif cl == 671 then 
		cw('mc',"...?")
	elseif cl == 672 then 
		updateNatsuki('2','k')
		cw('n',"...Well, it\'s about what I expected from someone like you.")
	elseif cl == 673 then 
		cw('mc',"That\'s a little blunt...")
	elseif cl == 674 then 
		updateNatsuki('2','c')
		cw('n',"Well, excuse me.")
	elseif cl == 675 then 
		cw('n',"It\'s not like I said it was bad.")
	elseif cl == 676 then 
		cw('n',"It just didn\'t evoke any emotions.")
	elseif cl == 677 then
		cw('mc',"So basically, it\'s not cute enough for your tastes?")
	elseif cl == 678 then
		updateNatsuki('4','f')
		cw('n',"Do you want to get smacked?")
	elseif cl == 679 then
		cw('mc',"I\'ll pass...")
	elseif cl == 680 then
		updateNatsuki('2','2b')
		cw('n',"Sigh...")
	elseif cl == 681 then 
		updateNatsuki('2','c')
		cw('n',"Well anyway, I guess I need to show you mine.")
	elseif cl == 682 then 
		updateNatsuki('4','q')
		cw('n',"Not that you\'ll like it.")
	elseif cl >= 683 then
		ch1_n_end()
	end
end

function ch1_n_good()
	if cl == 670 then
		cw('n',"...")
	elseif cl == 671 then
		cw('mc',"...?")
	elseif cl == 672 then
		updateNatsuki('1','t')
		cw('n',"...Okay, well let\'s start with the things I don\'t like!")
	elseif cl == 673 then
		cw('n',"First of all, um...")
	elseif cl == 674 then
		cw('mc',"...")
	elseif cl == 675 then
		cw('bl',"Natsuki re-reads my poem.")
	elseif cl == 676 then
		updateNatsuki('4','c')
		cw('n',"N-never mind. I don\'t feel like giving you my opinion.")
	elseif cl == 677 then
		cw('mc',"Eh? Then what\'s the point of sharing in the first place?")
	elseif cl == 678 then
		cw('mc',"I wrote this when I could have been doing other things.")
	elseif cl == 679 then
		updateNatsuki('4','r')
		cw('n',"Uu...")
	elseif cl == 680 then
		cw('mc',"In fact, remember how I said I wanted to read your poems?")
	elseif cl == 681 then
		cw('mc',"That\'s what I had in mind when writing this.")
	elseif cl == 682 then
		cw('mc',"I want to help you feel comfortable enough to share yours.")
	elseif cl == 683 then
		cw('mc',"Like Monika said.")
	elseif cl == 684 then
		updateNatsuki('4','x')
		cw('n',"Uuuu...!")
	elseif cl == 685 then
		updateNatsuki('1','h')
		cw('n',"Well I would be more comfortable sharing my poem if yours was really bad!")
	elseif cl == 686 then
		updateNatsuki('1','w')
		cw('n',"You were supposed to show me some dumb poem and make me go 'Hah, well it's not that great but let me show you what real literature looks like!'")
	elseif cl == 687 then
		updateNatsuki('1','h')
		cw('n',"And you went and ruined it!")
	elseif cl == 688 then
		cw('n',"I hope you\'re happy!")
	elseif cl == 689 then
		cw('mc',"...")
	elseif cl == 690 then
		cw('mc',"...So, in other words, you\'re saying you liked it?")
	elseif cl == 691 then
		updateNatsuki('1','o')
		cw('n',"Urk--")
	elseif cl == 692 then
		cw('bl',"Natsuki\'s retort gets caught in her throat.")
	elseif cl == 693 then
		updateNatsuki('1','x')
		cw('n',"Uuuuuuuuu...You\'re so...!")
	elseif cl == 694 then
		cw('n',"You just...you...don\'t understand anything, do you?")
	elseif cl == 695 then
		updateNatsuki('5','q')
		cw('n',"I already told you that, you don\'t have to go announcing it to the world like you\'re all self-important!")
	elseif cl == 696 then
		cw('mc',"Pretty sure you never actually said that...")
	elseif cl == 697 then
		cw('bl',"I say that mostly to myself.")
	elseif cl == 698 then
		cw('bl',"Natsuki must really hate me or something.")
	elseif cl == 699 then
		cw('bl',"I can\'t figure out if it\'s a win or a loss that she liked my poem.")
	elseif cl == 700 then
		cw('mc',"In any case... You still need to show me yours, right?")
	elseif cl == 701 then
		updateNatsuki('5','s')
		cw('n',"Gr... Fine, I guess.")
	elseif cl == 702 then
		cw('n',"Only because Monika will make me if I don\'t.")
	elseif cl >= 703 then
		ch1_n_end()
	end
end

function ch1_s_med()
	if cl == 670 then
		cw('s',"...")
	elseif cl == 671 then
		updateSayori('2','x')
		cw('s',"This is a good poem, "..player.."!")
	elseif cl == 672 then
		cw('s',"Are you sure it's your first time?")
	elseif cl == 673 then
		cw('mc',"Of course...")
	elseif cl == 674 then
		cw('mc',"It's not that good.")
	elseif cl == 675 then
		cw('mc',"Am I the kind of guy who would be writing poems in his spare time?")
	elseif cl == 676 then
		updateSayori('2','q')
		cw('s',"Ehehe, I guess you're right~")
	elseif cl == 677 then
		updateSayori('1','q')
		cw('s',"But that's why it impressed me!")
	elseif cl == 678 then
		updateSayori('2','d')
		cw('s',"Well, to be honest...")
	elseif cl == 679 then
		cw('s',"I was afraid that you wouldn't do it seriously...")
	elseif cl == 680 then
		cw('s',"Or that you wouldn't write one at all.")
	elseif cl >= 681 then
		ch1_s_shared()
	end
end

function ch1_s_bad()
	if cl == 670 then
		updateSayori('1','b')
		cw('s',"...")
	elseif cl == 671 then
		cw('s',"...Wow!")
	elseif cl == 672 then
		cw('s',player.."...")
	elseif cl == 673 then
		updateSayori('4','r')
		cw('s',"Your poem is really bad!")
	elseif cl == 674 then
		cw('s',"Ahahaha!")
	elseif cl == 675 then
		cw('mc',"Eh?!")
	elseif cl == 676 then
		updateSayori('4','a')
		cw('s',"It's fine, it's fine~")
	elseif cl == 677 then
		cw('s',"It's your first time.")
	elseif cl == 678 then
		cw('s',"Besides...")
	elseif cl >= 679 then
		ch1_s_shared()
	end
end

function ch1_s_shared()
	if cl < 700 then
		xaload = -1
		cl = 700
	elseif cl == 700 then
		updateSayori('1','a')
		cw('s',"I'm really happy just that you wrote one.")
	elseif cl == 701 then
		cw('s',"It just reminds me of how you're really a part of the club now~")
	elseif cl == 702 then
        cw('bl',"(Not to mention the fact that I'm standing in front of you in the clubroom...?)")
	elseif cl == 703 then
		cw('mc',"Er...well, of course.")
	elseif cl == 704 then
		cw('mc',"I'm not really into it yet, but that doesn't mean I'll break my promise.")
	elseif cl == 705 then
		updateSayori('1','d')
		cw('s',"See?")
	elseif cl == 706 then
		cw('s',"It's like I said before, "..player.."...")
	elseif cl == 707 then
        cw('s',"Deep down, you're not selfish at all, you know?")
	elseif cl == 708 then
        cw('s',"Trying new things like this for other people...")
	elseif cl == 709 then
        updateSayori('2','q')
		cw('s',"That's something that only really good people do!")
	elseif cl == 710 then
        cw('mc',"Thanks...Sayori.")
	elseif cl == 711 then
        cw('bl',"...I'm not sure if Sayori sees the full picture of my motive here.")
	elseif cl == 712 then
        cw('bl',"Then again...")
	elseif cl == 713 then
        cw('bl',"I can't deny that she's part of the reason I joined.")
	elseif cl == 714 then
        cw('bl',"Knowing how much this means to her and all...")
	elseif cl == 715 then
		updateSayori('1','x')
		cw('s',"Yeah.")
	elseif cl == 716 then
		cw('s',"And I'm gonna make sure you have lots of fun here, okay?")
	elseif cl == 717 then
		cw('s',"That will be my way of thanking you~")
	elseif cl == 718 then
		cw('mc',"Alright, I'm going to hold you to that, then.")
	elseif cl == 719 then
		updateSayori('4','r')
		cw('s',"Yay~!")
	elseif cl == 720 then
        cw('s',"Now, you'll read my poem too, right?")
	elseif cl == 721 then
        updateSayori('1','y')
		cw('s',"Don't worry, I'm really bad at this.")
	elseif cl == 722 then
        cw('s',"Ehehe...")
	elseif cl == 723 then
        cw('mc',"We'll see about that.")
	elseif cl == 724 then
		poem('poem_s1','sayori')
	elseif cl == 725 then
		poem('poem_s1-a','sayori',1)
	elseif cl == 726 then
		poem_disable()
		audioUpdate('5')
		cw('mc',"Sayori...")
	elseif cl == 727 then
		cw('mc',"This is just a guess, but...")
	elseif cl == 728 then
		cw('mc', "Did you wait until this morning to write this?")
	elseif cl == 729 then
		updateSayori('4','h')
		cw('s',"No!")
	elseif cl == 730 then
		updateSayori('4','l')
		cw('s',"J-Just a little bit!")
	elseif cl == 731 then
		cw('mc',"You can't answer 'just a little bit' to a yes or no question...")
	elseif cl == 732 then
		updateSayori('5b','')
		cw('s',"I forgot to do it last night...")
	elseif cl == 733 then
		cw('mc',"Well, at least that makes me feel a little better about myself...")
	elseif cl == 734 then
		updateSayori('1','h')
		cw('s',"Don't be mean!")
	elseif cl == 735 then
		cw('s',"I still tried my best...")
	elseif cl == 736 then
		cw('mc',"Ah, yeah...")
	elseif cl == 737 then
		cw('mc',"I didn't mean to say that it was a bad poem.")
	elseif cl == 738 then
		cw('mc',"It came out nice...or, how should I put it...")
	elseif cl == 739 then
		cw('mc',"It sounds just like you.")
	elseif cl == 740 then
		updateSayori('1','d')
		cw('s',"Really?")
	elseif cl == 741 then
		cw('mc',"Yeah.")
	elseif cl == 742 then
		cw('mc',"Especially that last line...")
	elseif cl == 743 then
		updateSayori('4','r')
		cw('s',"I made eggs and toast!")
	elseif cl == 744 then
		cw('mc',"Even though you were late to school...?")
	elseif cl == 745 then
		updateSayori('5d','')
		cw('s',"It's bad to skip breakfast!")
	elseif cl == 746 then
		cw('s',"I get all cranky...")
	elseif cl == 747 then
		cw('mc',"Well, I guess there's no point in arguing...")
	elseif cl == 748 then
		cw('mc',"Anyway, thanks for showing me.")
	elseif cl == 749 then
		updateSayori('1','q')
		cw('s',"Ehehe~")
	elseif cl == 750 then
		cw('s',"This was so much fun.")
	elseif cl == 751 then
		cw('s',"Monika's the best!")
    elseif cl == 752 then
		cw('mc',"Ah...yeah.")
	elseif cl == 753 then
		cw('s',"But next time, I won't forget.")
	elseif cl == 754 then
		updateSayori('4','x')
		cw('s',"And I'm gonna write the best poem ever!")
	elseif cl == 755 then
		cw('mc',"Well, I guess I look forward to it.")
	elseif cl == 756 then
		poemfinish('s')
	end
end

function ch1_s_good()
	if cl == 670 then
		updateSayori('1','n')
		cw('s',"...")
	elseif cl == 671 then
		cw('s',"...Oh my goodness!")
	elseif cl == 672 then
		updateSayori('4','b')
		cw('s',"This is sooooo good, "..player.."!")
	elseif cl == 673 then
		cw('mc',"Eh?")
	elseif cl == 674 then
		updateSayori('4','r')
		cw('s',"I love it~!")
	elseif cl == 675 then
		cw('s',"I had no idea you were such a good writer!")
	elseif cl == 676 then
		cw('mc',"Sayori...")
	elseif cl == 677 then
		cw('mc',"You must be seriously overreacting.")
	elseif cl == 678 then
		cw('mc',"I'm not a good writer at all.")
	elseif cl == 679 then
		cw('mc',"I honestly have no idea what I'm doing.")
	elseif cl == 680 then
		updateSayori('4','x')
		cw('s',"Well...")
	elseif cl == 681 then
		cw('s',"Maybe that's why!")
	elseif cl == 682 then
		cw('s',"Because I have no idea what I like, either!")
	elseif cl == 683 then
		updateSayori('4','r')
		cw('s',"Ahahaha!")
	elseif cl == 684 then
		cw('mc',"Jeez...")
	elseif cl == 685 then
		if readpoem.y==1 then
			cw('bl',"Yuri's opinion was way more constructive than this...")
		else
			cw('bl',"I'm sure Yuri's opinion has to be a little more constructive than this.")
		end
	elseif cl == 686 then
		if readpoem.y==1 then
			xaload = -1
			cl = 687
		else
			cw('bl',"Maybe even Natsuki's.")
		end
	elseif cl == 687 then
		cw('mc',"Are you sure you don't like it just because I wrote it?")
	elseif cl == 688 then
		updateSayori('4','b')
		cw('s',"Eh?")
	elseif cl == 689 then
		cw('s',"Well, I'm sure that's part of it.")
	elseif cl == 690 then
		updateSayori('4','x')
		cw('s',"I think I understand you better than a lot of other people, you know?")
	elseif cl == 691 then
		cw('s',"So when I read your poem...")
	elseif cl == 692 then
		cw('s',"It's not just a poem...")
	elseif cl == 693 then
		updateSayori('4','q')
		cw('s',"It's a "..player.." poem!")
	elseif cl == 694 then
		cw('s',"And that makes it feel extra special!")
	elseif cl == 695 then
		cw('s',"Like I can feel your feelings in it~")
	elseif cl == 696 then
		cw('s',"Sayori hugs the sheet against her chest.")
	elseif cl == 697 then
		cw('mc',"You're so weird, Sayori...")
	elseif cl == 698 then
		cw('s',"Ehehe...")
	elseif cl >= 699 then
		ch1_s_shared()
	end
end

function ch2_s_bad()
	if cl == 670 then
		cw('s',"...")
	elseif cl == 671 then
		updateSayori('1','q')
		cw('s',"Ehehe, I love reading your poems~")
	elseif cl == 672 then
		cw('s',"It's like I never know what I'm going to get!")
	elseif cl == 673 then
		cw('mc',"So basically you're saying it sucks.")
	elseif cl == 674 then
		updateSayori('4','c')
		cw('s',"No! Not at all!")
	elseif cl == 675 then
		updateSayori('4','l')
		cw('s',"...Maybe!")
    elseif cl == 676 then
		updateSayori('5a')
		cw('s',"Just a little?")
	elseif cl == 677 then
		cw('s',"Yuri must have spoiled me a little bit with her poems...")
	elseif cl == 678 then
		cw('s',"Ehehe...")
	elseif cl == 679 then
		cw('mc',"It's fine, it's fine.")
	elseif cl == 680 then
		cw('mc',"After all, I still have no idea what kinds of writing you even like.")
	elseif cl >= 681 then
		ch2_s_shared()
	end
end

function ch2_s_shared()
	if cl < 713 then
		xaload = -1
		cl = 714
	elseif cl == 714 then
		updateSayori('1','q')
		cw('s',"Yeah!")
	elseif cl == 715 then
		cw('s',"Me neither!")
	elseif cl == 716 then
		cw('mc',"Ugh...")
	elseif cl == 717 then
		cw('mc',"Why don't you at least try giving it some thought?")
	elseif cl == 718 then
		updateSayori('2','d')
		cw('s',"Aww, you want to write something for me?")
	elseif cl == 719 then
		cw('s',"That's so sweet~")
	elseif cl == 720 then
		cw('mc',"Yeah, right.")
	elseif cl == 721 then    
		cw('mc',"But you're always thinking about other people.")
	elseif cl == 722 then
		cw('mc',"You need to think about yourself once in a while.")
	elseif cl == 723 then
		cw('mc',"If you don't, you might end up getting hurt at some point.")
	elseif cl == 724 then
		updateSayori('1','n')
		cw('s',"Ehh?")
	elseif cl == 725 then
		cw('s',"Well...")
	elseif cl == 726 then
		updateSayori('1','o')
		cw('s',"I don't really know what you mean, but I'll try to keep it in mind!")
	elseif cl == 727 then
		cw('mc',"Well, whatever...")
	elseif cl == 728 then
		updateSayori('1','b')
		cw('s',"Anyway, let's see...")
	elseif cl == 729 then
		cw('s',"Hmm...")
	elseif cl == 730 then
		updateSayori('4','q')
		cw('s',"I guess I like...happy poems~")
	elseif cl == 731 then
		updateSayori('4','i')
		cw('s',"Wait, sometimes I like sad poems too...")
	elseif cl == 732 then
		updateSayori('1','i')
		cw('s',"Sometimes a little bit of both...")
	elseif cl == 733 then
		cw('s',"There's a word for that, right...?")
	elseif cl == 734 then
		cw('s',"What's the word I'm looking for...")
	elseif cl == 735 then
		updateSayori('4','r')
		cw('s',"...Bittersweet!")
	elseif cl == 736 then
		cw('s',"Yeah!")
	elseif cl == 737 then
		updateSayori('1','x')
		cw('s',"I like things that are happy and things that are sad.")
	elseif cl == 738 then
		cw('mc',"Happy and sad?")
	elseif cl == 739 then
		cw('mc',"I can't see you liking something sad, Sayori...")
	elseif cl == 740 then
		updateSayori('1','c')
		cw('s',"Well...")
	elseif cl == 741 then
		cw('s',"I like happy the most!")
	elseif cl == 742 then
		updateSayori('1','d')
		cw('s',"But sometimes when you have a little raincloud in your head...")
	elseif cl == 743 then
		cw('s',"A sad poem can help give the raincloud a little hug...")
	elseif cl == 744 then
		updateSayori('4','q')
		cw('s',"...And make a nice happy rainbow!")
	elseif cl == 745 then
		cw('mc',"...Sayori, that's unexpectedly poetic.")
	elseif cl == 746 then
		updateSayori('4','n')
		cw('s',"Eh? It is?")
	elseif cl == 747 then
		cw('s',"Maybe I'm getting better at expressing my feelings after all!")
	elseif cl == 748 then
		updateSayori('2','q')
		cw('s',"Thanks, "..player.."!")
	elseif cl == 749 then
		cw('s',"I should go write that down, then~")
	elseif cl == 750 then
		updateSayori('2','a')
		cw('s',"You can read my poem now, okay?")
	elseif cl >= 751 then
		ch2_s_end()
	end
end

function ch2_s_end()
	if cl < 754 then
		xaload = -1
		cl = 754
	elseif cl == 754 then
		poem('poem_s2','sayori')
	elseif cl == 755 then
		poem('poem_s2-a','sayori',1)
	elseif cl == 756 then
		poem('poem_s2-b','sayori',1)
	elseif cl == 757 then
		poem('poem_s2-c','sayori',1)
	elseif cl == 758 then
		poem_disable()
		audioUpdate('5')
		cw('mc',"Holy crap...")
	elseif cl == 759 then
		cw('mc',"Sayori, did you really write this?")
	elseif cl == 760 then
		updateSayori('2','j')
		cw('s',"Of course I did!")
	elseif cl == 761 then
		cw('s',"Didn't I tell you yesterday I was gonna write the best poem ever?")
	elseif cl == 762 then
		cw('mc',"Yeah, but...")
	elseif cl == 763 then
		cw('mc',"I mean, I didn't expect something like this, coming from you.")
	elseif cl == 764 then
		updateSayori('4','x')
		cw('s',"Monika taught me a whole lot!")
	elseif cl == 765 then
		cw('s',"And I've been really in touch with my feelings recently...")
	elseif cl == 766 then
		cw('mc',"I see that...")
	elseif cl == 767 then
		cw('mc',"It's almost kind of creepy.")
	elseif cl == 768 then
		updateSayori('1','b')
		cw('s',"Creepy...?")
	elseif cl == 769 then
		cw('mc',"Well, not exactly...")
	elseif cl == 770 then
		cw('mc',"Maybe because I'm so used to you being cheerful...")
	elseif cl == 771 then
		cw('mc',"...Well, never mind.")
	elseif cl == 772 then
		cw('mc',"I'm thinking too hard about it.")
	elseif cl == 773 then
		cw('mc',"The point is, it came out good, so you should be proud of it.")
	elseif cl == 774 then
		updateSayori('1','y')
		cw('s',"Aw, thanks~")
	elseif cl == 775 then
		cw('s',"I feel like...")
	elseif cl == 776 then
		cw('s',"I feel like I was meant to express myself this way.")
	elseif cl == 777 then
		cw('s',"It even helps me understand my own feelings a little bit better...")
	elseif cl == 778 then
		updateSayori('1','a')
		cw('s',"Writing is like magic!")
	elseif cl == 779 then
		cw('mc',"You've gotten pretty passionate about this, huh?")
	elseif cl == 780 then
		cw('mc',"I hope you keep it up.")
	elseif cl == 781 then
		updateSayori('4','r')
		cw('s',"Yeah!")
	elseif cl == 782 then
		cw('s',"Writing's the best!")
	elseif cl == 783 then
		cw('s',"I'm gonna keep writing until I die!")
	elseif cl == 784 then
		cw('mc',"Ahaha...don't get ahead of yourself.")
	elseif cl == 785 then
		cw('bl',"Sayori's always had a habit of getting obsessed with something, before dropping it no more than a week later.")
	elseif cl == 786 then
		cw('bl',"I wonder if this is one of those times?")
	elseif cl == 787 then
		cw('bl',"But seeing the passion in her eyes makes it hard for me to be pessimistic.")
	elseif cl == 788 then
		poemfinish('s')
	end
end

function ch2_s_med()
	if s_poemappeal[1] < 0 then
		if cl == 670 then
			cw('s',"...")
		elseif cl == 671 then
			updateSayori('4','x')
			cw('s',"Ooh!")
		elseif cl == 672 then
			cw('s',"I like this one, "..player.."!")
		elseif cl == 673 then
			cw('s',"It has some nice feelings in it~")
		elseif cl == 674 then
			cw('mc',"Ah, I'm glad.")
		elseif cl == 675 then
			cw('mc',"So it's at least better than yesterday's.")
		elseif cl == 676 then
			updateSayori('1','q')
			cw('s',"Uh-huh!")
		elseif cl == 677 then
			cw('mc',"Maybe I'm getting better at this, then.")
        elseif cl >= 678 then
			ch2_s_med_shared()
		end

    elseif s_poemappeal[1] == 0 then
		if cl == 670 then
			cw('s',"...")
		elseif cl == 671 then
			updateSayori('4','x')
			cw('s',"Ooh!")
		elseif cl == 672 then
			cw('s',"I like this one, "..player.."!")
		elseif cl == 673 then
			cw('s',"It has some nice feelings in it~")
		elseif cl == 674 then
			cw('mc',"Ah, I'm glad.")
		elseif cl == 675 then
			cw('mc',"Does that mean it's better than yesterday's?")
		elseif cl == 676 then
			updateSayori('4','b')
			cw('s',"Mmm, lemme think...")
		elseif cl == 677 then
			updateSayori('1','q')
			cw('s',"I dunno!")
		elseif cl == 678 then
			cw('s',"I guess I like them both!")
		elseif cl == 679 then
			cw('s',"Ehehe~")
		elseif cl == 680 then
			cw('mc',"That's not very helpful, you know...")
		elseif cl >= 681 then
			ch2_s_med_shared()
		end
    else
        if cl == 670 then
			cw('s',"...")
		elseif cl == 671 then
			updateSayori('4','x')
			cw('s',"Ooh!")
		elseif cl == 672 then
			cw('s',"I like this one, "..player.."!")
		elseif cl == 673 then
			cw('s',"It has some nice feelings in it~")
		elseif cl == 674 then
			cw('mc',"Ah, I'm glad.")
		elseif cl == 675 then
			cw('mc',"Still, though...")
		elseif cl == 676 then
			cw('mc',"Your tone makes it sound like you liked yesterday's poem better.")
		elseif cl == 677 then
			updateSayori('2','l')
			cw('s',"Ehehe, I guess you caught me...")
		elseif cl == 678 then
			cw('s',"Sometimes you know me a little too well for my own good!")
		elseif cl == 679 then
			cw('mc',"Well, don't just try to be nice about it.")
		elseif cl == 680 then
			cw('mc',"If I'm doing a bad job then I'd rather just hear it.")
		elseif cl == 681 then
			updateSayori('1','c')
		elseif cl == 682 then
			cw('s',"No, no!")
		elseif cl == 683 then
			cw('s',"I still liked this one! I promise!")
		elseif cl == 684 then
			updateSayori('1','h')
			cw('s',"You know I wouldn't lie to you, "..player.."...!")
		elseif cl == 685 then
			cw('s',"Never ever!")
		elseif cl == 686 then
			cw('mc',"Yeah, I guess so...")
		elseif cl == 687 then
			cw('mc',"What made yesterday's poem so great compared to this one, then?")
		elseif cl == 688 then
			updateSayori('1','b')
			cw('s',"Umm.....")
		elseif cl >= 689 then
			ch2_s_med_shared()
		end
	end
end

function ch2_s_med_shared()
	if cl <= 704 then
		xaload = -1
		cl = 705
	elseif cl == 705 then
		updateSayori('1','a')
		cw('s',"Well, I'm not very good at figuring out if poems are good or bad...")
	elseif cl == 706 then
		cw('s',"But that's why I just go by my heart~")
	elseif cl == 707 then
		cw('s',"If it makes me feel things, then it must be a good poem!")
	elseif cl == 708 then
		cw('mc',"I'm not sure that's exactly how it works...")
	elseif cl == 709 then
		cw('bl',"...Then again, I guess conveying feelings is a pretty important part of this whole thing.")
	elseif cl == 710 then
		cw('mc',"Yeah, maybe...")
	elseif cl == 711 then
		cw('mc',"Honestly, I don't even know what kind of writing you like in the first place.")
	elseif cl >= 712 then
		ch2_s_shared()
	end
end

function ch2_s_good()
	if s_poemappeal[1] < 1 then
		if cl == 670 then
			updateSayori('1','n')
			cw('s',"...")
		elseif cl == 671 then
			cw('s',"...Oh my goodness!")
		elseif cl == 672 then
			updateSayori('4','r')
			cw('s',"This is sooooo good, "..player.."!")
		elseif cl == 673 then
			cw('mc',"Eh?")
		elseif cl == 674 then
			cw('s',"I love it~!")
		elseif cl == 675 then
			cw('s',"Especially after yesterday's poem!")
		elseif cl == 676 then
			cw('mc',"Ugh...")
		elseif cl == 677 then
			cw('mc',"You're too honest sometimes, Sayori.")
		elseif cl == 678 then
			updateSayori('4','x')
			cw('s',"No, but really!!")
		elseif cl == 679 then
			updateSayori('1','x')
			cw('s',"I wanna put this on my wall~")
		elseif cl == 680 then
			cw('s',"Can I?")
		elseif cl == 681 then
			cw('mc',"Sayori...")
		elseif cl == 682 then
			cw('mc',"You must be seriously overreacting.")
		elseif cl == 683 then
			cw('mc',"I'm not a good writer at all.")
		elseif cl == 684 then
			cw('mc',"I honestly have no idea what I'm doing.")
		elseif cl == 685 then
			updateSayori('1','l')
			cw('s',"Well...")
		elseif cl == 686 then
			cw('s',"Maybe that's why!")
		elseif cl == 687 then
			cw('s',"Because I have no idea what I like, either!")
		elseif cl == 688 then
			updateSayori('4','r')
			cw('s',"Ahahaha!")
		elseif cl == 689 then
			cw('mc',"Jeez...")
		elseif cl == 690 then
			cw('bl',"I'm sure Yuri's opinion has to be a little more constructive than this.")
		elseif cl == 691 then
			cw('bl',"Maybe even Natsuki's.")
		elseif cl == 692 then
			cw('mc',"Are you sure you don't like it just because I wrote it?")
		elseif cl == 693 then
			updateSayori('4','b')
			cw('s',"Eh?")
		elseif cl == 694 then
			updateSayori('1','b')
			cw('s',"Well, I'm sure that's part of it.")
		elseif cl == 695 then
			cw('s',"I think I understand you better than a lot of other people, you know?")
		elseif cl == 696 then
			cw('s',"So when I read your poem...")
		elseif cl == 697 then
			cw('s',"It's not just a poem...")
		elseif cl == 698 then
			updateSayori('4','q')
			cw('s',"It's a "..player.." poem!")
		elseif cl == 699 then
			cw('s',"And that makes it feel extra special!")
		elseif cl == 700 then
			cw('s',"Like I can feel your feelings in it~")
		elseif cl == 701 then
			cw('s',"Sayori hugs the sheet against her chest.")
		elseif cl == 702 then
			cw('mc',"You're so weird, Sayori...")
		elseif cl == 703 then
			updateSayori('4','l')
			cw('s',"Ehehe...")
        elseif cl >= 704 then
			ch2_s_med_shared()
		end
    else
		if cl == 670 then
			cw('s',"...")
		elseif cl == 671 then
			updateSayori('1','d')
			cw('s',player.."...")
		elseif cl == 672 then
			cw('s',"I really love your poems.")
		elseif cl == 673 then
			cw('s',"I can't believe you've been hiding these from me!")
		elseif cl == 674 then
			cw('mc',"Eh? I'm not hiding anything!")
		elseif cl == 675 then
			updateSayori('1','b')
			cw('s',"But...")
		elseif cl == 676 then
			cw('s',"Your poems are sooo good...")
		elseif cl == 677 then
			cw('s',"Yesterday's, and this one too!")
		elseif cl == 678 then
			cw('s',"You can't tell me you haven't done this before!")
		elseif cl == 679 then
			cw('mc',"I mean...")
		elseif cl == 680 then
			cw('mc',"You're really the only one who feels that way, so...")
        elseif cl == 681 then
			updateSayori('4','h')
			cw('s',"Eh?!")
		elseif cl == 682 then
			cw('s',"No way!!")
		elseif cl == 683 then
			cw('s',"Not even Natsuki...?")
		elseif cl == 684 then
			cw('mc',"Well, I guess Natsuki is the least likely to admit how much she likes something...")
		elseif cl == 685 then
			cw('mc',"But I don't think it's that.")
		elseif cl == 686 then
			updateSayori('1','b')
			cw('s',"What do you mean?")
		elseif cl == 687 then
			cw('mc',"Well...")
		elseif cl == 688 then
			cw('mc',"I guess I'll be honest about it.")
		elseif cl == 689 then
			cw('mc',"It's a lot easier to write poems when I'm thinking about you.")
		elseif cl == 690 then
			updateSayori('4','m')
			cw('s',"E-Eh?!")
		elseif cl == 691 then
			cw('s',"Wawawa--!")
		elseif cl == 692 then
			cw('mc',"Stop thinking weird things, idiot!")
		elseif cl == 693 then
			cw('mc',"I just mean that you're a really...expressive person, I guess.")
		elseif cl == 694 then
			cw('mc',"How am I supposed to write poems about my own stupid life?")
		elseif cl == 695 then
			cw('mc',"But you somehow make everything in your life an adventure.")
		elseif cl == 696 then
			cw('mc',"Even the little things.")
		elseif cl == 697 then
			updateSayori('4','o')
			cw('s',"Like cooking!!")
		elseif cl == 698 then
			cw('mc',"Let's not talk about that!")
		elseif cl == 699 then
			updateSayori('5a')
			cw('s',"Ehehe...")
		elseif cl == 700 then
			cw('mc',"So, yeah...")
        elseif cl == 701 then
			cw('mc',"I guess what I'm saying is that I can feel more feelings through you than I can through myself.")
		elseif cl == 702 then
			cw('mc',"We have that kind of weird connection.")
		elseif cl == 703 then
			cw('mc',"It's your fault for getting in my business all the time.")
		elseif cl == 704 then
			updateSayori('1','e')
			cw('s',"Ehh...?")
		elseif cl == 705 then
			cw('s',"I don't know if I understand...")
		elseif cl == 706 then
			cw('mc',"Sigh...")
		elseif cl == 707 then
			cw('mc',"You never understand when I try to explain things to you, do you, Sayori?")
		elseif cl == 708 then
			cw('bl',"I pat Sayori's head.")
		elseif cl == 709 then
			updateSayori('4','s')
			cw('s',"Ahaha! Heyyy!")
		elseif cl == 710 then
			cw('s',"I'm not a kid, you know!")
		elseif cl == 711 then
			cw('mc',"Are you sure about that?")
		elseif cl == 712 then
			updateSayori('4','l')
			cw('s',"Mmmm, maybe~")
		elseif cl == 713 then
			cw('bl',"Sayori starts fiddling with her pencil between her hands.")
		elseif cl == 714 then
			cw('s',"Hey, "..player.."...")
		elseif cl == 715 then
			updateSayori('2','d')
			cw('s',"Will you give me your poem?")
		elseif cl == 716 then
			cw('s',"I kinda want to keep it.")
		elseif cl == 717 then
			cw('mc',"Huh? Why?")
		elseif cl == 718 then
			updateSayori('1','y')
			cw('s',"Because...")
		elseif cl == 729 then
			cw('s',"Well...")
		elseif cl == 720 then
			cw('s',"It's the first time you've written something for me...")
		elseif cl == 721 then
			cw('s',"Ehehe...")
		elseif cl == 722 then
			cw('mc',"!!")
		elseif cl == 723 then
			cw('mc',"Sayori, you completely misunderstood!")
		elseif cl == 724 then
			cw('mc',"I didn't write this for you!")
		elseif cl == 725 then
			updateSayori('5b')
			cw('s',"Ehehehehe...")
		elseif cl == 726 then
			cw('mc',"Sigh...")
		elseif cl == 727 then
			cw('mc',"Are you even listening anymore?")
		elseif cl == 728 then
			cw('mc',"Well, whatever.")
		elseif cl == 729 then
			cw('mc',"I'll give it to you when we go home.")
		elseif cl == 730 then
			updateSayori('4','m')
			cw('s',"Really?!")
		elseif cl == 731 then
			cw('bl',"Snap!")
		elseif cl == 732 then
			updateSayori('4','p')
			cw('s',"A-Ah!!")
		elseif cl == 733 then
			cw('s',"I broke my pencil...")
		elseif cl == 734 then
			cw('bl',"Sayori hastily bends down to pick up the piece she dropped.")
		elseif cl == 735 then
			cw('bl',"But being inattentive of her surroundings, she bumps right into me.")
		elseif cl == 736 then
			updateSayori('4','l')
			cw('s',"S-S-Sorry--!!")
		elseif cl == 737 then
			cw('mc',"It's fine, it's fine.")
		elseif cl == 738 then
			cw('mc',"I'll get it for you.")
		elseif cl == 739 then
			cw('bl',"I bend down and pick up the broken pencil.")
		elseif cl == 740 then
			cw('bl',"Sayori clutches the desk beside her to support herself, knees shaking.")
		elseif cl == 741 then
			updateSayori('5b')
			cw('s',"I-I'm a little clumsy today...")
		elseif cl == 742 then
			cw('s',"Ahahaha...")
		elseif cl == 743 then
			cw('mc',"Let's sit down, Sayori...")
		elseif cl == 744 then
			updateSayori('4','y')
			cw('s',"Y-Yeah...")
		elseif cl == 745 then
			cw('bl',"I grab Sayori's arm and help her sit at the desk.")
		elseif cl == 746 then
			cw('mc',"Anyway, I still haven't read your poem...")
		elseif cl == 747 then
			updateSayori('4','b')
			cw('s',"Oh!")
		elseif cl == 748 then
			cw('s',"Sorry, I forgot about that~")
		elseif cl == 749 then
			updateSayori('1','h')
			cw('s',"But it's not as good as yours!!")
		elseif cl == 750 then
			cw('mc',"Jeez, don't worry.")
		elseif cl == 751 then
			cw('mc',"I'm sure I'll like it.")
		elseif cl >= 752 then
			ch2_s_end()
		end
	end
end

function ch1_m_start()
	if cl == 670 then
		updateMonika('1','b')
		cw('m',"Hi, "..player.."!")
	elseif cl == 671 then
		cw('m',"Having a good time so far?")
	elseif cl == 672 then
		cw('mc',"Ah...yeah.")
	elseif cl == 673 then
		updateMonika('1','k')
		cw('m',"Good! Glad to hear it!")
	elseif cl == 674 then
		updateMonika('4','b')
		cw('m',"By the way, since you're new and everything...")
	elseif cl == 675 then
		cw('m',"If you ever have any suggestions for the club, like new activities, or things we can do better...")
	elseif cl == 676 then
		cw('m',"I'm always listening!")
	elseif cl == 677 then
		cw('m',"Don't be afraid to bring things up, okay?")
	elseif cl == 678 then
		updateMonika('4','a')
		cw('mc',"Alright...I'll keep that in mind.")
	elseif cl == 679 then
		cw('bl',"Of course I'll be afraid to bring things up.")
	elseif cl == 680 then
		cw('bl',"I'm much better off just going with the flow until I'm more settled in.")
	elseif cl == 681 then
		updateMonika('1','a')
		cw('m',"Anyway...")
	elseif cl == 682 then
		cw('m',"Want to share your poem with me?")
	elseif cl == 683 then
		cw('mc',"It's kind of embarrassing, but I guess I have to.")
	elseif cl == 684 then
		updateMonika('5a','')
		cw('m',"Ahahaha!")
	elseif cl == 685 then
		cw('m',"Don't worry, "..player.."!")
	elseif cl == 686 then
		cw('m',"We're all a little embarrassed today, you know?")
	elseif cl == 687 then
		cw('m',"But it's that sort of barrier that we'll all learn to get past soon.")
	elseif cl == 688 then
		cw('mc',"Yeah, that's true.")
	elseif cl == 689 then
		cw('bl',"I hand Monika my poem.")
	elseif cl == 690 then
		updateMonika('2','a')
		cw('m',"...Mhm!")
	elseif cl >= 691 then
		m_eval()
	end
end

function ch2_m_start()
	if cl == 670 then
		updateMonika('1','b')
		cw('m',"Hi again, "..player.."!")
	elseif cl == 671 then
		cw('m',"How's the writing going?")
	elseif cl == 672 then
		cw('mc',"Alright, I guess...")
	elseif cl == 673 then
		updateMonika('2','k')
		cw('m',"I'll take that.")
	elseif cl == 674 then
		updateMonika('1','b')
		cw('m',"As long as it's not going bad!")
	elseif cl == 675 then
		updateMonika('1','a')
		cw('m',"I'm happy that you're applying yourself.")
	elseif cl == 676 then
		cw('m',"Maybe soon you'll come up with a masterpiece!")
	elseif cl == 677 then
		cw('mc',"Ahaha, I wouldn't count on that...")
	elseif cl == 678 then
		updateMonika('1','a')
		cw('m',"You never know!")
	elseif cl == 679 then
		cw('m',"Want to share what you wrote for today?")
	elseif cl == 680 then
		cw('m',"Sure... Here you go.")
	elseif cl == 681 then
		cw('bl',"I give my poem to Monika.")
	elseif cl == 682 then
		cw('m',"...")
	elseif cl == 683 then
		cw('m',"...Alright!")
	elseif cl >= 684 then
		m_eval()
	end
end

function ch3_m_start()
	if cl == 670 then
		updateMonika('2','a')
		cw('m',"Hi "..player.."~")
	elseif cl == 671 then
		cw('m',"Have you thought about what you want to submit to perform at the festival?")
	elseif cl == 672 then
		cw('mc',"Well...")
	elseif cl == 673 then
		cw('bl',"Being in this club is one thing, but performing in front of a bunch of people...")
	elseif cl == 674 then
		cw('mc',"...I'll have to give it some more thought.")
	elseif cl == 675 then
		updateMonika('2','b')
		cw('m',"Okay, no pressure!")
	elseif cl == 676 then
		cw('m',"But whatever you do, I'm sure it'll turn out great.")
	elseif cl == 677 then
		cw('m',"It would also make me happy to see.")
	elseif cl == 678 then
		updateMonika('2','k')
		cw('m',"Ahaha!")
	elseif cl == 679 then
		updateMonika('1','a')
		cw('m',"Anyway, let's take a look at today's poem!")
	elseif cl == 680 then
		cw('mc',"Sure...")
    elseif cl == 681 then
		cw('bl',"I let Monika take the poem I'm holding in my hands.")
	elseif cl == 682 then
		cw('m',"...")
	elseif cl >= 683 then
		m_eval()
	end
end

function ch1_m_end()
	if cl == 730 then
		cw('mc',"I'm sure I'll end up trying different things a lot.")
	elseif cl == 731 then
		cw('mc',"It could take a while before I feel comfortable doing this.")
	elseif cl == 732 then
		updateMonika('1','k')
		cw('m',"That's okay!")
	elseif cl == 733 then
		updateMonika('1','b')
		cw('m',"I'd love to see you try new things.")
	elseif cl == 734 then
		cw('m',"That's the best way to find the kind of style that suits you.")
	elseif cl == 735 then
		updateMonika('3','e')
		cw('m',"Everyone else might be a little bit biased toward their own kinds of styles...")
	elseif cl == 736 then
		updateMonika('3','a')
		cw('m',"But I'll always help you find what suits you the most!")
	elseif cl == 737 then
		cw('m',"So don't force yourself to write the way everyone else wants you to write.")
	elseif cl == 738 then
		cw('m',"It's not like you have to worry about impressing them or anything.")
	elseif cl == 739 then	
		updateMonika('5a','')
		cw('m',"Ahaha!")
	elseif cl == 740 then
		cw('mc',"Ahaha...")
	elseif cl == 741 then
		updateMonika('1','a')
		cw('m',"Anyway, do you want to read my poem now?")
	elseif cl == 742 then
		updateMonika('1','e')
		cw('m',"Don't worry, I'm not very good...")
	elseif cl == 743 then
		cw('mc',"You sound pretty confident for someone who claims to not be very good.")
    elseif cl == 744 then
		updateMonika('1','j')
		cw('m',"Well...that's 'cause I have to sound confident.")
	elseif cl == 745 then
		updateMonika('1','b')
		cw('m',"That doesn't mean I always feel that way, you know?")
	elseif cl == 746 then
		updateMonika('1','a')
		cw('mc',"I see...")
	elseif cl == 747 then
		cw('mc',"Well, let's read it, then.")
	elseif cl == 748 then
		poem('poem_m1','monika')
	elseif cl == 749 then
		poem('poem_m1-a','monika',1)
	elseif cl == 750 then
		poem_disable()
		audioUpdate('5')
		updateMonika('1','a')
		cw('m',"So...what do you think?")
	elseif cl == 751 then
		cw('mc',"Hmm...it's very...freeform, if that's what you call it.")
	elseif cl == 752 then
		cw('mc',"Sorry, I'm not really the right person to ask for feedback...")
	elseif cl == 753 then
		updateMonika('2','e')
		cw('m',"Ahaha. It's okay.")
	elseif cl == 754 then
		updateMonika('2','b')
		cw('m',"Yeah, that kind of style has gotten pretty popular nowadays.")
	elseif cl == 755 then
		cw('m',"That is, a lot of poems have been putting emphasis on the timing between words and lines.")
	elseif cl == 756 then
		updateMonika('2','a')
		cw('m',"When performed out loud, it can be really powerful.")
	elseif cl == 757 then
		cw('mc',"What was the inspiration behind this one?")
	elseif cl == 758 then
		cw('m',"Ah...")
	elseif cl == 759 then
		updateMonika('3','d')
		cw('m',"Well, I'm not sure if I know how to put it...")
	elseif cl == 760 then
		updateMonika('3','a')
		cw('m',"I guess you could say that I had some kind of epiphany recently.")
	elseif cl == 761 then
		cw('m',"It's been influencing my poems a bit.")
	elseif cl == 762 then
		cw('mc',"An epiphany?")
	elseif cl == 763 then
		updateMonika('1','a')
		cw('m',"Yeah...something like that.")
	elseif cl == 764 then
		cw('m',"I'm kind of nervous to talk about deep stuff like that, because it's kind of coming on strongly...")
	elseif cl == 765 then
		cw('m',"Maybe after everyone is better friends with each other.")
	elseif cl == 766 then
		updateMonika('1','j')
		cw('m',"Anyway...")
	elseif cl == 767 then
		updateMonika('3','b')
		cw('m',"Here's Monika's Writing Tip of the Day!")
	elseif cl == 768 then
		cw('m',"Sometimes when you're writing a poem - or a story - your brain gets too fixated on a specific point...")
	elseif cl == 769 then
		cw('m',"If you try so hard to make it perfect, then you'll never make any progress.")
	elseif cl == 770 then
		cw('m',"Just force yourself to get something down on the paper, and tidy it up later!")
	elseif cl == 771 then
		cw('m',"Another way to think about it is this:")
	elseif cl == 772 then
		cw('m',"If you keep your pen in the same spot for too long, you'll just get a big dark puddle of ink.")
	elseif cl == 773 then
		cw('m',"So just move your hand, and go with the flow!")
	elseif cl == 774 then
		updateMonika('3','k')
		cw('m',"...That's my advice for today!")
	elseif cl == 775 then
		cw('m',"Thanks for listening~")
	elseif cl == 776 then
		poemfinish('m')
	end
end

function m_eval()

	if poemwinner[chapter] == 'Sayori' then
		if s_appeal == 1 then m_sayori_1()
		elseif s_appeal == 2 then m_sayori_2()
		elseif s_appeal == 3 then m_sayori_3()
		end
	elseif poemwinner[chapter] == 'Natsuki' then
		if n_appeal == 1 then m_natsuki_1()
		elseif n_appeal == 2 then m_natsuki_2()
		elseif n_appeal == 3 then m_natsuki_3()
		end
	elseif poemwinner[chapter] == 'Yuri' then
		if y_appeal == 1 then m_yuri_1()
		elseif y_appeal == 2 then m_yuri_2()
		elseif y_appeal == 3 then m_yuri_3()
		end
	end
	
	if cl < 692 and cl ~= 666 then
		xaload = -1
		cl = 692
	end
end

function m_end()
	if chapter == 1 then ch1_m_end()
	elseif chapter == 2 then ch2_m_end()
	elseif chapter == 3 then ch3_m_end()
	end
	
	if cl < 730 and cl ~= 666 then
		xaload = -1
		cl = 730
	end
end

function m_natsuki_1()
	if cl == 692 then
		updateMonika('2','b')
		cw('m',"I like it, "..player.."!")
	elseif cl == 693 then
		cw('mc',"Really...?")
	elseif cl == 694 then
		updateMonika('2','e')
		cw('m',"It's a lot cuter than I expected.")
	elseif cl == 695 then
		updateMonika('2','k')
		cw('m',"Ahahaha!")
	elseif cl == 696 then
		cw('mc',"Oh jeez...")
	elseif cl == 697 then
		updateMonika('1','b')
		cw('m',"No, no!")
	elseif cl == 698 then
		cw('m',"It kind of makes me think of something Natsuki would write.")
	elseif cl == 699 then
		cw('m',"And she's a good writer, too.")
	elseif cl == 700 then
		updateMonika('5a','')
		cw('m',"So take that as a compliment!")
    elseif cl == 701 then
		cw('mc',"Ahaha...")
	elseif cl == 702 then
		cw('mc',"If you say so.")
	elseif cl == 703 then
		cw('m',"Yep!")
	elseif cl == 704 then
		updateMonika('1','a')
		cw('m',"By any chance have you read anything by Shel Silverstein?")
	elseif cl == 705 then
		cw('mc',"Eh?")
	elseif cl == 706 then
		cw('mc',"Maybe a long time ago...")
	elseif cl == 707 then
		cw('m',"He's famous for telling all kinds of stories in just a few simple words.")
	elseif cl == 708 then
		cw('m',"His poems can be funny, endearing, or even sad...")
	elseif cl == 709 then
		updateMonika('3','d')
		cw('m',"And sometimes they're only a few lines long.")
	elseif cl == 710 then
		cw('m',"They might even feel like they're written for kids, but if you think about them...")
	elseif cl == 711 then
		cw('m',"They can express views of the world that would apply to anybody.")
	elseif cl == 712 then
		cw('mc',"I see...")
    elseif cl == 713 then
		cw('mc',"So you're saying that Natsuki is kind of like that?")
	elseif cl == 714 then
		updateMonika('2','a')
		cw('m',"Sort of.")
	elseif cl == 715 then
		cw('m',"Maybe she's not an expert...")
	elseif cl == 716 then
		cw('m',"But you probably won't find much filler in her poems.")
	elseif cl == 717 then
		cw('m',"They might be easy to write, but they're super challenging to get the meaning through.")
	elseif cl == 718 then
		updateMonika('2','b')
		cw('m',"So I can see why it would be your kind of poem to explore!")
	elseif cl >= 719 then
		m_end()
	end
end

function m_sayori_1()
	if cl == 692 then
		updateMonika('2','a')
		cw('m',"I like this one!")
	elseif cl == 693 then
		cw('m',"It makes me think of something Sayori would like.")
	elseif cl == 694 then
		cw('mc',"Is that so?")
	elseif cl == 695 then
		updateMonika('2','d')
		cw('m',"You and Sayori are really good friends, right?")
	elseif cl == 696 then
		cw('m',"I wouldn't be surprised if you had those sorts of things in common.")
	elseif cl == 697 then
		cw('mc',"Ah, well...")
	elseif cl == 698 then
		cw('mc',"We may be good friends, but Sayori and I are actually really different.")
	elseif cl == 699 then
		cw('m',"Hmm...")
	elseif cl == 700 then
		cw('m',"Well, that may be the case.")
	elseif cl == 701 then
		updateMonika('3','a')
		cw('m',"But maybe there are also some similarities that you wouldn't expect.")
    elseif cl == 702 then
		cw('m',"The way she talks about you...")
	elseif cl == 703 then
		cw('m',"It sounds like the two of you really care about each other's well-being.")
	elseif cl == 704 then
		cw('m',"Even if you show it in different ways, it ends up being more similar than you'd think.")
	elseif cl == 705 then
		updateMonika('1','a')
		cw('m',"So I think that's the kind of vibe I get when reading your poem.")
	elseif cl == 706 then
		cw('mc',"Hmm...")
	elseif cl == 707 then
		cw('mc',"You sure you're not reading into it too much?")
	elseif cl == 708 then
		updateMonika('5a','')
		cw('m',"Ahaha! I could be!")
	elseif cl == 709 then
		cw('m',"Oh gosh, I sound like Yuri...")
	elseif cl == 710 then
		updateMonika('2','a')
		cw('m',"...But in any case, Sayori's writing has kind of a gentle feel to it.")
	elseif cl == 711 then
		cw('m',"I can tell that she likes exploring with emotions, like happiness and sadness.")
	elseif cl == 712 then
		cw('m',"Who knew that someone so happy would enjoy sad things, too?")
	elseif cl == 713 then
		cw('mc',"Yeah... That's totally unexpected.")
	elseif cl == 714 then
		updateMonika('2','j')
		cw('m',"Well, to each their own~")
	elseif cl == 715 then
		updateMonika('2','a')
		cw('m',"And you shouldn't be afraid to experiment a little bit, either.")
	elseif cl >= 716 then
		m_end()
	end
end

function m_yuri_1()
	if cl == 692 then
		updateMonika('1','a')
		cw('m',"Great job, "..player.."!")
	elseif cl == 693 then
		cw('m',"I was going 'Ooh' in my head while reading it.")
	elseif cl == 694 then
		updateMonika('1','j')
		cw('m',"It's really metaphorical!")
	elseif cl == 695 then
		updateMonika('1','a')
		cw('m',"I'm not sure why, but I didn't expect you to go for something so deep.")
	elseif cl == 696 then
		updateMonika('3','b')
		cw('m',"I guess I underestimated you!")
	elseif cl == 697 then
		cw('mc',"It's easiest for me to keep everyone's expectations low.")
	elseif cl == 698 then
		cw('mc',"That way, it always counts when I put in some effort.")
	elseif cl == 699 then
		updateMonika('5a')
		cw('m',"Ahaha! That's not very fair!")
	elseif cl == 700 then
		cw('m',"Well, I guess it worked, anyway.")
	elseif cl == 701 then
		updateMonika('2','a')
		cw('m',"You know that Yuri likes this kind of writing, right?")
	elseif cl == 702 then
		cw('m',"Writing that's full of imagery and symbolism.")
	elseif cl == 703 then
		updateMonika('2','d')
		cw('m',"Unlike Sayori, who likes using simple and direct words to describe happiness and sadness...")
	elseif cl == 704 then
		cw('m',"Yuri likes it when readers are left to derive their own meaning out of it.")
	elseif cl == 705 then
		updateMonika('4','d')
		cw('m',"It's very challenging to write like that effectively.")
	elseif cl == 706 then
		cw('m',"Both allowing people to get something out of it just by feel...")
	elseif cl == 707 then
		cw('m',"Or letting them deeply analyze all of the nuances.")
	elseif cl == 708 then
		cw('m',"It can take years of practice, which I'm assuming Yuri has at this point.")
	elseif cl == 709 then
		updateMonika('1','e')
		cw('m',"I never really asked, though...")
	elseif cl == 710 then
		cw('mc',"I'm sure I'm nowhere near her level yet.")
	elseif cl == 711 then
		updateMonika('2','b')
		cw('m',"Don't worry so much about that!")
	elseif cl == 712 then
		cw('m',"You do your own thing.")
	elseif cl == 713 then
		cw('m',"Just keep exploring, and learn by trying new things!")
	elseif cl >= 714 then
		m_end()
	end
end

function m_natsuki_2()
	if cl == 692 then
	elseif cl >= 709 then
		m_end()
	end
end

function m_sayori_2()
	if cl == 692 then
	elseif cl >= 713 then
		m_end()
	end
end

function m_yuri_2()
	if cl == 692 then
	elseif cl >= 726 then
		m_end()
	end
end

function m_natsuki_3()
	if cl == 692 then
	elseif cl >= 724 then
		m_end()
	end
end

function m_sayori_3()
	if cl == 692 then
	elseif cl >= 720 then
		m_end()
	end
end

function m_yuri_3()
	if cl == 692 then
	elseif cl >= 724 then
		m_end()
	end
end