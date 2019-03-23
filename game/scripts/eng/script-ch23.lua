local gtextg = glitchtext(math.random(8,80))
local gtext10 = glitchtext(10)
local sgschance = 16

function ch23script()
	if cl == 1951 then
		event_initstart("sayori_gs")
		audioUpdate('0')
		sfxplay('gnid')
	elseif cl == 1952 then
		persistent.act2[1] = 1
		savepersistent()
		scriptJump(1631)
	end
	if cl == 1631 then
	if (g_system == 'Switch' or global_os == 'LOVE-WrapLua') and sgschance == 16 and persistent.act2[1] < 1 then
		scriptJump(1951)
	end
	audioUpdate('6')
	bgUpdate('club_day2')
	updateYuri('2','y5',80)
    cw('y',"Hi, "..player.."!")
	elseif cl == 1632 then
    y "I've been waiting for you."
	elseif cl == 1633 then
	updateYuri('2','d')
    y "Are you ready to continue reading?"
	elseif cl == 1634 then
    y "I brought my best tea today--"
	elseif cl == 1635 then
	updateYuri('2','f')
	updateNatsuki('4','w',200)
    n "Monika!"
	elseif cl == 1636 then
    n "I told you not to--"
	elseif cl == 1637 then
	updateNatsuki('1','g')
    n "Ugh..."
	elseif cl == 1638 then
    n "Is she really late again?"
	elseif cl == 1639 then
	updateYuri('1','h')
    y "Inconsiderate as usual, Natsuki."
	elseif cl == 1640 then
	updateNatsuki('4','c')
    n "Excuse me?"
	elseif cl == 1641 then
	updateYuri('1','r')
    y "Must you always interrupt my conversations with your incessant yelling?"
	elseif cl == 1642 then
	updateNatsuki('1','o')
    n "What are you talking about?!"
	elseif cl == 1643 then
	updateNatsuki('1','q')
    n "You say that like I do it on a regular basis or something."
	elseif cl == 1644 then
    n "I just wasn't paying attention, okay? I'm sorry."
	elseif cl == 1645 then
	updateNatsuki('4','u')
    n "Seriously... What's gotten into you lately?"
	elseif cl >= 1646 and cl <= 1703 then
    if appeal.n >= 2 then
		if cl == 1646 then
        n "Look..."
		elseif cl == 1647 then
        n "I did some thinking about yesterday."
		elseif cl == 1648 then
		updateNatsuki('2','q')
        n "I was a little more hostile than I meant to be..."
		elseif cl == 1649 then
		updateNatsuki('1','q')
        n "I guess I really felt threatened or something."
		elseif cl == 1650 then
		updateNatsuki('1','h')
        n "But I know this is something we're doing together."
		elseif cl == 1651 then
		updateNatsuki('1','q')
        n "Another new member wouldn't hurt, as long as they're cool..."
		elseif cl == 1652 then
		updateNatsuki('5','w')
        n"And I guess another girl would be nice this time..."
		elseif cl == 1653 then
		updateNatsuki('5','u')
        n "So..."
		elseif cl == 1654 then
		updateYuri('2','u')
        y "Natsuki..."
		elseif cl == 1655 then
		style_edited = true
		updateYuri('1','f')
        y "Nobody cares."
		elseif cl == 1656 then
        y "Why don't you go look for some coins under the vending machines or something?"
		elseif cl == 1657 then
		style_edited = false
		updateNatsuki('1','p')
        n "--!"
		elseif cl == 1658 then
		updateNatsuki('1','r')
        n "..."
		elseif cl == 1659 then
		updateNatsuki('1','2f')
        n "..."
		elseif cl == 1660 then
		hideNatsuki()
		pause(1)
		elseif cl == 1661 then
		updateMonika('1','g',-40)
        m "Aw, man..."
		elseif cl == 1662 then
        m "I'm the last one here again!"
		elseif cl == 1663 then
		updateYuri('1','f')
        y "Were you practicing piano again?"
		elseif cl == 1664 then
		updateMonika('5a')
        m "Yeah..."
		elseif cl == 1665 then
        m "Ahaha..."
		elseif cl == 1666 then
		updateYuri('1','m')
        y "You must have a lot of determination."
		elseif cl == 1667 then
        y "Starting this club, and still trying to make time for piano..."
		elseif cl == 1668 then
		updateYuri('1','a')
        m "Well, maybe not determination..."
		elseif cl == 1669 then
		updateMonika('3','a')
        m "But I guess passion."
		elseif cl == 1670 then
        m "It motivates me to work hard for the festival, too."
		elseif cl == 1671 then
		scriptJump(1704)
		end
    else
		if cl == 1646 then
		scriptJump(1647)
		elseif cl == 1647 then
		updateYuri('2','n')
        y "Me?"
		elseif cl == 1648 then
		updateYuri('2','o')
        y "N-Nothing..."
		elseif cl == 1649 then
        n "..."
		elseif cl == 1650 then
		updateYuri('2','v')
        y "Is it really that bad...?"
		elseif cl == 1651 then
		updateNatsuki('2','m')
        n "See, it is something."
		elseif cl == 1652 then
		updateYuri('3','p')
        y "I'll get over it!"
		elseif cl == 1653 then
		updateYuri('3','y6')
        y "It's not even anything noteworthy..."
		elseif cl == 1654 then
		updateYuri('3','o')
        y "I've just been feeling a little on edge lately..."
		elseif cl == 1655 then
		updateYuri('3','n')
        y "A-Anyway, we don't need to talk about it!"
		elseif cl == 1656 then
		updateNatsuki('2','q')
        n "Well, I just felt like I needed to bring it up."
		elseif cl == 1657 then
		updateNatsuki('5','q')
        n "It's not like I really care or anything..."
		elseif cl == 1658 then
		updateYuri('3','e')
		updateMonika('1','g',-40)
        m "Aw, man..."
		elseif cl == 1659 then
        m "I'm the last one here again!"
		elseif cl == 1660 then
		updateNatsuki('2','c')
		cw('n',"Well, "..player.." just walked in too.")
		elseif cl == 1661 then
		updateYuri('1','f')
        y "Were you practicing piano again?"
		elseif cl == 1662 then
		updateMonika('5a')
        m "Yeah..."
		elseif cl == 1663 then
        m "Ahaha..."
		elseif cl == 1664 then
		updateYuri('1','m')
        y "You must have a lot of determination."
		elseif cl == 1665 then
        y "Starting this club, and still trying to make time for piano..."
		elseif cl == 1666 then
		updateYuri('1','a')
		updateMonika('1','a')
        m "Well, maybe not determination..."
		elseif cl == 1667 then
		updateMonika('3','a')
        m "But I guess passion."
		elseif cl == 1668 then
        m "It motivates me to work hard for the festival and..."
		elseif cl == 1669 then
		updateMonika('3','n')
        m "Um..."
		elseif cl == 1670 then
		updateNatsuki('5','s')
        n "..."
		elseif cl == 1671 then
		updateMonika('1','l')
        m "Right..."
		elseif cl == 1672 then
        m "I-I forgot..."
		elseif cl == 1673 then
		hideMonika()
		updateYuri('2','v')
        y "Um, about that, Natsuki..."
		elseif cl == 1674 then
        y "We were all talking yesterday, and..."
		elseif cl == 1675 then
		updateYuri('2','t')
        y "Well...we decided that we would like to support the festival as well."
		elseif cl == 1676 then
		updateYuri('2','l')
        y "However...!"
		elseif cl == 1677 then
		updateYuri('2','h')
        y "I understand how you feel about not wanting the club to change."
		elseif cl == 1678 then
        y "I think we all kind of feel that way."
		elseif cl == 1679 then
		updateYuri('2','f')
        y "So as long as we're all working together, this club will never become something we don't want."
		elseif cl == 1680 then
        n "..."
		elseif cl == 1681 then
		updateYuri('2','v')
        y "Um, also..."
		elseif cl == 1682 then
        y "If you help us out with the festival..."
		elseif cl == 1683 then
		updateYuri('3','r')
        y "...Then I'll buy you a new manga!"
		elseif cl == 1684 then
		updateYuri('3','t')
		updateNatsuki('5','h')
        n "..."
		elseif cl == 1685 then
		updateNatsuki('2','z')
        n "Ahahaha!"
		elseif cl == 1686 then
        n "Sorry, that last part was really funny."
		elseif cl == 1687 then
		updateNatsuki('2','c')
        n "Look..."
		elseif cl == 1688 then
        n "I did some thinking about yesterday."
		elseif cl == 1689 then
		updateNatsuki('2','q')
        n "I was a little more hostile than I meant to be..."
		elseif cl == 1690 then
		updateNatsuki('1','q')
        n "I guess I really felt threatened or something."
		elseif cl == 1691 then
		updateNatsuki('1','h')
        n "But I know this is something we're doing together."
		elseif cl == 1692 then
		updateNatsuki('1','q')
        n "Another new member wouldn't hurt, as long as they're cool..."
		elseif cl == 1693 then
		updateNatsuki('5','w')
        n "And I guess another girl would be nice this time..."
		elseif cl == 1694 then
		updateNatsuki('5','e')
        n "...But more importantly, I would hate to see the event suck just because I chose to back out!"
		elseif cl == 1695 then
        n "I'm a pro, you know!"
		elseif cl == 1696 then
		updateNatsuki('5','c')
        n "So I'm gonna help too, and we'll make sure it's done right."
		elseif cl == 1697 then
		updateYuri('2','s')
        y "Thank goodness..."
		elseif cl == 1698 then
        y "Isn't that great, Monika?"
		elseif cl == 1699 then
		updateNatsuki('2','k')
        n "...Monika?"
		elseif cl == 1700 then
		updateMonika('1','o',-40)
        m "Ah--"
		elseif cl == 1701 then
		updateMonika('1','n')
        m "Yeah, that's wonderful!"
		elseif cl == 1702 then
        m "It wouldn't be the same without you, Natsuki."
		elseif cl == 1703 then
		scriptJump(1704)
		end
	end
	elseif cl == 1704 then
	updateMonika('5a')
	cw('m',"Anyway, "..player.."...")
	elseif cl == 1705 then
    m "What do you want to do today?"
	elseif cl == 1706 then
    m "I was thinking we could--"
	elseif cl == 1707 then
	updateYuri('1','l')
    y "We already have plans today."
	elseif cl == 1708 then
	updateMonika('1','r')
    m "Ah..."
	elseif cl == 1709 then
    m "Is that so, Yuri?"
	elseif cl == 1710 then
	updateYuri('1','y6')
    y "That's correct."
	elseif cl == 1711 then
	cw('y',player.." is already engaged in a novel that we're reading together.")
	elseif cl == 1712 then
	updateYuri('1','y5')
    y "Aren't you glad I've already gotten him into literature, Monika?"
	elseif cl == 1713 then
	updateYuri('1','a')
	updateMonika('2','l')
    m "I..."
	elseif cl == 1714 then
    m "I suppose..."
	elseif cl == 1715 then
    m "I was just--"
	elseif cl == 1716 then
	updateMonika('1','r')
    m "Actually, it doesn't matter."
	elseif cl == 1717 then
	updateMonika('1','i')
    m "It really doesn't."
	elseif cl == 1718 then
    m "You guys can do whatever you want."
	elseif cl == 1719 then
	updateYuri('2','y1')
    cw('y',"(Yes!)",'nw')
	elseif cl == 1720 then
	updateYuri('2','u')
    y "Um... Thank you for understanding, Monika."
	elseif cl == 1721 then
	if global_os == 'LOVE-WrapLua' then
		hideAll()
		scriptJump(1722)
	else
		event_initstart('wipe','club_day2')
	end
	elseif cl == 1722 then
    if poemwinner[3] == "Natsuki" then
        poemwinner[3] = "Yuri"
        appeal.y = appeal.y + 1
	end
	updateYuri('3','a',80)
	scriptJump(1235)
	
	elseif cl >= 1723 and cl <= 1805 then Yuri_exclusive2_2_ch23()
	elseif cl >= 1806 and cl < 2001 then ch23_end()
	elseif cl >= 2001 then yuri_kill()
	end
end

function ch23_end()
	if cl == 1806 then
	bgUpdate('black',true)
	audioUpdate('0',true)
	scriptJump(1808)
	elseif cl == 1808 then
	menutext = ''
	choices = {'Yes','No'}
	choice_enable()
	elseif cl == 1809 then
	if choicepick == 'Yes' then
		changeState('poem_special',sp[3])
	else
		scriptJump(1810)
	end
	elseif cl == 1810 then
	bgUpdate('club_day2')
	audioUpdate('3')
	updateMonika('4','b',80)
    m "Okay, everyone!"
	elseif cl == 1811 then
    m "It's time to figure out the festival preparations."
	elseif cl == 1811 then
	updateMonika('1','i')
    m "Let's hurry and get this over with."
	elseif cl == 1812 then
	updateNatsuki('4','q',-40)
    if appeal.n >= 2 then
        n "..."
    else
        n "Jeez..."
	end
	elseif cl == 1813 then
	if appeal.n >= 2 then scriptJump(1815)
	else n "Why is the mood so weird today?" end
	elseif cl == 1814 then
	n "Look, even Yuri isn't immune to it."
	elseif cl == 1815 then
	updateYuri('4','b2',200)
    y "Uu..."
	elseif cl == 1816 then
    y "Stagnating air is common foreshadowing that something terrible is about to happen..."
	elseif cl == 1817 then
	updateMonika('2','r')
	m "Look, can we just get this done?"
	elseif cl == 1818 then
	updateMonika('2','d')
    m "I'm going to be printing and assembling all the poetry pamphlets."
	elseif cl >= 1819 and cl < 1823 then
    if appeal.n >= 2 then
		if cl == 1819 then
		updateMonika('2','i')
        m "Natsuki, you can make cupcakes."
		elseif cl == 1820 then
        m "I know you're at least good at that."
		elseif cl == 1821 then
		updateNatsuki('5','u')
        n "..."
		elseif cl == 1822 then
		scriptJump(1823)
		end
    else
		if cl == 1819 then
        m "Natsuki, I was thinking--"
		elseif cl == 1820 then
		updateNatsuki('2','d')
        n "I want to make cupcakes!"
		elseif cl == 1821 then
		updateNatsuki('2','a')
		updateMonika('2','a')
        m "...Yeah, that."
		elseif cl == 1822 then
        m "Glad we're on the same page."
		end
	end
	elseif cl == 1823 then
	updateMonika('1','m')
	m "Yuri, you can..."
	elseif cl == 1824 then
	updateMonika('1','r')
    m "...Well, it doesn't matter."
	elseif cl == 1825 then
	updateMonika('1','i')
    m "Do whatever you want, as long as you think it'll help."
	elseif cl == 1826 then
	updateYuri('2','h')
    y "Monika..."
	elseif cl == 1827 then
    y "I'm not useless, you know!"
	elseif cl == 1828 then
	updateMonika('2','p')
    m "I-I know that!"
	elseif cl == 1829 then
	updateYuri('1','l')
    y "I already know what I'd like to do."
	elseif cl == 1830 then
	updateYuri('1','h')
    y "We can't run a successful poetry event without having the right atmosphere for the occasion."
	elseif cl == 1831 then
    y "So I'm going to make decorations and set up some nice mood lighting."
	elseif cl == 1832 then
	updateYuri('2','j')
    m "There, see?"
	elseif cl == 1833 then
    m "That's a great idea!"
	elseif cl == 1834 then
	updateMonika('1','a')
    m "And that gives us all something to do."
	elseif cl == 1835 then
	updateYuri('2','f')
    y "Eh?"
	elseif cl == 1836 then
    cw('y',"What about "..player.."?")
	elseif cl == 1837 then
	updateMonika('2','b')
    cw('m',player.." is going to help me.")
	elseif cl == 1838 then
	updateMonika('2','a')
	updateNatsuki('4','e')
    n "Wait, you?"
	elseif cl == 1839 then
    n "You have the easiest job, Monika!"
	elseif cl == 1840 then
	updateMonika('1','i')
    m "Sorry, but that's just how it is."
	elseif cl == 1841 then
	updateNatsuki('1','f')
    n "Like hell it is!"
	elseif cl == 1842 then
    n "What are you trying to pull?"
	elseif cl == 1843 then
	updateYuri('3','h')
    y "I-I agree with Natsuki!"
	elseif cl == 1844 then
    y "Not only is your work already most suitable for one person..."
	elseif cl == 1845 then
	updateYuri('3','l')
    y "But my task is laborious enough to benefit from an extra pair of hands."
	elseif cl == 1846 then
	updateNatsuki('4','c')
    n "Mine too!"
	elseif cl == 1847 then
	updateYuri('1','h')
    y "What, your cupcakes?"
	elseif cl == 1848 then
    y "Please."
	elseif cl == 1849 then
	updateNatsuki('1','o')
    n "Like you would fucking know!"
	elseif cl == 1850 then
	updateNatsuki('1','x')
    cw('n',"All you care about now is dragging "..player.." around with you and your stupid books.")
	elseif cl == 1851 then
	updateNatsuki('1','f')
    n "You and Monika!"
	elseif cl == 1852 then
	updateMonika('2','g')
    m "Hey!"
	elseif cl == 1853 then
    m "I didn't even do anything!"
	elseif cl == 1854 then
	updateNatsuki('3','e')
	cw('n',"Okay, then why not let "..player.." decide who to help instead of abusing your power?")
	elseif cl == 1855 then
	updateMonika('1','p')
    m "I'm not...abusing my power."
	elseif cl == 1856 then
	updateYuri('2','h')
    y "Yes you are, Monika."
	elseif cl == 1857 then
	cw('y',"Just let "..player.." make the choice, okay?")
	elseif cl == 1858 then
	updateMonika('1','r')
    m "Okay, fine!"
	elseif cl == 1859 then
    m "Fine."
	elseif cl == 1860 then
	updateMonika('1','h')
	updateNatsuki('3','w')
    n "Jeez..."
	elseif cl == 1861 then
	cw('n',player..", I know how fed up you are with these two by now.")
	elseif cl == 1862 then
	updateNatsuki('3','c')
    n "We can just--"
	elseif cl == 1863 then
	updateYuri('2','r')
    y "Natsuki, shut your fucking mouth and let him decide for himself."
	elseif cl == 1864 then
	updateNatsuki('1','o')
    n "You shut your mouth!"
	elseif cl == 1865 then
	updateMonika('1','r')
    m "Jesus christ..."
	elseif cl == 1866 then
	updateMonika('1','i')
    m "This is never going to end. Just make the choice, okay?"
	elseif cl == 1867 then
	menutext = ''
	choices = {'Monika','Monika','Monika'}
	choice_enable()
	elseif cl == 1868 then
	updateMonika('5a')
	m "Yay, you picked me!"
	elseif cl == 1869 then
    m "We can meet at your house this weekend."
	elseif cl == 1870 then
    m "I promise it'll be fun."
	elseif cl == 1871 then
    m "Is Sunday okay with you?"
	elseif cl == 1872 then
	updateNatsuki('1','e')
    n "Are you fucking kidding me?"
	elseif cl == 1873 then
    n "This isn't fair at all!"
	elseif cl == 1874 then
	updateMonika('2','i')
    m "It is fair, Natsuki."
	elseif cl == 1875 then
    m "It's what he chose."
	elseif cl == 1876 then
	updateYuri('3','r')
    y "No, it's not fair!"
	elseif cl == 1877 then
    cw('y',"Giving us all this work and then taking "..player.." for yourself.")
	elseif cl == 1878 then
    y "What a shameful thing to do!"
	elseif cl == 1879 then
	updateMonika('2','r')
    m "Yuri, I didn't even give you any work."
	elseif cl == 1880 then
	updateMonika('2','i')
    m "You decided it for yourself."
	elseif cl == 1881 then
    m "You're being a little unreasonable here."
	elseif cl == 1882 then
	audioUpdate('0')
	updateYuri('2','y4')
    y "I'm being unreasonable?"
	elseif cl == 1883 then
	updateYuri('2','y3')
    y "Ahahaha!"
	elseif cl == 1884 then
    y "Monika, I can't believe how delusional and self-important you are!"
	elseif cl == 1885 then
	cw('y',"Pulling "..player.." away from me every single time you're not included in something.")
	elseif cl == 1886 then
	updateYuri('1','y1')
    y "Are you jealous?"
	elseif cl == 1887 then
    y "Crazy?"
	elseif cl == 1888 then
	updateYuri('1','y3')
    y "Or maybe you just hate yourself so much that you take it out on others?"
	elseif cl == 1889 then
	updateYuri('1','y4')
    y "Here's a suggestion. Have you considered killing yourself?"
	elseif cl == 1890 then
    y "It would be beneficial to your mental health."
	elseif cl == 1891 then
	updateNatsuki('5','u')
    n "Yuri, you're scaring me a little..."
	elseif cl == 1892 then
	updateMonika('1','r')
    m "Natsuki, let's just go."
	elseif cl == 1893 then
	updateMonika('1','i')
    m "I don't think she wants us around right now."
	elseif cl == 1894 then
	updateYuri('2','y3')
    y "See, that wasn't very hard."
	elseif cl == 1895 then
    y "All I want is to spend a little time with him."
	elseif cl == 1896 then
    y "Is that so much to ask?"
	elseif cl == 1897 then
	hideNatsuki()
	hideMonika()
	hideYuri()
    bl "Yuri follows Monika and Natsuki to the door."
	elseif cl == 1898 then
	updateMonika('5a','',80)
	cw('m',"Hey, "..player.."...")
	elseif cl == 1899 then
    m "Yuri is really something, isn't she?"
	elseif cl == 1900 then
	hideMonika()
    bl "Monika giggles as Yuri pushes her out the door."
	
	elseif cl == 1901 then
	audioUpdate('10-yuri')
	updateYuri('2','m',80)
    y "Finally."
	elseif cl == 1902 then
	updateYuri('2','y1')
    y "Finally!"
	elseif cl == 1903 then
	updateYuri('2','s')
    y "This is really all I wanted."
	elseif cl == 1904 then
	updateYuri('1','y6')
    cw('y',player..", there's no need to spend the weekend with Monika.")
	elseif cl == 1905 then
    y "Don't listen to her."
	elseif cl == 1906 then
	updateYuri('1','y5')
    y "Just come to my house instead."
	elseif cl == 1907 then
	updateYuri('3','y5')
    y "The whole day, with just the two of us..."
	elseif cl == 1908 then
    y "Doesn't that sound wonderful?"
	elseif cl == 1909 then
	updateYuri('3','y1')
    y "Ahahaha!"
	elseif cl == 1910 then
	updateYuri('3','y4')
    y "Wow... There's really something wrong with me, isn't there?"
	elseif cl == 1911 then
    y "But you know what?"
	elseif cl == 1912 then
	updateYuri('1','y3')
    y "I don't care anymore."
	elseif cl == 1913 then
    y "I've never felt this good my whole life."
	elseif cl == 1914 then
	updateYuri('1','y4')
    y "Just being with you is a far greater pleasure than anything I could imagine."
	elseif cl == 1915 then
    y "I'm addicted to you."
	elseif cl == 1916 then
	updateYuri('3','y4')
    y "It feels like I'm going to die if I'm not breathing the same air as you."
	elseif cl == 1917 then
	updateYuri('4','a2')
    y "Doesn't it feel nice to have someone care about you so much?"
	elseif cl == 1918 then
    y "To have someone who wants to revolve their entire life around you?"
	elseif cl == 1919 then
	updateYuri('2','y6')
    y "But if it feels so good..."
	elseif cl == 1920 then
	updateYuri('2','y4')
    y "Then why does it feel more and more like something horrible is going to happen?"
	elseif cl == 1921 then
	updateYuri('2','y6')
    y "Maybe that's why I tried stopping myself at first..."
	elseif cl == 1922 then
    y "But the feeling is too strong now."
	elseif cl == 1923 then
	updateYuri('3','y1')
    cw('y',"I don't care anymore, "..player.."!")
	elseif cl == 1924 then
    y "I have to tell you!"
	elseif cl == 1925 then
	updateYuri('3','y4')
    y "I'm...I'm madly in love with you!"
	elseif cl == 1926 then
    y "It feels like every inch of my body...every drop of blood in me...is screaming your name."
	elseif cl == 1927 then
	updateYuri('3','y3')
    y "I don't care what the consequences are anymore!"
	elseif cl == 1928 then
    y "I don't care if Monika is listening!"
	elseif cl == 1929 then
	updateYuri('3','w')
    cw('y',"Please, "..player..", just know how much I love you.")
	elseif cl == 1930 then
	updateYuri('3','m')
    y "I love you so much that I even touch myself with the pen I stole from you."
	elseif cl == 1931 then
	updateYuri('3','y4')
    y "I just want to pull your skin open and crawl inside of you."
	elseif cl == 1932 then
	updateYuri('3','y6')
    y "I want you all to myself."
	elseif cl == 1933 then
    y "And I will be only yours."
	elseif cl == 1934 then
    y "Doesn't that sound perfect?"
	elseif cl == 1935 then
	updateYuri('3','s')
    cw('y',"Tell me, "..player..".")
	elseif cl == 1936 then
    y "Tell me you want to be my lover."
	elseif cl == 1937 then
    y "Do you accept my confession?"
	elseif cl == 1938 then
	menutext = ''
	choices = {'Yes.','No.'}
	choice_enable()
	
	--yuri_kill_1
	elseif cl == 1939 then
	audioUpdate('0')
	y "...Ahahaha."
	persistent.chr.m = 2
	savenumber = 1
	if xaload == 0 then
		savepersistent()
		savegame('autoload')
	end
	elseif cl == 1940 then
    y "Ahahahahahaha!"
	elseif cl == 1941 then
    updateYuri('3','y5')
    y "Ahahahahahahahaha!"
	elseif cl == 1942 then
	event_init('yuri_kill')
	updateYuri('3','y3')
    style_edited = true
    cw('y',"AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA",'nw')
	elseif cl == 1943 then
	audioUpdate('yuri-kill')
	if xaload == 0 then event_start('yuri_kill') end
	elseif cl == 1944 then
	scriptJump(2001)
	end
end

function yuri_kill()
	if xaload == 0 then gtextg = glitchtext(math.random(8,80)) end
	
	--yuri_kill_2
	if cl <= 3440 then
		style_edited = true
		cw('y',gtextg)
	end
	if cl == 2001 then
		hideAll()
		bgUpdate('black')
		cgUpdate('y_kill/1a')
		audioUpdate('6s')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2200 then
		cgUpdate('y_kill/1b')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2260 then
		cgUpdate('y_kill/1c')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2460 then
		cgUpdate('y_kill/2a')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2660 then
		cgUpdate('y_kill/2b')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2720 then
		cgUpdate('y_kill/2c')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2920 or cl == 3380 then
		cgUpdate('y_kill/3a')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 3120 then
		cgUpdate('y_kill/3b')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 3180 then
		cgUpdate('y_kill/3c')
		if xaload == 0 then savegame('autoload') end
	end
	
	--yuri_kill_3
	if cl == 3441 then
	style_edited = false
	bgUpdate('club')
	cgHide()
	event_initstart('ch23-30')
	cw('bl',gtextg,'slow')
	if xaload == 0 then savegame('autoload') end
	elseif cl == 3442 then
	n "Alright, it's festival time!"
	elseif cl == 3443 then
	updateNatsuki('4','k',80)
    n "Wow, you got here before me?"
	elseif cl == 3444 then
	cw('n',"I thought I was pretty ea--",'nw')
	elseif cl == 3445 then
    updateNatsuki('1','scream')
    n "EYAH!"
	elseif cl == 3446 then
    n "AAAAAAAAAAAAAAAHHHH!!!"
	elseif cl == 3447 then
	pause(1)
	elseif cl == 3448 then
	updateNatsuki('vomit')
	pause(0.75)
	elseif cl == 3449 then
	hideNatsuki()
	bl "Natsuki runs away."
	elseif cl == 3450 then
	m "..."
	elseif cl == 3451 then
	updateMonika('2','b',80)
    m "I'm here!"
	elseif cl == 3452 then
	updateMonika('2','d')
	cw('m',player..", did something happen?")
	elseif cl == 3453 then
    m "Natsuki just ran past me..."
	elseif cl == 3454 then
	updateMonika('2','i')
    m "...Oh..."
	elseif cl == 3455 then
    m "...Oh."
	elseif cl == 3456 then
	updateMonika('2','r')
    m "..."
	elseif cl == 3457 then
	updateMonika('2','l')
    m "Ahahaha!"
	elseif cl == 3458 then
    m "Well, that's a shame."
	elseif cl == 3459 then
	updateMonika('2','d')
	cw('m',"Wait, were you here the entire weekend, "..player.."?")
	elseif cl == 3460 then
    m "Oh, jeez..."
	elseif cl == 3461 then
	updateMonika('2','g')
    m "I didn't realize the script was broken that badly."
	elseif cl == 3462 then
    m "I'm super sorry!"
	elseif cl == 3463 then
    m "It must have been pretty boring..."
	elseif cl == 3464 then
	updateMonika('2','e')
    m "I'll make it up to you, okay?"
	elseif cl == 3465 then
    m "Just gimme a sec..."
	elseif cl == 3466 then
	updateConsole('')
	pause(0.1)
	elseif cl == 3467 then
    updateConsole("os.remove(\"characters/yuri.chr\")")
	pause(2)
	elseif cl == 3468 then
    updateConsole('_', "yuri.chr deleted successfully.")
	pause(1)
	elseif cl == 3469 then
	updateConsole("os.remove(\"characters/natsuki.chr\")","yuri.chr deleted successfully.")
	pause(2)
	elseif cl == 3470 then
    updateConsole('_', "natsuki.chr deleted successfully.","yuri.chr deleted successfully.")
	pause(1)
	elseif cl == 3471 then
	updateMonika('2','a')
    m "I'm almost done."
	elseif cl == 3472 then
	updateMonika('2','j')
    m "I just want to have a cupcake real quick!"
	elseif cl == 3473 then
	cw('bl',"Monika lifts the foil from "..gtext10.."'s tray and takes a cupcake.")
	elseif cl == 3474 then
	updateMonika('2','b')
    m "Seriously, these are the best!"
	elseif cl == 3475 then
    m "I really just had to have one, since it's the last time I'll ever get the chance to."
	elseif cl == 3476 then
	updateMonika('2','a')
    m "You know, before they stop existing and everything."
	elseif cl == 3477 then
    m "...But anyway, I really shouldn't be making you wait any longer."
	elseif cl == 3478 then
	updateMonika('2','j')
    m "Just bear with me, okay?"
	elseif cl == 3479 then
	updateMonika('2','a')
    m "This should only take a second."
	elseif cl == 3480 then
	pause(1.5)
	elseif cl == 3481 then
	event_end()
	console_enabled = false
	persistent.ptr = 3
	chapter = 30
	cl = 1
	savepersistent()
	savegame('autoload')
	changeState('game','autoload')
	end
end