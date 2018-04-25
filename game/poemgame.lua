function addpoints()
	spoint = spoint + wordlist[wordpick][2]
	npoint = npoint + wordlist[wordpick][3]
	ypoint = ypoint + wordlist[wordpick][4]
	
	--wordlist[wordpick][1] = nil
	--wordlist[wordpick][2] = nil
	--wordlist[wordpick][3] = nil
	--wordlist[wordpick][4] = nil
	sfx1play()
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
	--love.graphics.draw(bgch, 0, 0)
	
	--love.graphics.setColor(0,0,0)
	love.graphics.print('>',cursorX,cursorY,0,1,1)
	
	--[[if word1 == nil or word2 == nil or word3 == nil or word4 == nil or word5 == nil
	or word6 == nil or word7 == nil or word8 == nil or word9 == nil or word10 == nil then
		updatewordlist()
	else]]
		love.graphics.print(word1,20,0,0,1,1)
		love.graphics.print(word2,20,16,0,1,1)
		love.graphics.print(word3,20,32,0,1,1)
		love.graphics.print(word4,20,48,0,1,1)
		love.graphics.print(word5,20,64,0,1,1)
		love.graphics.print(word6,110,0,0,1,1)
		love.graphics.print(word7,110,16,0,1,1)
		love.graphics.print(word8,110,32,0,1,1)
		love.graphics.print(word9,110,48,0,1,1)
		love.graphics.print(word10,110,64,0,1,1)
	--end
	
	drawBottomScreen()
	love.graphics.print(poemword .. "/20",128,0,0,1,1)
	love.graphics.print('Sayori Points: ' .. spoint,0,32,0,1,1)
	love.graphics.print('Natsuki Points: ' .. npoint,0,48,0,1,1)
	love.graphics.print('Yuri Points: ' .. ypoint,0,64,0,1,1)
end

function menuselect()
	if menuselected == 1 then
		cursorX = 0
		cursorY = 0
		wordpick = word1r
	elseif menuselected == 2 then
		cursorX = 0
		cursorY = 16
		wordpick = word2r
	elseif menuselected == 3 then
		cursorX = 0
		cursorY = 32
		wordpick = word3r
	elseif menuselected == 4 then
		cursorX = 0
		cursorY = 48
		wordpick = word4r
	elseif menuselected == 5 then
		cursorX = 0
		cursorY = 64
		wordpick = word5r
	elseif menuselected == 6 then
		cursorX = 90
		cursorY = 0
		wordpick = word6r
	elseif menuselected == 7 then
		cursorX = 90
		cursorY = 16
		wordpick = word7r
	elseif menuselected == 8 then
		cursorX = 90
		cursorY = 32
		wordpick = word8r
	elseif menuselected == 9 then
		cursorX = 90
		cursorY = 48
		wordpick = word9r
	elseif menuselected == 10 then
		cursorX = 90
		cursorY = 64
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
		