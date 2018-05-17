function poeminitialize(y)
	poemsread = 0
	s_readpoem = false
	n_readpoem = false
	y_readpoem = false
	m_readpoem = false
	
	if y == 1 then 
		y_ranaway = true 
	else
		y_ranaway = false
	end
end

function poemresponses()
	
	if cl == 666 then
		skip_poem = false
		
		--set up menutext
		if poemsread == 0 then
			audioUpdate('5')
			menutext = "Who should I show my poem to first?"
		elseif poemsread == 4 or poemsread == 3 and chapter > 5 then
			poemsread = nil
			cl = 800
		else
			menutext = "Who should I show my poem to next?"
		end
		
		--set up choice 1
		if s_readpoem == false and chapter < 5 then
			choice1 = "Sayori"
		elseif s_readpoem then
			choice1 = "Natsuki"
		elseif s_readpoem and n_readpoem then
			choice1 = "Yuri"
		elseif s_readpoem and n_readpoem and y_readpoem then
			choice1 = "Monika"
        end
		
		--set up choice 2
		if n_readpoem == false and poemsread <= 2 then
			choice2 = "Natsuki"
		elseif y_readpoem == false and n_readpoem or s_readpoem and y_readpoem == false then
			choice2 = "Yuri"
		elseif m_readpoem == false and s_readpoem and n_readpoem and poemsread <=2 or n_readpoem and y_readpoem and poemsread <= 2 then
			choice2 = "Monika"
        end
		
		--set up choice 3
		if y_readpoem == false and n_readpoem == false and y_ranaway == false then
			choice3 = "Yuri"
		elseif m_readpoem == false and y_readpoem and y_ranaway and n_readpoem and s_readpoem or m_readpoem == false then
			choice3 = "Monika"
        end
		
		--set up choice 4
		if m_readpoem == false and poemsread == 0 and chapter < 5 then
			choice4 = "Monika"
		end
		
		--set up choice menu and number of items
		if xaload == 0 then
			if poemsread == 0 then menu_enable('choice', 5)
			elseif poemsread == 1 then 
				menu_enable('choice', 4)
				choice4 = ''
			elseif poemsread == 2 then 
				menu_enable('choice', 3)
				choice3 = ''
			elseif poemsread == 3 then 
				menu_enable('choice', 2)
				choice2 = ''
			end
		end
		
		
	elseif cl == 667 or cl == 668 then --first time poem script
		if chapter == 1 and poemsread == 0 then
			if m_selected == 2 then
                if cl == 667 then cw('bl',"I'm definitely most comfortable sharing it with Sayori first.")
                elseif cl == 668 then cw('bl',"She's my good friend, after all.") end
			elseif m_selected == 3 then
                if cl == 667 then cw('bl',"I told Natsuki I was interested in her poems yesterday.")
                elseif cl == 668 then cw('bl',"It's probably only fair if I shared mine with her first.") end
            elseif m_selected == 4 then
                if cl == 667 then cw('bl',"Yuri seems the most experienced, so I should start with her.")
                elseif cl == 668 then cw('bl',"I can trust her opinion to be fair.") end
            elseif m_selected == 5 then
				if cl == 667 then cw('bl',"I should start with Monika.")
				elseif cl == 668 then cw('bl',"Yesterday she seemed eager to read my poem, and I want her to know I'm putting in effort.") end
			end
		elseif chapter > 1 or poemsread > 0 then
			cl = 669
		end
		
	elseif cl >= 669 then
		if cl < 670 then xaload = -1 end
		--choice 1
		if m_selected == 2 and choice1 == 'Sayori' then
			poemresponse_sayori()
		elseif m_selected == 2 and choice1 == 'Natsuki' then
			poemresponse_natsuki()
		elseif m_selected == 2 and choice1 == 'Yuri' then
			poemresponse_yuri()
		elseif m_selected == 2 and choice1 == 'Monika' then
			poemresponse_monika()
		--choice 2
		elseif m_selected == 3 and choice2 == 'Natsuki' then
			poemresponse_natsuki()
		elseif m_selected == 3 and choice2 == 'Yuri' then
			poemresponse_yuri()
		elseif m_selected == 3 and choice2 == 'Monika' then
			poemresponse_monika()
		--choice 3
		elseif m_selected == 4 and choice3 == 'Yuri' then
			poemresponse_yuri()
		elseif m_selected == 4 and choice3 == 'Monika' then
			poemresponse_monika()
		--choice 4
		elseif m_selected == 5 and choice4 == 'Monika' then
			poemresponse_monika()
		end
		
		if cl == 669 then cl = cl+1 end
	end
end

function poemresponse_sayori()
	sx = 80
	if cl <= 669 then updateSayori('1','a') end
	s_readpoem = true
	poemopinion = "med"
	if s_poemappeal < 0 and chapter == 1 then
		poemopinion = "bad"
	elseif s_poemappeal > 0 == chapter == 1 then
		poemopinion = "good"
	elseif s_poemappeal < 1 and chapter == 2 then
		poemopinion = "bad"
	elseif s_poemappeal > 1 and chapter == 2 then
		poemopinion = "good"
	elseif s_poemappeal < 2 and chapter == 3 then
		poemopinion = "bad"
	elseif s_poemappeal > 2 and chapter == 3 then
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
	nx = 80
    if cl <= 669 then updateNatsuki('1','c') end
	n_readpoem = true
    poemopinion = "med"
	if n_poemappeal < 0 and chapter == 1 then
		poemopinion = "bad"
	elseif n_poemappeal > 0 == chapter == 1 then
		poemopinion = "good"
	elseif n_poemappeal < 1 and chapter == 2 then
		poemopinion = "bad"
	elseif n_poemappeal > 1 and chapter == 2 then
		poemopinion = "good"
	elseif n_poemappeal < 2 and chapter == 3 then
		poemopinion = "bad"
	elseif n_poemappeal > 2 and chapter == 3 then
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
	yx = 80
	if cl <= 669 then updateYuri('1','a') end
	y_readpoem = true
    poemopinion = "med"
	if y_poemappeal < 0 and chapter == 1 then
		poemopinion = "bad"
	elseif y_poemappeal > 0 == chapter == 1 then
		poemopinion = "good"
	elseif y_poemappeal < 1 and chapter == 2 then
		poemopinion = "bad"
	elseif y_poemappeal > 1 and chapter == 2 then
		poemopinion = "good"
	elseif y_poemappeal < 2 and chapter == 3 then
		poemopinion = "bad"
	elseif y_poemappeal > 2 and chapter == 3 then
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
	mx = 80
	if cl <= 669 then updateMonika('1','a') end
	m_readpoem = true
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
		yb = 'o'
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
	if cl < 704 then
		xaload = -1
		cl = 704
	elseif cl == 704 then
		updateYuri('1','a')
		cw('y',"It\'s just that there are specific writing habits that are usually typical of new writers.")
	elseif cl == 705 then
		cw('y',"And having been through that myself, I kind of learned to pick up on them.")
	elseif cl == 706 then
		yb = 'i'
		cw('y',"I think the most noticeable thing I recognize in new writers is that they try to make their style very deliberate.")
	elseif cl == 707 then
		cw('y',"In other words, they tend to pick a writing style separate from the topic matter, and they form-fit the two together.")
	elseif cl == 708 then
		yb = 'a'
		cw('y',"The end result is that both the style and the expressiveness are weakened.")
	elseif cl == 709 then
		cw('bl',"Once Yuri finds her train of thought, it's as if her demeanor totally changes.")
	elseif cl == 710 then
		cw('bl',"Her stammering is completely gone, and she sounds like an expert.")
	elseif cl == 711 then
		yb = 'k'
		cw('y',"Of course, that\'s not something you can be blamed for.")
	elseif cl == 712 then
		cw('y',"There are so many different skills and techniques that go into writing even a simple poem.")
	elseif cl == 713 then
		yb = 'a'
		cw('y',"Not just finding them and building them, but getting them to work together is probably the most challenging part.")
	elseif cl == 714 then
		cw('y',"It might take you some time, but it all comes with practice, and learning by example, and trying new things.")
	elseif cl == 715 then
		cw('y',"I also hope that everyone else in the club gives you valuable feedback.")
	elseif cl == 716 then
		yb = 'l'
		cw('y',"Natsuki can be a little bit biased, though...")
	elseif cl == 717 then
		cw('mc',"Biased? How?")
	elseif cl == 718 then
		updateYuri('2','a')
        cw('y',"U-Um...")
	elseif cl == 719 then
		cw('y',"Well...")
	elseif cl == 720 then
		cw('y',"Never mind...")
	elseif cl == 721 then
		cw('y',"I shouldn\'t be talking about people like that...")
	elseif cl == 722 then
		cw('y',"Sorry...")
	elseif cl == 723 then
		cw('mc',"It\'s fine.")
	elseif cl == 724 then
		cw('bl',"I'm not sure if Yuri is apologizing to herself, to me, or to Natsuki.")
	elseif cl == 725 then
		cw('mc',"Do you mind if I read your poem now?")
	elseif cl == 726 then
		updateYuri('3','c')
		cw('y',"Please do!")
	elseif cl == 727 then
		cw('y',"I\'d love to share my thought process behind it...")
	elseif cl == 728 then
		cw('bl',"Yuri smiles dreamily, as if that's a rare opportunity for her.")
	elseif cl == 729 then
		cw('bl',"Which itself is kind of funny...")
	elseif cl == 730 then
		cw('bl',"...After all, isn't this supposed to be a literature club?")
	elseif cl == 731 then
		poem("poem_y1","yuri")
	elseif cl == 732 then
		poem_enabled = false
		audioUpdate('5')
		updateYuri('3','t')
		cw('y',"...")
	elseif cl == 733 then
		cw('y',"I...I\'m sorry I have such terrible handwriting!")
	elseif cl == 734 then
		cw('mc',"What??")
	elseif cl == 735 then
		cw('mc',"I wasn\'t thinking that at all...")
	elseif cl == 736 then
		updateYuri('2','v')
		cw('y',"But it took you a long time to read...")
	elseif cl == 737 then
		cw('mc',"Ah--")
	elseif cl == 738 then
		cw('mc',"Well, I just don\'t read script very often...")
	elseif cl == 739 then
		cw('mc',"I actually think your handwriting is pretty.")
	elseif cl == 740 then
		yb = 't'
		cw('y',"Eh?")
	elseif cl == 741 then
		yb = 'u'
		cw('y',"That\'s...a relief...")
	elseif cl == 742 then
		cw('mc',"Also, I liked the poem.")
	elseif cl == 743 then
		cw('mc',"Even though it\'s short, it was really descriptive.")
	elseif cl == 744 then
		yb = 't'
		cw('y',"It wasn\'t too short?")
	elseif cl == 745 then
		cw('y',"I usually write longer poems...")
	elseif cl == 746 then
		cw('mc',"Not at all.")
	elseif cl == 747 then
		updateYuri('1','m')
		cw('y',"I\'m...really glad you like it.")
	elseif cl == 748 then
		cw('y',"I\'ll be honest...")
	elseif cl == 749 then
		yb = 'a'
		cw('y',"Since it\'s our first time sharing, I wanted to write something a little more mild.")
	elseif cl == 750 then
		cw('y',"Something easy to digest, I suppose.")
	elseif cl == 751 then
		cw('y',"Are you into ghosts, Yuri?")
	elseif cl == 752 then
		yb = 'm'
		cw('y',"Huhu.")
	elseif cl == 753 then
		cw('y',"Actually, the story isn\'t about a ghost at all, "..player..".")
	elseif cl == 754 then
		cw('mc',"Really?")
	elseif cl == 755 then
		cw('mc',"I must have totally missed the point...")
	elseif cl == 756 then
		yb = 'u'
		cw('y',"Well, I suppose you did only glance over it, after all...")
	elseif cl == 757 then
		cw('y',"But remember that poets often express their own thoughts, feelings, and experiences in their work.")
	elseif cl == 758 then
		yb = 'a'
		cw('y',"They usually do more than tell a simple story, or paint a picture.")
	elseif cl == 759 then
		cw('y',"In this case, perhaps the subject of the poem is only being symbolically compared to a ghost.")
	elseif cl == 760 then
		updateYuri('2','l')
		cw('y',"Lingering in her last remaining place of comfort, unable to let go of the past.")
	elseif cl == 761 then
		cw('y',"And soon to be left with nothing...")
	elseif cl == 762 then
		cw('mc',"...That\'s a lot more solemn, putting it that way.")
    elseif cl == 763 then
		cw('mc',"I hadn\'t even thought of that...")
	elseif cl == 764 then
		cw('mc',"That\'s impressive.")
	elseif cl >= 765 then
		if poemopinion == "good" then
			if cl == 765 then
				yb = 'f'
				cw('y',"Eh?")
			elseif cl == 766 then
				cw('y',"I-It\'s nothing, really!")
			elseif cl == 767 then
				cw('y',"Yours was impressive too, so...")
			elseif cl == 768 then
				cw('mc',"Nah...")
			elseif cl == 769 then
				cw('mc',"If anything, I could probably learn a thing or two from you.")
			elseif cl == 770 then
				updateYuri('3','a')
				cw('y',"...You think so?")
			elseif cl == 771 then
				cw('mc',"Yeah, of course.")
			elseif cl == 772 then
				cw('y',"Ah...")
			elseif cl == 773 then
				updateYuri('2','s')
				cw('y',"You know...")
			elseif cl == 774 then
				cw('y',"I was really nervous about doing all this.")
			elseif cl == 775 then
				cw('y',"But in the end, I enjoyed it.")
			elseif cl == 776 then
				cw('y',"I\'m going to keep doing my best for you, '..player..'.")
			elseif cl == 777 then
				cw('mc',"Ah...")
			elseif cl == 778 then
				cw('mc',"Me too.")
			elseif cl == 779 then
				poemsread = poemsread + 1
				hideYuri()
				cl = 666
			end
		else
			if cl == 765 then
				updateYuri('1','u')
				cw('y',"It\'s nothing, really...")
			elseif cl == 766 then
				cw('y',"Well...it makes me happy that you think that.")
			elseif cl == 767 then
				yb = 'a'
				cw('y',"Just remember that it won\'t be long before you pick up on these things, too.")
			elseif cl == 768 then
				cw('mc',"Yeah, maybe you\'re right.")
			elseif cl == 769 then
				cw('mc',"I guess I\'ll have to keep trying.")
			elseif cl == 770 then
				cw('y',"I\'m counting on you.")
			elseif cl == 771 then
				poemsread = poemsread + 1
				hideYuri()
				cl = 666
				poemresponses()
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
		yb = 'n'
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
		yb = 'a2'
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
		yb = 'l'
		cw('bl',"Yuri takes a breath.")
	elseif cl == 688 then
		cw("So...")
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
		yb = 'e'
		cw('y',"Huh...?")
	elseif cl == 695 then
		cw('bl',"Yuri stares at me blankly, then looks at my poem again.")
	elseif cl == 696 then
		updateYuri('2','h')
		cw('y',"...")
	elseif cl == 697 then
		yb = 'h'
		cw('y',"...Well, I know that!")
	elseif cl == 698 then
		cw('y',"I just meant...u-um...")
	elseif cl == 699 then
		cw('bl',"Yuri trails off, unable to find an excuse.")
	elseif cl == 700 then
		cw('bl',"She traces her finger along the words in the poem, as if breaking it down more thoroughly.")
	elseif cl == 701 then
		yb = 'l'
		cw('y',"...Yeah.")
	elseif cl == 702 then
		cw('y',"Okay.")
	elseif cl == 703 then
		cw('y',"This is the reason I was able to tell.")
	elseif cl >= 704 then ch1_y_shared()
	end
end

function ch1_n_end()
	if cl < 705 then
		cl = 705
		xaload = -1
	elseif cl == 705 then
		poem('poem_n1','natsuki')
	elseif cl == 706 then
		poem_enabled = false
		audioUpdate('5')
		updateNatsuki('2','q')
		cw('n',"Yeah...")
	elseif cl == 707 then
		cw('n',"I told you that you weren\'t gonna like it.")
	elseif cl == 708 then
		cw('mc',"I like it.")
	elseif cl == 709 then
		nb = 'h'
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
		nb = 'q'
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
		nb = 'c'
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
		poemsread = poemsread + 1
		hideNatsuki()
		cl = 666
		poemresponses()
	end
end

function ch1_n_bad()
	if cl == 670 then
		cw('n',"...")
	elseif cl == 671 then
		cw('n',"...?")
	elseif cl == 672 then
		updateNatsuki('2','b')
		cw('n',"..player..', if you\'re not going to take this club seriously then go home.")
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
		nb = 'r'
		cw('n',"...")
	elseif cl == 684 then
		updateNatsuki('4','q')
		cw('n',"Fine.")
	elseif cl == 685 then
		cw('n',"Well, sorry.")
	elseif cl == 686 then
		nb = 'c'
		cw('n',"You\'ll get better, anyway.")
	elseif cl == 687 then
		cw('n',"I\'d tell you what to improve, but you\'re better off just trying again.")
	elseif cl == 688 then
		cw('mc',"Fair enough...")
	elseif cl == 689 then
		cw('mc',"Well, to each their own, I guess.")
	elseif cl == 690 then
		nb = 'q'
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
		nb = 'c'
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
		nb = 'c'
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
		nb = 'r'
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
		nb = 'x'
		cw('n',"Uuuu...!")
	elseif cl == 685 then
		updateNatsuki('1','h')
		cw('n',"Well I would be more comfortable sharing my poem if yours was really bad!")
	elseif cl == 686 then
		nb = 'w'
		cw('n',"You were supposed to show me some dumb poem and make me go 'Hah, well it's not that great but let me show you what real literature looks like!'")
	elseif cl == 687 then
		nb = 'h'
		cw('n',"And you went and ruined it!")
	elseif cl == 688 then
		cw('n',"I hope you\'re happy!")
	elseif cl == 689 then
		cw('mc',"...")
	elseif cl == 690 then
		cw('mc',"...So, in other words, you\'re saying you liked it?")
	elseif cl == 691 then
		nb = 'o'
		cw('n',"Urk--")
	elseif cl == 692 then
		cw('bl',"Natsuki\'s retort gets caught in her throat.")
	elseif cl == 693 then
		nb = 'x'
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
		nb = 's'
		cw('n',"Gr... Fine, I guess.")
	elseif cl == 703 then
		cw('n',"Only because Monika will make me if I don\'t.")
	elseif cl >= 704 then
		ch1_n_end()
	end
end

function ch1_s_med()
end

function ch1_s_bad()
end

function ch1_s_good()
end

function ch1_m_start()
end