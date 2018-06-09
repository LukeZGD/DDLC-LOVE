function addpoints()
	spoint = spoint + spadd
	npoint = npoint + npadd
	ypoint = ypoint + ypadd

	sfx1:play()
	if poemword ~= 21 then poemword = poemword + 1 end
end

function poemgamefinish()
	if chapter < 5 then
		chapter = chapter+1
	end

	if spoint > ypoint then
		if spoint > npoint then poemwinner[chapter] = 'Sayori' 
		elseif npoint > spoint then poemwinner[chapter] = 'Natsuki'
		end
	elseif ypoint > spoint then
		if ypoint > npoint then poemwinner[chapter] = 'Yuri'
		elseif npoint > ypoint then poemwinner[chapter] = 'Natsuki'
		end
	end
	
	if spoint < 29 then s_poemappeal[chapter] = -1
    elseif spoint > 45 then s_poemappeal[chapter] = 1 end
    if npoint < 29 then n_poemappeal[chapter] = -1
    elseif npoint > 45 then n_poemappeal[chapter] = 1 end
	if ypoint < 29 then y_poemappeal[chapter] = -1
    elseif ypoint > 45 then y_poemappeal[chapter] = 1 end
	
	if poemwinner[chapter] == 'Sayori' then
		s_poemappeal[chapter] = 1
		s_appeal = s_appeal+1
	elseif poemwinner[chapter] == 'Natsuki' then
		n_poemappeal[chapter] = 1
		n_appeal = n_appeal+1
	elseif poemwinner[chapter] == 'Yuri' then
		y_poemappeal[chapter] = 1
		y_appeal = y_appeal+1
	end
end

function updatewordlist()

	word1r = math.random(1,#wordlist)
	word2r = math.random(1,#wordlist)
	word3r = math.random(1,#wordlist)
	word4r = math.random(1,#wordlist)
	word5r = math.random(1,#wordlist)
	word6r = math.random(1,#wordlist)
	word7r = math.random(1,#wordlist)
	word8r = math.random(1,#wordlist)
	word9r = math.random(1,#wordlist)
	word10r = math.random(1,#wordlist)
	
	word1 = wordlist[word1r][1]
	word2 = wordlist[word2r][1]
	word3 = wordlist[word3r][1]
	word4 = wordlist[word4r][1]
	word5 = wordlist[word5r][1]
	word6 = wordlist[word6r][1]
	word7 = wordlist[word7r][1]
	word8 = wordlist[word8r][1]
	word9 = wordlist[word9r][1]
	word10 = wordlist[word10r][1]
end

function poemgame()
	state = 'poemgame'
	xaload = 0
	audioUpdate('4')
	
	hideAll()
	bgch2 = love.graphics.newImage('images/bg/notebook.png')
	if poemstate == 0 then 
		poemtime = love.graphics.newImage('images/gui/poemgame/poemtime.png')
	end

	require 'scripts.poemwords'
	
	p_y = 100
	ground = 100    
	y_velocity = 0       
	jump_height = -300  
	gravity = -2250  
	
	math.randomseed(os.time())
	poemwords()
	updatewordlist()
	
	menuselected = 1
	menuselect()
	
	spoint = 0
	npoint = 0
	ypoint = 0
	poemword = 1
end

function drawPoemGame()
	if poemword >= 21 then
		splashalpha(5)
	end
	
	drawTopScreen()
	love.graphics.setBackgroundColor ( 0,0,0 )
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.draw(bgch2, 0, 0)
	
	love.graphics.setColor(0,0,0)
	love.graphics.setFont(font)
	love.graphics.draw(guicheck,cursorX,cursorY)

	if poemfont then love.graphics.setFont(poemfont) end
	if poemword <= 20 then
		love.graphics.print(poemword .. '/20',245,25,0,1,1)
	else
		love.graphics.print('20/20',245,25,0,1,1)
	end
	love.graphics.print(word1,117,45,0,1,1)
	love.graphics.print(word2,117,80,0,1,1)
	love.graphics.print(word3,117,118,0,1,1)
	love.graphics.print(word4,117,153,0,1,1)
	love.graphics.print(word5,117,188,0,1,1)
	love.graphics.print(word6,200,45,0,1,1)
	love.graphics.print(word7,200,80,0,1,1)
	love.graphics.print(word8,200,118,0,1,1)
	love.graphics.print(word9,200,153,0,1,1)
	love.graphics.print(word10,200,188,0,1,1)
	
	love.graphics.setColor(255,255,255,alpha)
	if poemstate == 0 then love.graphics.draw(poemtime,0,0) end
	
	if menu_enabled then 
		love.graphics.draw(background_Image, posX, posY)
	end
	
	drawBottomScreen()
	love.graphics.draw(background_Image, posX, posY)
	if xaload <= 35 then
		if y_velocity == 0 then
			y_velocity = jump_height
		end
		if spadd == 3 and poemword > 0 then
			if s_sticker_2 then love.graphics.draw(s_sticker_2,50,p_y) end
			if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
			if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
		elseif npadd == 3 and poemword > 0 then
			if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
			if n_sticker_2 then love.graphics.draw(n_sticker_2,110,p_y) end
			if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
		elseif ypadd == 3 and poemword > 0 then
			if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
			if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
			if y_sticker_2 then love.graphics.draw(y_sticker_2,190,p_y) end
		else
			if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
			if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
			if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
		end
	else
		p_y = 100
		if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
		if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
		if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
		spadd = wordlist[wordpick][2]
		npadd = wordlist[wordpick][3]
		ypadd = wordlist[wordpick][4]
	end
	
	love.graphics.setColor(255,189,225,alpha)
	love.graphics.rectangle('fill', 135,220,40,16) 
	love.graphics.setColor(0,0,0)
	love.graphics.setFont(font)
	love.graphics.print('Pause',135,220)
	
	if menu_enabled then menu_draw() end
end

function updatePoemGame(dt)
	xaload = xaload+1
	
	if y_velocity ~= 0 then                                  
		p_y = p_y + y_velocity * dt               
		y_velocity = y_velocity - gravity * dt 
	end
 
    if p_y > ground then  
		y_velocity = 0     
    	p_y = ground  
	end
end

function menuselect()

	if menuselected == 1 then
		cursorX = 106
		cursorY = 44
		wordpick = word1r
	elseif menuselected == 2 then
		cursorX = 106
		cursorY = 79
		wordpick = word2r
	elseif menuselected == 3 then
		cursorX = 106
		cursorY = 117
		wordpick = word3r
	elseif menuselected == 4 then
		cursorX = 106
		cursorY = 152
		wordpick = word4r
	elseif menuselected == 5 then
		cursorX = 106
		cursorY = 187
		wordpick = word5r
	elseif menuselected == 6 then
		cursorX = 189
		cursorY = 44
		wordpick = word6r
	elseif menuselected == 7 then
		cursorX = 189
		cursorY = 79
		wordpick = word7r
	elseif menuselected == 8 then
		cursorX = 189
		cursorY = 117
		wordpick = word8r
	elseif menuselected == 9 then
		cursorX = 189
		cursorY = 152
		wordpick = word9r
	elseif menuselected == 10 then
		cursorX = 189
		cursorY = 187
		wordpick = word10r
	end

end

function poemgamekeypressed(key)
	if menu_enabled == false then
	
	if key == 'down' or key == 'cpaddown' then
		
		if menuselected == 10 then
			menuselected = 6
			menuselect()
		elseif menuselected == 5 then
			menuselected = 1
			menuselect()
		elseif menuselected <= 9 then
			menuselected = menuselected + 1
			menuselect()
		end
		
	elseif key == 'up' or key == 'cpadup' then
		if menuselected == 1 then
			menuselected = 5
			menuselect()
		elseif menuselected == 6 then
			menuselected = 10
			menuselect()
		elseif menuselected >= 2 then
			menuselected = menuselected - 1
			menuselect()
		end
		
	elseif key == 'left' or key == 'cpadleft' then
		if menuselected == 6 then
			menuselected = 1
		elseif menuselected == 7 then
			menuselected = 2
		elseif menuselected == 8 then
			menuselected = 3
		elseif menuselected == 9 then
			menuselected = 4
		elseif menuselected == 10 then
			menuselected = 5
		end
		menuselect()
	
	elseif key == 'right' or key == 'cpadright' then
		if menuselected == 1 then
			menuselected = 6
		elseif menuselected == 2 then
			menuselected = 7
		elseif menuselected == 3 then
			menuselected = 8
		elseif menuselected == 4 then
			menuselected = 9
		elseif menuselected == 5 then
			menuselected = 10
		end
		menuselect()
	end
	
	if key == 'a' then
		if xaload >= 35 then
			if poemstate == 0 then
				poemstate = nil
				sfx1:play()
			elseif poemword <= 19 then
				addpoints()
				updatewordlist()
				menuselect()
				xaload = 0
			elseif poemword == 20 then
				addpoints()
				poemgamefinish()
				xaload = 0
			end
		end
	elseif key == 'y' then 
		menu_enable('pause',7)
		sfx1:play()	
	end
	
	end
	
end

function poemgamemousepressed()
	if mouseX>=135 and mouseX<=165 and mouseY>=220 then
		poemgamekeypressed('y')
	end
end		