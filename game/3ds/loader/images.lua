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
		if bgx ~= '' then
			if autoskip == 0 and forceload ~= true then bgch2 = bgch end
			bgch = nil
			bgch = lg.newImage('assets/images/bg/'..bgx..'.png')
		end
	end	
	bg1 = bgx
end

function cgUpdate(cgx, forceload) --cg changes
	if cg1 ~= cgx or forceload then
		if cgx ~= '' then
			cgch = lg.newImage('assets/images/cg/'..cgx..'.png')
		end
	end	
	cg1 = cgx
end
