function ch2_y_end()
	if cl < 714 then
		scriptJump(714)
	elseif cl == 714 then
		poem('poem_y2')
	elseif cl == 715 then
		scriptJump(716)
	elseif cl == 716 then
		poem_disable()
		updateYuri('2','m')
		cw('y',"Um...")
	elseif cl == 717 then
		cw('y',"I was a little more daring with this one than yesterday's...")
	elseif cl == 718 then
		cw('mc',"I can see that.")
	elseif cl == 719 then
		cw('mc',"It's a lot more metaphorical...")
	elseif cl == 720 then
		cw('mc',"I don't know if it's my fault, but I can't begin to imagine what this poem is about.")
	elseif cl == 721 then
		updateYuri('1','a')
		cw('y',"That's right.")
	elseif cl == 722 then
		cw('y',"It's a bit closer to my preferred writing style...")
	elseif cl == 723 then
		cw('y',"Using the poem as a canvas to express vivid imagery, and conveying emotions through them.")
	elseif cl == 724 then
		cw('mc',"Yeah, if I take it at face value, then I can't even figure out what it's supposed to mean...")
	elseif cl == 725 then
		updateYuri('2','f')
		cw('y',"Well...")
	elseif cl == 726 then
		cw('y',"I think it's something that different people can relate to in their own way.")
	elseif cl == 727 then
		cw('y',"I wanted to express the way it feels for me to indulge in my more unusual hobbies...")
	elseif cl == 728 then
		updateYuri('2','v')
		cw('y',"It's those sorts of things I'm usually forced to keep to myself.")
	elseif cl == 729 then
		cw('y',"So, I sometimes enjoy writing about them.")
	elseif cl >= 730 then
		if readpoem.n == 1 and (n_poemappeal[1] >= 0 or n_poemappeal[1] >= 0) then
			if cl == 730 then
				cw('mc',"Huh, that's funny...")
			elseif cl == 730 then
				updateYuri('2','e')
				cw('y',"...?")
			elseif cl == 731 then
				cw('mc',"Didn't Natsuki also write something about that?")
			elseif cl == 732 then
				cw('mc',"About someone being ridiculed for a strange interest?")
			elseif cl == 733 then
				updateYuri('2','h')
				cw('y',"Eh?")
			elseif cl == 734 then
				cw('y',"She...she did?")
			elseif cl == 735 then
				cw('mc',"Yeah...")
			elseif cl == 736 then
				cw('mc',"She was talking about how it doesn't matter what you're into as long as you're not hurting anybody.")
			elseif cl == 737 then
				updateYuri('3','r')
				cw('y',"She--She's right!")
			elseif cl == 738 then
				updateYuri('3','o')
				cw('y',"Ah--I mean...")
			elseif cl == 739 then
				cw('y',"Does she really feel that way...?")
			elseif cl == 740 then
				cw('mc',"Yeah.")
			elseif cl == 741 then
				cw('mc',"Sounds like you two have that in common...")
			elseif cl == 742 then
				updateYuri('3','h')
				cw('y',"That's...well, that's interesting...")
			elseif cl == 743 then
				cw('y',"To me, she seemed like the kind of person who would make fun of my hobbies...")
			elseif cl == 744 then
				cw('y',"But I suppose that's my fault for judging, isn't it...?")
			elseif cl == 745 then
				updateYuri('3','p')
				cw('y',"Ah-- Please don't tell her I said that!")
			elseif cl == 746 then
				cw('mc',"Ahaha. Don't worry, I have no reason to.")
			elseif cl == 747 then
				updateYuri('1','l')
				cw('y',"Okay...")
			elseif cl == 748 then
				updateYuri('1','a')
				cw('y',"Well, thank you for sharing it with me.")
			end
		else
			if cl == 730 then
				cw('mc',"Why do you keep them to yourself?")
			elseif cl == 731 then
				updateYuri('3','v')
				cw('y',"Be...Because...")
			elseif cl == 732 then
				cw('y',"They're embarrassing...")
			elseif cl == 733 then
				cw('y',"And people would make fun of me.")
			elseif cl == 734 then
				cw('y',"Don't you have anything like that, "..player.."?")
			elseif cl == 735 then
				cw('mc',"Well...")
			elseif cl == 736 then
				cw('mc',"Yeah, I guess I do...")
			elseif cl == 737 then
				updateYuri('2','h')
				cw('y',"I feel like everyone has a little something like that.")
			elseif cl == 738 then
				cw('y',"The best we can do is respect each other and our individualities.")
			elseif cl == 739 then
				cw('y',"Even if it's difficult sometimes, and some things make us uncomfortable...")
			elseif cl == 740 then
				updateYuri('1','a')
				cw('y',"After all, if I hadn't learned to embrace my own weirdness, I would probably hate myself.")
			elseif cl == 741 then
				updateYuri('2','u')
				cw('y',"I-I might be ranting a little bit now...")
			elseif cl == 742 then
				cw('y',"...But I'm glad that you're a good listener.")
			elseif cl == 743 then
				scriptJump(749)
			end
		end
		if cl >= 749 then
			if appeal.y >= 2 then
				if cl == 749 then
					updateYuri('2','s')
					cw('y',"You're good at a lot of things...")
				elseif cl == 750 then
					cw('y',"Writing, listening...")
				elseif cl == 751 then
					updateYuri('2','u')
					cw('y',"There really aren't many people like you, "..player.."...")
				elseif cl == 752 then
					cw('mc',"Th-That's exaggerating a little bit...")
				elseif cl == 753 then
					updateYuri('2','v')
					cw('y',"It's just...how I feel.")
				elseif cl == 754 then
					cw('y',"I never thought I would feel so comfortable sharing my writing...")
				elseif cl == 755 then
					updateYuri('2','s')
					cw('y',"But now, I almost feel like I look forward to it...")
				elseif cl == 756 then
					updateYuri('2','m')
					cw('y',"It's just...a really nice feeling.")
				elseif cl == 757 then
					cw('y',"And you're to thank for that.")
				elseif cl == 758 then
					cw('mc',"It's...it's nothing, really...")
				elseif cl == 759 then
					cw('bl',"Yuri smiles sincerely at me.")
				elseif cl == 760 then
					cw('bl',"For just a moment, her timidness seems to disappear.")
				elseif cl == 761 then
					poemfinish('y')
				end
			else
				poemfinish('y')
			end
		end
	end
end

function ch2_y_bad()
    if y_poemappeal[1] < 0 then
		if cl == 670 then
			cw('y',"...")
		elseif cl == 671 then
			updateYuri('2','h')
			cw('y',"Um...")
		elseif cl == 672 then
			cw('y',"...Are you still mad at me?")
		elseif cl == 673 then
			cw('mc',"Eh?!")
		elseif cl == 674 then
			cw('y',"For disrespecting Natsuki yesterday...")
		elseif cl == 675 then
			cw('y',"Because reading this poem...")
		elseif cl == 676 then
			cw('y',"Now I know why you got mad at me.")
		elseif cl == 677 then
			cw('y',"Because you...")
		elseif cl == 678 then
			updateYuri('3','v')
			cw('y',"You prefer her writing over mine!")
		elseif cl == 679 then
			cw('mc',"That's not really true...!")
		elseif cl == 680 then
			cw('y',"Meaning when I disrespected her...")
		elseif cl == 681 then
			cw('y',"I disrespected you too...didn't I?")
		elseif cl == 682 then
			updateYuri('4','c2')
			cw('y',"Oh no...")
		elseif cl == 683 then
			cw('mc',"Yuri...")
		elseif cl == 684 then
			cw('mc',"You might be reading into this a little too much...")
		elseif cl == 685 then
			cw('y',"How could I be so stupid...?")
		elseif cl == 686 then
			cw('y',"I always let these things happen...")
		elseif cl == 687 then
			cw('y',"Whenever I think before I speak, I just come off as awkward and unlikable.")
		elseif cl == 688 then
			cw('y',"But if I speak without thinking, the things I want to keep inside come out and make people hate me.")
		elseif cl == 689 then
			updateYuri('2','v')
			cw('y',"So...please don't force yourself to be around me.")
		elseif cl == 690 then
			cw('y',"I know this is what Monika wants.")
		elseif cl == 691 then
			cw('y',"But it's not fair to you when you could be enjoying your time with Natsuki and Sayori.")
		elseif cl == 692 then
			cw('mc',"Yuri--")
		elseif cl == 693 then
			updateYuri('4','b2')
			cw('y',"Please...")
		elseif cl == 694 then
			cw('y',"It makes it easier for me if you don't express any concern.")
		elseif cl == 695 then
			cw('y',"Besides...")
		elseif cl == 696 then
			cw('y',"I have my books with me.")
		elseif cl == 697 then
			updateYuri('3','u')
			cw('y',"That's...all I need.")
		elseif cl == 698 then
			cw('mc',"...")
		elseif cl == 699 then
			cw('bl',"Yuri smiles sadly and puts her head down on her desk.")
		elseif cl == 700 then
			cw('bl',"I'm frustrated.")
		elseif cl == 701 then
			cw('bl',"I don't hate her, but it's as if she's not capable of listening to me over her own thoughts.")
		elseif cl == 702 then
			cw('bl',"I sigh to myself.")
		elseif cl == 703 then
			cw('bl',"All I can do is accept that that's how she is.")
		elseif cl == 704 then
			cw('bl',"If she wants to be left alone, then I have no choice but to abide to that request.")
		elseif cl == 705 then
			poemfinish('y')
		end
	else
		if cl == 670 then
			updateYuri('2','a')
			cw('y',"Ah, is it my turn?")
		elseif cl == 671 then
			cw('y',"Let's see how it compares to yesterday's...")
		elseif cl == 672 then
			cw('y',"Mm...")
		elseif cl == 673 then
			cw('y',"I see...")
		elseif cl == 674 then
			cw('y',"It's a bit different.")
		elseif cl == 675 then
			updateYuri('1','a')
			cw('y',"I respect you for trying different things, "..player..".")
		elseif cl == 676 then
			cw('y',"Were you inspired by Natsuki's poem?")
		elseif cl == 677 then
			cw('y',"Or Sayori's, perhaps?")
		elseif cl == 678 then
			cw('mc',"Well...")
		elseif cl == 679 then
			cw('mc',"I guess you could say that...")
		elseif cl == 680 then
			cw('y',"I thought so.")
		elseif cl == 681 then
			updateYuri('2','u')
			cw('y',"I'm happy for you.")
		elseif cl == 682 then
			cw('y',"You don't need to find inspiration in my poems.")
		elseif cl == 683 then
			cw('y',"I write them for myself...")
		elseif cl == 684 then
			updateYuri('4','b2')
			cw('y',"...Not for anyone else.")
		elseif cl == 685 then
			cw('y',"So I don't really...need for people to like them or anything.")
		elseif cl == 686 then
			cw('mc',"Yuri!")
		elseif cl == 687 then
			updateYuri('3','t')
			cw('y',"E-Eh?")
		elseif cl == 688 then
			cw('mc',"I'm sorry for being blunt, but you're overthinking this a little.")
		elseif cl == 689 then
			cw('mc',"Just because our styles are different doesn't mean I dislike your poems...")
		elseif cl == 690 then
			cw('mc',"In fact, if I tried to do something in your style, I would probably just do a terrible job.")
		elseif cl == 691 then
			updateYuri('4','a2')
			cw('y',"I...I see...")
		elseif cl == 692 then
			cw('y',"I'm sorry...")
		elseif cl == 693 then
			cw('y',"My stupid mind...it likes to do that sometimes.")
		elseif cl == 694 then
			cw('y',"Anyway...")
		elseif cl >= 695 then
			ch2_y_shared()
		end
	end
end

function ch2_y_shared()
	if cl < 695 and cl ~= 666 then
		scriptJump(695)
	elseif cl == 695 then
		updateYuri('2','h')
		cw('y',"You don't need to be afraid to be a little more daring...")
	elseif cl == 696 then
		cw('y',"Metaphors can go a long way.")
	elseif cl == 697 then
		cw('y',"Don't feel like you need to work your brain like turning a bunch of gears.")
	elseif cl == 698 then
		updateYuri('1','m')
		cw('y',"Try letting your mind wander through your feelings...")
	elseif cl == 699 then
		cw('y',"And write down the things you see and hear.")
	elseif cl == 700 then
		cw('y',"That's one way to truly enable your reader to see into your mind.")
	elseif cl == 701 then
		updateYuri('2','u')
		cw('y',"It's a very intimate exercise...")
	elseif cl == 702 then
		cw('mc',"I see.")
	elseif cl == 703 then
		cw('mc',"That's a certainly interesting technique.")
	elseif cl == 704 then
		cw('mc',"Thanks for sharing.")
	elseif cl == 705 then
		updateYuri('2','v')
		cw('y',"I have, um...")
	elseif cl == 706 then
		cw('y',"...Well, an example of that, if you'd like to read it...")
	elseif cl == 707 then
		cw('mc',"Of course.")
	elseif cl == 708 then
		cw('mc',"Is this the poem you wrote for today?")
	elseif cl == 709 then
		cw('bl',"Yuri nods, and timidly hands me her poem.")
	elseif cl >= 710 then
		ch2_y_end()
	end
end

function ch2_y_med()
    if y_poemappeal[1] <= 0 then
		if cl == 670 then
			updateYuri('1','a')
			cw('y',"Let's see what you've written for today.")
		elseif cl == 671 then
			cw('y',"...")
		elseif cl == 672 then
			cw('y',"Mm...")
		elseif cl == 673 then
			updateYuri('1','c')
			cw('y',"Well done, "..player..".")
		elseif cl == 674 then
			cw('y',"Your skills are already improving.")
		elseif cl == 675 then
			cw('mc',"Really?")
		elseif cl == 676 then
			cw('mc',"Thanks, Yuri.")
		elseif cl == 677 then
			cw('mc',"Coming from you, that means a lot.")
		elseif cl == 678 then
			updateYuri('3','f')
			cw('y',"Eh?")
		elseif cl == 679 then
			updateYuri('3','v')
			cw('y',"I-It's nothing!")
		elseif cl == 680 then
			cw('y',"I'm just happy to help inspire fellow writers...")
		elseif cl == 681 then
			cw('y',"I know you're new to this, so don't worry so much if it seems like you can't get your poem to feel perfect.")
		elseif cl >= 682 then
			ch2_y_shared()
		end
    else
		if cl == 671 then
			updateYuri('1','a')
			cw('y',"Let's see what you've written for today.")
		elseif cl == 671 then
			cw('y',"...")
		elseif cl == 672 then
			cw('y',"Mm...")
		elseif cl == 673 then
			cw('y',"This is pretty good, "..player..".")
		elseif cl == 674 then
			cw('y',"Were you influenced by seeing everyone's writing styles yesterday?")
		elseif cl == 675 then
			cw('mc',"I guess you could say that...")
		elseif cl == 676 then
			updateYuri('1','m')
			cw('y',"I was also a bit surprised by how differently everyone writes.")
		elseif cl == 677 then
			cw('y',"So I respect you for trying new things.")
		elseif cl >= 678 then
			ch2_y_shared()
		end
	end
end

function ch2_y_good()
	if y_poemappeal[1] < 1 then
        if cl == 670 then
			updateYuri('1','a')
			cw('y',"Let's see what you've written for today.")
		elseif cl == 671 then
			cw('y',"...")
		elseif cl == 672 then
			updateYuri('2','e')
			cw('y',"......")
		elseif cl == 673 then
			cw('bl',"Yuri stares at the poem with a surprised expression on her face.")
		elseif cl == 674 then
			cw('mc',"Do you...like it?")
		elseif cl == 675 then
			cw('y',player.."...")
		elseif cl == 676 then
			cw('y',"...How did you even pick up on this so quickly?")
		elseif cl >= 677 then
			ch2_y_good_shared()
		end
	else
		if cl == 670 then
			updateYuri('1','a')
			cw('y',"Let's see what you've written for today.")
		elseif cl == 671 then
			cw('y',"...")
		elseif cl == 672 then
			updateYuri('2','e')
			cw('y',"......")
		elseif cl == 673 then
			cw('bl',"Yuri stares at the poem with a surprised expression on her face.")
		elseif cl == 674 then
			cw('mc',"Do you...like it?")
		elseif cl == 675 then
			cw('y',player.."...")
		elseif cl == 676 then
			cw('y',"This one might even be better than yesterday's...")
		elseif cl == 677 then
			cw('y',"...How did you even pick up on this so quickly?")
		elseif cl >= 678 then
			ch2_y_good_shared()
		end
	end
end

function ch2_y_good_shared()
	if cl == 677 then
		scriptJump(678)
	elseif cl == 678 then
		 updateYuri('2','v')
		 cw('y',"Just yesterday, I was telling you the kind of techniques worth practicing...")
	elseif cl == 679 then
		cw('mc',"Maybe that's why...")
	elseif cl == 680 then
		cw('mc',"You did a good job explaining.")
	elseif cl == 681 then
		cw('mc',"I really wanted to try giving it more imagery.")
	elseif cl == 682 then
		updateYuri('4','b2')
		cw('bl',"Yuri visibly swallows.")
	elseif cl == 683 then
		cw('bl',"Even her hands appear sweaty.")
	elseif cl == 684 then
		cw('y',"I'm not...used to this...")
	elseif cl == 685 then
		cw('mc',"Used to what?")
	elseif cl == 686 then
		updateYuri('3','o')
		cw('y',"I don't know...!")
	elseif cl == 687 then
		cw('mc',"It's fine, take your time...")
	elseif cl == 688 then
		updateYuri('3','l')
		cw('bl',"Yuri breathes and collects her thoughts.")
	elseif cl == 689 then
		cw('bl',"I know that Yuri likes to think before she speaks, so I offer that patience to her.")
	elseif cl == 690 then
		updateYuri('4','a2')
		cw('y',"Yeah...")
	elseif cl == 691 then
		cw('y',"Just...being appreciated like this...I guess.")
	elseif cl == 692 then
		cw('y',"It probably sounds really stupid...")
	elseif cl == 693 then
		cw('y',"But seeing someone motivated by my writing...")
	elseif cl == 694 then
		cw('y',"It just makes me...")
	elseif cl == 695 then
		cw('y',"Really happy...")
	elseif cl == 696 then
		cw('mc',"Are you saying you've never shared your writing before?")
	elseif cl == 697 then
		cw('bl',"Yuri nods.")
	elseif cl == 698 then
		cw('mc', "Really? I don't believe it.")
	elseif cl == 699 then
		cw('y',"I really only write for myself...")
	elseif cl == 700 then
		cw('y',"And besides...")
	elseif cl == 701 then
		updateYuri('3','w')
		cw('y',"...People would just laugh at me!")
	elseif cl == 702 then
		cw('mc',"Do you really think that...?")
	elseif cl == 703 then
		cw('bl',"Again, Yuri nods.")
	elseif cl == 704 then
		cw('mc',"Huh...")
	elseif cl == 705 then
		cw('mc',"Even your close friends?")
	elseif cl == 706 then
		updateYuri('2','v')
		cw('y',"...")
	elseif cl == 707 then
		cw('bl',"Yuri doesn't respond to that.")
	elseif cl == 708 then
		cw('bl',"I wonder why...")
	elseif cl == 709 then
		cw('mc',"Anyway...")
	elseif cl == 710 then
		cw('mc',"Do you want to share the poem you wrote today?")
	elseif cl == 711 then
		cw('y',"...Yeah.")
	elseif cl == 712 then
		updateYuri('3','t')
		cw('y',"I do!")
	elseif cl == 713 then
		cw('y',"If it's with you...")
	elseif cl >= 714 then
		ch2_y_end()
	end
end

function ch3_y_bad12_shared()
	if cl == 670 then
		updateYuri('4','b2')
		cw('y',"...")
	elseif cl == 671 then
		updateYuri('4','b2')
		cw('bl',"Yuri doesn't look too enthusiastic about spending time with me...")
	elseif cl == 672 then
		cw('bl',"I guess if she changes her mind, she'll come to me.")
	elseif cl == 673 then
		cw('bl',"But I should leave her be for now.")
	elseif cl == 674 then
		poemfinish('y')
	end
end

function ch3_y_end()
	if cl < 768 and cl ~= 666 then
		scriptJump(768)
	elseif cl >= 768 then
		if appeal.y >= 3 then
			ch3_y_end_special()
		else
			if cl == 768 then
				poem('poem_y3')
			elseif cl == 769 then
				scriptJump(771)
			elseif cl == 771 then
				poem_disable()
				updateYuri('2','v')
				cw('y',"Um...")
			elseif cl == 772 then
				cw('y',"I'm aware that the beach is kind of an inane thing to write about.")
			elseif cl == 773 then
				cw('y',"But I did my best to take a metaphorical approach to it.")
			elseif cl >= 774 then
				if readpoem.n == 0 or appeal.n >= 3 then
					if cl == 774 then
						cw('mc',"You say that like you didn't even want to write about it...")
					elseif cl == 775 then
						updateYuri('2','e')
						cw('y',"Oh, you haven't heard...?")
					elseif cl == 776 then
						updateYuri('2','h')
						cw('y',"After yesterday, Natsuki and I...well...")
					elseif cl == 777 then
						cw('y',"It was...amusing that we wrote about something similar in such different ways.")
					elseif cl == 778 then
						cw('y',"So, Natsuki wanted us to write about the same topic as each other again.")
					elseif cl == 779 then
						if readpoem.n == 1 then
							cw('mc',"I see...")
						else
							scriptJump(782)
						end
					elseif cl == 780 then
						cw('bl',"Something tells me the poem Natsuki showed me isn't the one she plans on sharing with everyone else...")
					elseif cl == 781 then
						cw('bl',"Of course, I choose not to mention that to Yuri.")
					end
				else
					if cl == 774 then
						cw('mc',"Yeah, Natsuki already told me about it.")
					elseif cl == 775 then
						updateYuri('3','t')
						cw('y',"S-She did...?")
					elseif cl == 776 then
						cw('y',"She didn't say anything weird, did she?")
					elseif cl == 777 then
						cw('y',"She just wanted us to write about the same topic again...")
					elseif cl == 778 then
						scriptJump(782)
					end
				end
				if cl == 782 then
					updateYuri('2','f')
					cw('y',"I suppose to better compare the differences in our writing styles...or thought processes.")
				elseif cl == 783 then
					updateYuri('2','w')
					cw('y',"Anyway, it was her idea...!")
				elseif cl == 784 then
					cw('y',"Knowing her, it's no surprise that she'd want to do something like that.")
				elseif cl == 785 then
					cw('y',"She probably just wants to show off.")
				elseif cl == 786 then
					updateYuri('2','v')
					cw('y',"It's not like I have a particular interest in her writing style...")
				elseif cl == 787 then
					cw('y',"I just went with her request.")
				elseif cl == 788 then
					cw('y',"But...")
				elseif cl == 789 then
					updateYuri('1','s')
					cw('y',"Well, I suppose it's not so bad to write about something simple on occasion.")
				elseif cl == 790 then
					updateYuri('1','m')
					cw('y',"It can be refreshing, you know?")
				elseif cl == 791 then
					cw('y',"It's good for me to calm my thoughts once in a while.")
				elseif cl == 792 then
					cw('mc',"Yeah...I think I agree.")
				elseif cl == 793 then
					cw('mc',"Thanks for sharing.")
				elseif cl == 794 then
					poemfinish('y')
				end
			end
		end
	end
end

function ch3_y_end_special()
	if cl == 768 then
		poem('poem_y3b')
	elseif cl == 769 then
		scriptJump(770)
	elseif cl == 770 then
		poem_disable()
		cw('bl',"Finishing the poem, I start to hand it back to Yuri.")
	elseif cl == 771 then
		cw('bl',"But instead of taking it from me, she looks away.")
	elseif cl == 772 then
		cw('y',"...")
	elseif cl == 773 then
		cw('y',"Do you...dislike it?")
	elseif cl == 774 then
		cw('mc',"Ah--no, of course not.")
	elseif cl == 775 then
		cw('mc',"I just...don't really know how I should respond.")
	elseif cl == 776 then
		cw('bl',"Despite Yuri's poems usually being cryptic, it wasn't hard to figure out what this one was about.")
	elseif cl == 777 then
		if readpoem.n == 1 then
			cw('bl',"Also, this clearly isn't the poem that Natsuki said she wrote about...")
		else
			scriptJump(779)
		end
	elseif cl == 778 then
		cw('bl',"...Meaning I'm probably the only one she's showing this to.")
	elseif cl == 779 then
		updateYuri('2','v')
		cw('y',"I-I don't know if I'll be able to explain this one...")
	elseif cl == 780 then
		cw('mc',"That's fine.")
	elseif cl == 781 then
		cw('mc',"I understand this one.")
	elseif cl == 782 then
		updateYuri('4','c2')
		cw('y',"...")
	elseif cl == 783 then
		cw('bl',"Yuri is having an even harder time speaking than usual.")
	elseif cl == 784 then
		cw('mc',"Does this one...mean a lot to you?")
	elseif cl == 785 then
		cw('bl',"Yuri nods.")
	elseif cl == 786 then
		cw('mc',"I'm not really good with words, but...")
	elseif cl == 787 then
		cw('mc',"I'm happy that you shared it with me.")
	elseif cl == 788 then
		cw('mc',"So, thank you.")
	elseif cl == 789 then
		cw('mc',"And I hope we keep spending time together.")
	elseif cl == 790 then
		updateYuri('4','e2')
		cw('bl',"Despite my inability to make eye contact, I see a faint smile emerge on Yuri's lips.")
	elseif cl == 791 then
		cw('bl',"I once again try to hand the poem back to her.")
	elseif cl == 792 then
		updateYuri('4','a2')
		cw('bl',"But instead, Yuri gently takes my hands and pushes them back toward me.")
	elseif cl == 793 then
		cw('bl',"I hesitate in response to her warm touch.")
	elseif cl == 794 then
		updateYuri('1','v')
		cw('y',"You can...")
	elseif cl == 795 then
		cw('y',"Um...")
	elseif cl == 796 then
		cw('y',"The poem is...")
	elseif cl == 797 then
		cw('bl',"Once again, Yuri fails to form a complete sentence.")
	elseif cl == 798 then
		cw('mc',"You mean I can keep it?")
	elseif cl == 799 then
		cw('bl',"Yuri nods.")
	elseif cl == 800 then
		cw('mc',"I'd love to.")
	elseif cl == 801 then
		updateYuri('1','u')
		cw('bl',"Again, Yuri faintly smiles, as if she doesn't want me to notice.")
	elseif cl == 802 then
		cw('y',"You always...")
	elseif cl == 803 then
		cw('y',"You always...make me feel nice.")
	elseif cl == 804 then
		cw('y',"I know I'm not good with people, but...")
	elseif cl == 805 then
		cw('y',"I hope that...I can return the favor sometimes.")
	elseif cl == 806 then
		cw('mc',"Yeah.")
	elseif cl == 807 then
		cw('mc',"Don't worry.")
	elseif cl == 808 then
		cw('mc',"I think you do a good job.")
	elseif cl == 809 then
		cw('bl',"Yuri finally turns back toward me.")
	elseif cl == 810 then
		updateYuri('1','s')
		cw('y',"I guess...we should move on before Monika says something.")
	elseif cl == 811 then
		cw('y',"But I'm sure we can talk again later...")
	elseif cl == 812 then
		cw('mc',"Yeah.")
	elseif cl == 813 then
		cw('mc',"I'm sure we will.")
	elseif cl == 814 then
		cw('bl',"With that, Yuri timidly smiles at me, and I return to my seat so I can put her poem away.")
	elseif cl == 815 then
		poemfinish('y')
	end
end

function ch3_y_bad()
	if y_poemappeal[1] < 0 and y_poemappeal[2] < 0 then
        ch3_y_bad12_shared()
    elseif y_poemappeal[1] < 0 or y_poemappeal[2] < 0 then
		if cl == 670 then
			updateYuri('1','i')
			cw('y',"...")
		elseif cl == 671 then
			cw('y',"...I see.")
		elseif cl == 672 then
			cw('y',"I think you're improving at writing in general, "..player..".")
		elseif cl == 673 then
			updateYuri('2','i')
			cw('y',"But I can't help but feel a little bit foolish.")
		elseif cl == 674 then
			cw('mc',"Eh? What for?")
		elseif cl == 675 then
			cw('y',"Just...")
		elseif cl == 676 then
			cw('y',"I feel like I kept trying to offer advice...")
		elseif cl == 677 then
			cw('y',"When it should have been clear to me that you prefer a different writing style.")
		elseif cl == 678 then
			updateYuri('3','w')
			cw('y',"I probably just sounded arrogant!")
		elseif cl == 679 then
			cw('y',"I'm so stupid...")
		elseif cl == 680 then
			cw('mc',"Yuri, that's a little--")
		elseif cl == 681 then
			updateYuri('4','b2')
			cw('y',"No...")
		elseif cl == 682 then
			cw('y',"You don't understand.")
        elseif cl == 683 then
			cw('y',"I spent so much time worrying about what's better and what's worse.")
		elseif cl == 684 then
			cw('y',"Not just with you...")
		elseif cl == 685 then
			cw('y',"With Natsuki, and Sayori...")
		elseif cl == 686 then
			cw('y',"It's obvious now why nobody has fun when talking to me...")
		elseif cl == 687 then
			cw('y',"And because of that...")
		elseif cl == 688 then
			updateYuri('4','c2')
			cw('y',"...I'll just keep my mouth shut about your poem!")
		elseif cl == 689 then
			cw('mc',"...")
		elseif cl == 690 then
			cw('bl',"Yuri buries her head into her arms on her desk.")
		elseif cl == 691 then
			cw('bl',"That's not the first time I've seen her do that.")
		elseif cl == 692 then
			cw('mc',"I don't think it's ever as bad as you make it sound in your head...")
		elseif cl == 693 then
			cw('y',"...")
		elseif cl == 694 then
			cw('mc',"I think if people really didn't like talking to you...")
		elseif cl == 695 then
			cw('mc',"Then it would be a lot more obvious.")
		elseif cl == 696 then
			cw('mc',"I know that you like to read deeply into things.")
		elseif cl == 697 then
			cw('mc',"But some things are just worth taking at face value.")
		elseif cl == 698 then
			updateYuri('4','b2')
			cw('y',"I just...")
		elseif cl == 699 then
			cw('y',"I've gotten so used to it...")
		elseif cl == 700 then
			cw('y',"...That it's hard for me to comprehend any other possibility.")
		elseif cl == 701 then
			cw('mc',"Gotten used to what?")
		elseif cl == 702 then
			cw('mc',"Reading deeply into things?")
		elseif cl == 703 then
			cw('y',"Being disliked.")
		elseif cl == 704 then
			cw('mc',"Yuri...")
		elseif cl == 705 then
			updateYuri('2','v')
			cw('y',"What...what am I saying?")
		elseif cl == 706 then
			cw('y',"I'm sorry...")
		elseif cl == 707 then
			cw('y',"I never meant to bring this up...")
		elseif cl == 708 then
			cw('bl',"Yuri turns away from me.")
		elseif cl == 709 then
			updateYuri('4','b2')
			cw('y',"You should go...")
		elseif cl == 710 then
			cw('mc',"Eh...?")
		elseif cl == 711 then
			cw('y',"Please...")
		elseif cl == 712 then
			cw('y',"Please don't look at me right now.")
		elseif cl == 713 then
			cw('y',"I want to do some thinking...")
		elseif cl == 714 then
			cw('mc',"Are you sure...?")
		elseif cl == 715 then
			cw('bl',"Yuri nods.")
		elseif cl == 716 then
			cw('mc',"Alright...")
		elseif cl == 717 then
			cw('bl',"I leave Yuri be.")
		elseif cl == 718 then
			cw('bl',"Comforting or reassuring her is nearly impossible as it is.")
		elseif cl == 719 then
			cw('bl',"So when she wants to be alone, I think anything I say could only make things worse.")
		elseif cl == 720 then
			cw('bl',"I feel bad, but thankfully she doesn't take it out on me...")
		elseif cl == 721 then
			cw('bl',"I'll wait until she's feeling a little bit better.")
		elseif cl == 722 then
			poemfinish('y')
        end
    else
		if cl == 670 then
			updateYuri('1','a')
			cw('y',"...")
		elseif cl == 671 then
			cw('y',"...Ah.")
		elseif cl == 672 then
			cw('y',"Decided to try something different today?")
		elseif cl == 673 then
			cw('mc',"I guess so.")
		elseif cl == 674 then
			cw('mc',"Is that good, or bad?")
		elseif cl == 675 then
			updateYuri('2','g')
			cw('y',"Well, neither.")
		elseif cl == 676 then
			cw('y',"I have my preferences.")
		elseif cl == 677 then
			cw('y',"But it would be unfair of me to call something good or bad based on that.")
		elseif cl >= 678 then
			ch3_y_shared()
		end
	end
end

function ch3_y_shared()
	if cl < 692 and cl ~= 666 then
		scriptJump(692)
	elseif cl == 692 then
		updateYuri('1','f')
		cw('y',"As always, I believe what's most important is exploring and discovering yourself.")
	elseif cl == 693 then
		cw('mc',"That's comforting.")
	elseif cl == 694 then
		cw('mc',"I'm kind of afraid of disappointing you in some way or another.")
	elseif cl == 695 then
		updateYuri('2','t')
		cw('y',"Eh...?")
	elseif cl == 696 then
		cw('y',"Why me...?")
	elseif cl == 697 then
		cw('mc',"Well, you're always sophisticated with your writing and have the most advice to share.")
	elseif cl == 698 then
		updateYuri('4','a2')
		cw('y',"Is that so...?")
	elseif cl == 699 then
		cw('y',"...")
	elseif cl == 700 then
		cw('bl',"Yuri thinks for a good minute.")
	elseif cl == 701 then
		updateYuri('4','c2')
		cw('y',"...That must be terrible.")
	elseif cl == 702 then
		cw('mc',"Eh?")
	elseif cl == 703 then
		cw('y',"For me to have become someone whose opinion is fearsome...")
	elseif cl == 704 then
		cw('y',"How unlikable of me...")
	elseif cl == 705 then
		cw('mc',"Yuri...")
	elseif cl == 706 then
		cw('mc',"It's not as bad as you're making it sound in your head.")
	elseif cl == 707 then
		cw('mc',"I just meant that I respect your opinion.")
	elseif cl == 708 then
		updateYuri('2','v')
		cw('y',"I see...")
	elseif cl == 709 then
		cw('y',"I'm sorry that I always overthink and come to those sorts of conclusions...")
	elseif cl == 710 then
		cw('y',"I'm just...a little too used to it.")
	elseif cl == 711 then
		cw('mc',"Overthinking?")
    elseif cl == 712 then
		cw('y',"Being disliked.")
	elseif cl == 713 then
		cw('mc',"Yuri...")
	elseif cl == 714 then
		updateYuri('3','w')
		cw('y',"What...what am I saying?")
	elseif cl == 715 then
		cw('y',"I'm sorry, I didn't mean to bring that up...")
	elseif cl == 716 then
		cw('y',"Let's move on...")
	elseif cl == 717 then
		cw('mc',"Alright...")
	elseif cl == 718 then
		cw('mc',"Do you want to share your poem now?")
	elseif cl == 719 then
		updateYuri('2','i')
		cw('y',"Okay...")
	elseif cl == 720 then
		cw('y',"Here.")
	elseif cl >= 721 then
		ch3_y_end()
	end
end

function ch3_y_med()
    if y_poemappeal[1] < 0 and y_poemappeal[2] < 0 then
        ch3_y_bad12_shared()
    elseif y_poemappeal[1] < 1 or y_poemappeal[2] < 1 then
		if cl == 670 then
			cw('y',"...")
		elseif cl == 671 then
			updateYuri('1','a')
			cw('y',"Well done, "..player..".")
		elseif cl == 672 then
			cw('y',"You've definitely improved your writing over the course of these few days.")
		elseif cl == 673 then
			cw('y',"Has my advice been helpful to you?")
		elseif cl == 674 then
			cw('mc',"Yeah... Definitely.")
		elseif cl == 675 then
			updateYuri('2','m')
			cw('y',"I'm glad...")
		elseif cl == 676 then
			cw('y',"Sharing our writing like this...")
		elseif cl == 677 then
			cw('y',"It's a lot more fun and rewarding than I anticipated.")
		elseif cl == 678 then
			cw('y',"I need to remember to thank Monika...")
		elseif cl == 679 then
			cw('y',"I think we all felt a little awkward at first.")
		elseif cl == 680 then
			updateYuri('1','a')
			cw('y',"But now it seems like everyone is enjoying sharing their writing and seeing what others think.")
		elseif cl == 681 then
			cw('mc',"I guess I can't really disagree.")
		elseif cl == 682 then
			cw('mc',"I was afraid this whole thing would be a chore...")
		elseif cl == 683 then
			cw('bl',"But it's a great way for me to spend some personal time with all the girls in the club.")
		elseif cl == 684 then
			cw('mc',"But it's been fun getting to know everyone and their writing.")
		elseif cl == 685 then
			cw('mc',"And I guess doing some writing myself...")
		elseif cl == 686 then
			updateYuri('2','a')
			cw('y',"Well...")
		elseif cl == 687 then
			cw('y',"Have you learned anything about yourself, "..player.."?")
		elseif cl == 688 then
			cw('mc',"Eh?")
		elseif cl == 689 then
			updateYuri('2','i')
			cw('y',"Well, you know how I like to say that writing is a very personal way to get in touch with yourself...")
		elseif cl == 690 then
			updateYuri('1','a')
			cw('y',"In the end, it doesn't matter if you're a good writer, or a bad writer.")
		elseif cl == 691 then
			cw('y',"And even my opinions are just opinions...you know?")
		elseif cl >= 692 then
			ch3_y_shared()
		end
    else
		if cl == 670 then
			updateYuri('1','e')
			cw('y',"...")
		elseif cl == 671 then
			cw('y',"...Ah.")
		elseif cl == 672 then
			cw('y',"Decided to try something different today?")
		elseif cl == 673 then
			cw('mc',"I guess so.")
		elseif cl == 674 then
			cw('mc',"Is that good, or bad?")
		elseif cl == 675 then
			updateYuri('2','i')
			cw('y',"Well, neither.")
		elseif cl == 676 then
			cw('y',"I have my preferences.")
		elseif cl == 677 then
			cw('y',"But it would be unfair of me to call something good or bad based on that.")
		elseif cl >= 678 then
			ch3_y_shared()
		end
	end
end

function ch3_y_good()
    if y_poemappeal[1] < 0 and y_poemappeal[2] < 0 then
        ch3_y_bad12_shared()
    elseif y_poemappeal[2] < 1 then
		if cl == 670 then
			cw('y',"...")
		elseif cl == 671 then
			updateYuri('2','u')
			cw('y',player.."...")
		elseif cl == 672 then
			cw('y',"...This is wonderful.")
		elseif cl == 673 then
			cw('y',"I can feel the emotion that you poured into it.")
		elseif cl == 674 then
			cw('y',"Is this the result of trying what I suggested yesterday?")
		elseif cl == 675 then
			cw('mc',"Yeah, I guess so...")
		elseif cl == 676 then
			cw('mc',"You did a good job explaining.")
		elseif cl == 677 then
			cw('mc',"I really wanted to try giving it more feeling.")
		elseif cl == 678 then
			updateYuri('4','b2')
			cw('bl',"Yuri visibly swallows.")
		elseif cl == 679 then
			cw('bl',"Even her hands appear sweaty.")
		elseif cl == 680 then
			audioUpdate('9')
			cw('y',"I'm not...used to this...")
		elseif cl == 681 then
			cw('mc',"Used to what?")
		elseif cl == 682 then
			updateYuri('3','o')
			cw('y',"I don't know...!")
		elseif cl == 683 then
			cw('mc',"It's fine, take your time...")
		elseif cl == 684 then
			cw('bl',"Yuri breathes and collects her thoughts.")
		elseif cl == 685 then
			cw('bl',"I know that Yuri likes to think before she speaks, so I offer that patience to her.")
		elseif cl == 686 then
			updateYuri('4','a2')
			cw('y',"Yeah...")
		elseif cl == 687 then
			cw('y',"Just...being appreciated like this...I guess.")
		elseif cl == 688 then
			cw('y',"It probably sounds really stupid...")
		elseif cl == 689 then
			cw('y',"But seeing someone motivated by my writing...")
		elseif cl == 690 then
			cw('y',"It just makes me...")
		elseif cl == 691 then
			cw('y',"Really happy...")
		elseif cl == 692 then
			cw('mc',"Are you saying you've never shared your writing before?")
		elseif cl == 693 then
			cw('bl',"Yuri nods.")
		elseif cl == 694 then
			cw('mc',"Really? I don't believe it.")
		elseif cl == 695 then
			cw('y',"I really only write for myself...")
		elseif cl == 696 then
			cw('y',"And besides...")
		elseif cl == 697 then
			updateYuri('3','w')
			cw('y',"...People would just laugh at me!")
		elseif cl == 698 then
			cw('mc',"Do you really think that...?")
		elseif cl == 699 then
			cw('bl',"Again, Yuri nods.")
		elseif cl == 700 then
			cw('mc',"Huh...")
		elseif cl == 701 then
			cw('mc',"Even your close friends?")
		elseif cl == 702 then
			updateYuri('2','v')
			cw('y',"...")
		elseif cl == 703 then
			cw('bl',"For some reason, Yuri doesn't respond.")
		elseif cl == 704 then
			cw('mc',"Yuri...?")
		elseif cl >= 705 then
			ch3_y_good_shared()
        end
    else
		if cl == 670 then
			cw('y',"...")
		elseif cl == 671 then
			cw('y',player..".")
		elseif cl == 672 then
			updateYuri('2','s')
			cw('y',"Your writing has only improved in these last few days.")
		elseif cl == 673 then
			cw('y',"Every poem you've shown me has been nothing short of spectacular.")
		elseif cl == 674 then
			cw('y',"I can really feel the emotions...")
		elseif cl == 675 then
			updateYuri('2','m')
			cw('y',"I'm a little envious, even...")
		elseif cl == 676 then
			cw('y',"I don't think it ever came to me this naturally.")
		elseif cl == 677 then
			cw('mc',"Yuri, that's the wrong way to put it.")
		elseif cl == 678 then
			cw('mc',"This never did come naturally to me.")
		elseif cl == 679 then
			cw('mc',"But I've been able to improve so much thanks to you.")
		elseif cl == 680 then
			cw('mc',"You're really the example I was chasing after.")
		elseif cl == 681 then
			updateYuri('3','u')
			cw('y',"I-Is that so...?")
		elseif cl == 682 then
			cw('y',"Yuri gently smiles to herself.")
		elseif cl == 683 then
			cw('y',"This feeling...")
		elseif cl == 684 then
			cw('y',"I'm so glad...I got the chance to share my writing.")
		elseif cl == 685 then
			updateYuri('4','e2')
			cw('y',"I never thought it would feel like this.")
		elseif cl == 686 then
			cw('mc',"I remember you mentioning that yesterday.")
		elseif cl == 687 then
			cw('mc',"I can't believe that you're so good at something and you've never even shared it with anyone.")
		elseif cl == 688 then
			cw('mc',"It's kind of a shame.")
		elseif cl == 689 then
			updateYuri('2','u')
			cw('y',"Maybe, but...")
		elseif cl == 690 then
			cw('y',"It's not like I really...had a choice.")
		elseif cl == 691 then
			cw('mc',"What do you mean...?")
		elseif cl == 692 then
			cw('y',"Well...")
		elseif cl >= 693 then
			ch3_y_good_shared()
		end
	end
end

function ch3_y_good_shared()
	if cl < 705 and cl ~= 666 then
		scriptJump(705)
	elseif cl == 705 then
		audioUpdate('9')
		cw('bl',"Yuri smiles sadly.")
	elseif cl == 706 then
		updateYuri('1','u')
		cw('y',player..", during lunchtime, I eat by myself.")
	elseif cl == 707 then
		cw('y',"Did you know that?")
	elseif cl == 708 then
		cw('y',"It's a great time to find a quiet spot and do some reading.")
	elseif cl == 709 then
		cw('y',"In fact...")
	elseif cl == 710 then
		updateYuri('2','s')
		cw('y',"I always have some books with me.")
	elseif cl == 711 then
		cw('y',"You could say I really enjoy reading...")
	elseif cl == 712 then
		cw('y',"...Well, that's one way to put it, anyway...")
	elseif cl == 713 then
		cw('y',"But...")
	elseif cl == 714 then
		cw('y',"Books are so full of amazing and inspiring people.")
	elseif cl == 715 then
		cw('y',"People you want to fall in love with.")
	elseif cl == 716 then
		cw('y',"Or people you just know would make a really good friend.")
	elseif cl == 717 then
		updateYuri('1','m')
		cw('y',"Cheerful people, who always put a smile on your face...")
	elseif cl == 718 then
		cw('y',"Or deep thinkers, and problem solvers, who discover the mysteries of life.")
	elseif cl == 719 then
		cw('y',"So when you look at it that way...")
	elseif cl == 720 then
		cw('y',"I'm surrounded by friends every day...")
	elseif cl == 721 then
		cw('y',"...You know?")
	elseif cl == 722 then
		updateYuri('2','s')
		cw('y',"And those friends don't laugh at me...")
	elseif cl == 723 then
		cw('y',"They don't tease me for spacing out all the time...")
	elseif cl == 724 then
		cw('y',"They don't make fun of my body type...")
	elseif cl == 725 then
		cw('y',"And...")
	elseif cl == 726 then
		updateYuri('3','v')
		cw('y',"...And they don't hate me for acting like a know-it-all!")
	elseif cl == 727 then
		cw('mc',"People...say that about you?")
	elseif cl == 728 then
		cw('y',"I'm not a know-it-all, "..player.."!")
	elseif cl == 729 then
		cw('y',"It's the opposite. I don't know anything!")
	elseif cl == 730 then
		updateYuri('4','b2')
		cw('y',"I don't know how to talk to people.")
	elseif cl == 731 then
		cw('y',"I don't know how to make people see me as normal.")
	elseif cl == 732 then
		cw('y',"I don't even know how to make myself happy!")
	elseif cl == 733 then
		cw('y',"I have all these feelings...")
	elseif cl == 734 then
		cw('y',"And all I can do with them is read, and write...")
	elseif cl == 735 then
		cw('y',"But it wasn't until now...")
    elseif cl == 736 then
		updateYuri('2','s')
		cw('y',"That I started sharing it with you...")
	elseif cl == 737 then
		cw('y',"...That I really understood what was missing all this time.")
	elseif cl == 738 then
		cw('mc',"But I haven't really done anything...")
	elseif cl == 739 then
		cw('y',"No...")
	elseif cl == 740 then
		cw('y',"That's wrong.")
	elseif cl == 741 then
		cw('y',"Just being patient and respectful...")
	elseif cl == 742 then
		updateYuri('3','u')
		cw('y',"That's really...important to me.")
	elseif cl == 743 then
		cw('y',"I know I'm a difficult person, "..player.."...")
	elseif cl == 744 then
		cw('y',"I speak too slowly...")
	elseif cl == 745 then
		cw('y',"I second-guess myself all the time...")
	elseif cl == 746 then
		cw('y',"I read too deeply into things...")
	elseif cl == 747 then
		cw('y',"But every time...")
	elseif cl == 748 then
		cw('y',"You've always treated me just like anyone else.")
	elseif cl == 749 then
		cw('y',"It's so rare that I feel comfortable with myself when I talk to others...")
	elseif cl == 750 then
		cw('y',"But that's why every time I talk to you...")
	elseif cl == 751 then
		updateYuri('2','s')
		cw('y',"...I just feel really happy.")
	elseif cl == 752 then
		cw('mc',"I see...")
	elseif cl == 753 then
		cw('mc',"Well, I treat you how you deserve to be treated, Yuri.")
	elseif cl == 754 then
		cw('mc',"And if other people don't see it that way, then screw them.")
	elseif cl == 755 then
		cw('mc',"I mean, I joined this club hoping I would make friends.")
	elseif cl == 756 then
		cw('mc',"And I would say I've had at least one success.")
	elseif cl == 757 then
		cw('mc',"Wouldn't you?")
	elseif cl == 758 then
		updateYuri('4','b2')
		cw('y',"U-Um...")
	elseif cl == 759 then
		cw('y',"If you put it that way...")
	elseif cl == 760 then
		cw('y',"...Yeah...")
	elseif cl == 761 then
		updateYuri('4','e2')
		cw('y',"We really are friends now, aren't we?")
	elseif cl == 762 then
		cw('bl',"Yuri puts her head in her hands.")
	elseif cl == 763 then
		cw('bl',"But this time, she's smiling as she does it.")
	elseif cl == 764 then
		cw('mc',"Do you want to show me your poem?")
	elseif cl == 765 then
		updateYuri('3','s')
		cw('y',"Yeah.")
	elseif cl == 766 then
		cw('y',"I do!")
	elseif cl == 767 then
		cw('y',"Let me get it for you...")
	elseif cl >= 768 then
		ch3_y_end()
	end
end

function ch2_n_end()
	if cl < 760 and cl ~= 666 then
		scriptJump(760)
	elseif cl == 760 then
		poem('poem_n2')
	elseif cl == 761 then
		scriptJump(763)
	elseif cl == 763 then
		poem_disable()
		updateNatsuki('2','a')
		cw('n',"Not bad, right?")
	elseif cl == 764 then
		cw('mc',"It's quite a bit longer than yesterday's.")
	elseif cl == 765 then
		updateNatsuki('2','w')
		cw('n',"Yesterday's was way too short...")
	elseif cl == 766 then
		cw('n',"I was just warming up!")
	elseif cl == 767 then
		updateNatsuki('2','c')
		cw('n',"I hope you didn't think that was the best I could do.")
	elseif cl == 768 then
		cw('mc',"No, of course not...")
	elseif cl == 769 then
		updateNatsuki('2','a')
		cw('n',"Anyway, the message is pretty straightforward in this poem.")
	elseif cl == 770 then
		cw('n',"I doubt I have to explain it.")
	elseif cl == 771 then
		updateNatsuki('2','c')
		cw('n',"Sometimes you can explain complicated issues with much simpler analogies...")
	elseif cl == 772 then
		cw('n',"And it helps people realize how stupid they're being.")
	elseif cl == 773 then
		updateNatsuki('2','g')
		cw('n',"Like, anyone would agree that the subject of this poem is an ignorant jerk...")
	elseif cl == 774 then
		cw('mc',"Do you know people like that?")
	elseif cl == 775 then
		updateNatsuki('2','c')
		cw('n',"Of course. It's about how everyone thinks my--")
	elseif cl == 776 then
		updateNatsuki('5','w')
		cw('n',"...That doesn't matter! It can be about anything!")
	elseif cl == 777 then
		updateNatsuki('5','h')
		cw('n',"I wrote it to be easy to relate to...")
	elseif cl == 778 then
		cw('n',"Everyone has some kind of weird hobby, or a guilty pleasure.")
	elseif cl == 779 then
		updateNatsuki('5','q')
		cw('n',"Something that you're afraid if people find out, they'd make fun of you or think less of you.")
	elseif cl == 780 then
		updateNatsuki('1','e')
		cw('n',"...But that just makes people stupid!")
	elseif cl == 781 then
		cw('n',"Who cares what someone likes, as long as they're not hurting anyone, and it makes them happy?")
	elseif cl == 782 then
		updateNatsuki('1','q')
		cw('n',"I think people really need to learn to respect others for liking weird things...")
	elseif cl == 783 then
		if readpoem.y == 1 and (y_poemappeal[1] >= 0 or y_poemappeal[2] >= 0) then
			cw('mc',"Huh, that's funny...")
		else
			cw('mc',"Well, you're definitely right.")
		end
	elseif cl == 784 then
		if readpoem.y == 1 and (y_poemappeal[1] >= 0 or y_poemappeal[2] >= 0) then
			cw('mc',"Yuri wrote about something similar today.")
		else
			cw('mc',"At least, I can relate to that.")
		end
	elseif cl == 785 then
		if readpoem.y == 1 and (y_poemappeal[1] >= 0 or y_poemappeal[2] >= 0) then
			updateNatsuki('1','h')
			cw('n',"Huh?")
		else
			cw('mc',"And I'm sure a lot of other people can, too.")
		end
	elseif cl == 786 then
		if readpoem.y == 1 and (y_poemappeal[1] >= 0 or y_poemappeal[2] >= 0) then
			cw('n',"Did you say Yuri?")
		else
			scriptJump(805)
		end
	elseif cl == 787 then
		cw('mc',"Yeah...")
	elseif cl == 788 then
		cw('mc',"She said her poem was about an unusual hobby of hers.")
	elseif cl == 789 then
		cw('mc',"I didn't really get it, but she said something similar to you...")
	elseif cl == 790 then
		cw('mc',"That people shouldn't make each other feel insecure about those things.")
	elseif cl == 791 then
		updateNatsuki('1','q')
		cw('n',"Really?")
	elseif cl == 792 then
		cw('n',"Well...")
	elseif cl == 793 then
		updateNatsuki('1','t')
		cw('n',"I mean, Yuri's pretty weird, so I wouldn't doubt that she has some weird hobbies...")
	elseif cl == 794 then
		cw('n',"...Not that there's anything wrong with that!")
	elseif cl == 795 then
		updateNatsuki('1','u')
		cw('n',"Uu...")
	elseif cl == 796 then
		cw('n',"It's not like...I would judge her or anything...")
	elseif cl == 797 then
		cw('bl',"Natsuki has trouble finding words.")
	elseif cl == 798 then
		updateNatsuki('1','q')
		cw('n',"I-I guess I should try not to be so mean to her...")
	elseif cl == 799 then
		cw('n',"If she feels insecure about her weird behaviors and stuff...")
	elseif cl == 800 then
		cw('n',"I mean, I always hate people who make me feel insecure...")
	elseif cl == 801 then
		updateNatsuki('1','w')
		cw('n',"And Yuri made me feel insecure yesterday!")
	elseif cl == 802 then
		updateNatsuki('1','s')
		cw('n',"But the way you put it, it sounds like she's learned her lesson...")
	elseif cl == 803 then
		cw('mc',"Well, I would say so.")
	elseif cl == 804 then
		cw('mc',"Even if her writing style is really different, I'm sure she'll appreciate the message in your poem.")
	elseif cl >= 805 then
		if appeal.n >= 2 then
			if cl == 805 then
				updateNatsuki('4','h')
				cw('n',"You know...")
			elseif cl == 806 then
				cw('n',"I'm glad that you can appreciate this kind of writing...")
			elseif cl == 807 then
				updateNatsuki('4','q')
				cw('n',"I mean...I know I was talking about that yesterday.")
			elseif cl == 808 then
				cw('n',"But I've been...well, I've been enjoying sharing my writing with you, so...")
			elseif cl == 809 then
				updateNatsuki('4','w')
				cw('n',"...So consider yourself lucky, okay?")
			elseif cl == 810 then
				cw('mc',"Ahaha.")
			elseif cl == 811 then
				cw('mc',"Well, thanks for being honest.")
			elseif cl == 812 then
				updateNatsuki('1','n')
				cw('n',"What's that supposed to mean?")
			elseif cl == 813 then
				cw('n',"I'm always honest!")
			elseif cl == 814 then
				updateNatsuki('1','2b')
				cw('n',"Jeez...")
			elseif cl == 815 then
				cw('n',"Just look forward to tomorrow too, okay?")
			elseif cl == 816 then
				cw('mc',"Alright, I will.")
			elseif cl == 817 then
				poemfinish('n')
			end
		else	
			if cl == 805 then
				updateNatsuki('4','c')
				cw('n',"It's what I do best, after all!")
			elseif cl == 806 then
				cw('n',"I don't like writing unless there's a good message to take away from it.")
			elseif cl == 807 then
				cw('n',"Like, conveying emotions is important...")
			elseif cl == 808 then
				cw('n',"But I want to make people think, not just feel.")
			elseif cl == 809 then
				updateNatsuki('4','b')
				cw('n',"Remember that!")
			elseif cl == 810 then
				cw('n',"I'm gonna write a good one for tomorrow, too, so look forward to it.")
			elseif cl == 811 then
				poemfinish('n')
			end
		end
	end
end

function ch2_n_bad()
    if n_poemappeal[1] < 0 then
		if cl == 670 then
			cw('n',"...Hm.")
		elseif cl == 671 then
			updateNatsuki('2','k')
			cw('n',"Well, I can admit that it's better than the last one.")
		elseif cl == 672 then
			cw('n',"It's nice to see that you're putting in some effort.")
		elseif cl == 673 then
			cw('mc',"That's good...")
		elseif cl == 674 then
			updateNatsuki('2','c')
			cw('n',"But I still don't like this at all.")
		elseif cl == 675 then
			cw('n',"It's trying too hard to be serious.")
		elseif cl == 676 then
			cw('mc',"Eh? What do you mean by that?")
		elseif cl >= 677 then
			ch2_n_bad_sharedwithch3()
		end
	else
		if cl == 670 then
			updateNatsuki('1','k')
			cw('n',"...Hm.")
		elseif cl == 671 then
			cw('n',"I liked your last one better.")
		elseif cl == 672 then
			cw('mc',"Eh? Really?")
		elseif cl == 673 then
			updateNatsuki('2','c')
			cw('n',"Well yeah. I can tell you were a little more daring with this one.")
		elseif cl == 674 then
			cw('n',"But you're really not good enough for that yet. It fell flat.")
		elseif cl == 675 then
			cw('mc',"That may be true, but I just wanted to try something different.")
		elseif cl == 676 then
			cw('mc',"I'm still figuring this all out.")
		elseif cl == 677 then
			updateNatsuki('2','k')
			cw('n',"I mean, I always like poems that aren't trying too hard.")
		elseif cl == 678 then
			updateNatsuki('2','q')
			cw('n',"I hate when people try to sound fancy or add more meaning just by using annoying and complicated language.")
		elseif cl == 679 then
			updateNatsuki('4','b')
			cw('n',"Just make it simple, cute, and to the point!")
		elseif cl == 680 then
			updateNatsuki('4','y')
			cw('n',"Yuri's head over heels for all this cryptic nonsense, but I see right through that BS. Hah!")
		elseif cl == 681 then
			updateNatsuki('4','2a')
			cw('n',"Making your reader look so hard for all this deep meaning is just an excuse to have no meaning at all.")
		elseif cl == 682 then
			cw('mc',"I guess that's one way to look at it.")
		elseif cl == 683 then
			cw('n',"Well, everyone has their own opinion.")
		elseif cl == 684 then
			cw('n',"But my opinion is the best opinion. I'm sure you've figured that out already.")
		elseif cl == 685 then
			cw('mc',"Er...")
		elseif cl == 686 then
			updateNatsuki('2','a')
			cw('n',"Anyway, here's my poem. Maybe you'll learn something.")
		elseif cl >= 687 then
			ch2_n_end()
		end
	end
end

function ch2_n_bad_sharedwithch3()
	if cl < 678 and cl ~= 666 then
		scriptJump(678)
	elseif cl == 678 then
		updateNatsuki('4','c')
		cw('n',"Poems don't need to be all deep-sounding to express something.")
	elseif cl == 679 then
		cw('n',"It's going to just sound like you're forcing it unless you really don't suck at it.")
	elseif cl == 680 then
		updateNatsuki('4','w')
		cw('n',"Honestly... Don't bother trying to write poems like this until you're on Yuri's level--")
	elseif cl == 681 then
		updateNatsuki('4','o')
		cw('bl',"Natsuki stops short all of a sudden.")
	elseif cl == 682 then
		updateNatsuki('1','o')
		cw('n',"D-Don't...tell me...")
	elseif cl == 683 then
		cw('mc',"Eh?")
	elseif cl == 684 then
		cw('n',"You're not...you're not just trying to impress Yuri, are you?!")
	elseif cl == 685 then
		cw('mc',"W-What are you talking about?? And keep your voice down...!")
	elseif cl == 686 then
		updateNatsuki('1','x')
		cw('n',"You know Yuri would love this kind of...this angsty.......!!")
	elseif cl == 687 then
		cw('mc',"Just because she's a talented writer doesn't mean...I-I mean...")
	elseif cl == 688 then
		updateNatsuki('1','o')
		cw('n',"Uu....!!")
	elseif cl == 689 then
		cw('bl',"Looks like I'm in trouble.")
	elseif cl == 690 then
		cw('bl',"I somehow struck a nerve, though what I did is beyond me.")
	elseif cl == 691 then
		updateNatsuki('1','c')
		cw('n',"I am so done with you.")
	elseif cl == 692 then
		cw('bl',"Natsuki shoves the poem I handed her back over to me.")
	elseif cl == 693 then
		updateNatsuki('5','w')
		cw('n',"Take your stupid poem. If you wrote it for someone else, just don't show it to me!")
	elseif cl == 694 then
		cw('mc',"Ouch...")
	elseif cl == 695 then
		cw('bl',"This is what I get for letting a younger girl step into my business.")
	elseif cl == 696 then
		cw('bl',"Unless I was a mind reader, I was destined to be in a world of pain from the start.")
	elseif cl == 697 then
		cw('bl',"At least Natsuki wasn't really the girl I was trying to impress in the first place...")
	elseif cl == 698 then
		poemfinish('n')
    end
end

function ch2_n_med()
    if n_poemappeal[1] < 0 then
		if cl == 670 then
			cw('n',"...Hm.")
		elseif cl == 671 then
			updateNatsuki('2','k')
			cw('n',"Well, I can admit that it's better than the last one.")
		elseif cl == 673 then
			cw('n',"It's nice to see that you're putting in some effort.")
		elseif cl == 672 then
			cw('mc',"That's good...")
		elseif cl >= 674 then
			ch2_n_med_shared()
        end
    elseif n_poemappeal[1] == 0 then
		if cl == 670 then
			cw('n',"...Hm.")
		elseif cl == 671 then
			updateNatsuki('2','k')
			cw('n',"Well, it's not really any worse than your last one.")
		elseif cl == 672 then
			cw('n',"But I can't really say it's any better, either.")
		elseif cl == 673 then
			cw('mc',"Phew...")
		elseif cl == 674 then
			updateNatsuki('2','c')
			cw('n',"Huh? 'Phew' what?")
		elseif cl == 675 then
			cw('mc',"Ah... Well anything that isn't a trainwreck, I'll take as a win.")
		elseif cl == 676 then
			cw('mc',"And I get the feeling you're probably the most critical.")
		elseif cl == 677 then
			updateNatsuki('1','p')
			cw('n',"H-Hey! What makes you--")
		elseif cl == 678 then
			updateNatsuki('1','q')
			cw('n',"(Wait, maybe that was a compliment...?)")
		elseif cl == 679 then
			updateNatsuki('4','y')
			cw('n',"A-Ahah! Glad to see someone recognizes my experience!")
		elseif cl == 680 then
			cw('n',"Well then, keep practicing and maybe you'll be as good as me someday!")
		elseif cl == 681 then
			cw('mc',"That's...uh...")
		elseif cl == 682 then
			cw('bl',"Something tells me Natsuki completely missed the point.")
		elseif cl >= 683 then
			ch2_n_med_shared()
		end
    else
		if cl == 670 then
			cw('n',"...Hm.")
		elseif cl == 671 then
			updateNatsuki('2','c')
			cw('n',"Well, it's not terrible.")
		elseif cl == 672 then
			cw('n',"But it's pretty disappointing after your last one.")
		elseif cl == 673 then
			updateNatsuki('2','s')
			cw('n',"Then again, if this one was as good as your last one, I would be completely pissed.")
		elseif cl == 674 then
			cw('mc',"Well, I guess I wanted to try something a little different this time.")
		elseif cl == 675 then
			updateNatsuki('2','c')
			cw('n',"Fair enough. You're still new to this, so I wouldn't expect you to find your style right away.")
		elseif cl >= 676 then
			ch2_n_med_shared()
		end
	end
end

function ch2_n_med_shared()
	if cl < 684 and cl ~= 666 then
		scriptJump(684)
	elseif cl == 684 then
		updateNatsuki('2','c')
		cw('n',"Come to think of it, this kind of reminds me of Sayori's poem from yesterday...")
	elseif cl == 685 then
		cw('mc',"Eh? You think so?")
	elseif cl == 686 then
		updateNatsuki('2','j')
		cw('n',"Yeah. Well I guess if you've been friends with her for so long, you might be on the same wavelength.")
	elseif cl == 687 then
		updateNatsuki('2','k')
		cw('n',"But you never really struck me as her type.")
	elseif cl == 688 then
		cw('mc',"Sayori has a 'type' all of a sudden...?")
	elseif cl == 689 then
		updateNatsuki('4','2c')
		cw('n',"Well, I don't know! But honestly, how can someone so...er, fluffy...spend so much time with someone like you?")
	elseif cl == 690 then
		cw('n',"It's like she's dragging around a dead weight.")
	elseif cl == 691 then
		cw('mc',"Uug... That was a little unnecessary...")
	elseif cl == 692 then
		cw('mc',"But think of it this way. If it weren't for me, she would probably just fly away like letting go of a balloon.")
	elseif cl == 693 then
		cw('mc',"You could say we each take care of each other in our own way.")
	elseif cl == 694 then
		updateNatsuki('2','q')
		cw('n',"Whatever it is, I don't get it...")
	elseif cl == 695 then
		cw('n',"...Oh, yeah, I guess I'm supposed to show you my poem.")
	elseif cl == 696 then
		cw('n',"Here.")
	elseif cl >= 697 then
		if chapter == 2 then ch2_n_end()
		elseif chapter == 3 then ch3_n_end()
		end
	end
end
	
function ch2_n_good()
    if n_poemappeal[1] ~= 1 then
		if cl == 670 then
			updateNatsuki('1','h')
			cw('n',"...")
		elseif cl == 671 then
			cw('bl',"Natsuki reads my poem.")
		elseif cl == 672 then
			cw('bl',"She keeps glancing at me, then back at the poem.")
		elseif cl == 673 then
			cw('bl',"By now, she must have read it more than once.")
		elseif cl == 674 then
			updateNatsuki('1','q')
			cw('n',"...Aren't you supposed to be bad at this?")
		elseif cl == 675 then
			cw('mc',"...Is that a compliment?")
		elseif cl == 676 then
			updateNatsuki('1','o')
			cw('n',"N-No! I mean... You know...")
		elseif cl == 677 then
			cw('bl',"Natsuki struggles to find the words she wants.")
		elseif cl == 678 then
			updateNatsuki('5','w')
			cw('n',"I just...expected a lot less after what you showed me yesterday.")
		elseif cl == 679 then
			cw('n',"That's all.")
		elseif cl == 680 then
			cw('mc',"Well, I guess I just got lucky with this one.")
		elseif cl == 681 then
			updateNatsuki('4','t')
			cw('n',"Y-Yeah!! Exactly!")
		elseif cl == 682 then
			cw('n',"You just got lucky, you know?")
		elseif cl == 683 then
			updateNatsuki('4','y')
			cw('n',"Don't get used to it.")
		elseif cl == 684 then
			cw('n',"You won't always manage to write poems this cute. I mean--!")
		elseif cl == 685 then
			updateNatsuki('1','p')
			cw('n',"I mean well-written! No, I mean--")
		elseif cl == 686 then
			cw('mc',"Ah, so that's how it is. My poem is cute?")
		elseif cl == 687 then
			updateNatsuki('1','v')
			cw('n',"No! Why are you smiling?! It's not like I like cute things!")
		elseif cl == 688 then
			cw('bl',"Natsuki shoves my poem back towards me.")
		elseif cl == 689 then
			updateNatsuki('4','w')
			cw('n',"H-Huh! Reading it again, I decided that it's not so great after all.")
		elseif cl == 690 then
			cw('n',"It's too cute and doki-doki.")
		elseif cl == 691 then
			updateNatsuki('4','t')
			cw('n',"It would only impress...you know, girls...who like those kinds of things.")
		elseif cl == 692 then
			cw('n',"Ahaha!")
		elseif cl == 693 then
			cw('bl',"For some reason, Natsuki is incredibly easy to see through.")
		elseif cl == 694 then
			updateNatsuki('1','w')
			cw('n',"Well, anyway...!")
		elseif cl == 695 then
			updateNatsuki('1','h')
			cw('n',"You're gonna read mine now, right?")
		elseif cl == 696 then
			cw('n',"Judging by your tastes, you'll probably like it a lot.")
		elseif cl == 697 then
			updateNatsuki('2','q')
			cw('n',"You'll probably learn something, too. Don't forget who the real pro is.")
		elseif cl >= 698 then
			if chapter == 2 then ch2_n_end()
			elseif chapter == 3 then ch3_n_end()
			end
		end
    else
		ch2_n_good_sharedwithch3()
	end
end

function ch2_n_good_sharedwithch3()
	local unfairto = 'Sayori'
	if readpoem.s == 1 then
		unfairto = "Yuri"
	end
	if cl == 670 then
		updateNatsuki('1','n')
		cw('n',"...")
	elseif cl == 671 then
		cw('bl',"Natsuki reads my poem.")
	elseif cl == 672 then
		cw('bl',"She keeps glancing at me, then back at the poem.")
	elseif cl == 673 then
		cw('bl',"By now, she must have read it more than once.")
	elseif cl == 674 then
		updateNatsuki('1','u')
		cw('n',"Rrgh...")
	elseif cl == 675 then
		cw('mc',"...?")
	elseif cl == 676 then
		cw('mc',"Is it that bad?")
	elseif cl == 677 then
		updateNatsuki('1','r')
		cw('n',"No! No, it's not!")
	elseif cl == 678 then
		cw('n',"It's good. It's really good, okay?!")
	elseif cl == 679 then
		updateNatsuki('5','w')
		cw('n',"There, I said it!")
	elseif cl == 680 then
		cw('n',"Ugh, this wasn't supposed to happen at all...!")
	elseif cl == 681 then
		updateNatsuki('5','s')
		cw('n',"Why can't you just be bad at this?")
	elseif cl == 682 then
		cw('n',"My poems are supposed to impress you, not the other way around!")
	elseif cl == 683 then
		cw('mc',"You're trying to impress me?")
	elseif cl == 684 then
		updateNatsuki('1','2c')
		cw('n',"Obviously! You think I'd let you enjoy Yuri's writing more than mine?")
	elseif cl == 685 then
		cw('n',"Give me a break.")
	elseif cl == 686 then
		cw('mc',"Well...")
	elseif cl == 687 then
		cw('mc',"In that case, what's the problem with me trying to impress you?")
	elseif cl == 688 then
		updateNatsuki('1','e')
		cw('n',"I'll tell you! You--")
	elseif cl == 689 then
		updateNatsuki('1','p')
		cw('n',"--")
	elseif cl == 690 then
		cw('bl',"Natsuki's face freezes, like she just realized something.")
	elseif cl == 691 then
		cw('n',"Y-Y-You...")
	elseif cl == 692 then
		cw('n',"You're trying to...impress me?")
	elseif cl == 693 then
		updateNatsuki('1','q')
		cw('bl',"Natsuki vigorously scans her eyes over my poem one more time.")
	elseif cl == 694 then
		cw('bl',"Then, the poem slips out of her hands and flutters to the floor.")
	elseif cl == 695 then
		updateNatsuki('1','p')
		cw('n',"I...have to use the bathroom!")
	elseif cl == 696 then
		hideNatsuki()
		cw('bl',"Red-faced, Natsuki quickly walks out of the room.")
	elseif cl == 697 then
		updateMonika('1','d',80)
		cw('m',"Hey, "..player.."...")
	elseif cl == 698 then
		cw('m',"Did you do something to Natsuki?")
	elseif cl == 699 then
		cw('m',"I just saw her rush out like that...")
	elseif cl == 700 then
		updateMonika('2','g')
		cw('m',"You didn't do anything terrible, did you?")
	elseif cl == 701 then
		cw('mc',"N-No!")
	elseif cl == 702 then
		cw('mc',"I just told her that--")
	elseif cl == 703 then
		cw('bl',"My voice gets caught in my throat.")
	elseif cl == 704 then
		cw('bl',"There's no way I could tell Monika that I'm trying to impress Natsuki.")
	elseif cl == 705 then
		updateMonika('2','d')
		cw('m',"Hmm?")
	elseif cl == 706 then
		cw('bl',"Monika sees the poem lying on the floor and swiftly picks it up.")
	elseif cl == 707 then
        if readpoem.m == 1 then
			cw('bl',"She skims over it a second time, her smile not fading from her face.")
        else
			cw('bl',"She reads through it, her smile not fading from her face.")
		end
	elseif cl == 708 then
		updateMonika('2','a')
		cw('m',"I see.")
	elseif cl == 709 then
		if readpoem.m == 1 then
			cw('m',"At first I just thought you liked her writing style...")
		else
			cw('m',"You wrote this for Natsuki, didn't you?")
		end
	elseif cl == 710 then
		if readpoem.m == 1 then
			cw('m',"But you wrote this for Natsuki, didn't you?")
		else
			scriptJump(711)
		end
	elseif cl == 711 then
		cw('mc',"I-I mean...")
	elseif cl == 712 then
		cw('mc',"Not really...")
	elseif cl == 713 then
		updateMonika('2','d')
		cw('m',"In fact, didn't she like your poem a lot the other day, too?")
	elseif cl == 714 then
		cw('m',"I'm surprised you know her taste so well already.")
	elseif cl == 715 then
		updateMonika('4','a')
		cw('m',"Are you sure you're not cheating, "..player.."?")
	elseif cl == 716 then
		cw('mc',"Cheating...?")
	elseif cl == 717 then
		cw('mc',"What do you mean by that?")
	elseif cl == 718 then
		updateMonika('5a')
		cw('m',"Never mind, I'm just kidding. Ahaha!")
	elseif cl == 719 then
		cw('bl',"I didn't understand Monika's joke at all.")
	elseif cl == 720 then
		cw('m',"Anyway...")
	elseif cl == 721 then
		updateMonika('1','a')
		cw('m',"How do you think Natsuki feels about you?")
	elseif cl == 722 then
		cw('m',"Oh, you don't need to answer that.")
	elseif cl == 723 then
		cw('m',"It was just something for you to think about.")
	elseif cl == 724 then
		updateNatsuki('4','e',-40)
		cw('n',"Hey!")
	elseif cl == 725 then
		cw('bl',"Natsuki comes up and snatches the poem out of Monika's hands.")
	elseif cl == 726 then
		cw('bl',"Neither of us had noticed her reenter the classroom.")
	elseif cl == 727 then
		cw('n',"Did you read this, Monika?")
	elseif cl == 728 then
		updateMonika('1','j')
		cw('m',"Of course! I liked it!")
	elseif cl == 729 then
		updateMonika('1','a')
		updateNatsuki('1','r')
		cw('n',"Ugh...")
	elseif cl == 730 then
		cw('n',"You should really stop reading things that aren't for you, you know.")
	elseif cl == 731 then
		cw('n',"You have a bad habit of doing that.")
	elseif cl == 732 then
		updateMonika('1','d')
		cw('m',"Eh?")
	elseif cl == 733 then
		cw('m',"But "..player.." wrote this poem.")
	elseif cl == 734 then
		updateMonika('1','a')
		cw('m',"And we're supposed to share with everyone, right?")
	elseif cl == 735 then
		updateNatsuki('1','x')
		cw('n',"Uu--")
	elseif cl == 736 then
		cw('bl',"Natsuki freezes.")
	elseif cl == 737 then
		cw('bl',"She apparently forgot that my poem is technically for everyone to read.")
	elseif cl == 738 then
		updateNatsuki('4','2c')
		cw('n',"Okay, well, I think "..player.." is done sharing this poem with everyone.")
	elseif cl == 739 then
		cw('n',"It's not like anyone would want to read this anyway.")
	elseif cl == 740 then
		updateNatsuki('4','h')
		cw('n',"In fact, I'm just going to hold onto this.")
	elseif cl == 741 then
		updateMonika('5a')
		cw('m',"If you insist~")
	elseif cl == 742 then
		updateNatsuki('1','i')
		cw('n',"What?")
	elseif cl == 743 then
		cw('n',"Why are you looking at me like that??")
	elseif cl == 744 then
		cw('m',"Like what?")
	elseif cl == 745 then
		updateNatsuki('1','2b')
        cw('n',"Ugh...")
	elseif cl == 746 then
		cw('n',"Never mind.")
	elseif cl == 747 then
        if poemsread >= 3 then
            cw('bl',"Well, I guess Natsuki has my poem now.")
        else
            cw('mc',"Ah, Natsuki...")
		end
	elseif cl == 748 then
		if poemsread >= 3 then
			cw('bl',"Not that I really planned on keeping it.")
		else
            cw('mc',"I'll give you the poem, but that's still not very fair to "..unfairto.."...")
		end
	elseif cl == 749 then
		if poemsread >= 3 then
			scriptJump(757)
		else
			cw('mc',"...She hasn't gotten to read it yet.")
		end
	elseif cl == 750 then
		updateNatsuki('2','q')
		cw('n',"So what?")
	elseif cl == 751 then
		updateMonika('2','a')
		cw('m',"Well... I guess "..player.." is right, Natsuki...")
	elseif cl == 752 then
		cw('m',"It's not fair if you don't let everyone finish reading it.")
	elseif cl == 753 then
		cw('n',"...")
	elseif cl == 754 then
		updateNatsuki('2','h')
		cw('n',"...Fine.")
	elseif cl == 755 then
		cw('bl',"Natsuki returns my poem.")
	elseif cl == 756 then
		cw('n',"It's not like she's going to like it, though.")
	elseif cl == 757 then
		hideMonika()
		updateNatsuki('2','h',80)
		cw('n',"Anyway, read my poem now.")
	elseif cl == 758 then
		updateNatsuki('4','h')
		cw('n',"And no, I won't let you keep it.")
	elseif cl == 759 then
		cw('n',"This is my only copy.")
	elseif cl >= 760 then
		if chapter == 2 then ch2_n_end()
		elseif chapter == 3 then ch3_n_end()
		end
	end
end

function ch3_n_end()
	if cl < 760 then
		scriptJump(760)
	elseif cl >= 760 then
		if appeal.n >= 3 then
			ch3_n_end_special()
		else
			if cl == 760 then
				poem('poem_n3')
			elseif cl == 761 then
				scriptJump(764)
			elseif cl == 764 then
				poem_disable()
				updateNatsuki('2','a')
				cw('n',"Yeah...")
			elseif cl == 765 then
				cw('n',"I felt like I kept writing about negative things, so I wanted to write something with a nice message for once.")
			elseif cl == 766 then
				updateNatsuki('2','z')
				cw('n',"Besides...the beach is awesome!")
			elseif cl == 767 then
				updateNatsuki('2','j')
				cw('n',"Kinda hard to write anything negative about the beach.")
			elseif cl == 768 then
				if readpoem.y == 0 or appeal.y >= 3 then
					cw('mc',"So you decided to write about the beach first, and then came up with the message later?")
				else
					cw('mc',"Well, Yuri's take on it was a little more solemn.")
				end
			elseif cl == 769 then
				if readpoem.y == 0 or appeal.y >= 3 then	
					updateNatsuki('2','c')
					cw('n',"Yeah, well...")
				else
					updateNatsuki('5','h')
					cw('n',"Well, that's--")
				end
			elseif cl == 770 then
				if readpoem.y == 0 or appeal.y >= 3 then
					cw('n',"It's only because of what happened yesterday.")
				else
					updateNatsuki('4','2c')
					cw('n',"Jeez...she better not have said anything bad about mine!")
				end
			elseif cl == 771 then
				if readpoem.y == 0 or appeal.y >= 3 then
					updateNatsuki('5','q')
					cw('n',"I mean, after Yuri and I realized we kind of wrote about the same thing...")
				else
					cw('n',"After all, she was the one who wanted us to write about the same topic.")
				end
			elseif cl == 772 then
				if readpoem.y == 0 or appeal.y >= 3 then
					cw('n',"She wanted to pick a topic and have us both write about it, or whatever.")
				else
					scriptJump(776)
				end
			elseif cl == 773 then
				if readpoem.y == 1 then
					cw('mc',"I see...")
				else
					scriptJump(776)
				end
			elseif cl == 774 then
				cw('bl',"Something tells me the poem Yuri showed me isn't the one she plans on sharing with everyone else...")
			elseif cl == 775 then
				cw('bl',"Of course, I choose not to mention that to Natsuki.")
			elseif cl == 776 then
				updateNatsuki('1','s')
				cw('n',"Ugh...you can really see her doing that, too.")
			elseif cl == 777 then
				cw('n',"Making us write about a simple topic, then trying to impress me by coming up with something all fancy.")
			elseif cl == 778 then
				updateNatsuki('1','w')
				cw('n',"Well, it's not like I care.")
			elseif cl == 779 then
				cw('n',"I just did it anyway.")
			elseif cl == 780 then
				updateNatsuki('1','q')
				cw('n',"I mean, I guess mine ended up being kind of metaphorical too...")
			elseif cl == 781 then
				cw('n',"...But there's nothing wrong with doing that once in a while!")
			elseif cl == 782 then
				cw('n', "At the very least, it was good practice.")
			elseif cl == 783 then
				poemfinish('n')
			end
		end
	end
end

function ch3_n_end_special()
	if cl < 760 then
		scriptJump(760)
	elseif cl == 760 then
		poem('poem_n3b')
	elseif cl == 761 then
		scriptJump(764)
	elseif cl == 764 then
		poem_disable()
		updateNatsuki('1','q')
		cw('n',"...")
	elseif cl == 765 then
		cw('n',"...Why are you looking at me like that?")
	elseif cl == 766 then
		cw('n',"If you don't like it, then just say it.")
	elseif cl == 767 then
		updateNatsuki('1','u')
		cw('n',"I won't...get mad.")
	elseif cl == 768 then
		cw('mc',"No, it's not that I don't like it...!")
	elseif cl == 769 then
		cw('mc',"It was just...a little surprising to read.")
	elseif cl == 770 then
		if readpoem.y == 1 then
			cw('bl',"This clearly isn't the poem that Yuri told me she had written...")
		else
			scriptJump(772)
		end
	elseif cl == 771 then
		cw('bl',"...Meaning I'm probably the only one she's showing this to.")
	elseif cl == 772 then
		cw('mc', "Er...I guess I'm not used to hearing such nice things coming from you...")
	elseif cl == 773 then
		updateNatsuki('1','h')
		cw('n',"D-Don't just say that!")
	elseif cl == 774 then
		updateNatsuki('1','n')
		cw('n',"Dummy...")
	elseif cl == 775 then
		cw('n',"What do you think...the point of writing is?")
	elseif cl == 776 then
		updateNatsuki('1','u')
		cw('n',"Expressing things that you can't just say...")
	elseif cl == 777 then
		cw('mc',"Yeah...I understand.")
	elseif cl == 778 then
		cw('mc',"I'm sorry for missing the point sometimes.")
	elseif cl == 779 then
		cw('mc',"I always mean well...")
	elseif cl == 780 then
		cw('mc',"And...I'm happy that you showed this to me.")
	elseif cl == 781 then
		cw('mc',"I liked it.")
	elseif cl == 782 then
		updateNatsuki('1','h')
		cw('n',"Well...yeah...")
	elseif cl == 783 then
		updateNatsuki('1','q')
		cw('n',"I'm...I'm a pro, so...")
	elseif cl == 784 then
		cw('bl',"Natsuki mumbles, completely failing to sound confident like she usually does.")
	elseif cl == 785 then
		cw('n',"Just...")
	elseif cl == 786 then
		updateNatsuki('1','2c')
		cw('n',"Remember that...I can think these things sometimes, too!")
	elseif cl == 787 then
		cw('n',"You know, when you're nice to me, it's...")
	elseif cl == 788 then
		updateNatsuki('1','2a')
		cw('n',"...")
	elseif cl == 789 then
		cw('n', "...Meaningful.")
	elseif cl == 790 then
		cw('mc',"Ah...I'm glad.")
	elseif cl == 791 then
		cw('bl',"Sensing Natsuki is satisfied, I start to hand the poem back to her.")
	elseif cl == 792 then
		cw('bl',"But as I do so, Natsuki takes my hands and pushes them back away.")
	elseif cl == 793 then
		cw('bl',"Her small, soft hands surprise me with their assertion.")
	elseif cl == 794 then
		updateNatsuki('1','2b')
		cw('n',"I don't want it.")
	elseif cl == 795 then
		cw('mc',"Eh...?")
	elseif cl == 796 then
		cw('mc',"Why not?")
	elseif cl == 797 then
		updateNatsuki('1','2c')
		cw('n',"I just don't!")
	elseif cl == 798 then
		cw('n',"Jeez...")
	elseif cl == 799 then
		cw('bl',"I realize what Natsuki is doing.")
	elseif cl == 800 then
		cw('bl',"Unable to be honest, she's trying to give me the poem in a roundabout way.")
	elseif cl == 801 then
		cw('mc',"Well...in that case, I'm going to keep it.")
	elseif cl == 802 then
		cw('bl',"Instead of teasing her, I choose to go along with it.")
	elseif cl == 803 then
		updateNatsuki('1','t')
		cw('n',"...Good.")
	elseif cl == 804 then
		cw('n',"If you didn't, I would...")
	elseif cl == 805 then
		cw('n',"...")
	elseif cl == 806 then
		updateNatsuki('1','h')
		cw('n',"Never mind...")
	elseif cl == 807 then
		updateNatsuki('1','q')
		cw('n',"Just...I'm glad that you want it.")
	elseif cl == 808 then
		cw('bl',"Natsuki backpedals on her words and leaves it at that.")
	elseif cl == 809 then
		cw('bl',"Despite her best efforts to hide her expression, I can see her faintly smiling to herself.")
	elseif cl == 810 then
		cw('n',"That's all for now, so...")
	elseif cl == 811 then
		updateNatsuki('1','s')
		cw('n',"Go put it away before someone sees it, okay?")
	elseif cl == 812 then
		cw('mc',"Ah...yeah.")
	elseif cl == 813 then
		cw('mc',"I'll go do that.")
	elseif cl == 814 then
		cw('bl',"With that, I return to my seat so that I can put away Natsuki's poem.")
	elseif cl == 815 then
		poemfinish('n')
    end
end

function ch3_n_bad12_shared()
	if cl == 670 then
		updateNatsuki('5','x')
		cw('n',"Yeah, no thanks.")
	elseif cl == 671 then
		cw('mc',"Eh? You didn't even--")
	elseif cl == 672 then
		updateNatsuki('5','w')
		cw('n',"Next!")
	elseif cl == 673 then
		poemfinish('n')
	end
end

function ch3_n_bad()
    if n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
        ch3_n_bad12_shared()
    elseif n_poemappeal[1] < 0 or n_poemappeal[2] < 0 then
		if cl == 670 then
			cw('n',"...")
		elseif cl == 671 then
			updateNatsuki('2','c')
			cw('n',"...Meh.")
		elseif cl == 672 then
			cw('n',"I guess you really haven't learned anything after all.")
		elseif cl == 673 then
			cw('n',"Honestly, I don't know why I got my hopes up in the first place.")
		elseif cl == 674 then
			cw('mc',"What? I didn't think this one was that bad...")
		elseif cl == 675 then
			cw('mc',"What did I do wrong?")
		elseif cl >= 676 then
			ch2_n_bad_sharedwithch3()
		end
    else
		if cl == 670 then
			cw('n',"...")
		elseif cl == 672 then
			updateNatsuki('2','r')
			cw('n',"Oh, man.")
		elseif cl == 673 then
			cw('n',"This is seriously a step backwards.")
		elseif cl == 674 then
			cw('mc',"Eh?")
		elseif cl == 675 then
			updateNatsuki('2','c')
			cw('n',"I liked your last two way better than this one.")
		elseif cl == 676 then
			updateNatsuki('1','k')
			cw('n',"I mean...")
		elseif cl == 677 then
			cw('n',"I guess I can't be mad at you for trying different things.")
		elseif cl == 678 then
			updateNatsuki('1','c')
			cw('n',"As long as you're not just trying to impress Yuri or something like that.")
		elseif cl == 679 then
			updateNatsuki('5','x')
			cw('n',"Gross.")
		elseif cl == 680 then
			cw('mc',"Okay, okay.")
		elseif cl == 681 then
			cw('mc',"Like you said, I'm allowed to try new things.")
        elseif cl >= 682 then
			ch3_n_shared()
		end
	end
end

function ch3_n_shared()
	if cl < 685 and cl ~= 666 then
		scriptJump(685)
	elseif cl == 685 then
		updateNatsuki('5','g')
		cw('mc',"Why are you so emotionally invested in my poems, anyway?")
	elseif cl == 686 then
		cw('mc',"Isn't that more of a compliment to me?")
	elseif cl == 687 then
		updateNatsuki('1','o')
		cw('n',"...Eh?")
	elseif cl == 688 then
		updateNatsuki('4','x')
		cw('n',"N-No! Gross!")
	elseif cl == 689 then
		updateNatsuki('4','w')
		cw('n',"It's not like I care!")
	elseif cl == 690 then
		cw('n',"It's just that one of us in this club has to make sure you're not slacking off.")
	elseif cl == 691 then
		cw('mc',"Really?")
	elseif cl == 692 then
		cw('mc',"Well, what if you ended up just scaring me away?")
	elseif cl == 693 then
		updateNatsuki('1','t')
		cw('n',"That's--um...")
	elseif cl == 694 then
		cw('n',"...It's not like you would actually do that.")
	elseif cl == 695 then
		cw('mc',"Yeah, you're right.")
	elseif cl == 696 then
		cw('mc',"It's kind of fun to hang out here, even if I have to put up with you.")
	elseif cl == 697 then
		updateNatsuki('1','x')
		cw('mc',"Guh--!!")
	elseif cl == 698 then
		cw('bl',"Natsuki's elbow connects with my stomach.")
	elseif cl == 699 then
		updateNatsuki('2','y')
		cw('n',"Oh?")
	elseif cl == 700 then
		cw('n',"Maybe I won't mind scaring you away after all.")
	elseif cl == 701 then
		cw('mc',"I was......just joking....")
	elseif cl == 702 then
		updateNatsuki('4','z')
		cw('n',"Oh, I know!")
	elseif cl == 703 then
		cw('n',"Don't worry, I was too.")
	elseif cl == 704 then
		cw('n',"Ahahaha!")
	elseif cl == 705 then
		updateNatsuki('4','j')
		cw('mc',"...")
	elseif cl == 706 then
		cw('bl',"How the hell do you call that a joke?")
	elseif cl == 707 then
		cw('bl',"That seriously hurt.")
	elseif cl == 708 then
		cw('bl',"Well, maybe it was funny to her...")
	elseif cl == 709 then
		cw('bl',"...I guess that's kind of the point.")
	elseif cl == 710 then
		cw('bl',"I should really just watch my mouth around Natsuki.")
	elseif cl == 711 then
		updateNatsuki('2','c')
		cw('n',"Anyway...")
	elseif cl == 712 then
		cw('bl',"Natsuki holds her poem out to me like nothing even happened.")
	elseif cl >= 713 then
		ch3_n_end()
	end
end

function ch3_n_med()
    if n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
        ch3_n_bad12_shared()
    elseif n_poemappeal[2] ~= 0 then
		if cl == 670 then
			cw('n',"...")
		elseif cl == 671 then
			updateNatsuki('2','k')
			cw('n',"...This one's alright.")
		elseif cl == 672 then
			cw('mc',"Alright?")
		elseif cl == 673 then
			cw('n',"Well, yeah.")
		elseif cl == 674 then
			cw('n',"It doesn't blow me away.")
		elseif cl == 675 then
			cw('n',"But there's nothing I really hate about it.")
		elseif cl == 676 then
			cw('n',"It's just not really my style. I mean, that's fine.")
		elseif cl >= 677 then
			ch2_n_med_shared()
		end
    else
		if cl == 670 then
			cw('n',"...")
		elseif cl == 671 then
			updateNatsuki('2','k')
			cw('n',"...This one's alright.")
		elseif cl == 672 then
			cw('mc',"Alright?")
		elseif cl == 673 then
			cw('n',"Well, yeah.")
		elseif cl == 674 then
			cw('n',"About as good as yesterday's, anyway.")
		elseif cl == 675 then
			cw('n',"I see what you're going for, but it's just not really my style.")
		elseif cl == 676 then
			updateNatsuki('2','a')
			cw('n',"I mean, that's fine.")
		elseif cl == 677 then
			cw('n',"I'm mostly just glad that you're trying a little bit.")
		elseif cl == 678 then
			cw('mc',"Well, of course I'm at least trying.")
		elseif cl >= 679 then
			ch3_n_shared()
		end
	end
end

function ch3_n_good()
    if n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
        ch3_n_bad12_shared()
    elseif n_poemappeal[1] > 0 and n_poemappeal[2] > 0 then
		if cl == 670 then
			updateNatsuki('1','l')
			cw('n',"Let's see, let's see!")
		elseif cl == 671 then
			cw('mc',"You're certainly enthusiastic today.")
		elseif cl == 672 then
			updateNatsuki('2','j')
			cw('n',"Of course.")
		elseif cl == 673 then
			cw('n',"You know I like your writing.")
		elseif cl == 674 then
			cw('mc',"I'm just surprised.")
		elseif cl == 675 then
			cw('mc',"It seemed like you had a lot of trouble admitting that before.")
		elseif cl == 676 then
			updateNatsuki('5','w')
			cw('n',"Well... Well, of course!")
		elseif cl == 677 then
			updateNatsuki('5','q')
			cw('n',"I just had to put you in your place a little bit!")
		elseif cl == 678 then
			cw('n',"It's not like...")
		elseif cl == 679 then
			cw('n',"I mean, it's not like I was shy or anything stupid like that.")
		elseif cl == 680 then
			updateNatsuki('5','t')
			cw('n',"Or jealous!")
		elseif cl == 681 then
			cw('n',"I really wasn't jealous.")
		elseif cl == 682 then
			cw('n',"Just because you happen to be a good writer?")
		elseif cl == 683 then
			updateNatsuki('4','y')
			cw('n',"That's such a dumb thing to get jealous about.")
		elseif cl == 684 then
			cw('n',"Ahaha!")
		elseif cl == 685 then
			cw('mc',"Natsuki...")
		elseif cl == 686 then
			updateNatsuki('1','h')
			cw('n',"What??")
		elseif cl == 687 then
			cw('mc',"You're not very confident about your writing, are you?")
		elseif cl == 688 then
			updateNatsuki('1','n')
			cw('n',"...Eh?")
		elseif cl == 689 then
			cw('n',"W-What are you talking about?")
		elseif cl == 690 then
			updateNatsuki('1','u')
			cw('n',"My writing is obviously the best...")
		elseif cl == 691 then
			cw('n',"...Right?")
		elseif cl == 692 then
			cw('mc',"...")
		elseif cl == 693 then
			cw('bl',"It took me a while to figure out, but I think I finally did.")
		elseif cl == 694 then
			cw('bl',"Maybe Natsuki acts so arrogant because she's trying to make up for her own insecurities.")
		elseif cl == 695 then
			cw('bl',"If she acts like she's the best, then other people might think that way, too.")
		elseif cl == 696 then
			updateNatsuki('1','m')
			cw('n',"Right...?")
		elseif cl == 697 then
			cw('n',player.."...")
		elseif cl == 698 then
			cw('n',"Please just tell me you like my poems.")
		elseif cl == 699 then
			updateNatsuki('1','u')
			cw('n',"I don't care if you hate them.")
		elseif cl == 700 then
			cw('n',"Just please tell me I'm the best.")
		elseif cl == 701 then
			cw('n',"I just...")
		elseif cl == 702 then
			updateNatsuki('1','q')
			cw('n',"I just really need to hear that from someone.")
		elseif cl == 703 then
			cw('n',"I know I sound stupid.")
		elseif cl == 704 then
			cw('n',"But there's a reason I never shared my poems before this.")
		elseif cl == 705 then
			cw('mc',"Natsuki...")
		elseif cl == 706 then
			cw('n',"Because...")
		elseif cl == 707 then
			updateNatsuki('1','2c')
			cw('n',"Because nobody ever takes me seriously!")
		elseif cl == 708 then
			cw('n',"What's the point in sharing my poems if people just laugh and say \"That's so cute, just like you, Natsuki!\"")
		elseif cl == 709 then
			cw('n',"Sometimes I don't want to be cute!")
		elseif cl == 710 then
			updateNatsuki('1','2d')
			cw('n',"But nobody understands that!")
		elseif cl == 711 then
			cw('n',"I try really hard when I write.")
		elseif cl == 712 then
			updateNatsuki('1','2e')
			cw('n',"The style doesn't matter.")
		elseif cl == 713 then
			cw('n',"The emotions are there.")
		elseif cl == 714 then
			updateNatsuki('1','n')
			cw('n',"Why can't anyone see that...?")
		elseif cl == 715 then
			updateNatsuki('1','u')
			cw('n',"I just want...")
		elseif cl == 716 then
			cw('bl',"Natsuki trails off.")
		elseif cl == 717 then
			cw('bl',"Maybe it's because her lip started to quiver.")
		elseif cl == 718 then
			cw('bl',"I look down.")
		elseif cl == 719 then
			cw('bl',"Her fists are clenched really tightly.")
		elseif cl == 720 then
			cw('mc',"Hey, Natsuki.")
		elseif cl == 721 then
			cw('mc',"If you're not careful, you'll rip your own poem.")
		elseif cl == 722 then
			cw('bl',"I gently grab the poem with my own hand until she relaxes her grip on it.")
		elseif cl == 723 then
			cw('bl',"I place it flat on the desk and smooth out the wrinkles that she put into it.")
		elseif cl == 724 then
			updateNatsuki('1','h')
			cw('n',"D-Don't read it!")
		elseif cl == 725 then
			cw('bl',"Before I can pick it back up, Natsuki snatches the poem up from the desk.")
		elseif cl == 726 then
			updateNatsuki('5','q')
			cw('n',"It's not any good.")
		elseif cl == 727 then
			cw('n',"And I know you hate my poems.")
		elseif cl == 728 then
			cw('n',"So you don't have to read this one, okay?")
		elseif cl == 729 then
			cw('mc',"But I want to read it.")
		elseif cl == 730 then
			cw('n',"W-Why?")
		elseif cl == 731 then
			cw('mc',"Because.")
		elseif cl == 732 then
			cw('mc',"I like your poems.")
		elseif cl == 733 then
			cw('mc',"I really do.")
		elseif cl == 734 then
			updateNatsuki('5','h')
			cw('mc',"Why would I judge you for your style?")
		elseif cl == 735 then
			cw('mc',"It's not like my own style is anything crazy.")
		elseif cl == 736 then
			cw('mc',"I mean, it's true that the first time I read one of your poems, I didn't look much into it.")
		elseif cl == 737 then
			cw('mc',"But I know you better now.")
		elseif cl == 738 then
			cw('mc',"And it's wrong for Yuri to think your style is more amateur than hers.")
		elseif cl == 739 then
			cw('mc',"And Sayori... She always means well...")
		elseif cl == 740 then
			cw('mc',"But sometimes she's so focused on simple happiness that she doesn't understand what people really want.")
		elseif cl == 741 then
			cw('mc',"Yeah... I guess I never really thought about how hard it is for you.")
		elseif cl == 742 then
			cw('mc',"And I'm sorry if I was part of that problem.")
		elseif cl == 743 then
			cw('mc',"I understand now.")
		elseif cl == 744 then
			cw('mc',"You're not just cute, you're a lot more than that.")
		elseif cl == 745 then
			updateNatsuki('1','2d')
			cw('mc',"Ah-- Natsuki, you're doing it again--")
		elseif cl == 746 then
			cw('bl',"Once again, Natsuki clutches her poem a little too hard.")
		elseif cl == 747 then
			cw('bl',"She looks down, hiding her eyes from me.")
		elseif cl == 748 then
			cw('bl',"I never realized how difficult this was for her.")
		elseif cl == 749 then
			cw('bl',"But finally, she forces herself to extend her arms and set her poem on the table.")
		elseif cl == 750 then
			updateNatsuki('1','2e')
			cw('n',"You can...read it.")
		elseif cl == 751 then
			cw('n',"Just turn that way.")
		elseif cl == 752 then
			cw('n',"I don't want you to...look at my face right now.")
		elseif cl == 753 then
			cw('mc',"Okay, I will.")
		elseif cl >= 754 then
			ch3_n_end()
		end
    elseif n_poemappeal[1] > 0 or n_poemappeal[2] > 0 then
        ch2_n_good_sharedwithch3()
    else
		if cl == 670 then
			cw('n',"...")
		elseif cl == 671 then
			updateNatsuki('2','k')
			cw('n',"...Finally!")
		elseif cl == 672 then
			cw('mc',"Eh?")
		elseif cl == 673 then
			updateNatsuki('2','l')
			cw('n',"This one. It's good!")
		elseif cl == 674 then
			cw('n',"I was wondering how long it would take you.")
		elseif cl == 675 then
			cw('mc',"All right!")
		elseif cl == 676 then
			updateNatsuki('4','y')
			cw('n',"Yeah, seriously.")
		elseif cl == 677 then
			cw('n',"Don't listen to what anyone else says.")
		elseif cl == 678 then
			cw('n',"Especially Yuri.")
		elseif cl == 679 then
			updateNatsuki('4','a')
			cw('n', "Just keep writing poems like this. That's all you need!")
		elseif cl == 680 then
			cw('mc',"Er...")
		elseif cl == 681 then
			cw('mc',"Are you sure that's not just what you want?")
		elseif cl == 682 then
			updateNatsuki('2','h')
			cw('n',"Excuse me?")
		elseif cl == 683 then
			cw('n', "You're talking to a pro, you know.")
		elseif cl == 684 then
			cw('n',"Don't you think you should trust my opinion the most?")
		elseif cl == 685 then
			cw('mc',"I guess that depends.")
		elseif cl == 686 then
			cw('mc',"Aren't you biased towards poems that are more simple and cute?")
		elseif cl == 687 then
			updateNatsuki('2','w')
			cw('n',"Biased?")
		elseif cl == 688 then
			cw('n',"Of course not.")
		elseif cl == 689 then
			updateNatsuki('4','y')
			cw('n',"My opinion just happens to be the best.")
		elseif cl == 690 then
			cw('mc', "...")
		elseif cl == 691 then
			cw('bl', "There's one thing I still can't tell.")
		elseif cl == 692 then
			cw('bl',"Is Natsuki actually self-aware of her spoiled behavior?")
		elseif cl == 693 then
			cw('bl',"At this rate, I don't know if I'll ever figure it out.")
		elseif cl == 694 then
			cw('mc',"...Fair enough.")
		elseif cl == 695 then
			cw('mc',"I'm glad that you like my poem, after all.")
		elseif cl == 696 then
			updateNatsuki('4','z')
			cw('n', "Ahaha!")
		elseif cl == 697 then
			updateNatsuki('4','j')
			cw('n',"I knew you'd finally understand.")
		elseif cl == 698 then
			cw('n',"Just keep showing me your poems and you'll be a pro before you know it.")
		elseif cl == 699 then
			cw('n',"Anyway, here's the one I wrote.")
		elseif cl >= 700 then
			ch3_n_end()
        end
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
	if cl < 700 and cl ~= 666 then
		scriptJump(700)
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
		poem('poem_s1')
	elseif cl == 725 then
		scriptJump(726)
	elseif cl == 726 then
		poem_disable()
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
			scriptJump(687)
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
	if cl < 713 and cl ~= 666 then
		scriptJump(714)
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
	if cl < 754 and cl ~= 666 then
		scriptJump(754)
	elseif cl == 754 then
		poem('poem_s2')
	elseif cl == 755 then
		scriptJump(758)
	elseif cl == 758 then
		poem_disable()
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
		scriptJump(705)
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
		elseif cl == 719 then
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

function ch3_s_bad()
    local currentname = "Yuri"
    if n_poemappeal[3] > y_poemappeal[3] then
        currentname = "Natsuki"
	end
	if cl == 670 then
		cw('s',"...")
	elseif cl == 671 then
		updateSayori('1','k')
		cw('s',"...Hm.")
	elseif cl == 672 then
		cw('s',"It's nice, I guess~")
	elseif cl == 673 then
		cw('mc',"Come on, I can already tell you don't like it.")
	elseif cl == 674 then
		updateSayori('1','d')
		cw('s',"Well...")
	elseif cl == 675 then
		cw('s',"You don't need to worry about what I think.")
	elseif cl == 676 then
		updateSayori('2','y')
		cw('s',"After all, you wrote this for someone else, didn't you?")
	elseif cl == 677 then
		cw('s',"Probably "..currentname.."...")
	elseif cl == 678 then
		cw('mc',"Eh??")
	elseif cl == 679 then
		cw('mc',"I didn't write this for anyone specifically!")
	elseif cl == 680 then
		cw('s',"Maybe...")
	elseif cl == 681 then
		updateSayori('1','d')
		cw('s',"That's not really what I meant, though.")
	elseif cl == 682 then
		cw('s',"But it's okay.")
	elseif cl == 683 then
		cw('s',"You're making new friends, just like I was hoping.")
	elseif cl == 684 then
		updateSayori('1','q')
		cw('s',"That makes me...really happy.")
	elseif cl == 685 then
		cw('s', "And you're happy too, right?")
	elseif cl == 686 then
		updateSayori('1','a')
		cw('s',"In this club?")
	elseif cl == 687 then
		cw('mc',"Well...")
	elseif cl == 688 then
		cw('mc',"Of course I am.")
	elseif cl == 689 then
		updateSayori('4','q')
		cw('s',"Good~")
	elseif cl == 690 then
		cw('s',"That's all that matters to me.")
	elseif cl == 691 then
		updateSayori('1','d')
		cw('s',"Thank you, "..player..".")
	elseif cl == 692 then
		cw('mc',"Sayori...")
	elseif cl == 693 then
		cw('mc',"Is there something wrong?")
	elseif cl == 694 then
		updateSayori('1','b')
		cw('s',"Huh?")
	elseif cl == 695 then
		updateSayori('1','k')
		cw('s',"No, nothing.")
	elseif cl == 696 then
		cw('s',"I'm just a little tired today.")
	elseif cl == 697 then
		updateSayori('1','l')
		cw('s',"Ehehe.")
	elseif cl == 698 then
		cw('mc',"Alright...")
	elseif cl == 699 then
		cw('mc',"Just tell me if you need anything.")
	elseif cl == 700 then
		updateSayori('1','a')
		cw('s',"I will.")
	elseif cl == 701 then
		cw('s',"Don't worry about me, okay?")
	elseif cl == 702 then
		cw('s',"You can go play with everyone else now.")
	elseif cl == 703 then
		cw('mc',"If you insist...")
	elseif cl == 704 then
		updateSayori('4','q')
		cw('s',"Yaay~")
	elseif cl == 705 then
		updateSayori('4','a')
		cw('s',"I'm gonna go home a little bit early today.")
	elseif cl == 706 then
		cw('mc',"Sayori...?")
	elseif cl == 707 then
		updateSayori('1','q')
		cw('s',"Tell Monika I wasn't feeling well, okay?")
	elseif cl == 708 then
		cw('s',"I'll see you tomorrow~")
	elseif cl == 709 then
		cw('bl',"Before I can say anything else, Sayori cheerfully walks out of the classroom, humming to herself.")
	elseif cl == 710 then
		poemfinish('s')
	end
end

function ch3_s_med()
	ch3_s_bad()
end

function ch3_s_good()
	if poemwinner[1] ~= "Sayori" and poemwinner[2] ~= "Sayori" then
        ch3_s_bad()
	else
		if cl == 670 then
			updateSayori('1','d')
			cw('s',"...")
		elseif cl == 671 then
			cw('s',"This is your best one so far.")
		elseif cl == 672 then
			cw('s',"It's really really nice, "..player.."~")
		elseif cl == 673 then
			cw('mc',"Er-- Thanks.")
		elseif cl == 674 then
			updateSayori('1','q')
			cw('s',"Mhm~")
		elseif cl == 675 then
			cw('mc',"...")
		elseif cl == 676 then
			cw('mc',"Sayori, you've been a little quiet today.")
		elseif cl == 677 then
			cw('mc',"Is everything alright?")
		elseif cl == 678 then
			updateSayori('4','m')
			cw('s',"E-Eh??")
		elseif cl == 679 then
			cw('s',"Of course!")
		elseif cl == 680 then
			updateSayori('4','l')
			cw('s',"Everything is fine~")
		elseif cl == 681 then
			cw('s',"Maybe I'm just a little tired today.")
		elseif cl == 682 then
			updateSayori('1','l')
			cw('s',"Ehehe.")
		elseif cl == 683 then
			cw('mc',"Do you want to nap or something?")
		elseif cl == 684 then
			updateSayori('1','h')
			cw('s',"No, that's silly!")
		elseif cl == 685 then
			cw('s',"Don't worry about me, okay?")
		elseif cl == 686 then
			updateSayori('1','q')
			cw('s',"I only want to see smiles on your face~")
		elseif cl == 687 then
			cw('mc',"Well, alright...")
		elseif cl == 688 then
			updateSayori('1','b')
			cw('s',"Hey, "..player.."...")
		elseif cl == 689 then
			cw('s',"I'm still a little surprised.")
		elseif cl == 690 then
			cw('s',"I really thought that you would try writing your poems like the way Yuri does...")
		elseif cl == 691 then
			updateSayori('1','y')
			cw('s',"Or even Natsuki...")
		elseif cl == 692 then
			cw('s',"But in the end...")
		elseif cl == 693 then
			cw('mc',"...Yeah.")
		elseif cl == 694 then
			cw('mc',"I guess you're the one who likes this one the most.")
		elseif cl == 695 then
			audioUpdate('0')
			updateSayori('1','k')
			cw('s',"...Why?")
		elseif cl == 696 then
			cw('s',"You don't want to get closer with everyone else?")
		elseif cl == 697 then
			audioUpdate('9')
			cw('mc',"Wait!")
		elseif cl == 698 then
			cw('mc',"Of course I do!")
		elseif cl == 699 then
			cw('mc',"But that doesn't mean I need to try so hard to impress them.")
		elseif cl == 700 then
			cw('mc',"I still understand you the most, Sayori.")
		elseif cl == 701 then
			cw('mc',"I know you have to sometimes put up with me.")
		elseif cl == 702 then
			cw('mc',"And I have to sometimes put up with you.")
		elseif cl == 703 then
			cw('mc',"But we have...a wavelength or something.")
		elseif cl == 704 then
			cw('mc',"And this is how the poem came out.")
		elseif cl == 705 then
			cw('mc',"Sometimes it feels like you're the only exciting thing in my life.")
		elseif cl == 706 then
			cw('mc',"So sometimes it's just easier to write when thinking about you.")
		elseif cl == 707 then
			cw('mc',"...Sayori?")
		elseif cl == 708 then
			updateSayori('4','v')
			cw('s',"N-No...")
		elseif cl == 709 then
			cw('s',player.."...")
		elseif cl == 710 then
			cw('s',"I don't...deserve this...")
		elseif cl == 711 then
			cw('s',"You're too nice to me...")
		elseif cl == 712 then
			cw('s',"Why are you doing this...?")
		elseif cl == 713 then
			cw('bl',"Sayori has trouble keeping her voice steady, all of a sudden.")
		elseif cl == 714 then
			cw('s',"If you had fun with everyone else instead...")
		elseif cl == 715 then
			cw('s',"This would be...so much easier!")
		elseif cl == 716 then
			cw('mc',"Sayori...!")
		elseif cl == 717 then
			cw('bl',"I glance around the room to make sure nobody has noticed this.")
		elseif cl == 718 then
			cw('mc',"Sayori.")
		elseif cl == 719 then
			cw('mc',"I've probably never said this before, but I don't understand what you're feeling right now.")
		elseif cl == 720 then
			cw('mc',"Tell me what will cheer you up.")
		elseif cl == 721 then
			cw('bl',"Sayori shakes her head.")
		elseif cl == 722 then
			cw('bl',"She sniffles and keeps shaking her head.")
		elseif cl == 723 then
			cw('bl',"Finally, she gathers herself and puts on a smile.")
		elseif cl == 724 then
			updateSayori('1','y')
			cw('s',"It's nothing, "..player..".")
		elseif cl == 725 then
			cw('s',"It's just a little raincloud.")
		elseif cl == 726 then
			updateSayori('4','r')
			cw('s',"I'm sorry you had to see that. Ahahaha!")
		elseif cl == 727 then
			cw('s',"I promise it won't happen again.")
		elseif cl == 728 then
			updateSayori('1','a')
			cw('s',"Just smiles from everyone, okay?")
		elseif cl == 729 then
			cw('s',"That's all that matters.")
		elseif cl == 730 then
			cw('s',"Go play with everyone else.")
		elseif cl == 731 then
			cw('s',"I'm gonna go home a little bit early today~")
		elseif cl == 732 then
			cw('mc',"Sayori--")
		elseif cl == 733 then
			updateSayori('2','q')
			cw('s',"Tell Monika I wasn't feeling well, okay?")
		elseif cl == 734 then
			cw('s',"I'll see you tomorrow~")
		elseif cl == 735 then
			cw('bl',"Before I can say anything else, Sayori cheerfully walks out of the classroom, humming to herself.")
		elseif cl == 736 then
			poemfinish('s')
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
		poem('poem_m1')
	elseif cl == 749 then
		scriptJump(750)
	elseif cl >= 750 then
		ch1_m_end2()
	end
end

function ch2_m_end()
	if cl == 730 then
		updateMonika('1','a')
		cw('m',"But anyway...")
	elseif cl == 731 then
		cw('m',"You want to read my poem now?")
	elseif cl == 732 then
		cw('m',"I like the way this one turned out, so I hope you do too~")
	elseif cl == 733 then
		cw('mc',"Alright, let's take a look.")
	elseif cl == 734 then
		poem('poem_m2')
	elseif cl == 735 then
		scriptJump(738)
	elseif cl == 738 then
		poem_disable()
		cw('mc',"Hm...")
	elseif cl == 739 then
		cw('mc',"It's even more abstract than your last one, huh?")
	elseif cl == 740 then
		updateMonika('5a')
		cw('m',"Ahaha...")
	elseif cl == 741 then
		cw('m',"I guess it's just the way I write...")
	elseif cl == 742 then
		cw('m',"I'm sorry if you don't like it.")
	elseif cl == 743 then
		cw('mc',"No, I never said that.")
	elseif cl == 744 then
		cw('mc',"It's just a kind of thing I've never really seen before, I guess.")
	elseif cl == 745 then
		updateMonika('2','a')
		cw('m',"I kind of like playing with my space on the paper...")
	elseif cl == 746 then
		cw('m',"Choosing where and how to space your words can totally change the mood of the poem.")
	elseif cl == 747 then
		updateMonika('2','b')
		cw('m',"It's almost like magic.")
	elseif cl == 748 then
		cw('m',"The way I wrote the lines really short makes it feel like they're trying to speak over the noise.")
	elseif cl == 749 then
		cw('mc',"I see...")
	elseif cl == 750 then
		cw('mc',"It's still hard for me to tell what it's about, though.")
	elseif cl == 751 then
		updateMonika('2','k')
		cw('m',"Ahaha.")
	elseif cl == 752 then
		updateMonika('4','a')
		cw('m',"Sometimes asking what a poem is about isn't the right question.")
	elseif cl == 753 then
		cw('m',"A poem can be as abstract as a physical expression of a feeling.")
	elseif cl == 754 then
		cw('m',"Or a conversation with the reader.")
	elseif cl == 755 then
		cw('m',"So putting it that way, not every poem is about something.")
	elseif cl == 756 then
		cw('m',"Anyway...")
	elseif cl == 757 then
		updateMonika('3','b')
		cw('m',"Here's Monika's Writing Tip of the Day!")
	elseif cl == 758 then
		cw('m',"Sometimes you'll find yourself facing a difficult decision...")
	elseif cl == 759 then
		cw('m',"When that happens, don't forget to save your game!")
	elseif cl == 760 then
		cw('m',"You never know when you might change your mind...")
	elseif cl == 761 then
		cw('m',"...or when something unexpected may happen!")
	elseif cl == 762 then
		updateMonika('3','d')
		cw('m',"Wait...is this tip even about writing?")
	elseif cl == 763 then
		updateMonika('3','k')
		cw('m',"What am I even talking about?")
	elseif cl == 764 then
		cw('m',"Ahaha!")
	elseif cl == 765 then
		updateMonika('3','b')
		cw('m',"...That's my advice for today!")
	elseif cl == 766 then
		cw('m',"Thanks for listening~")
	elseif cl == 767 then
		poemfinish('m')
	end
end

function ch3_m_end()
	if cl == 730 then
		updateMonika('1','a')
		cw('m',"Anyway...!")
	elseif cl == 731 then
		cw('m',"I'll share my poem with you now, alright?")
	elseif cl == 732 then
		cw('m',"Er...")
	elseif cl == 733 then
		cw('mc',"Alright...")
	elseif cl == 734 then
		poem('poem_m3')
	elseif cl == 735 then
		scriptJump(740)
	elseif cl == 740 then
		poem_disable()
		updateMonika('1','a')
		cw('m',"You know...")
	elseif cl == 741 then
		cw('m',"I feel like learning and looking for answers are the sorts of things that give life meaning.")
	elseif cl == 742 then
		updateMonika('1','e')
		cw('m',"Not to get too philosophical or anything...")
	elseif cl == 743 then
		updateMonika('1','a')
		cw('m',"But it was kind of on my mind, so that's what I wrote about.")
	elseif cl == 744 then
		cw('mc',"I see...")
	elseif cl == 745 then
		cw('mc',"I never really put much thought into it.")
	elseif cl == 746 then
		updateMonika('1','d')
		cw('m',"In a way, it's almost paradoxical.")
	elseif cl == 747 then
		cw('m',"Because if we had all the answers, wouldn't the world start to lose its meaning?")
	elseif cl == 748 then
		cw('mc',"You know, there's one thing I noticed...")
	elseif cl == 749 then
		cw('mc',"It seems like everyone in the club prefers writing about things that are more sad than happy.")
	elseif cl == 750 then
		updateMonika('1','k')
		cw('m',"Ahaha. Are you surprised?")
	elseif cl == 751 then
		updateMonika('1','a')
		cw('m',"I mean, if everything was okay...")
	elseif cl == 752 then
		cw('m',"We wouldn't really have anything to write about, would we?")
	elseif cl == 753 then
		cw('m',"Humans aren't two-dimensional creatures.")
	elseif cl == 754 then
		cw('m',"I think you'd know that better than anyone.")
	elseif cl == 755 then
		cw('mc',"You mean one-dimensional...?")
	elseif cl == 756 then
		updateMonika('1','l')
		cw('m',"Ah...yeah, that!")
	elseif cl == 757 then
		updateMonika('1','a')
		cw('m',"Anyway...")
	elseif cl == 758 then
		updateMonika('3','b')
		cw('m',"Here's Monika's Writing Tip of the Day!")
	elseif cl == 759 then
		cw('m',"Are you ever too shy to share your writing because you're afraid it's not that good?")
	elseif cl == 760 then
		cw('m',"It can be really disheartening to get a lukewarm response to something you put so much into.")
	elseif cl == 761 then
		cw('m',"But if you find other people who enjoy writing, then sharing becomes a lot easier!")
	elseif cl == 762 then
		cw('m',"Because instead of just telling you that your writing is good, or okay, or bad...")
	elseif cl == 763 then
		cw('m',"They'll want to focus more on everything that went into it, and the things you can work on.")
	elseif cl == 764 then
		cw('m',"It's much more encouraging that way, and it will make you want to continue improving.")
	elseif cl == 765 then
		cw('m',"It's almost like having your own little Literature Club, don't you think?")
	elseif cl == 766 then
		updateMonika('3','k')
		cw('m',"...That's my advice for today!")
	elseif cl == 767 then
		cw('m',"Thanks for listening~")
	elseif cl == 768 then
		poemfinish('m')
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
		updateMonika('1','j')
		cw('m',"It's pretty good~")
	elseif cl == 693 then
		updateMonika('1','a')
		cw('m',"You've been spending some time with Natsuki, haven't you?")
	elseif cl == 694 then
		cw('m',"You must like her writing style.")
	elseif cl == 695 then
		cw('mc',"Ah, yeah...")
	elseif cl == 696 then
		cw('mc',"I think it's a neat way to tell a story.")
	elseif cl == 697 then
		updateMonika('2','a')
		cw('m',"Mhm. I don't disagree.")
	elseif cl == 698 then
		cw('m',"Natsuki's poems may be cute, but they're also meaningful.")
	elseif cl == 699 then
		cw('m',"I can see why you'd be into the style.")
	elseif cl == 700 then
		cw('m',"I guess that means you're not as much a fan of Yuri's poems, then?")
	elseif cl == 701 then
		cw('mc',"Ah-- I wouldn't say that...")
	elseif cl == 702 then
		cw('mc',"I kind of like everyone's poems.")
	elseif cl == 703 then
		updateMonika('2','d')
		cw('m',"That's true, but I'm sure you like some more than others, right?")
	elseif cl == 704 then
		cw('m',"Like Yuri's use of complex words and symbolism...")
	elseif cl == 705 then
		cw('m',"Or Sayori's way of expressing happiness or sadness in a more direct way.")
	elseif cl == 706 then
		updateMonika('2','a')
		cw('m',"You must have some kind of preference, don't you?")
	elseif cl == 707 then
		updateMonika('4','l')
		cw('m',"Ah, not that it's a contest or anything!")
	elseif cl == 708 then
		updateMonika('4','a')
		cw('m',"I was just curious, that's all.")
	elseif cl >= 709 then
		m_end()
	end
end

function m_sayori_2()
	if cl == 692 then
		updateMonika('1','j')
		cw('m',"It's pretty good~")
	elseif cl == 693 then
		updateMonika('1','a')
		cw('m',"It makes me think of Sayori, like the other one that you wrote.")
	elseif cl == 694 then
		updateMonika('4','b')
		cw('m',"You two are like the dynamic duo!")
	elseif cl == 695 then
		cw('mc',"Ahaha... That's kind of exaggerating it.")
	elseif cl == 696 then
		updateMonika('2','a')
		cw('m',"Yeah, probably.")
	elseif cl == 697 then
		cw('m',"But you do spend a lot of time with her even in this club, don't you?")
	elseif cl == 698 then
		updateMonika('2','j')
		cw('m',"Then again, I don't blame you for being a little shy~")
	elseif cl == 699 then
		cw('mc',"I-I'm not shy, it's just...")
	elseif cl == 700 then
		updateMonika('5a')
		cw('m',"Ahaha! I'm just teasing.")
	elseif cl == 701 then
		cw('m',"I know it takes a bit of time to make friends with everyone.")
	elseif cl == 702 then
		updateMonika('2','d')
		cw('m',"But Yuri and Natsuki are super interesting people, so don't be afraid to give them their share of time!")
	elseif cl == 703 then
		cw('m',"And you can talk to me every now and then too...")
	elseif cl == 704 then
		updateMonika('1','e')
		cw('m',"I'm not, like, unapproachable or anything, am I?")
	elseif cl == 705 then
		cw('mc',"Ah, no, it's nothing like that...")
	elseif cl == 706 then
		cw('mc',"I'm just still getting used to being here, that's all.")
	elseif cl == 707 then
		updateMonika('1','a')
		cw('m',"Yeah...")
	elseif cl == 708 then
		updateMonika('1','l')
		cw('m',"I'm sorry if I was putting pressure on you or something!")
	elseif cl == 709 then
		cw('m',"I really didn't mean it like that.")
	elseif cl == 710 then
		cw('mc',"No, don't worry.")
	elseif cl == 711 then
		cw('mc',"I get what you're saying.")
	elseif cl == 712 then
		updateMonika('1','a')
		cw('m',"Well, alright~")
	elseif cl >= 713 then
		m_end()
	end
end

function m_yuri_2()
	if cl == 692 then
		updateMonika('2','b')
		cw('m',"This one's good!")
	elseif cl == 693 then
		cw('m',"It feels like you're not only getting more comfortable with your style...")
	elseif cl == 694 then
		cw('m',"But the imagery is better than the last one I read!")
	elseif cl == 695 then
		updateMonika('2','a')
		cw('m',"Just wondering, but have you been finding inspiration in Yuri's writing style?")
	elseif cl == 696 then
		cw('mc',"Hmm...")
	elseif cl == 697 then
		cw('mc',"I guess so.")
	elseif cl == 698 then
		cw('mc',"You can't deny that she's talented.")
	elseif cl == 699 then
		updateMonika('4','k')
		cw('m',"Yeah, totally!")
	elseif cl == 700 then
		updateMonika('4','a')
		cw('m',"I think her poems are the most...")
	elseif cl == 701 then
		cw('m',"...Romantic.")
	elseif cl == 702 then
		updateMonika('1','a')
		cw('m',"That's the best way to describe it.")
	elseif cl == 703 then
		updateMonika('1','d')
		cw('m',"She's like a totally different person when she picks up a pen...")
	elseif cl == 704 then
		cw('mc',"I noticed that, too.")
	elseif cl == 705 then
		cw('mc',"Or when she's talking about literature, it's like a light turns on inside her.")
	elseif cl == 706 then
		updateMonika('2','a')
		cw('m',"Mhm!")
	elseif cl == 707 then
		cw('m',"Sadly, it's hard to get much personal conversation out of her...")
	elseif cl == 708 then
		updateMonika('2','m')
		cw('m',"Trust me, I've tried...")
	elseif cl == 709 then
		cw('m',"Who knows what goes on in that head of hers?")
	elseif cl == 710 then
		cw('mc',"I hope you don't mean that in a bad way.")
	elseif cl == 711 then
		updateMonika('1','g')
		cw('m',"No, of course not!")
	elseif cl == 712 then
		cw('m',"I just meant that I wish she didn't keep so much to herself...")
	elseif cl == 713 then
		updateMonika('1','e')
		cw('m',"But still, defending her like that...")
	elseif cl == 714 then
		updateMonika('5a')
		cw('m',"You must be pretty into her...")
	elseif cl == 715 then
		cw('mc',"Eh?!")
	elseif cl == 716 then
		cw('mc',"You...completely misunderstood!")
    elseif cl == 717 then
		cw('m',"Ahaha! Calm down, I'm kidding!")
	elseif cl == 718 then
		updateMonika('2','a')
		cw('m',"Besides, I'm pretty sure she's already got a boyfriend...")
	elseif cl == 719 then
		cw('mc',"Wait, really?")
	elseif cl == 720 then
		updateMonika('2','k')
		cw('m',"Yeah. A fictional one, anyway.")
	elseif cl == 721 then
		cw('bl',"Monika kind of whispers that last part to me.")
	elseif cl == 722 then
		updateMonika('5a')
		cw('m',"It's just a hunch, but...")
	elseif cl == 723 then
		cw('mc',"...Well, there's not really anything wrong with that!")
	elseif cl == 724 then
		updateMonika('1','n')
		cw('m',"Oh, well I know...!")
	elseif cl == 725 then
		cw('m',"I was just saying~")
	elseif cl >= 726 then
		m_end()
	end
end

function m_natsuki_3()
	if cl == 692 then
		updateMonika('2','j')
		cw('m',"Sticking with the Natsuki style once more, I see~")
	elseif cl == 693 then
		updateMonika('2','d')
		cw('m',"Hmm...")
	elseif cl == 694 then
		cw('m',"You really like Natsuki, don't you?")
	elseif cl == 695 then
		cw('mc',"Eh? That's--")
	elseif cl == 696 then
		updateMonika('5a')
		cw('m',"Oh, come on, "..player..".")
	elseif cl == 697 then
		cw('m',"It's awfully suspicious, you know?")
	elseif cl == 698 then
		cw('m',"Spending time with her in the clubroom every day...")
	elseif cl == 699 then
		cw('m',"Pretending to like the manga that she's into...")
	elseif cl == 700 then
		cw('mc',"Y-You know how Natsuki is...!")
	elseif cl == 701 then
		cw('mc',"If I don't indulge her, she'll end up hating me.")
	elseif cl == 702 then
		updateMonika('2','e')
		cw('m',"Eh?")
	elseif cl == 703 then
		updateMonika('2','a')
		cw('m',"No, I think you're misunderstanding, "..player..".")
	elseif cl == 704 then
		cw('m',"It's not like Natsuki just hates anyone who doesn't give her what she wants.")
	elseif cl == 705 then
		updateMonika('2','d')
		cw('m',"Yeah, she's assertive, but she's not that selfish...")
	elseif cl == 706 then
		cw('m',"In fact, I think you're the only one who's indulged her as much as you have.")
	elseif cl == 707 then
		cw('mc',"Is that so...")
	elseif cl == 708 then
		cw('bl',"I kind of knew that, but I just didn't want to admit it.")
	elseif cl == 709 then
		cw('m',"So, I just need to ask one thing of you...")
	elseif cl == 710 then
		updateMonika('1','e')
		cw('m',"...Be careful. Please?")
	elseif cl == 711 then
		cw('m',"Natsuki is kind of unpredictable.")
	elseif cl == 712 then
		cw('m',"A lot of times, she doesn't even know what she wants.")
	elseif cl == 713 then
		updateMonika('1','i')
		cw('m',"After all, she's the youngest one here.")
	elseif cl == 714 then
		cw('m',"She might not know how to handle her own feelings properly.")
	elseif cl == 715 then
		cw('m',"What I'm saying is...")
	elseif cl == 716 then
		updateMonika('1','m')
		cw('m',"If something bad happens, then it could end up damaging the club, too...")
	elseif cl == 717 then
		updateMonika('5a')
		cw('m',"And you wouldn't do that to me...right?")
	elseif cl == 718 then
		cw('mc',"That's--")
	elseif cl == 719 then
		cw('bl',"I'm not sure how to respond to Monika.")
	elseif cl == 720 then
		cw('bl',"While I care about her and the club, it's also kind of unfair to bring that up.")
	elseif cl == 721 then
		cw('m',"Well...you're smart.")
	elseif cl == 722 then
		cw('m',"I'm sure you'll do the right thing.")
	elseif cl == 723 then
		cw('bl',"Monika smiles sweetly.")
	elseif cl >= 724 then
		m_end()
	end
end

function m_sayori_3()
	if cl == 692 then
		updateMonika('1','k')
		cw('m',"Ahaha.")
	elseif cl == 693 then
		cw('m',"It's kind of funny...")
	elseif cl == 694 then
		cw('mc',"How so?")
	elseif cl == 695 then
		updateMonika('1','a')
		cw('m',"No, not the poem...")
	elseif cl == 696 then
		updateMonika('2','a')
		cw('m',"I mean, it's funny how your poems and Sayori's poems have been getting more and more similar to each other every day.")
	elseif cl == 697 then
		cw('m',"I'm surprised you're so in sync with her.")
	elseif cl == 698 then
		updateMonika('2','d')
		cw('m', "Then again, you've been spending a lot of time together lately, haven't you?")
	elseif cl == 699 then
		cw('mc',"Ah, I guess you could say that...")
	elseif cl == 700 then
		cw('mc',"Although we kind of grew up as best friends, I haven't been seeing as much of her this past year...")
	elseif cl == 701 then
		cw('mc',"But since I joined the club, we've been spending a lot of time together again.")
	elseif cl == 702 then
		updateMonika('1','a')
		cw('m',"I see, I see~")
	elseif cl == 703 then
		cw('m',"That reminds me...")
	elseif cl == 704 then
		cw('m',"About how Sayori's been a little bit off today...")
	elseif cl == 705 then
		cw('mc',"Yeah? Did she tell you something?")
	elseif cl == 706 then
		updateMonika('1','n')
		cw('m',"Ah...")
	elseif cl == 707 then
		cw('m',"Well...")
	elseif cl == 708 then
		updateMonika('2','l')
		cw('m',player..", you haven't been flirting with her, have you?")
	elseif cl == 709 then
		cw('mc',"O-Of course not!")
	elseif cl == 710 then
		cw('mc',"I've been treating her like I always do.")
	elseif cl == 711 then
		updateMonika('2','a')
		cw('m',"Alright.")
	elseif cl == 712 then
		updateMonika('5a')
		cw('m',"Just making sure~")
	elseif cl == 713 then
		cw('m',"I know how much you care about her...")
	elseif cl == 714 then
		cw('m',"It would be terrible if something bad happened to her, so keep an eye on her.")
	elseif cl == 715 then
		updateMonika('2','d')
		cw('m',"Sayori's been acting so much happier ever since you joined the club.")
	elseif cl == 716 then
		cw('m',"What could have happened all of a sudden...?")
	elseif cl == 717 then
		cw('mc',"...")
	elseif cl == 718 then
		updateMonika('1','l')
		cw('m',"...Well, never mind.")
	elseif cl == 719 then
		cw('m',"This really isn't the time to be talking about this...")
	elseif cl >= 720 then
		m_end()
	end
end

function m_yuri_3()
	if cl == 692 then
		updateMonika('2','e')
		cw('m',"Your style's gotten so refined, "..player..".")
	elseif cl == 693 then
		cw('m',"Yuri's been teaching you a lot of things, hasn't she?")
	elseif cl == 694 then
		cw('mc',"Well--")
	elseif cl == 695 then
		cw('mc',"I guess so.")
	elseif cl == 696 then
		updateMonika('2','a')
		cw('m',"Yeah... I've been noticing how much time you spend with her.")
	elseif cl == 697 then
		updateMonika('2','d')
		cw('m',"I think I've heard her say more words these past couple days than she's talked in the whole year.")
	elseif cl == 698 then
		cw('m',"Not sure how you did it, but that's pretty impressive...")
	elseif cl == 699 then
		cw('mc',"Well, she just needs some patience and a way to talk about all the things in her head, I guess...")
	elseif cl == 700 then
		cw('mc',"I'm still getting the hang of it, myself.")
	elseif cl == 701 then
		updateMonika('2','a')
		cw('m',"Hm...")
	elseif cl == 702 then
		cw('m',"You're certainly putting in a lot of effort.")
	elseif cl == 703 then
		updateMonika('2','e')
		cw('m',"You must really like her.")
	elseif cl == 704 then
		cw('mc',"Eh? That's--")
	elseif cl == 705 then
		updateMonika('5a')
		cw('m',"Ahaha!")
	elseif cl == 706 then
		cw('m',"It's awfully suspicious, you know?")
	elseif cl == 707 then
		cw('m',"Spending time with her in the clubroom every day...")
	elseif cl == 708 then
		cw('m',"Reading that edgy novel with her...")
	elseif cl == 709 then
		cw('mc',"Well--!")
	elseif cl == 710 then
		cw('mc',"I just...feel bad that she has a hard time socializing.")
	elseif cl == 711 then
		cw('mc',"It makes me want to make sure she doesn't spend all her time alone.")
    elseif cl == 712 then
		cw('mc',"Besides, the novel isn't too bad either, you know...")
	elseif cl == 713 then
		updateMonika('1','k')
		cw('m',"Alright, alright~")
	elseif cl == 714 then
		cw('m',"I get you.")
	elseif cl == 715 then
		updateMonika('1','a')
		cw('m',"Just...be careful, alright?")
	elseif cl == 716 then
		cw('m',"I know that Yuri isn't used to opening herself up...")
	elseif cl == 717 then
		updateMonika('2','d')
		cw('m',"So if something bad happens while she's vulnerable...")
	elseif cl == 718 then
		cw('m',"Then it could be really hard for her.")
	elseif cl == 719 then
		updateMonika('2','i')
		cw('m',"Her books aren't a total escape from reality.")
	elseif cl == 720 then
		cw('m',"They're just a bandage.")
	elseif cl == 721 then
		cw('mc',"You say that like I'm going to hurt her...")
	elseif cl == 722 then
		updateMonika('1','l')
		cw('m',"Sorry, I didn't really mean that~")
	elseif cl == 723 then
		cw('m',"If anything, she might accidentally hurt herself.")
	elseif cl >= 724 then
		m_end()
	end
end