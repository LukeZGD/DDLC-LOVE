function loaderPoems()
	if xaload == 0 then
		sfxplay('pageflip')
		if poem_author == 'yuri' then
			if yuri_2 then
				poembg = lgnewImage('assets/images/bg/poem_y1.jpg')
				audioUpdate('0')
			elseif yuri_3 then
				poembg = lgnewImage('assets/images/bg/poem1.jpg')
				audioUpdate('5_yuri2')
			else
				if not y1 then y1 = lg.newFont('assets/fonts/y1.ttf',33) end --yuri poem font
				audioUpdate('5_yuri')
			end
		elseif poem_author == 'sayori' then
			if not s1 then s1 = lg.newFont('assets/fonts/s1.ttf',35) end --sayori poem font
			if chapter ~= 5 then
				audioUpdate('5_sayori')
			end
		elseif poem_author == 'natsuki' then
			if not n1 then n1 = lg.newFont('assets/fonts/n1.ttf',24) end --natsuki poem font
			audioUpdate('5_natsuki')
		elseif poem_author == 'monika' and persistent.ptr <= 2 then
			audioUpdate('5_monika')
		end
		if poem_author == 'monika' and not m1 then
			m1 = lg.newFont('assets/fonts/m1.ttf',30) --monika poem font
		end
		if not poembg then poembg = lgnewImage("assets/images/bg/poem.jpg") end
		poem_scroll = {x=1,y=1}
	
	elseif xaload > 0 then
		if not poem_scroll then
			poem_scroll = {x=1,y=1}
		end
	end
end

function poem_disable(x)
	poem_enabled = false
	poem_scroll = nil
	
	--[[
    if s1 then
		Font.unload(s1)
		s1 = nil
	end
	if y1 then
		Font.unload(y1)
		y1 = nil
	end
	if n1 then
		Font.unload(n1)
		n1 = nil
	end
	if m1 then
		Font.unload(m1)
		m1 = nil
	end
	]]
	if type(poembg) == "number" then Graphics.freeImage(poembg) end
	poembg = nil
	if not x or x == 1 then
		audioUpdate('5')
	elseif x == 0 then
		audioUpdate('0')
	end
end
