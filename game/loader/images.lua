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
		if autoskip == 0 and not forceload then
			bgch2 = bgch
		else
			if type(bgch) == "number" then Graphics.freeImage(bgch) end
			bgch = nil
		end
		
		bgch = lgnewImage('assets/images/bg/'..bgx..'.jpg')
	end	
	bg1 = bgx
end

function cgUpdate(cgx, forceload) --cg changes
	if cg1 ~= cgx or forceload then
		if autoskip == 0 and not forceload then
			cgch2 = cgch
		else
			if type(cgch) == "number" then Graphics.freeImage(cgch) end
			cgch = nil
		end
		cgch = nil
		cgch = lgnewImage('assets/images/cg/'..cgx..'.png')
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
			Graphics.freeImage(bgch2)
			bgch2 = nil
		end
	end
	
	if cgch2 then
		cgalpha = math.max(cgalpha - 15, 0)
		if cgalpha == 0 then
			cgalpha = 255
			Graphics.freeImage(cgch2)
			cgch2 = nil
		end
	end
end
