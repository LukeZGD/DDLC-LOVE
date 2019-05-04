function bgUpdate(bgx, forceload) --background changes
	if bgx == 'club_day2' then
		local bgclub_day = math.random(1,6)
		if bgclub_day == 6 then
			bgx = 'club-skill'
		else
			bgx = 'club'
		end
	end
	
	if xaload == 0 or forceload then
		if autoskip == 0 and not forceload then bgch2 = bgch end
		bgch = nil		
		bgch = lg.newImage('assets/images/bg/'..bgx..'.png')
	end	
	bg1 = bgx
end

function cgUpdate(cgx, forceload) --cg changes
	if cg1 ~= cgx or forceload then
		if autoskip == 0 and not forceload then cgch2 = cgch end
		cgch = nil		
		cgch = lg.newImage('assets/images/cg/'..cgx..'.png')
	end	
	cg1 = cgx
end

function cgHide()
	cgUpdate('blank')
end

function loaderGame()
	if bgch2 then
		bgalpha = math.max(bgalpha - 15, 0)
		if bgalpha == 0 then
			bgalpha = 255
			bgch2 = nil
		end
	end
	
	if cgch2 then
		cgalpha = math.max(cgalpha - 15, 0)
		if cgalpha == 0 then
			cgalpha = 255
			cgch2 = nil
		end
	end
end