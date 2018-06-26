local poemword
local word = {}
local wordr = {}
local sPoint
local nPoint
local yPoint
local spAdd
local npAdd
local ypAdd

local unsorted_pointlist = {}
local maxpoint
local POEM_DISLIKE_THRESHOLD = 29
local POEM_LIKE_THRESHOLD = 45

local p_y = 100
local ground = 100    
local y_velocity = 0       
local jump_height = -300  
local gravity = -2250

function addpoints()
	sPoint = sPoint + spAdd
	nPoint = nPoint + npAdd
	yPoint = yPoint + ypAdd

	sfx1:play()
	if poemword ~= 21 then poemword = poemword + 1 end
end

function poemgamefinish()
	--add 1 to chapter number
	chapter = chapter + 1
	
	--determine poemwinner
	unsorted_pointlist = {sPoint,nPoint,yPoint}
	maxpoint = math.max(unpack(unsorted_pointlist))
	if maxpoint == sPoint then poemwinner[chapter] = 'Sayori'
	elseif maxpoint == nPoint then poemwinner[chapter] = 'Natsuki'
	elseif maxpoint == yPoint then poemwinner[chapter] = 'Yuri'
	end
	
	--add 1 to poemwinner appeal
	loadstring(poemwinner[chapter]..'_appeal = '..poemwinner[chapter]..'_appeal + 1')()
	
	--determine poemappeal
	if sPoint < POEM_DISLIKE_THRESHOLD then s_poemappeal[chapter] = -1
    elseif sPoint > POEM_LIKE_THRESHOLD then s_poemappeal[chapter] = 1 end
    if nPoint < POEM_DISLIKE_THRESHOLD then n_poemappeal[chapter] = -1
    elseif nPoint > POEM_LIKE_THRESHOLD then n_poemappeal[chapter] = 1 end
	if yPoint < POEM_DISLIKE_THRESHOLD then y_poemappeal[chapter] = -1
    elseif yPoint > POEM_LIKE_THRESHOLD then y_poemappeal[chapter] = 1 end
end

function updatewordlist()
	for i = 1, 10 do
		wordr[i] = math.random(1,#wordlist)
		word[i] = wordlist[wordr[i]][1]
	end
end

function poemgame()
	state = 'poemgame'
	xaload = 0
	if audio1 ~= '4' then audioUpdate('4') end
	
	hideAll()
	bgch2 = love.graphics.newImage('images/bg/notebook.png')
	if poemstate == 0 then 
		poemtime = love.graphics.newImage('images/gui/poemgame/poemtime.png')
	end

	require 'scripts.poemwords'
	
	math.randomseed(os.time())
	math.random()
	math.random()
	math.random()
	poemwords()
	word = {}
	wordr = {}
	updatewordlist()
	
	menuselected = 1
	menuselect()
	
	sPoint = 0
	nPoint = 0
	yPoint = 0
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
	love.graphics.print(word[1],117,45,0,1,1)
	love.graphics.print(word[2],117,80,0,1,1)
	love.graphics.print(word[3],117,118,0,1,1)
	love.graphics.print(word[4],117,153,0,1,1)
	love.graphics.print(word[5],117,188,0,1,1)
	love.graphics.print(word[6],200,45,0,1,1)
	love.graphics.print(word[7],200,80,0,1,1)
	love.graphics.print(word[8],200,118,0,1,1)
	love.graphics.print(word[9],200,153,0,1,1)
	love.graphics.print(word[10],200,188,0,1,1)
	
	love.graphics.setColor(255,255,255,alpha)
	if poemstate == 0 then love.graphics.draw(poemtime,0,0) end
	
	if menu_enabled then
		love.graphics.setColor(255,255,255,128)
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	drawBottomScreen()
	love.graphics.draw(background_Image, posX, posY)
	if xaload <= 35 then
		if y_velocity == 0 then
			y_velocity = jump_height
		end
		if spAdd == 3 and poemword > 0 then
			if s_sticker_2 then love.graphics.draw(s_sticker_2,50,p_y) end
			if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
			if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
		elseif npAdd == 3 and poemword > 0 then
			if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
			if n_sticker_2 then love.graphics.draw(n_sticker_2,110,p_y) end
			if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
		elseif ypAdd == 3 and poemword > 0 then
			if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
			if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
			if y_sticker_2 then love.graphics.draw(y_sticker_2,190,p_y) end
		else
			if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
			if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
			if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
		end
	elseif sjump == 1 then
		if y_velocity == 0 then
			y_velocity = jump_height
		end
		if s_sticker_1 then love.graphics.draw(s_sticker_1,50,p_y) end
		if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
		if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
	elseif njump == 1 then
		if y_velocity == 0 then
			y_velocity = jump_height
		end
		if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
		if n_sticker_1 then love.graphics.draw(n_sticker_1,110,p_y) end
		if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
	elseif yjump == 1 then
		if y_velocity == 0 then
			y_velocity = jump_height
		end
		if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
		if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
		if y_sticker_1 then love.graphics.draw(y_sticker_1,190,p_y) end
	else
		p_y = 100
		if s_sticker_1 then love.graphics.draw(s_sticker_1,50,100) end
		if n_sticker_1 then love.graphics.draw(n_sticker_1,110,100) end
		if y_sticker_1 then love.graphics.draw(y_sticker_1,190,100) end
		spAdd = wordlist[wordpick][2]
		npAdd = wordlist[wordpick][3]
		ypAdd = wordlist[wordpick][4]
	end
	
	love.graphics.setColor(255,189,225,alpha)
	love.graphics.rectangle('fill', 135,2,40,16) 
	love.graphics.setColor(0,0,0)
	love.graphics.setFont(font)
	love.graphics.print('Pause',135,2)
	
	if menu_enabled then menu_draw() end
end

function updatePoemGame(dt)
	xaload = xaload + 1
	
	if y_velocity ~= 0 then                                  
		p_y = p_y + y_velocity * dt               
		y_velocity = y_velocity - gravity * dt 
	end
 
    if p_y > ground then  
		y_velocity = 0     
    	p_y = ground  
	end
	
	if global_os ~= 'HorizonNX' then
		if mouseDown then
			if mouseX>=50 and mouseX<=105 and mouseY>=90 and mouseY<=196 then
				sjump = 1
			elseif mouseX>=110 and mouseX<=185 and mouseY>=90 and mouseY<=196 then
				njump = 1
			elseif mouseX>=190 and mouseX<=260 and mouseY>=90 and mouseY<=196 then
				yjump = 1
			end
		else
			sjump = nil
			njump = nil
			yjump = nil
		end
	end
end

function menuselect()
	if menuselected == 1 then
		cursorX = 106
		cursorY = 44
		wordpick = wordr[1]
	elseif menuselected == 2 then
		cursorX = 106
		cursorY = 79
		wordpick = wordr[2]
	elseif menuselected == 3 then
		cursorX = 106
		cursorY = 117
		wordpick = wordr[3]
	elseif menuselected == 4 then
		cursorX = 106
		cursorY = 152
		wordpick = wordr[4]
	elseif menuselected == 5 then
		cursorX = 106
		cursorY = 187
		wordpick = wordr[5]
	elseif menuselected == 6 then
		cursorX = 189
		cursorY = 44
		wordpick = wordr[6]
	elseif menuselected == 7 then
		cursorX = 189
		cursorY = 79
		wordpick = wordr[7]
	elseif menuselected == 8 then
		cursorX = 189
		cursorY = 117
		wordpick = wordr[8]
	elseif menuselected == 9 then
		cursorX = 189
		cursorY = 152
		wordpick = wordr[9]
	elseif menuselected == 10 then
		cursorX = 189
		cursorY = 187
		wordpick = wordr[10]
	end
end

function poemgamekeypressed(key)
	if key == 'down' or key == 'cpaddown' then
		if menuselected == 10 then
			menuselected = 6
		elseif menuselected == 5 then
			menuselected = 1
		elseif menuselected <= 9 then
			menuselected = menuselected + 1
		end
		menuselect()
		
	elseif key == 'up' or key == 'cpadup' then
		if menuselected == 1 then
			menuselected = 5
		elseif menuselected == 6 then
			menuselected = 10
		elseif menuselected >= 2 then
			menuselected = menuselected - 1
		end
		menuselect()
		
	elseif key == 'left' or key == 'cpadleft' then
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
		elseif menuselected == 6 then
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
		elseif menuselected == 6 then
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
		menu_enable('pause')
		sfx1:play()	
	end
end

function poemgamemousepressed()
	if mouseX>=135 and mouseX<=165 and mouseY<=18 then
		poemgamekeypressed('y')
	end
end		