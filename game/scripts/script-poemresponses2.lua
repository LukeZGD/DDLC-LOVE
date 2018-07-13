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
    "I hand Monika my poem."
	elseif cl == 689 then
	updateMonika('2','a')
    m "...Mhm!"
	elseif cl == 690 then
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
	elseif cl == 700 then
    m "Yep!"
	elseif cl == 700 then
	updateMonika('3','b')
    m "If you're interested in Natsuki, then always keep a snack on you."
	elseif cl == 700 then
    m "She'll cling to you like a puppy."
	elseif cl == 700 then
	updateMonika('3','k')
    m "Ahaha!"
	elseif cl == 700 then
	updateMonika('1','a')
    m "Natsuki's dad doesn't give her lunch money or leave her any food in the house, so she's in a fussy mood pretty often..."
	elseif cl == 700 then
    m "But sometimes she just loses all of her strength and shuts down."
	elseif cl == 700 then
    m "Like earlier."
	elseif cl == 700 then
	updateMonika('2','d')
    m "This is just a guess, but I think she's so small because her malnutrition is interfering with her adolescent growth..."
	elseif cl == 700 then
	updateMonika('2','b')
    m "...But hey, some guys are into petite girls too, you know?"
	elseif cl == 700 then
	updateMonika('5a')
    m "Sorry...just trying to look at the bright side!"
	elseif cl == 700 then
	m_end()
	end
end