function ch40script()
	if cl == 1 then
	bgUpdate('residential')
	audioUpdate('2')
    bl "It's an ordinary school day, like any other."
	elseif cl == 2 then
    bl "As usual, I'm surrounded by couples and friend groups walking to school together."
	elseif cl == 3 then
    bl "I always tell myself it's about time I meet some girls or something like that..."
	elseif cl == 4 then
	updateSayori('1','a',80)
    cw('s',"Hey, "..player.."...")
	elseif cl == 5 then
    bl "...Well, there already is one girl."
	elseif cl == 6 then
    bl "That girl is Sayori, my neighbor and good friend since we were children."
	elseif cl == 7 then
    bl "We used to walk to school together every day..."
	elseif cl == 8 then
    bl "...And recently, we've picked up that habit once again."
	elseif cl == 9 then
	changeState('credits')
    end
end