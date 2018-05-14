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
		elseif n_readpoem and poemsread <= 2 then
			choice2 = "Yuri"
		elseif n_readpoem and y_readpoem and poemsread <= 2 then
			choice2 = "Monika"
        end
		
		--set up choice 3
		if y_readpoem == false and poemsread <= 1 and y_ranaway == false then
			choice3 = "Yuri"
		elseif y_readpoem and poemsread <= 1 or y_ranaway and poemsread == 0 then
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
				s_readpoem = true
                if cl == 667 then cw('bl',"I'm definitely most comfortable sharing it with Sayori first.")
                elseif cl == 668 then cw('bl',"She's my good friend, after all.") end
			elseif m_selected == 3 then
                n_readpoem = true
                if cl == 667 then cw('bl',"I told Natsuki I was interested in her poems yesterday.")
                elseif cl == 668 then cw('bl',"It's probably only fair if I shared mine with her first.") end
            elseif m_selected == 4 then
                y_readpoem = true
                if cl == 667 then cw('bl',"Yuri seems the most experienced, so I should start with her.")
                elseif cl == 668 then cw('bl',"I can trust her opinion to be fair.") end
            elseif m_selected == 5 then
				m_readpoem = true
				if cl == 667 then cw('bl',"I should start with Monika.")
				elseif cl == 668 then cw('bl',"Yesterday she seemed eager to read my poem, and I want her to know I'm putting in effort.") end
			end
		elseif chapter > 1 or poemsread > 0 then
			cl = 669
		end
		
	elseif cl >= 669 then
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
	updateSayori('1l','1r','a')
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
    updateNatsuki('1l','1r','c')
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
    if chapter == 1 then ch1_m_start()
	elseif chapter == 2 then ch2_m_start()
	elseif chapter == 3 then ch3_m_start()
	end
end

function ch1_y_bad()
	if cl == 670 then
		updateYuri('1l','1r','a')
		cw('y','"..."')
	elseif cl == 671 then
		cw('y','"Mm..."')
	elseif cl == 672 then
		cw('y','"..."')
	elseif cl == 673 then
		cw('bl',"Yuri stares at the poem.")
	elseif cl == 674 then
		cw('bl',"A minute passes, more than enough time for her to finish reading.")
	elseif cl == 675 then
		cw('mc','"Um..."')
	elseif cl == 675 then
		cw('y','"Oh!"')
	elseif cl == 676 then
		updateYuri('2l','2r','n')
		cw('y','"S-Sorry...!"')
	elseif cl == 677 then
		cw('y','"I forgot to start speaking..."')
	elseif cl == 678 then
		cw('y','"U-Um!"')
	elseif cl == 679 then
		cw('mc','"It\'s fine, don\'t force yourself."')
	elseif cl == 680 then
		updateYuri('1l','2r','v')
		cw('y','"I\'m not..."')
	elseif cl == 681 then
		cw('y','"I just need to put my thoughts into words."')
	elseif cl == 682 then
		cw('y','"Hold on..."')
	elseif cl == 683 then
		cw('y','"...Okay."')
	elseif cl == 684 then
		updateYuri('1l','1r','f')
		cw('y','"This is your first time writing a poem, right?"')
	elseif cl == 685 then
		cw('mc','"Er, yeah..."')
	elseif cl == 686 then
		cw('mc','"Why do you ask?"')
	elseif cl == 687 then
		cw('y','"I\'m just making sure."')
	elseif cl == 688 then
		cw('y','"I guessed that it might be after reading through it."')
	elseif cl == 689 then
		cw('y','"Ah, so it\'s that bad."')
	elseif cl == 690 then
		updateYuri('1l','2r','p')
		cw('y','"No!!"')
	elseif cl == 691 then
		yc = 'o'
		cw('y','"...Did I just raise my voice...?"')
	elseif cl == 692 then
		updateYuri('3','','c2')
		cw('y','"Uu, I\'m so sorry..."')
	elseif cl == 693 then
		cw('bl',"Yuri buries her face in her hands.")
	elseif cl == 694 then
		cw('bl',"I couldn't help but notice that it's been several minutes and we really haven't gotten anywhere.")
	elseif cl == 695 then
		cw('bl',"It might take Yuri a while to get used to new people...")
	elseif cl == 696 then
		cw('mc','"It\'s fine, I really didn\'t notice."')
	elseif cl == 697 then
		cw('mc','"What were you saying?"')
	elseif cl == 698 then
		updateYuri('1l','2r','u')
		cw('y','"Right...um..."')
	elseif cl >= 699 then
		ch1_y_shared()
	end
end

function ch1_y_shared()
	if cl < 704 then
		cl = 704
	elseif cl == 704 then
		updateYuri('1l','1r','a')
		cw('y','"It\'s just that there are specific writing habits that are usually typical of new writers."')
	elseif cl == 705 then
		cw('y','"And having been through that myself, I kind of learned to pick up on them."')
	elseif cl == 706 then
		yc = 'i'
		cw('y','"I think the most noticeable thing I recognize in new writers is that they try to make their style very deliberate."')
	elseif cl == 707 then
		cw('y','"In other words, they tend to pick a writing style separate from the topic matter, and they form-fit the two together."')
	elseif cl == 708 then
		yc = 'a'
		cw('y','"The end result is that both the style and the expressiveness are weakened."')
	elseif cl == 709 then
		cw('bl',"Once Yuri finds her train of thought, it's as if her demeanor totally changes.")
	elseif cl == 710 then
		cw('bl',"Her stammering is completely gone, and she sounds like an expert.")
	elseif cl == 711 then
		yc = 'k'
		cw('y','"Of course, that\'s not something you can be blamed for."')
	elseif cl == 712 then
		cw('y','"There are so many different skills and techniques that go into writing even a simple poem."')
	elseif cl == 713 then
		yc = 'a'
		cw('y','"Not just finding them and building them, but getting them to work together is probably the most challenging part."')
	elseif cl == 714 then
		cw('y','"It might take you some time, but it all comes with practice, and learning by example, and trying new things."')
	elseif cl == 715 then
		cw('y','"I also hope that everyone else in the club gives you valuable feedback."')
	elseif cl == 716 then
		yc = 'l'
		cw('y','"Natsuki can be a little bit biased, though..."')
	elseif cl == 717 then
		cw('mc','"Biased? How?"')
	elseif cl == 718 then
		updateYuri('1l','2r','a')
        cw('y','"U-Um..."')
	elseif cl == 719 then
		cw('y','"Well..."')
	elseif cl == 720 then
		cw('y','"Never mind..."')
	elseif cl == 721 then
		cw('y','"I shouldn\'t be talking about people like that..."')
	elseif cl == 722 then
		cw('y','"Sorry..."')
	elseif cl == 723 then
		cw('mc','"It\'s fine."')
	elseif cl == 724 then
		cw('bl',"I'm not sure if Yuri is apologizing to herself, to me, or to Natsuki.")
	elseif cl == 725 then
		cw('mc','"Do you mind if I read your poem now?"')
	elseif cl == 726 then
		updateYuri('2l','2r','c')
		cw('y','"Please do!"')
	elseif cl == 727 then
		cw('y','"I\'d love to share my thought process behind it..."')
	elseif cl == 728 then
		cw('bl',"Yuri smiles dreamily, as if that's a rare opportunity for her.")
	elseif cl == 729 then
		cw('bl',"Which itself is kind of funny...")
	elseif cl == 730 then
		cw('bl',"...After all, isn't this supposed to be a literature club?")
	elseif cl == 731 then
		poem("poem_y1","yuri")
	end
end

function ch1_y_good()
	if cl == 670 then
		updateYuri('1l','1r','e')
		cw('y','"..."')
	elseif cl == 671 then
		cw('bl',"As Yuri reads the poem, I notice her eyes lighten.")
	elseif cl == 672 then
		updateYuri('1l','2r','f')
		cw('y','"...Exceptional."')
	elseif cl == 673 then
		cw('mc','"Eh? What was that?"')
	elseif cl == 674 then
		cw('y','"...?"')
	elseif cl == 675 then
		yc = 'n'
		cw('y','"D-Did I say that out loud...?"')
	elseif cl == 676 then
		cw('bl',"Yuri first covers her mouth, but then ends up covering her whole face.")
	elseif cl == 677 then
		updateYuri('3','','c2')
		cw('y','"I...!"')
	elseif cl == 678 then
		cw('y','"Uu..."')
	elseif cl == 679 then
		cw('y','"(He\'s going to hate me...)"')
	elseif cl == 680 then
		cw('mc','"Um..."')
	elseif cl == 681 then
		cw('mc','"You really didn\'t do anything wrong, Yuri..."')
	elseif cl == 682 then
		yc = 'a2'
		cw('y','"Eh...?"')
	elseif cl == 683 then
		cw('y','"That\'s..."')
	elseif cl == 684 then
		updateYuri('1l','2r','q')
		cw('y','"I-I guess you\'re right..."')
	elseif cl == 685 then
		cw('y','"What am I getting so nervous for?"')
	elseif cl == 686 then
		cw('y','"A-Ahaha..."')
	elseif cl == 687 then
		yc = 'l'
		cw('bl','"Yuri takes a breath."')
	elseif cl == 688 then
		cw('"So..."')
	elseif cl == 689 then
		updateYuri('1l','1r','a')
		cw('y','"What kind of writing experience do you have?"')
	elseif cl == 690 then
		cw('y','"Your use of imagery and metaphors indicates you\'ve written a lot of poetry before."')
	elseif cl == 691 then
		cw('mc','"Really...?"')
	elseif cl == 692 then
		cw('mc','"Wow, that\'s a huge compliment coming from you."')
	elseif cl == 693 then
		cw('mc','"This is actually my first time, really."')
	elseif cl == 694 then
		yc = 'e'
		cw('y','"Huh...?"')
	elseif cl == 695 then
		cw('bl',"Yuri stares at me blankly, then looks at my poem again.")
	elseif cl == 696 then
		updateYuri('1l','2r','h')
		cw('y','"..."')
	elseif cl == 697 then
		yc = 'h'
		cw('y','"...Well, I know that!"')
	elseif cl == 698 then
		cw('y','"I just meant...u-um..."')
	elseif cl == 699 then
		cw('bl',"Yuri trails off, unable to find an excuse.")
	elseif cl == 700 then
		cw('bl','"She traces her finger along the words in the poem, as if breaking it down more thoroughly."')
	elseif cl == 701 then
		yc = 'l'
		cw('y','"...Yeah."')
	elseif cl == 702 then
		cw('y','"Okay."')
	elseif cl == 703 then
		cw('y','"This is the reason I was able to tell."')
	elseif cl >= 704 then ch1_y_shared()
	end
end