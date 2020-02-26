require('scripts/'..settings.lang..'/poemwords')

local poemword = 1
local progress = '1'
local word = {}
local wordr
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
local m_y = 720
local p_y = 500
local ground = 500
local y_velocity = 0
local jump_height = -900
local gravity = -6750

local menuselected = 1
local cursorX
local cursorY

local eyes_chance = love.math.random(0,5)
local eyes_timer = 0
local eyes_y = 0
local eyes_in = false
local glitch2g = love.math.random(1,101)
local glitchpoem_in = false

local mk = {'M','o','n','i','k','a'}

function addpoints()
	sPoint = sPoint + spAdd
	nPoint = nPoint + npAdd
	yPoint = yPoint + ypAdd
	
	xaload = 0
	if glitchpoem_in and love.math.random(1,11) >= 7 then
		sfxplay('select_glitch')
	elseif glitchpoem_in and love.math.random(1,11) == 1 then
		sfxplay('baa')
	else
		sfx1:play()
	end
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
			if choicepick == 'n' then
				nPoint = nPoint + 5
			elseif choicepick == 'y' then
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
			if love.math.random(1,401) == 1 and chapter >= 21 and not glitchpoem_in then
				word[i] = {glitchtext(40),'glitchpoem'}
			else
				wordr = love.math.random(1,#wordlist)
				word[i] = wordlist[wordr]
				table.remove(wordlist,wordr)
			end
		end
		
		if persistent.act2[3] ~= 1 then
			glitch2g = love.math.random(1,101)
		end
	else
		for i = 1, 10 do
			mk = {'M','o','n','i','k','a'}
			for j = 1, 6 do
				if love.math.random(0, 4) == 0 then
					mk[j] = ' '
				elseif love.math.random(0, 4) == 0 then
					mk[j] = glitchtext(1)
				end
			end
			word[i] = {mk[1]..mk[2]..mk[3]..mk[4]..mk[5]..mk[6]}
		end
	end
end

function poemgame()
	hideAll()
	collectgarbage()
	collectgarbage()
	
	state = 'poemgame'
	xaload = 0
	
	poemword = 1
	progress = '1'
	sPoint = 0
	nPoint = 0
	yPoint = 0
	
	s_sticker = s_sticker_1
	n_sticker = n_sticker_1
	y_sticker = y_sticker_1
	s_y = 500; n_y = 500; y_y = 500; p_y = 500; m_y = 720
	y_velocity = 0
	
	eyes_chance = love.math.random(0,5)
	eyes_in = false
	glitchpoem_in = false
	if persistent.act2[3] == 1 then
		glitch2g = 0
	end
	
	poemwords()
	updatewordlist()
	menuselected = 1
	menuselect()
end

function drawPoemGame()
	if glitchpoem_in then
		lg.setBackgroundColor(255,255,255)
	else
		lg.setBackgroundColor(0,0,0)
		lg.setColor(255,255,255,alpha)
		if notebook and not notebook_glitch then
			lg.draw(notebook)
		elseif notebook_glitch then
			lg.draw(notebook_glitch)
		end
	end
	
	lg.setColor(0,0,0)
	lg.draw(gui.check,cursorX,cursorY)
	lg.setFont(halogenfont)
	if poemword <= 20 then
		lg.print(progress .. '/20',800,70)
	else
		lg.print('20/20',800,70)
	end
	lg.print(word[1][1],455,160)
	lg.print(word[2][1],455,250)
	lg.print(word[3][1],455,345)
	lg.print(word[4][1],455,435)
	lg.print(word[5][1],455,525)
	lg.print(word[6][1],675,160)
	lg.print(word[7][1],675,250)
	lg.print(word[8][1],675,345)
	lg.print(word[9][1],675,435)
	lg.print(word[10][1],675,525)
	if spAdd and npAdd and ypAdd and dvertype == 'Test' then
		lg.print(spAdd..'\n'..npAdd..'\n'..ypAdd..'\n'..glitch2g,0,50)
	end
	
	lg.setColor(255,255,255,alpha)
	if persistent.ptr == 0 then
		lg.draw(s_sticker,30,s_y)
		lg.draw(n_sticker,130,n_y)
		lg.draw(y_sticker,250,y_y)
	elseif glitchpoem_in then
		lg.draw(y_sticker_1_broken,0,500,0,2)
	elseif persistent.ptr == 2 then
		lg.draw(n_sticker,130,n_y)
		lg.draw(y_sticker,250,y_y)
		lg.draw(m_sticker_2,0,m_y)
		if glitch2g == 101 and xaload <= 35 then
			lg.draw(y_sticker_2g,600,y_y)
		elseif glitch2g == 101 then
			lg.draw(y_sticker,600,y_y)
		end
	else
		lg.draw(m_sticker_1,130,500)
	end
	
	if poemstate == 0 and settings.lang == 'eng' then
		lg.setColor(255,255,255,alpha)
		lg.draw(poemtime)
		lg.draw(poemtime2)
	elseif poemstate == 0 and settings.lang ~= 'eng' then
		lg.setColor(255,255,255,alpha)
		lg.draw(poemtime,0,0)
		lg.setColor(0,0,0,alpha)
		lg.setFont(allerfont)
		lg.print(tr.poemtime,360,255)
	elseif eyes_in then
		lg.setColor(0,0,0)
		lg.rectangle('fill',0,0,1280,725)
		if eyes_timer <= 2.2 then
			lg.setColor(255,255,255)
			lg.draw(eyes,352,eyes_y)
			lg.draw(eyes,352,eyes_y+720)
			lg.draw(eyes,352,eyes_y+1280)
		end
	end
	
	lg.setFont(allerfont)
	lg.setColor(0,0,0)
	if menu_enabled then menu_draw() end
end

function updatePoemGame()
	xaload = xaload + 1
	if not spAdd then spAdd = 0 end
	if not npAdd then npAdd = 0 end
	if not ypAdd then ypAdd = 0 end
	
	if glitch2g == 101 and persistent.act2[3] ~= 1 and persistent.ptr == 2 then
		persistent.act2[3] = 1
		if xaload == 2 then
			savepersistent()
		end
	end
	
	if xaload <= 35 and poemword > 1 then
		if y_velocity == 0 then
			y_velocity = jump_height
		end
		
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
			if glitchpoem_sl then
				glitchpoem_in = true
				audioUpdate('4g')
			elseif npAdd == 3 or (spAdd == 3 and npAdd == 2) then
				n_sticker = n_sticker_2
				n_y = p_y
			elseif ypAdd == 3 or (spAdd == 3 and ypAdd == 2) then
				y_sticker = y_sticker_2
				y_y = p_y
			end
			if love.math.random(1,11) == 11 and chapter == 2 and not glitchpoem_in then
				m_y = p_y + 210
			end
		end
	else
		s_y = 500; n_y = 500; y_y = 500; p_y = 500; m_y = 720
		s_sticker = s_sticker_1
		n_sticker = n_sticker_1
		y_sticker = y_sticker_1
		if word[menuselected][2] == 'glitchpoem' then
			glitchpoem_sl = true
		elseif persistent.ptr <= 2 then
			glitchpoem_sl = false
			spAdd = word[menuselected][2]
			npAdd = word[menuselected][3]
			ypAdd = word[menuselected][4]
		end
	end
	
	if poemword >= 21 then
		if persistent.ptr == 2 and eyes_chance == 0 and persistent.act2[1] < 1 then
			persistent.act2[1] = 1
			savepersistent()
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
	if menuselected <= 5 then
		cursorX = 430
	else
		cursorX = 650
	end
	if menuselected == 1 or menuselected == 6 then
		cursorY = 160
	elseif menuselected == 2 or menuselected == 7 then
		cursorY = 250
	elseif menuselected == 3 or menuselected == 8 then
		cursorY = 345
	elseif menuselected == 4 or menuselected == 9 then
		cursorY = 435
	elseif menuselected == 5 or menuselected == 10 then
		cursorY = 525
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
		menu_enable('pause')
	end
end	