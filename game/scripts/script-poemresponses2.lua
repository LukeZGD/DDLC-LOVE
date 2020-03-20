local y_gave
local y_timer = 0
local gtext80 = glitchtext(80)

function ch21_n_bad()
	ch1_n_bad()
end

function ch21_n_med()
	ch1_n_med()
end

function ch21_n_good()
	ch1_n_good()
end

function ch22_n_bad()
	if n_poemappeal[1] < 0 then
		if cl == 670 then
		updateNatsuki('1','r')
		n "..."
		elseif cl == 671 then
		n "Yeah, just as I thought..."
		elseif cl == 672 then
		mc "...?"
		elseif cl == 673 then
		updateNatsuki('2','w')
		cw('n',player..", come on.")
		elseif cl == 674 then
		n "I'm not stupid."
		elseif cl == 675 then
		updateNatsuki('2','h')
		n "I know how much time you've been spending with Yuri..."
		elseif cl == 676 then
		n "It's obvious that you care more about impressing her than trying to improve your writing."
		elseif cl == 677 then
		updateNatsuki('2','w')
		n "To put it bluntly, it's kind of pathetic."
		elseif cl == 678 then
		updateNatsuki('4','h')
		cw('n',"Why are you even in this club, "..player.."?")
		elseif cl == 679 then
		n "Honestly..."
		elseif cl == 680 then
		n "I thought getting a new member would help everyone get more involved together."
		elseif cl == 681 then
		updateNatsuki('4','s')
		n "Not exclude each other even more."
		elseif cl == 682 then
		updateNatsuki('1','u')
		n "This is such a stupid activity anyway..."
		elseif cl == 683 then
		updateNatsuki('1','2c')
		n "...Look, I'm not in a good mood today, and I just really don't feel like talking right now."
		elseif cl == 684 then
		n "Please go away."
		elseif cl == 685 then
		poemfinish('n')
		end
	else
		if cl == 670 then
		updateNatsuki('1','k')
		n "...Hm."
		elseif cl == 671 then
		n "I liked your last one better."
		elseif cl == 672 then
		mc "Eh? Really?"
		elseif cl == 673 then
		updateNatsuki('2','c')
		n "Well yeah. I can tell you were a little more daring with this one."
		elseif cl == 674 then
		n "But you're really not good enough for that yet. It fell flat."
		elseif cl == 675 then
		mc "That may be true, but I just wanted to try something different."
		elseif cl == 676 then
		mc "I'm still figuring this all out."
		elseif cl >= 677 then
		ch22_n_med_shared()
		end
	end
end

function ch22_n_med()
	if n_poemappeal[1] < 0 then
		if cl == 670 then
		n "...Hm."
		elseif cl == 671 then
		updateNatsuki('2','k')
		n "Well, I can admit that it's better than the last one."
		elseif cl == 672 then
		n "It's nice to see that you're putting in some effort."
		elseif cl == 673 then
		mc "That's good..."
		elseif cl >= 674 then
		ch22_n_med_shared()
		end
	elseif n_poemappeal[1] == 0 then
		if cl == 670 then
		n "...Hm."
		elseif cl == 671 then
		updateNatsuki('2','k')
		n "Well, it's not really any worse than your last one."
		elseif cl == 672 then
		n "But I can't really say it's any better, either."
		elseif cl == 673 then
		mc "Phew..."
		elseif cl == 674 then
		updateNatsuki('2','c')
		n "Huh? 'Phew' what?"
		elseif cl == 675 then
		mc "Ah... Well anything that isn't a trainwreck, I'll take as a win."
		elseif cl == 676 then
		mc "And I get the feeling you're probably the most critical."
		elseif cl == 677 then
		updateNatsuki('1','p')
		n "H-Hey! What makes you--"
		elseif cl == 678 then
		updateNatsuki('1','q')
		n "(Wait, maybe that was a compliment...?)"
		elseif cl == 679 then
		updateNatsuki('4','y')
		n "A-Ahah! Glad to see someone recognizes my experience!"
		elseif cl == 680 then
		n "Well then, keep practicing and maybe you'll be as good as me someday!"
		elseif cl == 681 then
		mc "That's...uh..."
		elseif cl == 682 then
		bl "Something tells me Natsuki completely missed the point."
		elseif cl >= 683 then
		ch22_n_med_shared()
		end
	else
		if cl == 670 then
		n "...Hm."
		elseif cl == 671 then
		updateNatsuki('2','c')
		n "Well, it's not terrible."
		elseif cl == 672 then
		n "But it's pretty disappointing after your last one."
		elseif cl == 673 then
		updateNatsuki('2','s')
		n "Then again, if this one was as good as your last one, I would be completely pissed."
		elseif cl == 674 then
		mc "Well, I guess I wanted to try something a little different this time."
		elseif cl == 675 then
		updateNatsuki('2','c')
		n "Fair enough. You're still new to this, so I wouldn't expect you to find your style right away."
		elseif cl == 676 then
		n "I mean, everyone in the club writes really differently from each other..."
		elseif cl == 677 then
		n "Maybe you'll find a little influence from all of us."
		elseif cl == 678 then
		updateNatsuki('2','q')
		n "For instance..."
		elseif cl == 679 then
		updateNatsuki('5','q')
		n "I noticed that you were spending some time with Yuri today..."
		elseif cl == 680 then
		n "Not that I care who you spend your time with."
		elseif cl == 681 then
		updateNatsuki('5','w')
		n "After all, I was taught never to expect anything from anybody."
		elseif cl == 682 then
		updateNatsuki('5','s')
		n "So it's not like I was waiting for you, or anything."
		elseif cl == 683 then
		updateNatsuki('5','h')
		n "Still, you should at least look over my poem..."
		elseif cl == 684 then
		n "You'll probably be able to learn something from it."
		elseif cl >= 685 then
		ch22_n_end()
		end
	end
end

function ch22_n_med_shared()
	if cl < 683 then
	scriptJump(683)
	elseif cl == 683 then
	updateNatsuki('2','c')
	n "Just make sure you find a little bit of influence from everyone."
	elseif cl == 684 then
	n "I think you're at least being influenced by Yuri a little bit, aren't you?"
	elseif cl == 685 then
	updateNatsuki('5','q')
	n "I mean, I know you've been, like..."
	elseif cl == 686 then
	n "Spending some time with her, or whatever..."
	elseif cl == 687 then
	updateNatsuki('1','w')
	n "But you know, Monika and I are just as good as her!"
	elseif cl == 688 then
	updateNatsuki('1','q')
	n "A-At poems, I mean!"
	elseif cl == 689 then
	updateNatsuki('1','h')
	n "So you should really try to learn something, or you'll never get better!"
	elseif cl == 690 then
	n "Here's the one I wrote..."
	elseif cl == 691 then
	n "I'll make sure you learn something from it."
	elseif cl >= 692 then
	ch22_n_end()
	end
end

function ch22_n_good()
	ch22_n_med()
end

function ch22_n_end()
	if appeal.n >= 2 then
		ch22_n_end2()
	else
		if cl < 700 then
		scriptJump(700)
		elseif cl == 700 then
		poem('poem_n2')
		elseif cl == 701 then
		scriptJump(703)
		elseif cl == 703 then
		poem_disable()
		updateNatsuki('2','a')
		n "Not bad right?"
		elseif cl == 704 then
		mc "It's quite a bit longer than yesterday's."
		elseif cl == 705 then
		updateNatsuki('2','w')
		n "Yesterday's was way too short..."
		elseif cl == 706 then
		n "I was just warming up!"
		elseif cl == 707 then
		updateNatsuki('2','c')
		n "I hope you didn't think that was the best I could do."
		elseif cl == 708 then
		mc "No, of course not..."
		elseif cl == 709 then
		updateNatsuki('2','a')
		n "Anyway, the message is pretty straightforward in this poem."
		elseif cl == 710 then
		n "I doubt I have to explain it."
		elseif cl == 711 then
		updateNatsuki('2','g')
		n "Like, anyone would agree that the subject of this poem is an ignorant jerk..."
		elseif cl == 712 then
		n "Everyone has some kind of weird hobby, or a guilty pleasure."
		elseif cl == 713 then
		updateNatsuki('5','q')
		n "Something that you're afraid if people find out, they'd make fun of you or think less of you."
		elseif cl == 714 then
		updateNatsuki('1','e')
		n "...But that just makes people stupid!"
		elseif cl == 715 then
		n "Who cares what someone likes, as long as they're not hurting anyone, and it makes them happy?"
		elseif cl == 716 then
		updateNatsuki('1','q')
		n "I think people really need to learn to respect others for liking weird things..."
		elseif cl == 717 then
		updateNatsuki('1','x')
		n "...Such as two of the girls in this very club, whom I respectfully won't name."
		elseif cl == 718 then
		updateNatsuki('1','s')
		n "Kind of ironic that even in my one place of comfort, I can't even have people respect me..."
		elseif cl == 719 then
		updateNatsuki('1','u')
		n "...Jeez, now you're making me complain too much!"
		elseif cl == 720 then
		bl "(...What did I do?)"
		elseif cl == 721 then
		mc "For what it's worth, I respect you..."
		elseif cl == 722 then
		updateNatsuki('1','h')
		n "Well--"
		elseif cl == 723 then
		n "I guess thanks..."
		elseif cl == 724 then
		updateNatsuki('1','s')
		n "...But it's kind of obvious that you 'respect' Yuri more, so..."
		elseif cl == 725 then
		updateNatsuki('4','2c')
		n "Whatever... We're done sharing, so you can leave now."
		elseif cl == 726 then
		poemfinish('n')
		end
	end
end

function ch22_n_end2()
	if cl < 700 then
	scriptJump(700)
	elseif cl == 700 then
	poem('poem_n2b')
	elseif cl == 701 then
	poem_disable(-1)
	style_edited = true
	updateNatsuki('1','g')
	cw('n',player..'...')
	elseif cl == 702 then
	n "Why didn't you come read with me today?"
	elseif cl == 703 then
	updateNatsuki('1','m')
	n "I was waiting for you."
	elseif cl == 704 then
	n "I was waiting for a long time."
	elseif cl == 705 then
	n "It was the only thing I had to look forward to today."
	elseif cl == 706 then
	n "Why did you ruin it?"
	elseif cl == 707 then
	n "Do you like Yuri more?"
	elseif cl == 708 then
	updateNatsuki('1','k')
	n "I think you're better off not associating with her."
	elseif cl == 709 then
	n "Are you listening to me?"
	elseif cl == 710 then
	event_initstart('natsuki_ch22')
	audioUpdate('5_ghost')
	n "Yuri is a sick freak."
	elseif cl == 711 then
	n "That should be obvious by now."
	elseif cl == 712 then
	n "So just play with me instead."
	elseif cl == 713 then
	n "Okay?"
	elseif cl == 714 then
	cw('n',"You don't hate me, "..player..", do you?")
	elseif cl == 715 then
	n "Do you hate me?"
	elseif cl == 716 then
	updateNatsuki('ghost1')
	n "Do you want to make me go home crying?"
	elseif cl == 717 then
	n "The club is the only place I feel safe."
	elseif cl == 718 then
	n "Don't ruin that for me."
	elseif cl == 719 then
	n "Don't ruin it."
	elseif cl == 720 then
	n "Please."
	elseif cl == 721 then
	n "Just stop talking to Yuri."
	elseif cl == 722 then
	n "Play with me instead."
	elseif cl == 723 then
	n "It's all I have..."
	elseif cl == 724 then
	n "Play with me."
	elseif cl == 725 then
	audioUpdate('0')
	updateNatsuki('ghost2')
	n "PLAY WITH ME!!!"
	elseif cl == 726 then
	style_edited = false
	elseif cl == 727 then
	event_initstart('endscreen','flipped')
	elseif cl == 728 then
	bgUpdate('club')
	poemfinish('n')
	end
end

function ch23_n_bad()
	y_gavecheck()
	if y_gave then
		ch23_n_ygave()
	elseif n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
		if cl == 670 then
		updateNatsuki('5','x')
		n "I'm not going to read another one of your Yuri suck-up poems."
		elseif cl == 671 then
		updateNatsuki('5','s')
		n "But I'm still going to make you read mine."
		elseif cl == 672 then
		n "There's a reason."
		elseif cl == 673 then
		updateNatsuki('5','x')
		n "I really wish I didn't have to do this..."
		elseif cl == 674 then
		n "But unfortunately I don't have much of a choice."
		elseif cl == 675 then
		updateNatsuki('5','h')
		n "Just...read it carefully, okay?"
		elseif cl == 676 then
		n "Then you can go away."
		elseif cl >= 677 then
		ch23_n_end()
		end
	elseif n_poemappeal[1] < 0 or n_poemappeal[2] < 0 then
		if cl == 670 then
		n "..."
		elseif cl == 671 then
		updateNatsuki('2','c')
		n "...Meh."
		elseif cl == 672 then
		n "I guess you really haven't learned anything after all."
		elseif cl == 673 then
		n "Honestly, I don't know why I got my hopes up in the first place."
		elseif cl >= 674 then
		ch23_n_bad_shared()
		end
	else
		if cl == 670 then
		n "..."
		elseif cl == 671 then
		updateNatsuki('2','r')
		n "Oh, man."
		elseif cl == 672 then
		n "This is seriously a step backwards."
		elseif cl == 673 then
		mc "Eh?"
		elseif cl == 674 then
		updateNatsuki('2','c')
		n "I liked your last two way better than this one."
		elseif cl >= 675 then
		ch23_n_bad_shared()
		end
	end
end
	
function ch23_n_bad_shared()
	if cl < 676 then
	scriptJump(676)
	elseif cl == 676 then
	updateNatsuki('4','2c')
	n "This is clearly Yuri's influence..."
	elseif cl == 677 then
	n "I didn't realize you were so impressionable."
	elseif cl == 678 then
	n "Spending all this time with her in the club..."
	elseif cl == 679 then
	n "Now trying to write like her..."
	elseif cl == 680 then
	updateNatsuki('1','s')
	n "This is stupid."
	elseif cl == 681 then
	n "At least Monika appreciates my writing..."
	elseif cl == 682 then
	updateNatsuki('1','r')
	n "...Ugh."
	elseif cl == 683 then
	updateNatsuki('1','q')
	n "Okay...I guess I'm going to share my poem with you now."
	elseif cl == 684 then
	n "I really hate that I have to do this."
	elseif cl == 685 then
	n "But unfortunately I don't have much of a choice."
	elseif cl == 686 then
	updateNatsuki('1','h')
	n "Just...read it carefully, okay?"
	elseif cl == 687 then
	n "Then you can go away."
	elseif cl >= 688 then
	ch23_n_end()
	end
end

function ch23_n_med()
	y_gavecheck()
	if y_gave then
		ch23_n_ygave()
	elseif n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
		ch23_n_bad()
	elseif n_poemappeal[2] < 0 then
		if cl == 670 then
		n "..."
		elseif cl == 671 then
		updateNatsuki('2','k')
		n "...This one's alright."
		elseif cl == 672 then
		mc "Alright?"
		elseif cl == 673 then
		n "Yeah, it's at least better than yesterday's."
		elseif cl >= 674 then
		ch23_n_shared()
		end
	else
		if cl == 670 then
		n "..."
		elseif cl == 671 then
		updateNatsuki('2','k')
		n "...This one's alright."
		elseif cl == 672 then
		mc "Alright?"
		elseif cl == 673 then
		n "Well, yeah."
		elseif cl == 674 then
		n "About as good as yesterday's, anyway."
		elseif cl >= 675 then
		ch23_n_shared()
		end
	end
end

function ch23_n_good()
	ch23_n_med()
end

function ch23_n_shared()
	if cl < 676 then
	scriptJump(676)
	elseif cl == 676 then
	updateNatsuki('2','c')
	n "I still can't really tell how much you actually care about writing, but either way, you're doing alright."
	elseif cl == 677 then
	updateNatsuki('4','r')
	n "Even though you're not really spending time with anyone but Yuri..."
	elseif cl == 678 then
	updateNatsuki('4','h')
	n "I still think it's nice to have activities that we all participate in."
	elseif cl == 679 then
	updateNatsuki('4','w')
	n "So you better keep working hard!"
	elseif cl == 680 then
	n "I mean..."
	elseif cl == 681 then
	updateNatsuki('1','h')
	n "I know I'm not President or Vice President or anything..."
	elseif cl == 682 then
	n "But that doesn't mean you can let me down, okay?"
	elseif cl == 683 then
	updateNatsuki('1','q')
	n "So, at least read mine too for now."
	elseif cl == 684 then
	n "But just to be clear..."
	elseif cl == 685 then
	updateNatsuki('1','h')
	n "This poem...means a lot to me."
	elseif cl == 686 then
	n "So read it carefully, okay?"
	elseif cl >= 687 then
	ch23_n_end()
	end
end

function ch23_n_ygave()
	if cl == 670 then
	updateNatsuki('1','h')
	n "What?"
	elseif cl == 671 then
	n "You gave your poem to Yuri?"
	elseif cl == 672 then
	updateNatsuki('4','x')
	n "Gross!"
	elseif cl == 673 then
	n "What is with you two?"
	elseif cl == 674 then
	updateNatsuki('1','s')
	n "Hmph..."
	elseif cl == 675 then
	n "It's not like I wanted to read it anyway."
	elseif cl == 676 then
	updateNatsuki('1','r')
	n "It's just pissing me off a little bit that you didn't even think to show me at all."
	elseif cl == 677 then
	updateNatsuki('1','x')
	n "...Ugh."
	elseif cl == 678 then
	updateNatsuki('1','q')
	n "Okay...I guess I'm going to share my poem with you anyway."
	elseif cl == 679 then
	n "I really hate that I have to do this."
	elseif cl == 680 then
	n "But unfortunately I don't have much of a choice."
	elseif cl == 681 then
	updateNatsuki('1','h')
	n "Just...read it carefully, okay?"
	elseif cl == 682 then
	n "Then you can go away."
	elseif cl >= 683 then
	ch23_n_end()
	end
end

function ch23_n_end()
	if cl < 700 then
	scriptJump(700)
	elseif cl == 700 then
	poem('poem_n23')
	elseif cl == 701 then
	scriptJump(702)
	elseif cl == 702 then
	poem_disable(0)
	pause(3)
	elseif cl == 703 then
	updateNatsuki('ghost1')
	n "I changed my mind."
	elseif cl == 704 then
	n "Ignore everything you just read."
	elseif cl == 705 then
	n "There's no point in trying to do anything."
	elseif cl == 706 then
	n "It's Yuri's own fault that she's so unlikable."
	elseif cl == 707 then
	cw('n',"Can you hear me, "..player.."?")
	elseif cl == 708 then
	n "If you would just spend more time with Monika, all these problems would go away."
	elseif cl == 709 then
	n "Yuri and I are too messed up for someone as wonderful as you."
	elseif cl == 710 then
	n "Just think of Monika from now on."
	elseif cl == 711 then
	n "Just Monika."
	elseif cl == 712 then
	n "Just Monika."
	elseif cl == 713 then
	hideAll()
	menutext = 'Just Monika.'
	choice_enable('dialog')
	elseif cl == 714 then
	if xaload < 3 then event_initstart('just_monika') end
	audioUpdate('1')
	elseif cl == 715 then
	poemfinish('n')
	end
end

function ch21_y_bad()
	ch1_y_bad()
end

function ch21_y_med()
	ch1_y_bad()
end

function ch21_y_good()
	ch1_y_good()
end

function ch22_y_bad()
	ch22_y_med()
end

function ch22_y_med()
	if cl == 670 then
	updateYuri('2','b')
	y "I've been waiting for this..."
	elseif cl == 671 then
	y "Let's see what you've written for today."
	elseif cl == 672 then
	updateYuri('3','m')
	y "..."
	elseif cl == 673 then
	bl "Yuri smiles and takes a deep breath."
	elseif cl == 674 then
	y "I like just holding it."
	elseif cl == 675 then
	mc "...?"
	elseif cl == 676 then
	updateYuri('3','p')
	y "Ah, I mean--"
	elseif cl == 677 then
	y "The poem turned out good!"
	elseif cl == 678 then
	updateYuri('3','o')
	y "It's, ah..."
	elseif cl == 679 then
	updateYuri('2','q')
	y "...Well, there are some things that you could work on..."
	elseif cl == 680 then
	y "But that doesn't really matter."
	elseif cl == 681 then
	updateYuri('2','s')
	y "It feels like anything written by you is a treasure."
	elseif cl == 682 then
	updateYuri('2','d')
	y "Ahaha..."
	elseif cl == 683 then
	updateYuri('2','o')
	y "That came out a little awkward..."
	elseif cl == 684 then
	y "L-Let's move on..."
	elseif cl == 685 then
	updateYuri('2','t')
	y "Here's the poem I wrote."
	elseif cl == 686 then
	y "You don't have to like it or anything..."
	elseif cl >= 687 then
	ch22_y_end()
	end
end

function ch22_y_good()
	if y_poemappeal[1] < 1 then
		if cl == 670 then
		updateYuri('2','b')
		y "I've been waiting for this..."
		elseif cl == 671 then
		y "Let's see what you've written for today."
		elseif cl == 672 then
		updateYuri('2','e')
		y "..."
		elseif cl == 673 then
		y "......"
		elseif cl == 674 then
		bl "Yuri stares at the poem with a surprised expression on her face."
		elseif cl == 675 then
		mc "Do you...like it?"
		elseif cl == 676 then
		cw('y',player.."...")
		elseif cl == 677 then
		y "...How did you pick up on this so quickly?"
		elseif cl >= 678 then
		ch22_y_good_shared()
		end
	else
		if cl == 670 then
		updateYuri('2','b')
		y "I've been waiting for this..."
		elseif cl == 671 then
		y "Let's see what you've written for today."
		elseif cl == 672 then
		updateYuri('2','e')
		y "..."
		elseif cl == 673 then
		y "......"
		elseif cl == 674 then
		bl "Yuri stares at the poem with a surprised expression on her face."
		elseif cl == 675 then
		mc "Do you...like it?"
		elseif cl == 676 then
		cw('y',player.."...")
		elseif cl == 677 then
		updateYuri('2','t')
		y "This one might even be better than yesterday's..."
		elseif cl == 678 then
		y "...How did you even pick up on this so quickly?"
		elseif cl >= 679 then
		ch22_y_good_shared()
		end
	end
end

function ch22_y_good_shared()
	if cl < 680 then
	scriptJump(680)
	elseif cl == 680 then
	updateYuri('2','v')
	y "Just yesterday, I was telling you the kind of techniques worth practicing..."
	elseif cl == 681 then
	mc "Maybe that's why..."
	elseif cl == 682 then
	mc "You did a good job explaining."
	elseif cl == 683 then
	mc "I really wanted to try giving it more imagery."
	elseif cl == 684 then
	updateYuri('4','b2')
	bl "Yuri visibly swallows."
	elseif cl == 685 then
	bl "Even her hands appear sweaty."
	elseif cl == 686 then
	updateYuri('4','e2')
	y "A-Ah..."
	elseif cl == 687 then
	y "That makes me so happy..."
	elseif cl == 688 then
	updateYuri('3','y5')
	cw('y',"It's so amazing to feel like I'm valued, "..player.."!")
	elseif cl == 689 then
	y "Everything that you write is a treasure to me."
	elseif cl == 690 then
	updateYuri('3','m')
	y "My heart pounds just holding it..."
	elseif cl == 691 then
	updateYuri('3','q')
	y "Ahaha..."
	elseif cl == 692 then
	y "I want to write a poem about this feeling..."
	elseif cl == 693 then
	updateYuri('3','y6')
	cw('y',"Is that bad, "..player.."?")
	elseif cl == 694 then
	y "I'm not being weird, right?"
	elseif cl == 695 then
	updateYuri('3','s')
	y "I-I'm having a harder time than usual at concealing my emotions..."
	elseif cl == 696 then
	updateYuri('3','m')
	y "I'm kind of embarrassed."
	elseif cl == 697 then
	updateYuri('3','y6')
	y "But right now, I just want you to read my poem, too."
	elseif cl == 698 then
	updateYuri('3','y5')
	y "Okay?"
	elseif cl >= 699 then
	ch22_y_end()
	end
end

function ch22_y_end()
	if cl < 700 then
	scriptJump(700)
	elseif cl == 700 then
	yuri_2 = true
	poem('poem_y22')
	elseif cl == 701 then
	scriptJump(702)
	elseif cl == 702 then
	poem_disable(0)
	updateYuri('2','q')
	y "Ahaha..."
	elseif cl == 703 then
	y "It doesn't really matter what it's about."
	elseif cl == 704 then
	y "My mind has been a little hyperactive lately, so I had to take it out on your pen."
	elseif cl == 705 then
	updateYuri('2','o')
	y "Ah--"
	elseif cl == 706 then
	updateYuri('2','q')
	y "That is...a-a pen fell out of your backpack yesterday, so I took it home for safekeeping and..."
	elseif cl == 707 then
	y "I, um..."
	elseif cl == 708 then
	updateYuri('2','y6')
	y "I just...really like...the way...that it writes."
	elseif cl == 709 then
	y "So I wrote this...poem...with it."
	elseif cl == 710 then
	y "And now you're touching it..."
	elseif cl == 711 then
	updateYuri('2','y5')
	y "Ahaha."
	elseif cl == 712 then
	updateYuri('3','p')
	y "I-I'm okay!!"
	elseif cl == 713 then
	updateYuri('3','o')
	y "What did I just..."
	elseif cl == 714 then
	y "..."
	elseif cl == 715 then
	updateYuri('4','c2')
	y "...Can we pretend this conversation never happened?"
	elseif cl == 716 then
	y "You can keep the poem, though..."
	elseif cl == 717 then
	yuri_2 = false
	poemfinish('y')
	end
end

function ch23_y_bad()
	ch23_y_good()
end

function ch23_y_med()
	ch23_y_good()
end

function ch23_y_good()
	if cl == 670 then
	updateYuri('1','d')
	y "Finally..."
	poemwinner = {'','',''}
	elseif cl == 671 then
	updateYuri('3','y5')
	y "Ahaha..."
	elseif cl == 672 then
	updateYuri('3','m')
	bl "Yuri holds my poem to her face and takes a deep breath."
	elseif cl == 673 then
	updateYuri('3','y6')
	y "I love it."
	elseif cl == 674 then
	y "I love everything about it."
	elseif cl == 675 then
	updateYuri('3','y5')
	cw('y',player..", I want to take this home.")
	elseif cl == 676 then
	y "Will you let me keep it?"
	elseif cl == 677 then
	y "Please?"
	elseif cl == 678 then
	mc "Sure, I don't care..."
	elseif cl == 679 then
	updateYuri('2','y5')
	y "Ahaha."
	cw('y',"You're too nice to me, "..player.."...")
	elseif cl == 680 then
	y "I've never met anyone as nice as you."
	elseif cl == 681 then
	updateYuri('2','y6')
	y "I could die..."
	elseif cl == 682 then
	updateYuri('3','y5')
	y "N-Not really, but--!"
	elseif cl == 683 then
	y "I just don't know how to describe it."
	elseif cl == 684 then
	y "It's okay to be feeling this way, right?"
	elseif cl == 685 then
	y_timer = y_timer + dt
	if y_timer > 0.4 and y_timer < 0.43 then
		xaload = 0
		updateYuri('3','y6')
	else
		updateYuri('3','y4')
	end
	y "It's not bad, right?"
	elseif cl == 686 then
	bl "Yuri holds my poem to her chest."
	elseif cl == 687 then
	updateYuri('3','m')
	y "I'm going to take this home with me and keep it in my room."
	elseif cl == 688 then
	y "I hope that it makes you feel good when you think about me having it."
	elseif cl == 689 then
	updateYuri('3','y5')
	y "I'll take good care of it!"
	elseif cl == 690 then
	style_edited = true
	updateYuri('3','y6')
	y "I'll even touch myself while reading it over and over."
	elseif cl == 691 then
	y "I'll give myself paper cuts so your skin oil enters my bloodstream."
	elseif cl == 692 then
	updateYuri('3','y1')
	y "Ahahahahaha."
	elseif cl == 693 then
	style_edited = false
	updateYuri('2','s')
	y "You can have my poem too."
	elseif cl == 694 then
	y "Besides, after you read it, I know you're really going to want to keep it."
	elseif cl == 695 then
	updateYuri('2','y6')
	y "Here, take it. I can't wait any longer."
	elseif cl == 696 then
	updateYuri('2','y5')
	y "Hurry! Read it!"
	event_init('yuri_eyes')
	
	--ch23_y_end
	elseif cl == 697 then
	event_start('yuri_eyes')
	yuri_3 = true
	poem('poem_y23')
	elseif cl == 700 then
	poem_disable(-1)
	y "Do you like it??"
	elseif cl == 701 then
	y "I wrote it for you!"
	elseif cl == 702 then
	event_end('yuri_eyes')
	event_start('show_darkred','')
	updateYuri('1','b')
	cw('y',"In case you couldn't tell, the poem is about "..gtext80)
	elseif cl == 703 then
	updateYuri('1','y6')
	y "More importantly, I've endowed it with my scent."
	elseif cl == 704 then
	y "See, aren't I the most thoughtful person in the club?"
	elseif cl == 705 then
	sfxplay('glitch2')
	updateYuri('glitch2')
	pause(0.25)
	elseif cl == 706 then
	event_end()
	audioUpdate('5')
	updateYuri('3','y2')
	y "..."
	elseif cl == 707 then
	updateYuri('4','d2')
	y "I..."
	elseif cl == 708 then
	y "I think I'm...going to vomit."
	elseif cl == 709 then
	hideYuri()
	pause(1)
	elseif cl == 710 then
	poemfinish('y')
	end
end
	

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
	poem('poem_m21')
	elseif cl == 738 then
	scriptJump(739)
	elseif cl >= 739 then
	ch1_m_end2()
	end
end

function ch22_m_start()
	if appeal.y < 2 then
		if cl == 670 then
		updateMonika('1','b')
		cw('m',"Hi again, "..player.."!")
		elseif cl == 671 then
		m "How's the writing going?"
		elseif cl == 672 then
		mc "Alright, I guess..."
		elseif cl == 673 then
		updateMonika('2','k')
		m "I'll take that."
		elseif cl == 674 then
		updateMonika('2','b')
		m "As long as it's not going bad!"
		elseif cl == 675 then
		updateMonika('2','a')
		m "I'm happy that you're applying yourself."
		elseif cl == 676 then
		m "Maybe soon you'll come up with a masterpiece!"
		elseif cl == 677 then
		mc "Ahaha, I wouldn't count on that..."
		elseif cl == 678 then
		updateMonika('2','a')
		m "You never know!"
		elseif cl == 679 then
		m "Want to share what you wrote for today?"
		elseif cl == 680 then
		mc "Sure... Here you go."
		elseif cl == 681 then
		bl "I give my poem to Monika."
		elseif cl == 682 then
		m "..."
		elseif cl == 683 then
		m "...Alright!"
		elseif cl >= 684 then
		m2_yuri_1()
		end
	else
		m2_yuri_2()
	end
end

function ch22_m_end()
	if cl == 730 then
	updateMonika('1','a')
	m "But anyway..."
	elseif cl == 731 then
	m "You want to read my poem now?"
	elseif cl == 732 then
	m "I like the way this one turned out, so I hope you do too~"
	elseif cl == 733 then
	poem('poem_m22')
	elseif cl == 734 then
	scriptJump(737)
	elseif cl == 737 then
	poem_disable()
	if global_os == 'LOVE-OneLua' then
		scriptJump(738)
	else
		audioUpdate('0')
		pause(2.5)
	end
	elseif cl == 738 then
	audioUpdate('5')
	updateMonika('5a')
	m "Sorry, I know it's kind of abstract."
	elseif cl == 739 then
	m "I'm just trying to...um..."
	elseif cl == 740 then
	updateMonika('1','r')
	m "Well, never mind."
	elseif cl == 741 then
	m "There's no point in explaining."
	elseif cl == 742 then
	updateMonika('1','i')
	m "Anyway..."
	elseif cl == 743 then
	updateMonika('3','b')
	m "Here's Monika's Writing Tip of the Day!"
	elseif cl == 744 then
	m "Sometimes you'll find yourself facing a difficult decision..."
	elseif cl == 745 then
	m "When that happens, don't forget to save your game!"
	elseif cl == 746 then
	updateMonika('3','k')
	m "You never know when...um..."
	elseif cl == 747 then
	updateMonika('3','i')
	m "...Who am I talking to?"
	elseif cl == 748 then
	m "Can you hear me?"
	elseif cl == 749 then
	updateMonika('3','g')
	m "Tell me you can hear me."
	elseif cl == 750 then
	m "Anything."
	elseif cl == 751 then
	menutext = "Please help me."
	choice_enable('dialog')
	elseif cl == 752 then
	updateMonika('3','k')
	m "...That's my advice for today!"
	elseif cl == 753 then
	m "Thanks for listening~"
	elseif cl == 754 then
	poemfinish('m')
	end
end

function ch23_m_start()
	if appeal.y >= 3 then
		if cl == 670 then
		audioUpdate('0')
		updateMonika('1','i')
		cw('m',"Don't say I didn't warn you, "..player..".")
		elseif cl == 671 then
		poemfinish('m')
		end
	elseif appeal.y < 3 then
		m2_yuri_2()
	end
end

function ch23_m_end()
	y_gavecheck()
	if cl == 730 then
		updateMonika('1','a')
		m "Anyway..."
	elseif cl == 731 then
		if y_gave then
			updateMonika('1','m')
			m "I guess we won't worry about your poem..."
		else
			scriptJump(736)
		end
	elseif cl == 732 then
		m "Yuri should have at least had the courtesy of letting you finish sharing it before taking it."
	elseif cl == 733 then
		updateMonika('1','r')
		m "...Well, whatever."
	elseif cl == 734 then
		m "If it makes her happy, I won't stop her."
	elseif cl == 735 then
		updateMonika('1','a')
		m "As for mine..."
	elseif cl == 736 then
		updateMonika('1','e')
		m "I worked really...really hard on this poem, so..."
	elseif cl == 737 then
		m "I hope that it's, uh, effective."
	elseif cl == 738 then
		updateMonika('1','r')
		m "Here goes..."
		event_init('m_ch23ex')
		persistent.chr.s = 6
		if xaload == 0 then
			savepersistent()
		end
	elseif cl == 739 then
		if xaload < 3 then event_start('m_ch23ex') end
		audioUpdate('0')
	elseif cl == 740 then
		cw('m',"Jeez! That really startled me!",'fast')
	elseif cl == 741 then
		m "Um..."
	elseif cl == 742 then
		updateMonika('1','m')
		m "Well, I guess I kinda messed up at, uh... 'writing' this poem."
	elseif cl == 743 then
		m "I was just trying to..."
	elseif cl == 744 then
		updateMonika('1','i')
		m "...Never mind."
	elseif cl == 745 then
		m "Let's just move on..."
	elseif cl == 746 then
		event_end('m_ch23ex')
		poemfinish('m')
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
	if cl < 692 then
	scriptJump(692)
	elseif cl == 692 then
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
	table.insert(choices, 'Yuri')
	elseif cl >= 727 then
	m_end()
	end
end

function m2_yuri_2()
	if cl == 670 then
	updateMonika('1','i')
	cw('m',player..", I think you saw something earlier that you weren't supposed to see.")
	elseif cl == 671 then
	m "I didn't want to have to tell you this, but I don't think I have a choice."
	elseif cl == 672 then
	updateMonika('1','r')
	m "It's getting kind of dangerous for you to spend so much time with Yuri."
	elseif cl == 673 then
	updateMonika('1','i')
	m "I don't know why, but she seems pretty easily excitable when she's around you..."
	elseif cl == 674 then
	updateMonika('3','d')
	m "Which shouldn't be a problem in itself."
	elseif cl == 675 then
	m "But when Yuri gets too excited, she finds a place to hide and starts cutting herself with a pocket knife."
	elseif cl == 676 then
	updateMonika('2','e')
	m "Isn't that kind of messed up?"
	elseif cl == 677 then
	m "She even brings a different one to school every day, like she has a collection or something..."
	elseif cl == 678 then
	updateMonika('2','d')
	m "I mean, it's definitely not because she's depressed or anything like that!"
	elseif cl == 679 then
	m "I think she just gets some kind of high from it."
	elseif cl == 680 then
	updateMonika('2','m')
	m "It might even be, like, a sexual thing..."
	elseif cl == 681 then
	updateMonika('1','i')
	m "But the point is, you've kind of been enabling her."
	elseif cl == 682 then
	updateMonika('1','d')
	m "I'm not saying it's your fault, though!"
	elseif cl == 683 then
	updateMonika('1','a')
	m "But I guess that's why I had to explain it all to you..."
	elseif cl == 684 then
	m "So I think if you keep your distance, that would probably be best for her."
	elseif cl == 685 then
	updateMonika('5a')
	m "While you're at it, don't be shy to spend a little more time with me..."
	elseif cl == 686 then
	m "To put it lightly, I at least have it together in the head...and I know how to treat my club members."
	elseif cl >= 687 then
	m_end()
	end
end

function y_gavecheck()
	if xaload <= 1 then
		if choices[1] == 'Yuri' or choices[2] == 'Yuri' or choices[3] == 'Yuri' then y_gave = false
		else y_gave = true
		end
	end
end
