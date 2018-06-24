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
	return text:sub(1,math.min(math.floor((currentTime-startTime)*charactersPerSecond),text:len()))
end

function splashalpha(x)
	--team salvato splash
	if x == 1 then
		if s_timer <=150 then
			if alpha >= 255 then
				alpha = 255
			else
				alpha = alpha + 7.75
			end
		elseif s_timer <=200 then
			if alpha >= 1 then
				alpha = alpha - 7.75
			else
				alpha = 0
			end
		else alpha = 0 end
	--warning splash
	elseif x == 2 then
		if s_timer <=400 then
			if alpha >= 255 then
				alpha = 255
			else
				alpha = alpha + 7.75
			end
		elseif s_timer <=480 then
			if alpha >= 1 then
				alpha = alpha - 7.75
			else
				alpha = 0
			end
		else alpha = 0 end
	--fade in title screen
	elseif x == 3 then
		if alpha >= 255 then
			alpha = 255
			love.graphics.setBackgroundColor(0,0,0)
		else
			if menu_enabled ~= true then menu_enable('title', 6) end
			alpha = alpha + 5
		end
	--fade out to poemgame
	elseif x == 4 then
		if alpha <= 0 then
			changeState('poemgame')
		else	
			alpha = alpha - 2
		end
	--fade out from poemgame to game
	elseif x == 5 then
		if alpha <= 0 then
			changeState('game',3)
		else	
			alpha = alpha - 2
		end
	--fade from load to splash screens
	elseif x == 6 then
		if alpha <= 0 then
			changeState('splash')
		else
			alpha = alpha - 5
		end
	--fade out from game to game (add 1 to chapter)
	elseif x == 7 then
		if alpha <= 0 then
			chapter = chapter + 1
			changeState('game',3)
		else	
			alpha = alpha - 2
		end
	end
end

function cgHide()
	cg1 = ''
	if xaload == 0 then cgch = nil end
end

function drawdatetime()
	if bgimg_disabled then
		love.graphics.setColor(255,255,255,alpha)
	else
		love.graphics.setColor(0,0,0,alpha)
	end
	love.graphics.print(os.date("%Y-%m-%d %H:%M"),195,220)
end

function updateSayori(a,b,px,py)
	if b == nil then b = '' end
	s_Set.a = a
	s_Set.b = b
	if xaload == 0 then loadSayori() end
	if px and autoskip < 1 and xaload > 0 and settings.animh == 1 then 
		if s_Set.x > px then
			s_Set.x = math.max(s_Set.x - 24, px)
		elseif s_Set.x < px then
			s_Set.x = math.min(s_Set.x + 24, px)
		end
	elseif px and xaload > 0 then
		s_Set.x = px
	end
	if py ~= nil then s_Set.y = py end
end

function updateYuri(a,b,px,py)
	if b == nil then b = '' end
	y_Set.a = a 
	y_Set.b = b
	if xaload == 0 then loadYuri() end
	if px and autoskip < 1 and xaload > 0 and settings.animh == 1 then
		if y_Set.x > px then
			y_Set.x = math.max(y_Set.x - 24, px)
		elseif y_Set.x < px then
			y_Set.x = math.min(y_Set.x + 24, px)
		end
	elseif px and xaload > 0 then
		y_Set.x = px
	end
	if py ~= nil then y_Set.y = py end
end

function updateNatsuki(a,b,px,py)
	if b == nil then b = '' end
	n_Set.a = a
	n_Set.b = b
	if xaload == 0 then loadNatsuki() end
	if px and autoskip < 1 and xaload > 0 and settings.animh == 1 then 
		if n_Set.x > px then
			n_Set.x = math.max(n_Set.x - 24, px)
		elseif n_Set.x < px then
			n_Set.x = math.min(n_Set.x + 24, px)
		end
	elseif px and xaload > 0 then
		n_Set.x = px
	end
	if py ~= nil then n_Set.y = py end
end

function updateMonika(a,b,px,py)
	if b == nil then b = '' end
	m_Set.a = a
	m_Set.b = b
	if xaload == 0 then loadMonika() end
	if px and autoskip < 1 and xaload > 0 and settings.animh == 1 then 
		if m_Set.x > px then
			m_Set.x = math.max(m_Set.x - 24, px)
		elseif m_Set.x < px then
			m_Set.x = math.min(m_Set.x + 24, px)
		end
	elseif px and xaload > 0 then
		m_Set.x = px		
	end
	if py ~= nil then m_Set.y = py end
end

function hideSayori()
	if s_Set.x <= -200 or s_Set.x >= 300 or autoskip > 0 or settings.animh == 0 then
		s_Set.a = ''
		s_Set.b = ''
		if sl then unloadSayori() end
	else
		if s_Set.x > 200 then
			s_Set.x = s_Set.x + 22
		else
			s_Set.x = s_Set.x - 25
		end
	end
end

function hideYuri()
	if y_Set.x <= -200 or y_Set.x >= 300 or autoskip > 0 or settings.animh == 0 then
		y_Set.a = ''
		y_Set.b = ''
		if yl then unloadYuri() end
	else
		if y_Set.x > 200 then
			y_Set.x = y_Set.x + 22
		else
			y_Set.x = y_Set.x - 25
		end
	end
end

function hideNatsuki()
	if n_Set.x <= -200 or n_Set.x >= 300 or autoskip > 0 or settings.animh == 0 then
		n_Set.a = ''
		n_Set.b = ''
		if nl then unloadNatsuki() end
	else
		if n_Set.x > 200 then
			n_Set.x = n_Set.x + 22
		else
			n_Set.x = n_Set.x - 25
		end
	end
end

function hideMonika()
	if m_Set.x <= -200 or m_Set.x >= 300 or autoskip > 0 or settings.animh == 0 then
		m_Set.a = ''
		m_Set.b = ''
		if ml then unloadMonika() end
	else
		if m_Set.x > 200 then
			m_Set.x = m_Set.x + 22
		else
			m_Set.x = m_Set.x - 25
		end
	end
end

function hideAll()
	if x == nil then
		s_Set.a = ''
		s_Set.b = ''
		y_Set.a = ''
		y_Set.b = ''
		n_Set.a = ''
		n_Set.b = ''
		m_Set.a = ''
		m_Set.b = ''
		unloadAll()
	end
end

function drawSayori(a,b)
	if a=='5a' or a=='5b' or a=='5c' or a=='5d' or a=='f_1b' then
		if sl then love.graphics.draw(sl, s_Set.x, s_Set.y) end
	elseif a~='' then
		if sl then love.graphics.draw(sl, s_Set.x, s_Set.y) end
		if sr then love.graphics.draw(sr, s_Set.x, s_Set.y) end
	end
	
	if b~='' then
		if s_a then love.graphics.draw(s_a, s_Set.x, s_Set.y) end
	end
end

function drawYuri(a,b)
	if a=='4' or a=='4b' or a=='f_2bs' then
		if yl then love.graphics.draw(yl, y_Set.x, y_Set.y) end
	elseif a~='' then
		if yl then love.graphics.draw(yl, y_Set.x, y_Set.y) end
		if yr then love.graphics.draw(yr, y_Set.x, y_Set.y) end
	end

	if b~='' then
		if y_a then love.graphics.draw(y_a, y_Set.x, y_Set.y) end
	end
end

function drawNatsuki(a,b)
	if a=='5' or a=='5b' then --set natsuki's head x and y
		nxh = n_Set.x + 4
		nyh = n_Set.y + 6
	else
		nxh = n_Set.x
		nyh = n_Set.y
	end

	if b~='' then
		if n_a then love.graphics.draw(n_a, nxh, nyh) end
	end
	
	if a == '5' or a == '5b' or a == 'f_1' or a == 'f_1b' then
		if nl then love.graphics.draw(nl, n_Set.x, n_Set.y) end
	elseif a~='' then
		if nl then love.graphics.draw(nl, n_Set.x, n_Set.y) end
		if nr then love.graphics.draw(nr, n_Set.x, n_Set.y) end
	end
end

function drawMonika(a,b)
	if a=='5a' or a=='5b' then
		if ml then love.graphics.draw(ml, m_Set.x, m_Set.y) end
	elseif a~='' then
		if ml then love.graphics.draw(ml, m_Set.x, m_Set.y) end
		if mr then love.graphics.draw(mr, m_Set.x, m_Set.y) end
	end
	
	if b~='' then
		if m_a then love.graphics.draw(m_a, m_Set.x, m_Set.y) end
	end
end

