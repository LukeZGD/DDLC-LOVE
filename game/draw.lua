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
		if timer <=150 then
			if alpha >= 255 then
				alpha = 255
			else
				alpha = alpha + 7.75
			end
		elseif timer <=200 then
			if alpha >= 1 then
				alpha = alpha - 7.75
			else
				alpha = 0
			end
		else alpha = 0 end
	--warning splash
	elseif x == 2 then
		if timer <=400 then
			if alpha >= 255 then
				alpha = 255
			else
				alpha = alpha + 7.75
			end
		elseif timer <=480 then
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
			if menu_enabled == false then menu_enable('title', 6) end
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
			if chapter >= 3 then chapter = chapter + 1 end
			changeState('game',3)
		else	
			alpha = alpha - 2
		end
	--fade from load to splash screens
	elseif x == 6 then
		if alpha <= 0 then
			resetchr(2)
			changeState('splash')
		else
			alpha = alpha - 5
		end
	end
end

ct = '' --name text

function cgHide()
	cg1 = ''
end

function hideSayori()
	if s.x <= -200 or s.x >= 300 or autotimer >= 146 or settings.animh == 0 then
		s.a = ''
		s.b = ''
		if sl then unloadSayori() end
	else
		if s.x > 200 then
			s.x = s.x + 22
		else
			s.x = s.x - 25
		end
	end
end

function hideYuri()
	if y.x <= -200 or y.x >= 300 or autotimer >= 146 or settings.animh == 0 then
		y.a = ''
		y.b = ''
		if yl then unloadYuri() end
	else
		if y.x > 200 then
			y.x = y.x + 22
		else
			y.x = y.x - 25
		end
	end
end

function hideNatsuki()
	if n.x <= -200 or n.x >= 300 or autotimer >= 146 or settings.animh == 0 then
		n.a = ''
		n.b = ''
		if nl then unloadNatsuki() end
	else
		if n.x > 200 then
			n.x = n.x + 22
		else
			n.x = n.x - 25
		end
	end
end

function hideMonika()
	if m.x <= -200 or m.x >= 300 or autotimer >= 146 or settings.animh == 0 then
		m.a = ''
		m.b = ''
		if ml then unloadMonika() end
	else
		if m.x > 200 then
			m.x = m.x + 22
		else
			m.x = m.x - 25
		end
	end
end

function hideAll()
	if x == nil then
		s.a = ''
		s.b = ''
		y.a = ''
		y.b = ''
		n.a = ''
		n.b = ''
		m.a = ''
		m.b = ''
		unloadAll()
	end
end

function drawSayori(a,b)
	if a=='5a' or a=='5b' or a=='5c' or a=='5d' or a=='sayori' then
		love.graphics.draw(sl, s.x, s.y)
	elseif a~='' then
		love.graphics.draw(sl, s.x, s.y)
		love.graphics.draw(sr, s.x, s.y)
	end
	
	if b~='' then
		love.graphics.draw(s_a, s.x, s.y)
	end
end

function drawYuri(a,b)
	if a=='4' or a=='4b' or a=='yuri' then
		love.graphics.draw(yl, y.x, y.y)
	elseif a~='' then
		love.graphics.draw(yl, y.x, y.y)
		love.graphics.draw(yr, y.x, y.y)
	end

	if b~='' then
		love.graphics.draw(y_a, y.x, y.y)
	end
end

function drawNatsuki(a,b)
	if a=='5' or a=='5b' then --set natsuki's head x and y
		nxh = n.x + 4
		nyh = n.y + 6
	else
		nxh = n.x
		nyh = n.y
	end

	if b~='' then
		love.graphics.draw(n_a, nxh, nyh)
	end
	
	if a == '5' or a == '5b' or a == 'natsuki' or a == 'natsuki2' or a == 'natsuki3' then
		love.graphics.draw(nl, n.x, n.y)
	elseif a~='' then
		love.graphics.draw(nl, n.x, n.y)
		love.graphics.draw(nr, n.x, n.y)
	end
end

function drawMonika(a,b)
	if a=='5a' or a=='5b' then
		love.graphics.draw(ml, m.x, m.y)
	elseif a~='' then
		love.graphics.draw(ml, m.x, m.y)
		love.graphics.draw(mr, m.x, m.y)
	end
	
	if b~='' then
		love.graphics.draw(m_a, m.x, m.y)
	end
end

