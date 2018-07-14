function ch21_m_start()
	if cl == 670 then
	updateMonika('1','b')
    cw('m',"Hi, "..player.."!")
	elseif cl == 671 then
    m "Having a good time so far?"
	elseif cl == 672 then
    mc "Ah...yeah."
	elseif cl == 673 then
	updateMonika('1','k')
    m "Good! Glad to hear it!"
	elseif cl == 674 then
	updateMonika('4','a')
    m "By the way, since you're new and everything..."
	elseif cl == 675 then
    m "If you ever have any suggestions for the club, like new activities, or things we can do better..."
	elseif cl == 676 then
	updateMonika('4','b')
    m "I'm always listening!"
	elseif cl == 677 then
    m "Don't be afraid to bring things up, okay?"
	updateMonika('4','a')
    mc "Alright...I'll keep that in mind."
	elseif cl == 678 then
    bl "Of course I'll be afraid to bring things up."
	elseif cl == 679 then
    bl "I'm much better off just going with the flow until I'm more settled in."
	elseif cl == 680 then
	updateMonika('1','a')
    m "Anyway..."
	elseif cl == 681 then
    m "Want to share your poem with me?"
	elseif cl == 682 then
    mc "It's kind of embarrassing, but I guess I have to."
	elseif cl == 683 then
	updateMonika('5a')
    m "Ahahaha!"
	elseif cl == 684 then
	cw('m',"Don't worry, "..player.."!")
	elseif cl == 685 then
    m "We're all a little embarrassed today, you know?"
	elseif cl == 686 then
    m "But it's that sort of barrier that we'll all learn to get past soon."
	elseif cl == 687 then
    mc "Yeah, that's true."
	elseif cl == 688 then
    bl "I hand Monika my poem."
	elseif cl == 689 then
	updateMonika('2','a')
    m "...Mhm!"
	elseif cl >= 690 then
	m_eval()
	end
end

function ch21_m_end()
	if cl == 730 then
	updateMonika('1','a')
	m "Anyway, do you want to read my poem now?"
	elseif cl == 731 then
	updateMonika('1','e')
    m "Don't worry, I'm not very good..."
	elseif cl == 732 then
    mc "You sound pretty confident for someone who claims to not be very good."
	elseif cl == 733 then
	updateMonika('1','j')
    m "Well...that's 'cause I have to sound confident."
	elseif cl == 734 then
	updateMonika('1','b')
    m "That doesn't mean I always feel that way, you know?"
	elseif cl == 735 then
    mc "I see..."
	elseif cl == 736 then
    mc "Well, let's read it, then."
	elseif cl == 737 then
	poem('poem_m21','monika')
	elseif cl == 738 then
	poem('poem_m21-a','monika',1)
	elseif cl >= 739 then
	ch1_m_end2()
	end
end

function m2_natsuki_1()
	if cl == 692 then
	updateMonika('2','b')
    cw('m',"I like it, "..player.."!")
	elseif cl == 693 then
    mc "Really...?"
	elseif cl == 694 then
	updateMonika('2','e')
    m "It's a lot cuter than I expected."
	elseif cl == 695 then
	updateMonika('2','k')
    m "Ahahaha!"
	elseif cl == 696 then
    mc "Oh jeez..."
	elseif cl == 697 then
	updateMonika('1','b')
    m "No, no!"
	elseif cl == 698 then
    m "It kind of makes me think of something Natsuki would write."
	elseif cl == 699 then
    m "And she's a good writer, too."
	elseif cl == 700 then
	updateMonika('5a')
    m "So take that as a compliment!"
	elseif cl == 701 then
    mc "Ahaha..."
	elseif cl == 702 then
    mc "If you say so."
	elseif cl == 703 then
    m "Yep!"
	elseif cl == 704 then
	updateMonika('3','b')
    m "If you're interested in Natsuki, then always keep a snack on you."
	elseif cl == 705 then
    m "She'll cling to you like a puppy."
	elseif cl == 706 then
	updateMonika('3','k')
    m "Ahaha!"
	elseif cl == 707 then
	updateMonika('1','a')
    m "Natsuki's dad doesn't give her lunch money or leave her any food in the house, so she's in a fussy mood pretty often..."
	elseif cl == 708 then
    m "But sometimes she just loses all of her strength and shuts down."
	elseif cl == 709 then
    m "Like earlier."
	elseif cl == 710 then
	updateMonika('2','d')
    m "This is just a guess, but I think she's so small because her malnutrition is interfering with her adolescent growth..."
	elseif cl == 711 then
	updateMonika('2','b')
    m "...But hey, some guys are into petite girls too, you know?"
	elseif cl == 712 then
	updateMonika('5a')
    m "Sorry...just trying to look at the bright side!"
	elseif cl >= 713 then
	m_end()
	end
end

function m2_yuri_1()
	if cl == 692 then
	updateMonika('1','a')
	cw('m',"Great job, "..player.."!")
	elseif cl == 693 then
    m "I was going 'Ooh' in my head while reading it."
	elseif cl == 694 then
	updateMonika('1','j')
    m "It's really metaphorical!"
	elseif cl == 695 then
	updateMonika('1','a')
    m "I'm not sure why, but I didn't expect you to go for something so deep."
	elseif cl == 696 then
	updateMonika('3','b')
    m "I guess I underestimated you!"
	elseif cl == 697 then
    mc "It's easiest for me to keep everyone's expectations low."
	elseif cl == 698 then
    mc "That way, it always counts when I put in some effort."
	elseif cl == 699 then
	updateMonika('5a')
    m "Ahaha! That's not very fair!"
	elseif cl == 700 then
    m "Well, I guess it worked, anyway."
	elseif cl == 701 then
	updateMonika('2','a')
    m "You know that Yuri likes this kind of writing, right?"
	elseif cl == 702 then
    m "Writing that's full of imagery and symbolism."
	elseif cl == 703 then
	updateMonika('2','d')
    m "Sometimes I feel like Yuri's mind is just totally detached from reality."
	elseif cl == 704 then
    m "I don't mean that like it's a bad thing, though."
	elseif cl == 705 then
	updateMonika('2','a')
    m "But sometimes I get the impression that she's just totally given up on people."
	elseif cl == 706 then
    m "She spends so much time in her own head that it's probably a much more interesting place for her..."
	elseif cl == 707 then
	updateMonika('2','b')
    m "But that's why she gets so happy when you treat her with a lot of kindness."
	elseif cl == 708 then
    m "I don't think she's used to being indulged like that."
	elseif cl == 709 then
	updateMonika('2','j')
    m "She must be really starved for social interaction, so don't blame her for coming on a little strongly."
	elseif cl == 710 then
	updateMonika('2','d')
    m "Like earlier..."
	elseif cl == 711 then
    m "I think if she gets too stimulated, she ends up withdrawing and looking for alone time."
	elseif cl == 712 then
    bl "Suddenly, the door opens."
	elseif cl == 713 then
	updateMonika('2','b')
    m "Yuri!"
	elseif cl == 714 then
	updateMonika('2','a')
	updateYuri('1','s',-40)
    y "I'm back..."
	elseif cl == 715 then
    y "Did I miss anything?"
	elseif cl == 716 then
	updateMonika('2','a')
    m "Not really..."
	elseif cl == 717 then
    m "Well, we all started sharing our poems with each other."
	elseif cl == 718 then
	updateYuri('2','t')
    y "Eh?"
	elseif cl == 719 then
    y "Already?"
	elseif cl == 720 then
	updateYuri('2','v')
    y "I-I'm sorry for being late..."
	elseif cl == 721 then
	updateMonika('2','j')
    m "No need to apologize!"
	elseif cl == 722 then
	updateMonika('2','a')
    m "We still have plenty of time, so I'm more glad that you took all the time you needed."
	elseif cl == 723 then
	updateYuri('1','s')
    y "Alright..."
	elseif cl == 724 then
    y "Thanks, Monika."
	elseif cl == 725 then
    y "I suppose I should go get my poem now."
	elseif cl == 726 then
	hideAll()
	scriptJump(727)
	elseif cl >= 727 then
	m_end()
	end
end