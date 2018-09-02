local gtext = glitchtext(48)
local s_name = glitchtext(12)
local gs = math.random(0,2)

function ch10script()
	if cl > 150 then
		scriptJump(1)
	elseif cl == 1 then
	bgUpdate('residential')
	audioUpdate('2g')
	cw(s_name,gtext)
	elseif cl == 2 then
	bl "I see an annoying girl running toward me from the distance, waving her arms in the air like she's totally oblivious to any attention she might draw to herself."
	elseif cl == 3 then
	cw('bl',"That girl is "..s_name..", my neighbor and good friend since we were children.")
    elseif cl == 4 then
	bl "You know, the kind of friend you'd never see yourself making today, but it just kind of works out because you've known each other for so long?"
    elseif cl == 5 then
	bl "We used to walk to school together on days like this, but starting around high school she would oversleep more and more frequently, and I would get tired of waiting up."
    elseif cl == 6 then
	bl "But if she's going to chase after me like this, I almost feel better off running away."
    elseif cl == 7 then
	cw('bl',"However, I just sigh and idle in front of the crosswalk and let "..s_name.." catch up to me.")
	event_init('s_glitch')
	elseif cl == 8 then
	if gs == 0 then
		audioUpdate('2gs')
	elseif gs == 1 then
		audioUpdate('2gs2')
	else
		audioUpdate('2gs3')
	end
	event_start('s_glitch')
	end
end