require('scripts/eng/poemwords')

local poemword = 1
local progress = '1'
local word = {}
local wordr = {}
local sPoint = 0
local nPoint = 0
local yPoint = 0
local spAdd
local npAdd
local ypAdd
local pchapter

local s_sticker
local n_sticker
local y_sticker

local s_y
local n_y
local y_y

local p_y = 100
local ground = 100
local y_velocity = 0
local jump_height = -300
local gravity = -2250

local menuselected = 1
local cursorX
local cursorY
local wordpick

local eyes_chance = math.random(0,5)
local eyes_timer = 0
local eyes_y = 0
local eyes_in

local mk = {'M','o','n','i','k','a'}

function addpoints()
	sPoint = sPoint + spAdd
	nPoint = nPoint + npAdd
	yPoint = yPoint + ypAdd

	sfx1:play()
	if poemword ~= 21 then poemword = poemword + 1 end
	if chapter == 22 then
		progress = progress..'1'
	else
		progress = poemword
	end
end

function poemgamefinish()
	--add 1 to chapter number
	if persistent.ptr <= 2 then chapter = chapter + 1 end
	if persistent.ptr == 2 then 
		pchapter = chapter - 20
	else
		pchapter = chapter
	end
	
	--determine poemwinner
	if persistent.ptr == 0 then
		if chapter == 2 then
			if choicepick == 'Natsuki' then
				nPoint = nPoint + 5
			elseif choicepick == 'Yuri' then
				yPoint = yPoint + 5
			else
				sPoint = sPoint + 5
			end
		end
		
		local maxpoint = math.max(sPoint,nPoint,yPoint)
		if maxpoint == sPoint then poemwinner[pchapter] = 'Sayori'
		elseif maxpoint == nPoint then poemwinner[pchapter] = 'Natsuki'
		elseif maxpoint == yPoint then poemwinner[pchapter] = 'Yuri'
		end
	elseif persistent.ptr == 2 then
		if nPoint > yPoint then poemwinner[pchapter] = 'Natsuki'
		else poemwinner[pchapter] = 'Yuri'
		end
	end
	
	if persistent.ptr <= 2 then
		local aa
		if poemwinner[pchapter] == 'Sayori' then aa = 's'
		elseif poemwinner[pchapter] == 'Natsuki' then aa = 'n'
		elseif poemwinner[pchapter] == 'Yuri' then aa = 'y'
		end
		loadstring('appeal.'..aa..' = appeal.'..aa..' + 1')()
		
		--determine poemappeal
		if sPoint < 29 then s_poemappeal[pchapter] = -1
		elseif sPoint > 45 then s_poemappeal[pchapter] = 1 end
		if nPoint < 29 then n_poemappeal[pchapter] = -1
		elseif nPoint > 45 then n_poemappeal[pchapter] = 1 end
		if yPoint < 29 then y_poemappeal[pchapter] = -1
		elseif yPoint > 45 then y_poemappeal[pchapter] = 1 end
	end
end

function updatewordlist()
	if persistent.ptr <= 2 then
		for i = 1, 10 do
			wordr[i] = math.random(1,#wordlist)
			word[i] = wordlist[wordr[i]][1]
		end
	else
		for i = 1, 10 do
			mk = {'M','o','n','i','k','a'}
			for j = 1, 6 do
				if math.random(0, 4) == 0 then
					mk[j] = ' '
				elseif math.random(0, 4) == 0 then
					mk[j] = glitchtext(1)
				end
			end
			word[i] = mk[1]..mk[2]..mk[3]..mk[4]..mk[5]..mk[6]
		end
	end
end

function poemgame()
	hideAll()
	collectgarbage()
	collectgarbage()
	
	state = 'poemgame'
	xaload = 0
	if persistent.ptr <= 2 then 
		audioUpdate('4',true)
		bgch2 = lg.newImage('assets/images/bg/notebook.png')
	elseif persistent.ptr == 3 then 
		audioUpdate('ghostmenu')
		bgch2 = lg.newImage('assets/images/bg/notebook-glitch.png')
	end
	
	if poemstate == 0 then 
		poemtime = lg.newImage('assets/images/gui/poemgame/poemtime.png')
	end
	
	poemword = 1
	progress = '1'
	sPoint = 0
	nPoint = 0
	yPoint = 0
	
	s_sticker = s_sticker_1
	n_sticker = n_sticker_1
	y_sticker = y_sticker_1
	s_y = 100; n_y = 100; y_y = 100; p_y = 100
	y_velocity = 0
	
	math.randomseed(os.time())
	math.random()
	math.random()
	math.random()
	
	eyes_chance = math.random(0,5)
	eyes_in = false
	
	poemwords()
	updatewordlist()
	menuselected = 1
	menuselect()
end

function drawPoemGame()
	drawTopScreen()
	lg.setBackgroundColor(0,0,0)
	lg.setColor(255,255,255,alpha)
	lg.draw(bgch2, 0, 0)
	
	lg.setColor(0,0,0)
	lg.draw(guicheck,cursorX,cursorY)
	if poemfont then lg.setFont(poemfont) end
	if poemword <= 20 then
		lg.print(progress .. '/20',245,25)
	else
		lg.print('20/20',245,25)
	end
	lg.print(word[1],117,45)
	lg.print(word[2],117,81)
	lg.print(word[3],117,117)
	lg.print(word[4],117,152)
	lg.print(word[5],117,187)
	lg.print(word[6],200,45)
	lg.print(word[7],200,81)
	lg.print(word[8],200,117)
	lg.print(word[9],200,152)
	lg.print(word[10],200,187)
	
	if poemstate == 0 then
		lg.setColor(255,255,255,alpha)
		lg.draw(poemtime,0,0)
	end
	
	if menu_enabled then
		lg.setColor(255,255,255,menu_alpha/2)
		lg.rectangle('fill',0,0,400,240)
	end
	
	if eyes_in then
		lg.setColor(0,0,0)
		lg.rectangle('fill',0,0,400,240)
		if eyes_timer <= 2.2 then
			lg.setColor(255,255,255)
			lg.draw(eyes,110,eyes_y)
			lg.draw(eyes,110,eyes_y+240)
			lg.draw(eyes,110,eyes_y+480)
		end
	end
	
	drawBottomScreen()
	lg.setColor(255,255,255,alpha)
	lg.draw(background_Image, posX, posY)
	
	if persistent.ptr == 0 then
		lg.draw(s_sticker,50,s_y)
		lg.draw(n_sticker,110,n_y)
		lg.draw(y_sticker,190,y_y)
	elseif persistent.ptr == 2 then
		lg.draw(n_sticker,110,n_y)
		lg.draw(y_sticker,190,y_y)
	else
		lg.draw(m_sticker_1,120,100)
	end
	
	lg.setColor(255,189,225,alpha)
	lg.rectangle('fill', 135,2,40,16) 
	lg.setColor(0,0,0)
	lg.setFont(font)
	lg.print('Menu',139,2)
	
	if menu_enabled then menu_draw() end
	
	if eyes_in then
		lg.rectangle('fill',-40,0,400,240)
	end
end

function updatePoemGame()
	xaload = xaload + 1
	
	if xaload <= 35 and poemword > 0 then
		if y_velocity == 0 then
			y_velocity = jump_height
		end
		if spAdd == nil then spAdd = 0 end
		if npAdd == nil then npAdd = 0 end
		if ypAdd == nil then ypAdd = 0 end
		if persistent.ptr == 0 then
			if spAdd == 3 then
				s_sticker = s_sticker_2
				s_y = p_y
			elseif npAdd == 3 then
				n_sticker = n_sticker_2
				n_y = p_y
			elseif ypAdd == 3 then
				y_sticker = y_sticker_2
				y_y = p_y
			end
		elseif persistent.ptr == 2 then
			if npAdd == 3 or (spAdd == 3 and npAdd == 2) then
				n_sticker = n_sticker_2
				n_y = p_y
			elseif ypAdd == 3 or (spAdd == 3 and ypAdd == 2) then
				y_sticker = y_sticker_2
				y_y = p_y
			end
		end
	else
		s_y = 100; n_y = 100; y_y = 100; p_y = 100
		s_sticker = s_sticker_1
		n_sticker = n_sticker_1
		y_sticker = y_sticker_1
		if persistent.ptr <= 2 then
			spAdd = wordlist[wordpick][2]
			npAdd = wordlist[wordpick][3]
			ypAdd = wordlist[wordpick][4]
		end
	end
	
	if poemword >= 21 then
		if persistent.ptr == 2 and eyes_chance == 0 then
			audioUpdate('0')
			sfxplay('eyes')
			eyes_in = true
			eyes_timer = eyes_timer + dt
			if eyes_timer > 3.45 then
				eyes_in = false
				fadeOut(2)
			elseif eyes_timer > 2.2 then
				alpha = 0
			elseif eyes_timer > 1.7 then
				eyes_y = math.min(eyes_y - 10, -480)
			elseif eyes_timer < 1.2 then
				eyes_y = math.min(eyes_y - 10, -240)
			end
		else
			fadeOut(2)
		end
	end
	
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
	wordpick = wordr[menuselected]
	if menuselected <= 5 then
		cursorX = 106
	else
		cursorX = 189
	end
	if menuselected == 1 or menuselected == 6 then
		cursorY = 43
	elseif menuselected == 2 or menuselected == 7 then
		cursorY = 79
	elseif menuselected == 3 or menuselected == 8 then
		cursorY = 115
	elseif menuselected == 4 or menuselected == 9 then
		cursorY = 150
	elseif menuselected == 5 or menuselected == 10 then
		cursorY = 186
	end
end

function poemgamekeypressed(key)
	if key == 'down' then
		if menuselected == 10 then
			menuselected = 6
		elseif menuselected == 5 then
			menuselected = 1
		elseif menuselected <= 9 then
			menuselected = menuselected + 1
		end
		menuselect()
		
	elseif key == 'up' then
		if menuselected == 1 then
			menuselected = 5
		elseif menuselected == 6 then
			menuselected = 10
		elseif menuselected >= 2 then
			menuselected = menuselected - 1
		end
		menuselect()
		
	elseif key == 'left' or key == 'right' then
		if menuselected <= 5 then
			menuselected = menuselected + 5
		elseif menuselected >= 6 then
			menuselected = menuselected - 5
		end
		menuselect()
	end
	
	if key == 'a' or key == 'lbutton' then
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
				xaload = -1
			end
		end
	elseif key == 'y' and eyes_in ~= true then
		if persistent.ptr <= 2 then
			menu_enable('pause')
		else
			menu_enable('pause2')
		end
	end
end

function poemgamemousepressed()
	if mouseX>=135 and mouseX<=165 and mouseY<=18 then
		poemgamekeypressed('y')
	end
end		
