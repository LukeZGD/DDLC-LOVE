function drawTopScreen()
	if drawbottom == 1 then
		love.graphics.pop()
		drawbottom = 0
	elseif global_os == 'Horizon' then
		love.graphics.setScreen("top")
	end
end

function drawBottomScreen()
	if global_os == 'Windows' then
		love.graphics.push()
		love.graphics.translate((400 - 320) / 2, 240)
		drawbottom = 1
	else
		love.graphics.setScreen("bottom")
	end
end

function dripText(text,charactersPerSecond,startTime)
	currentTime = love.timer.getTime()
	if (currentTime <= startTime) or startTime == 0 then return "" end
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
				alpha = alpha + 4.25
			end
		elseif timer <=200 then
			if alpha >= 1 then
				alpha = alpha - 4.25
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
				alpha = alpha + 4.25
			end
		elseif timer <=480 then
			if alpha >= 1 then
				alpha = alpha - 4.25
			else
				alpha = 0
			end
		else alpha = 0 end
	--fade in title screen
	elseif x == 3 then
		if alpha >= 255 then
			alpha = 255
		else
			if menu_enabled == false then menu_enable('title', 6) end
			alpha = alpha + 3
		end
	--fade out to poemgame
	elseif x == 4 then
		if alpha <= 0 then
			alpha = 255
			poemgame()
		else	
			alpha = alpha - 1.5
		end
	--fade out from poemgame to game
	elseif x == 5 then
		if alpha <= 0 then
			alpha = 255
			cl = cl + 2
			xaload = 0
			state = "game"
		else	
			alpha = alpha - 1.5
		end
	--fade from load to splash screens
	elseif x == 6 then
		if alpha <= 0 then
			resetchr(2)
			xaload = 0
			timer = 0
			state = "splash1"
			audioUpdate('1')
		else
			alpha = alpha - 5
		end
	end
end

function drawGame()
	scriptCheck()
	charCheck()

	drawTopScreen()
	love.graphics.setColor(255, 255, 255, alpha)
	love.graphics.draw(bgch, 0, 0)
	if xaload >= 1 and menu_enabled == false or menu_type == 'choice' then
		
		if cg1 ~= "" then love.graphics.draw(cgch, 0, 0) end
		drawSayori(s.a,s.b)
		drawYuri(y.a,y.b) 
		drawNatsuki(n.a,n.b)  
		drawMonika(m.a,m.b)
	end
	
	if menu_enabled ~= true and poem_enabled ~= true and settings.textloc == 'Top' then
		if ct ~= '' then love.graphics.draw(namebox, 52, 142) end
		love.graphics.draw(textbox, 40, 162)
		love.graphics.setColor(0,0,0)
		love.graphics.print(ct,60,142) --t name
		love.graphics.print(ca,48,166) --line 1
		love.graphics.print(cb,48,182) --line 2
		love.graphics.print(cc,48,198) --line 3
		love.graphics.print(cd,48,214) --line 4
		c_x = 0
	end
	
	if menu_enabled and menu_type ~= 'choice' then
		love.graphics.draw(background_Image, posX, posY)
	elseif poem_enabled then drawPoem()
	end
	
	drawBottomScreen()
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.setFont(font)
	love.graphics.draw(background_Image, posX, posY)
	
	love.graphics.setColor(0,0,0)
	love.graphics.print(cl,0,0,0) --script number
	if autotimer > 0 then love.graphics.print('Auto/Skip - On', 0, 16) end
		
	if poem_enabled ~= true and settings.textloc == 'Bottom' then
		love.graphics.setColor(255,255,255,alpha)
		if ct ~= '' then love.graphics.draw(namebox, 12, 40) end
		love.graphics.draw(textbox, 0, 60)
		love.graphics.setColor(0,0,0)
		love.graphics.print(ct,20,40) --t name
		love.graphics.print(ca,8,64) --line 1
		love.graphics.print(cb,8,80) --line 2
		love.graphics.print(cc,8,96) --line 3
		love.graphics.print(cd,8,112) --line 4
		c_x = 220
	end
	
	if state ~= 'newgame' or poem_enabled == false then
		love.graphics.print("Y - Pause",40,c_x,0,1,1)
		love.graphics.print("B - Auto",135,c_x,0,1,1)
		love.graphics.print("X - Skip",225,c_x,0,1,1)
	end
	if menu_enabled then menu_draw() end
end

function drawPoem()
	love.graphics.draw(poembg, 40, 0)
	love.graphics.setColor(0,0,0)
	love.graphics.print(poemtext, 45, 15)
end

ct = "" --name text

function cgHide()
	cg1 = ''
end

function hideSayori()
	s.a = ''
	s.b = ''
	unloadSayori()
end

function hideYuri()
	y.a = ''
	y.b = ''
	unloadYuri()
end

function hideNatsuki()
	n.a = ''
	n.b = ''
	unloadNatsuki()
end

function hideMonika()
	m.a = ''
	m.b = ''
	unloadMonika()
end

function hideAll()
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

function drawSayori(a,b)
	if a=="5a" or a=="5b" or a=="5c" or a=="5d" or a=="sayori" then
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
	if a=="4" or a=='4b' or a=='yuri' then
		love.graphics.draw(yl, y.x, y.y)
	elseif a~='' then
		love.graphics.draw(yl, y.x, y.y)
		love.graphics.draw(yr, y.x, y.y)
	end

	if b~="" then
		love.graphics.draw(y_a, y.x, y.y)
	end
end

function drawNatsuki(a,b)
	if a=="5" or a=="5b" then --set natsuki's head x and y
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
	
	if b~="" then
		love.graphics.draw(m_a, m.x, m.y)
	end
end

