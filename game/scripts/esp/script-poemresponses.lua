function poemresponses()
	if cl == 666 then
		audioUpdate('5')
		--set up menutext
		if poemsread == 0 then
			menutext = "Who should I show my poem to first?"
		else
			menutext = "Who should I show my poem to next?"
		end

		if menu_enabled ~= true then
			hideAll()
			menu_enable('choice')
		end
		
	elseif cl == 667 or cl == 668 then --first time poem script
		if (chapter == 1 or chapter == 21) and poemsread == 0 then
			if choicepick == tr.names[1] then
                if cl == 667 then cw('bl',"I'm definitely most comfortable sharing it with Sayori first.")
                elseif cl == 668 then cw('bl',"She's my good friend, after all.") end
			elseif choicepick == tr.names[2] then
                if cl == 667 then cw('bl',"I told Natsuki I was interested in her poems yesterday.")
                elseif cl == 668 then cw('bl',"It's probably only fair if I shared mine with her first.") end
            elseif choicepick == tr.names[3] then
                if cl == 667 then cw('bl',"Yuri seems the most experienced, so I should start with her.")
                elseif cl == 668 then cw('bl',"I can trust her opinion to be fair.") end
            elseif choicepick == tr.names[4] then
				if cl == 667 then cw('bl',"I should start with Monika.")
				elseif cl == 668 then cw('bl',"Yesterday she seemed eager to read my poem, and I want her to know I'm putting in effort.") end
			end
		elseif chapter > 1 or poemsread > 0 then
			scriptJump(669)
		end
		
	elseif cl >= 669 then
		if choicepick == tr.names[1] then
			poemresponse_sayori()
		elseif choicepick == tr.names[2] then
			poemresponse_natsuki()
		elseif choicepick == tr.names[3] then
			poemresponse_yuri()
		elseif choicepick == tr.names[4] then
			poemresponse_monika()
		end
		
		if cl == 669 then scriptJump(670) end
	end
end

function poemfinish(a)
	local c_remove
	
	if a == 's' then
		readpoem.s = 1
		c_remove = tr.names[1]
	elseif a == 'n' then
		readpoem.n = 1
		c_remove = tr.names[2]
	elseif a == 'y' then
		readpoem.y = 1
		c_remove = tr.names[3]
	elseif a == 'm' then
		readpoem.m = 1
		c_remove = tr.names[4]
	end
	
	for i = 1, #choices do
		if choices[i] == c_remove then table.remove(choices, i) end
	end
	
	poemsread = poemsread + 1
	hideAll()
	if poemsread == 4 or (poemsread == 3 and persistent.ptr == 2) then
		--poem finish, jump to script depending on chapter
		poemsread = -1
		readpoem = {s=0,n=0,y=0,m=0}
		if chapter == 1 then
			scriptJump(900, 'ch1script')
		elseif chapter == 2 then
			scriptJump(1638, 'ch2script')
		elseif chapter == 3 then
			scriptJump(2114, 'ch3script')
		elseif chapter == 21 then
			scriptJump(900, 'ch21script')
		elseif chapter == 22 then
			scriptJump(1446, 'ch22script')
		elseif chapter == 23 then
			scriptJump(1806, 'ch23script')
		end
	else --go back to choices menu
		scriptJump(666, 'poemresponses', 0)
	end
end
	
function poemresponse_sayori()
	if cl <= 669 then
		updateSayori('1','a',80)
	end
	
	poemopinion = "med"
	if s_poemappeal[chapter] < 0 then
		poemopinion = "bad"
	elseif s_poemappeal[chapter] > 0 then
		poemopinion = "good"
	end
	
	loadstring("ch"..chapter.."_s_"..poemopinion.."()")()
end

function poemresponse_natsuki()
    if cl <= 669 then
		updateNatsuki('1','c',80)
	end
	
    poemopinion = "med"
	if persistent.ptr == 0 then
		if n_poemappeal[chapter] < 0 then
			poemopinion = "bad"
		elseif n_poemappeal[chapter] > 0 then
			poemopinion = "good"
		end
	else
		if n_poemappeal[chapter-20] < 0 then
			poemopinion = "bad"
		elseif n_poemappeal[chapter-20] > 0 then
			poemopinion = "good"
		end
	end
	
	loadstring("ch"..chapter.."_n_"..poemopinion.."()")()
end

function poemresponse_yuri()
	if cl <= 669 then
		updateYuri('1','a',80)
	end
	
    poemopinion = "med"
	if persistent.ptr == 0 then
		if y_poemappeal[chapter] < 0 then
			poemopinion = "bad"
		elseif y_poemappeal[chapter] > 0 then
			poemopinion = "good"
		end
	else
		if y_poemappeal[chapter-20] < 0 then
			poemopinion = "bad"
		elseif y_poemappeal[chapter-20] > 0 then
			poemopinion = "good"
		end
	end
	
	loadstring("ch"..chapter.."_y_"..poemopinion.."()")()
end

function poemresponse_monika()
	if cl <= 669 then 
		updateMonika('1','a',80) 
	end
	
	loadstring("ch"..chapter.."_m_start()")()
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
		cw('mc',"Ah, so it\'s that bad.")
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

function ch1_y_med()
	ch1_y_bad()
end

function ch1_y_shared()
	if cl < 705 and cl ~= 666 then
		scriptJump(705)
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
		poem("poem_y1")
	elseif cl == 733 then
		poem_disable()
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
		cw('mc',"Are you into ghosts, Yuri?")
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
	if cl < 705 and cl ~= 666 then
		scriptJump(705)
	elseif cl == 705 then
		poem('poem_n1')
	elseif cl == 706 then
		poem_disable()
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

local n_blackeyeschance = math.random(0,2)

function ch1_n_bad()
	if cl == 670 then
		cw('n',"...")
	elseif cl == 671 then
		if persistent.ptr == 2 and n_blackeyeschance == 0 then
			audioUpdate('0')
			event_initstart('n_blackeyes')
		else
			cw('mc',"...?")
		end
	elseif cl == 672 then
		audioUpdate('5')
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

function ch1_m_end2()
	if cl < 750 then
		scriptJump(750)
	elseif cl == 750 then
		poem_disable()
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
	if persistent.ptr == 0 then
		if poemwinner[chapter] == 'Sayori' then
			loadstring('m_sayori_'..appeal.s..'()')()
		elseif poemwinner[chapter] == 'Natsuki' then
			loadstring('m_natsuki_'..appeal.n..'()')()
		elseif poemwinner[chapter] == 'Yuri' then
			loadstring('m_yuri_'..appeal.y..'()')()
		end
	else
		if poemwinner[1] == 'Natsuki' then
			m2_natsuki_1()
		elseif poemwinner[1] == 'Yuri' then
			m2_yuri_1()
		end
	end
	
	if cl < 692 and cl ~= 666 then
		scriptJump(692)
	end
end

function m_end()
	loadstring('ch'..chapter..'_m_end()')()
	
	if cl < 730 and cl ~= 666 then
		scriptJump(730)
	end
end