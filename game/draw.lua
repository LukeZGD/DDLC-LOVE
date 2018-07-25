local drawbottom
local xps = {}
local yps = {}
local changeX = {from={s=0,y=0,n=0,m=0},to={s=0,y=0,n=0,m=0}}

function drawTopScreen()
	if drawbottom == 1 then
		love.graphics.pop()
		drawbottom = 0
	elseif global_os == 'Horizon' then
		love.graphics.setScreen('top')
	end
end

function drawBottomScreen()
	if global_os ~= 'Horizon' then
		love.graphics.push()
		love.graphics.translate((400 - 320) / 2, 240)
		drawbottom = 1
	else
		love.graphics.setScreen('bottom')
	end
end

function dripText(text,charactersPerSecond,startTime)
	currentTime = love.timer.getTime()
	if (currentTime <= startTime) or startTime == 0 then return '' end
	if currentTime > startTime then myTextStartTime2 = love.timer.getTime() end
	if charactersPerSecond == nil then charactersPerSecond = 100 end
	return text:sub(1,math.min(math.floor((currentTime-startTime)*charactersPerSecond),text:len()))
end

function easeQuadIn(t,b,c,d)
	t = t / d
	return c*t*t + b
end

function easeQuadOut(t,b,c,d)
	t = t / d
	return -(c) * t*(t-2) + b
end

function fadeOut(x)
	--fade out to poemgame
	if x == 1 then
		alpha = math.max(alpha - 2, 0)
		if alpha == 0 then
			changeState('poemgame')
		end
	--fade out from poemgame to game
	elseif x == 2 then
		alpha = math.max(alpha - 2, 0)
		if alpha == 0 then
			changeState('game',3)
		end
	--fade out from game to game (add 1 to chapter)
	elseif x == 3 then
		alpha = math.max(alpha - 2, 0)
		if alpha == 0 then
			chapter = chapter + 1
			changeState('game',3)
		end
	--fade out then go to next 2 lines
	elseif x == 4 then
		alpha = math.max(alpha - 3, 0)
		if alpha == 0 then
			scriptJump(cl + 2)
			alpha = 255
		end
	end
end

function cgHide()
	cg1 = ''
	cgch = nil
end

function drawdatetime()
	if bgimg_disabled then
		love.graphics.setColor(255,255,255,alpha)
	else
		love.graphics.setColor(0,0,0,alpha)
	end
	love.graphics.print(os.date("%Y-%m-%d %H:%M"),195,220)
end

function drawTextBox()
	if settings.textloc == 'Top' then
		xps = {c=48,ct=63,textbox=40,namebox=52}
		yps = {c={166,182,198,214},ct=142,textbox=162,namebox=142}
		drawTopScreen()
	else
		xps = {c=8,ct=23,textbox=0,namebox=12}
		yps = {c={66,82,98,114},ct=42,textbox=62,namebox=42}
	end
	
	if style_edited then love.graphics.setFont(deffont) end
	
	if (menu_enabled ~= true and poem_enabled ~= true) or (event_enabled and textbox_enabled) then
		love.graphics.setColor(255,255,255,alpha)
		if ct ~= '' then love.graphics.draw(namebox, xps.namebox, yps.namebox) end
		love.graphics.draw(textbox, xps.textbox, yps.textbox)
		love.graphics.setColor(0,0,0,alpha)
		love.graphics.print(ct,xps.ct,yps.ct)
		for i = 1, 4 do
			love.graphics.print(c_disp[i],xps.c,yps.c[i])
		end
	end
	if settings.textloc == 'Top' then drawBottomScreen() end
end

function drawPoem()
	if poembg then
		love.graphics.draw(poembg, 40, 0)
	else
		love.graphics.setColor(243,243,243)
		love.graphics.rectangle('fill',40,0,320,240)
	end
	love.graphics.setColor(0,0,0)
	love.graphics.print(poemtext, 45, 6)
end

function drawNumbers()
	if global_os == 'HorizonNX' then
		local cl_a = tostring(cl)
		local cl_len = string.len(cl_a)
		drawnum_x = 0
		for i = 1, cl_len do
			num = i
			loadstring("fnum = string.sub("..cl_a..","..i..","..i..")")()
			loadstring("love.graphics.draw(number_"..fnum..","..drawnum_x..")")()
			drawnum_x = drawnum_x + 11
		end
	else
		if bgimg_disabled then 
			love.graphics.setColor(255,255,255,255)
		else
			love.graphics.setColor(0,0,0,255)
		end
		love.graphics.print(cl,2,2)
	end
end

function updateSayori(a,b,px,py)
	if b == nil then b = '' end
	s_Set.a = a
	s_Set.b = b
	if xaload == 0 then loadSayori() end
	if px and autoskip < 1 and xaload > 0 then
		if global_os ~= 'Horizon' then
			if s_Set.x < px then
				s_Set.x = math.floor(easeQuadOut(unitimer,changeX.from.s,-changeX.to.s,uniduration))
			elseif s_Set.x > px then
				s_Set.x = math.floor(easeQuadOut(unitimer,-changeX.from.s,-changeX.to.s,uniduration))
			end
		else
			if s_Set.x < px then
				s_Set.x = math.min(s_Set.x + 24, px)
			elseif m_Set.x > px then
				s_Set.x = math.max(s_Set.x - 24, px)
			end
		end
	elseif px and xaload > 0 then
		s_Set.x = px
	elseif px and xaload == 0 then
		changeX.from.s = s_Set.x
		changeX.to.s = changeX.from.s - px
	end
	if py ~= nil then s_Set.y = py end
end

function updateYuri(a,b,px,py)
	if b == nil then b = '' end
	y_Set.a = a 
	y_Set.b = b
	if xaload == 0 then loadYuri() end
	if px and autoskip < 1 and xaload > 0 then
		if global_os ~= 'Horizon' then
			if y_Set.x < px then
				y_Set.x = math.floor(easeQuadOut(unitimer,changeX.from.y,-changeX.to.y,uniduration))
			elseif y_Set.x > px then
				y_Set.x = math.floor(easeQuadOut(unitimer,-changeX.from.y,-changeX.to.y,uniduration))
			end
		else
			if y_Set.x < px then
				y_Set.x = math.min(y_Set.x + 24, px)
			elseif m_Set.x > px then
				y_Set.x = math.max(y_Set.x - 24, px)
			end
		end
	elseif px and xaload > 0 then
		y_Set.x = px
	elseif px and xaload == 0 then
		changeX.from.y = y_Set.x
		changeX.to.y = changeX.from.y - px
	end
	if py ~= nil then y_Set.y = py end
end

function updateNatsuki(a,b,px,py)
	if b == nil then b = '' end
	n_Set.a = a
	n_Set.b = b
	if xaload == 0 then loadNatsuki() end
	if px and autoskip < 1 and xaload > 0 then
		if global_os ~= 'Horizon' then
			if n_Set.x < px then
				n_Set.x = math.floor(easeQuadOut(unitimer,changeX.from.n,-changeX.to.n,uniduration))
			elseif n_Set.x > px then
				n_Set.x = math.floor(easeQuadOut(unitimer,-changeX.from.n,-changeX.to.n,uniduration))
			end
		else
			if n_Set.x < px then
				n_Set.x = math.min(n_Set.x + 24, px)
			elseif m_Set.x > px then
				n_Set.x = math.max(n_Set.x - 24, px)
			end
		end
	elseif px and xaload > 0 then
		n_Set.x = px
	elseif px and xaload == 0 then
		changeX.from.n = n_Set.x
		changeX.to.n = changeX.from.n - px
	end
	if py ~= nil then n_Set.y = py end
end

function updateMonika(a,b,px,py)
	if b == nil then b = '' end
	m_Set.a = a
	m_Set.b = b
	if xaload == 0 then loadMonika() end
	if px and autoskip < 1 and xaload > 0 then
		if global_os ~= 'Horizon' then
			if m_Set.x < px then
				m_Set.x = math.floor(easeQuadOut(unitimer,changeX.from.m,-changeX.to.m,uniduration))
			elseif m_Set.x > px then
				m_Set.x = math.floor(easeQuadOut(unitimer,-changeX.from.m,-changeX.to.m,uniduration))
			end
		else
			if m_Set.x < px then
				m_Set.x = math.min(m_Set.x + 24, px)
			elseif m_Set.x > px then
				m_Set.x = math.max(m_Set.x - 24, px)
			end
		end
	elseif px and xaload > 0 then
		m_Set.x = px
	elseif px and xaload == 0 then
		changeX.from.m = m_Set.x
		changeX.to.m = changeX.from.m - px
	end
	if py ~= nil then m_Set.y = py end
end

function hideSayori()
	if xaload == 0 then
		changeX.from.s = s_Set.x
		changeX.to.s = s_Set.x + 200
	end
	if s_Set.x <= -200 or autoskip > 0 then
		s_Set.a = ''
		s_Set.b = ''
		if sl then unloadSayori() end
	elseif xaload > 0 then
		if global_os == 'Horizon' then
			s_Set.x = math.max(s_Set.x - 24, -200)
		else
			s_Set.x = math.floor(-(easeQuadIn(unitimer,changeX.from.s,changeX.to.s,uniduration)) + changeX.from.s*2)
		end
	end
end

function hideYuri()
	if xaload == 0 then
		changeX.from.y = y_Set.x
		changeX.to.y = y_Set.x + 200
	end
	if y_Set.x <= -200 or autoskip > 0 then
		y_Set.a = ''
		y_Set.b = ''
		if yl then unloadYuri() end
	elseif xaload > 0 then
		if global_os == 'Horizon' then
			y_Set.x = math.max(y_Set.x - 24, -200)
		else
			y_Set.x = math.floor(-(easeQuadIn(unitimer,changeX.from.y,changeX.to.y,uniduration)) + changeX.from.y*2)
		end
	end
end

function hideNatsuki()
	if xaload == 0 then
		changeX.from.n = n_Set.x
		changeX.to.n = n_Set.x + 200
	end
	if n_Set.x <= -200 or autoskip > 0 then
		n_Set.a = ''
		n_Set.b = ''
		if nl then unloadNatsuki() end
	elseif xaload > 0 then
		if global_os == 'Horizon' then
			n_Set.x = math.max(n_Set.x - 24, -200)
		else
			n_Set.x = math.floor(-(easeQuadIn(unitimer,changeX.from.n,changeX.to.n,uniduration)) + changeX.from.n*2)
		end
	end
end

function hideMonika()
	if xaload == 0 then
		changeX.from.m = m_Set.x
		changeX.to.m = m_Set.x + 200
	end
	if m_Set.x <= -200 or autoskip > 0 then
		m_Set.a = ''
		m_Set.b = ''
		if ml then unloadMonika() end
	elseif xaload > 0 then
		if global_os == 'Horizon' then
			m_Set.x = math.max(m_Set.x - 24, -200)
		else
			m_Set.x = math.floor(-(easeQuadIn(unitimer,changeX.from.m,changeX.to.m,uniduration)) + changeX.from.m*2)
		end
	end
end

function hideAll()
	hideSayori()
	hideYuri()
	hideNatsuki()
	hideMonika()
end

function drawSayori(a,b)
	if a=='1' or a=='1b' or a=='2' or a=='2b' or a=='3' or a=='3b' or a=='4' or a=='4b' then
		if sl then love.graphics.draw(sl, s_Set.x, s_Set.y) end
		if sr then love.graphics.draw(sr, s_Set.x, s_Set.y) end
	elseif a~='' then
		if sl then love.graphics.draw(sl, s_Set.x, s_Set.y) end
	end
	
	if b~='' then
		if s_a then love.graphics.draw(s_a, s_Set.x, s_Set.y) end
	end
end

function drawYuri(a,b)
	if a=='1' or a=='1b' or a=='2' or a=='2b' or a=='3' or a=='3b' then
		if yl then love.graphics.draw(yl, y_Set.x, y_Set.y) end
		if yr then love.graphics.draw(yr, y_Set.x, y_Set.y) end
	elseif a~='' then
		if yl then love.graphics.draw(yl, y_Set.x, y_Set.y) end
	end

	if b~='' then
		if y_a then love.graphics.draw(y_a, y_Set.x, y_Set.y) end
	end
end

function drawNatsuki(a,b)
	if a=='5' or a=='5b' then --set natsuki's head x and y pos
		nxh = n_Set.x + 4
		nyh = n_Set.y + 6
	else
		nxh = n_Set.x
		nyh = n_Set.y
	end

	if b~='' then
		if n_a then love.graphics.draw(n_a, nxh, nyh) end
	end
	
	if a=='1' or a=='1b' or a=='2' or a=='2b' or a=='3' or a=='3b' or a=='4' or a=='4b' or a=='f_1' or a=='f_1b' then
		if nl then love.graphics.draw(nl, n_Set.x, n_Set.y) end
		if nr then love.graphics.draw(nr, n_Set.x, n_Set.y) end
	elseif a~='' then
		if nl then love.graphics.draw(nl, n_Set.x, n_Set.y) end
	end
end

function drawMonika(a,b)
	if a=='1' or a=='2' or a=='3' or a=='4' then
		if ml then love.graphics.draw(ml, m_Set.x, m_Set.y) end
		if mr then love.graphics.draw(mr, m_Set.x, m_Set.y) end
	elseif a~='' then
		if ml then love.graphics.draw(ml, m_Set.x, m_Set.y) end
	end
	
	if b~='' then
		if m_a then love.graphics.draw(m_a, m_Set.x, m_Set.y) end
	end
end

