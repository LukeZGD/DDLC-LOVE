function addpoints()
	spoint = spoint + wordlist[wordpick][2]
	npoint = npoint + wordlist[wordpick][3]
	ypoint = ypoint + wordlist[wordpick][4]

	sfx1:play()
	poemword = poemword + 1
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
	unloadAll()
	unloadbg()
	bgch = love.graphics.newImage('./images/bg/notebook.png')
	poemfont = love.graphics.newFont('Halogen')
	sayoristicker1 = love.graphics.newImage('./images/gui/poemgame/s_sticker_1.png')
	sayoristicker2 = love.graphics.newImage('./images/gui/poemgame/s_sticker_2.png')
	yuristicker1 = love.graphics.newImage('./images/gui/poemgame/y_sticker_1.png')
	yuristicker2 = love.graphics.newImage('./images/gui/poemgame/y_sticker_2.png')
	natsukisticker1 = love.graphics.newImage('./images/gui/poemgame/n_sticker_1.png')
	natsukisticker2 = love.graphics.newImage('./images/gui/poemgame/n_sticker_2.png')
	
	state = 'poemgame'
	audioUpdate('4')
	
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

function drawpoemgame()

	xaload = xaload + 1

	drawTopScreen()
	love.graphics.setBackgroundColor ( 0,0,0 )
	love.graphics.setColor(255,255,255)
	love.graphics.draw(bgch, 0, 0)
	
	love.graphics.setColor(0,0,0)
	love.graphics.print('>',cursorX,cursorY,0,1,1)
	
	love.graphics.setFont(poemfont)
	
	love.graphics.print(poemword .. "/20",245,25,0,1,1)
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
	
	
	drawBottomScreen()
	love.graphics.setColor(255,255,255)
	love.graphics.draw(background_Image, posX, posY)
	love.graphics.draw(sayoristicker1,50,100)
	love.graphics.draw(natsukisticker1,110,100)
	love.graphics.draw(yuristicker1,190,100)
	love.graphics.setColor(0,0,0)
	love.graphics.setFont(font)
	love.graphics.print('Sayori Points: ' .. spoint,0,32,0,1,1)
	love.graphics.print('Natsuki Points: ' .. npoint,0,48,0,1,1)
	love.graphics.print('Yuri Points: ' .. ypoint,0,64,0,1,1)
end

function menuselect()
	if menuselected == 1 then
		cursorX = 110
		cursorY = 43
		wordpick = word1r
	elseif menuselected == 2 then
		cursorX = 110
		cursorY = 78
		wordpick = word2r
	elseif menuselected == 3 then
		cursorX = 110
		cursorY = 116
		wordpick = word3r
	elseif menuselected == 4 then
		cursorX = 110
		cursorY = 151
		wordpick = word4r
	elseif menuselected == 5 then
		cursorX = 110
		cursorY = 186
		wordpick = word5r
	elseif menuselected == 6 then
		cursorX = 193
		cursorY = 43
		wordpick = word6r
	elseif menuselected == 7 then
		cursorX = 193
		cursorY = 78
		wordpick = word7r
	elseif menuselected == 8 then
		cursorX = 193
		cursorY = 116
		wordpick = word8r
	elseif menuselected == 9 then
		cursorX = 193
		cursorY = 151
		wordpick = word9r
	elseif menuselected == 10 then
		cursorX = 193
		cursorY = 186
		wordpick = word10r
	end
end

function poemgamekeypressed(key)

	if poemword <= 19 then

	if key == 'down' then
		if menuselected <= 10 then
			menuselected = menuselected + 1
			menuselect()
		end
		
	elseif key == 'up' then
		if menuselected >= 1 then
			menuselected = menuselected - 1
			menuselect()
		end
		
	elseif key == 'left' then
		if menuselected == 6 then
			menuselected = 1
			menuselect()
		elseif menuselected == 7 then
			menuselected = 2
			menuselect()
		elseif menuselected == 8 then
			menuselected = 3
			menuselect()
		elseif menuselected == 9 then
			menuselected = 4
			menuselect()
		elseif menuselected == 10 then
			menuselected = 5
			menuselect()
		end
	
	elseif key == 'right' then
		if menuselected == 1 then
			menuselected = 6
			menuselect()
		elseif menuselected == 2 then
			menuselected = 7
			menuselect()
		elseif menuselected == 3 then
			menuselected = 8
			menuselect()
		elseif menuselected == 4 then
			menuselected = 9
			menuselect()
		elseif menuselected == 5 then
			menuselected = 10
			menuselect()
		end
	end
	end
	
	if key == 'a' then
		if xaload >= 100 then
			addpoints()
			if poemword == 20 then
				splashalpha(5)
			else	
				updatewordlist()
				xaload = 0
			end
		end
	end
end
		