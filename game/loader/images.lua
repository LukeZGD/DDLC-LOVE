
function bgUpdate(bgx, forceload) --background changes
	if bgx == 'club_day2' then
		local bgclub_day = math.random(1, 6)
		if bgclub_day == 6 then
			bgx = 'club-skill'
		else
			bgx = 'club'
		end
	end
	
	if xaload == 0 or forceload then
		--[[
		if not bglisted then
			bgloaded = {}
			bglisted = love.filesystem.getDirectoryItems('assets/images/bg')
			for i,v in pairs(bglisted) do
				if (string.sub(v,-4) ~= '.png' and g_system ~= '3DS')
				or (string.sub(v,-4) ~= '.t3x' and g_system == '3DS') then
					bglisted[i] = nil
				end
			end
			
			for i,v in pairs(bglisted) do
				if bglisted[i] then bgloaded[v] = lg.newImage('assets/images/bg/'..v) end
			end
		end
		bgch = bgloaded[bgx..'.png'] --or t3x for 3ds
		]]
		
		if not bgloaded then
			bgloaded = {}
		end
		
		if bgx ~= '' then
			--if autoskip == 0 and forceload ~= true then bgch2 = bgch end
			if not bgloaded[bgx] then
				bgloaded[bgx] = lg.newImage('assets/images/bg/'..bgx..'.png')
			end
			bgch = bgloaded[bgx]
		end
	end	
	bg1 = bgx
end

function cgUpdate(cgx, forceload) --cg changes
	if cg1 ~= cgx or forceload then
		if not cgloaded then
			cgloaded = {}
		end
		
		if cgx ~= '' then
			if not cgloaded[cgx] then
				cgloaded[cgx] = lg.newImage('assets/images/cg/'..cgx..'.png')
			end
			cgch = cgloaded[cgx]
		end
	end	
	cg1 = cgx
end