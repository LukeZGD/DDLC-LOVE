local c_timer = 200
local c_timer2
local ra1 = 100
local ra2 = 92
local ra3 = 120
local ra4 = 98
local ra5 = 126
local ra6 = 110

function loadCredits(x)
	if x ~= 1 then
		logo = lg.newImage('images/gui/logo.png')
		
		halogenfont = lg.newFont('fonts/Halogen',12)
		rifficfont = lg.newFont('fonts/RifficFree-Bold',12)
		
		audioUpdate('credits')
		c_timer = 0
	end
	alpha = 255
	state = 'credits'
end

function drawCredits()
	drawTopScreen()
	lg.setBackgroundColor(0,0,0)
	lg.setColor(255,255,255,alpha)
	
	if c_timer < 51 then
		lg.setFont(m1)
		lg.print("Every day, I imagine a future where I can be with you",100,55)
		lg.print("In my hand is a pen that will write a poem of me and you",92,75)
		lg.print("The ink flows down into a dark puddle",120,95)
		lg.print("Just move your hand - write the way into his heart!",98,115)
		lg.print("But in this world of infinite choices",126,135)
		lg.print("What will it take just to find that special day?",110,155)
		lg.setColor(0,0,0)
		lg.rectangle('fill',ra1,55,300,20)
		lg.rectangle('fill',ra2,75,300,20)
		lg.rectangle('fill',ra3,95,300,20)
		lg.rectangle('fill',ra4,115,300,20)
		lg.rectangle('fill',ra5,135,300,20)
		lg.rectangle('fill',ra6,155,300,20)
	elseif c_timer < 60 then
		lg.draw(logo,145,70)
	elseif c_timer < 165 then
		lg.draw(nats1, 180, 250 - c_timer2)
		lg.draw(nats2, 20, 480 - c_timer2)
		lg.draw(yuri1, 180, 710 - c_timer2)
		lg.draw(yuri2, 20, 940 - c_timer2)
		lg.draw(nats3, 180, 1170 - c_timer2)
		lg.draw(yuri3, 20, 1400 - c_timer2)
		lg.draw(sayo1, 180, 1630 - c_timer2)
		lg.draw(sayo2, 20, 1860 - c_timer2)
		lg.draw(s_sticker_1, 45, 2060 - c_timer2)
		lg.draw(n_sticker_1, 115, 2060 - c_timer2)
		lg.draw(y_sticker_1, 200, 2060 - c_timer2)
		lg.draw(m_sticker_1, 275, 2060 - c_timer2)
		lg.draw(sayo3, 180, 2270 - c_timer2)
		lg.draw(moni1, 20, 2500 - c_timer2)
		lg.setFont(halogenfont)
		lg.print("Dan Salvato",60,310 - c_timer2)
		lg.print("Satchely",280,540 - c_timer2)
		lg.print("Velinquent",76,770 - c_timer2)
		lg.print("Dan Salvato",270,1000 - c_timer2)
		lg.print("Dan Salvato",60,1230 - c_timer2)
		lg.print("Jillian Ashcraft",261,1460 - c_timer2)
		lg.print("Masha Gutin",70,1685 - c_timer2)
		lg.print("Kagefumi",78,1700 - c_timer2)
		lg.print("David Evelyn",268,1915 - c_timer2)
		lg.print("Corey Shin",273,1930 - c_timer2)
		lg.print("Alecia Bardachino",58,2325 - c_timer2)
		lg.print("Matt Naples",68,2340 - c_timer2)
		lg.print("Monika",279,2555 - c_timer2)
		lg.print(player,281,2570 - c_timer2)
		lg.setColor(255,185,230)
		lg.setFont(rifficfont)
		lg.print("Concept and Game Design",5,285 - c_timer2)
		lg.print("Character Art",260,515 - c_timer2)
		lg.print("Background Art",58,745 - c_timer2)
		lg.print("Writing",280,975 - c_timer2)
		lg.print("Music",77,1205 - c_timer2)
		lg.print("Vocals",280,1435 - c_timer2)
		lg.print("Special Thanks",52,1660 - c_timer2)
		lg.print("Special Thanks",252,1890 - c_timer2)
		lg.print("Special Thanks",52,2300 - c_timer2)
		lg.print("Special Thanks",252,2530 - c_timer2)
	elseif c_timer < 200 then
		lg.draw(splashw)
		lg.setFont(font)
		lg.print('DDLC-3DS',2,205)
		lg.print('Unofficial port by LukeeGD',2,220)
	end
	
	drawConsole()
	
	drawBottomScreen()
	lg.setColor(0,0,0)
	lg.rectangle('fill',-40,0,400,240)
	lg.setColor(255,255,255)
	lg.setFont(font)
	--lg.print(c_timer)
end

function updateCredits(dt)
	c_timer = c_timer + dt
	c_timer2 = (c_timer - 60) * 25
	
	
	--lyrics part stuff
	if c_timer >= 10.3 and c_timer <= 11.4 then
		ra1 = math.min(ra1 + 1.25, 135)
	elseif c_timer >= 11.7 and c_timer <= 13.55 then
		ra1 = math.min(ra1 + 1.25, 215)
	elseif c_timer >= 13.7 and c_timer <= 16 then
		ra1 = math.min(ra1 + 1.25, 400)
	elseif c_timer >= 19.4 and c_timer <= 20.65 then
		ra2 = math.min(ra2 + 1.25, 132)
	elseif c_timer >= 20.8 and c_timer <= 23 then
		ra2 = math.min(ra2 + 1.25, 245)
	elseif c_timer >= 23.2 and c_timer <= 26 then
		ra2 = math.min(ra2 + 1.25, 400)
	elseif c_timer >= 28.3 and c_timer <= 30 then
		ra3 = math.min(ra3 + 1.25, 185)
	elseif c_timer >= 30.1 and c_timer <= 32.4 then
		ra3 = math.min(ra3 + 1.25, 400)
	elseif c_timer >= 32.8 and c_timer <= 34.2 then
		ra4 = math.min(ra4 + 1.25, 170)
	elseif c_timer >= 34.3 and c_timer <= 37 then
		ra4 = math.min(ra4 + 1.25, 400)
	elseif c_timer >= 37.5 and c_timer <= 39.1 then
		ra5 = math.min(ra5 + 1.25, 188)
	elseif c_timer >= 39.2 and c_timer <= 41.7 then
		ra5 = math.min(ra5 + 1.25, 400)
	elseif c_timer >= 42 and c_timer < 43.3 then
		ra6 = math.min(ra6 + 1.25, 165)
	elseif c_timer >= 43.4 and c_timer < 50 then
		ra6 = math.min(ra6 + 1.25, 400)
	end
	
	--fade in and out stuff
	if c_timer >= 48.5 and c_timer < 51 then
		alpha = math.max(alpha - 3, 0)
	elseif c_timer >= 51 and c_timer < 55 then
		alpha = math.min(alpha + 3, 255)
	elseif c_timer >= 57 and c_timer < 60 then
		alpha = math.max(alpha - 3, 0)
	elseif c_timer >= 60 and c_timer < 61 then
		alpha = 255
	elseif c_timer >= 165 and c_timer < 165.75 then
		alpha = 0
	elseif c_timer >= 165.75 and c_timer < 170 then
		alpha = math.min(alpha + 3, 255)
	elseif c_timer >= 172 and c_timer < 175 then
		alpha = math.max(alpha - 3, 0)
	elseif c_timer >= 175.5 and c_timer < 200 then
		if appeal.s == 9 then
			persistent.chr.m = 2
			cl = 509
			savepersistent()
			savegame('autoload')
			changeState('poem_special',13)
		else
			persistent.chr.m = 2
			cl = 508
			savepersistent()
			savegame('autoload')
			changeState('poem_special',12)
		end
	end
	
	--load and unload images stuff
	if c_timer >= 60 and c_timer < 75 then
		if nats1 == nil then
			if persistent.clear[1] == 1 then nats1 = lg.newImage('images/cg/credits/1.png')
			else nats1 = lg.newImage('images/cg/credits/1b.png') end
		end
		if nats2 == nil then
			if persistent.clear[2] == 1 then nats2 = lg.newImage('images/cg/credits/2.png')
			else nats2 = lg.newImage('images/cg/credits/2b.png') end
		end
	elseif c_timer >= 75 and c_timer < 84 then
		nats1 = nil
		if yuri1 == nil then yuri1 = lg.newImage('images/cg/credits/3.png') end
	elseif c_timer >= 84 and c_timer < 93 then
		nats2 = nil
		if yuri2 == nil then yuri2 = lg.newImage('images/cg/credits/4.png') end
	elseif c_timer >= 93 and c_timer < 103 then
		yuri1 = nil
		if nats3 == nil then
			if persistent.clear[5] == 1 then nats3 = lg.newImage('images/cg/credits/5.png')
			else nats3 = lg.newImage('images/cg/credits/5b.png') end
		end
	elseif c_timer >= 103 and c_timer < 111 then
		yuri2 = nil
		if yuri3 == nil then
			if persistent.clear[6] == 1 then yuri3 = lg.newImage('images/cg/credits/6.png')
			else yuri3 = lg.newImage('images/cg/credits/6b.png') end
		end
	elseif c_timer >= 111 and c_timer < 120 then
		nats3 = nil
		if sayo1 == nil then
			if persistent.clear[7] == 1 then sayo1 = lg.newImage('images/cg/credits/7.png')
			else sayo1 = lg.newImage('images/cg/credits/7b.png') end
		end
	elseif c_timer >= 120 and c_timer < 130 then
		yuri3 = nil
		if sayo2 == nil then
			if persistent.clear[8] == 1 then sayo2 = lg.newImage('images/cg/credits/8.png')
			else sayo2 = lg.newImage('images/cg/credits/8b.png') end
		end
	elseif c_timer >= 130 and c_timer < 138 then
		sayo1 = nil
		if m_sticker_1 == nil then m_sticker_1 = lg.newImage('images/gui/poemgame/m_sticker_1.png') end
		if n_sticker_1 == nil then n_sticker_1 = lg.newImage('images/gui/poemgame/n_sticker_1.png') end
		if s_sticker_1 == nil then s_sticker_1 = lg.newImage('images/gui/poemgame/s_sticker_1.png') end
		if y_sticker_1 == nil then y_sticker_1 = lg.newImage('images/gui/poemgame/y_sticker_1.png') end
	elseif c_timer >= 138 and c_timer < 144 then
		sayo2 = nil
		if sayo3 == nil then
			if persistent.clear[9] == 1 then sayo3 = lg.newImage('images/cg/credits/9.png')
			else sayo3 = lg.newImage('images/cg/credits/9b.png') end
		end
	elseif c_timer >= 144 and c_timer < 164 then
		m_sticker_1 = nil
		n_sticker_1 = nil
		s_sticker_1 = nil
		y_sticker_1 = nil
		if moni1 == nil then moni1 = lg.newImage('images/cg/credits/10.png') end
	elseif c_timer >= 164 then
		sayo3 = nil
		moni1 = nil
		if splashw == nil then splashw = lg.newImage('images/cg/credits/splashw.png') end
	end
	
	--fake console stuff
	if c_timer >= 157 and c_timer < 158 then
		updateConsole("os.remove(\"draw.lua\")")
	elseif c_timer >= 158 and c_timer < 159 then
		updateConsole("_","draw.lua deleted successfully.")
	elseif c_timer >= 159 and c_timer < 160 then
		updateConsole("os.remove(\"resources.lua\")","draw.lua deleted successfully.")
	elseif c_timer >= 160 and c_timer < 161 then
		updateConsole("_","resources.lua deleted successfully.","draw.lua deleted successfully.")
	elseif c_timer >= 161 and c_timer < 162 then
		updateConsole("os.remove(\"menu.lua\")","resources.lua deleted successfully.","draw.lua deleted successfully.")
	elseif c_timer >= 162 and c_timer < 163 then
		updateConsole("_","menu.lua deleted successfully.","resources.lua deleted successfully.")
	elseif c_timer >= 163 and c_timer < 164 then
		updateConsole("os.remove(\"scripts/script.lua\")","menu.lua deleted successfully.","resources.lua deleted successfully.")
	elseif c_timer >= 164 and c_timer < 165 then
		updateConsole("_","script.lua deleted successfully.","menu.lua deleted successfully.")
	elseif c_timer >= 165 then
		console_enabled = false
	end
	
	if c_timer >= 200 and c_timer < 201.5 then
		updateConsole("ddlc=love.audio.newSource(\"ddlc.ogg\")")
	elseif c_timer >= 201.5 and c_timer < 202.5 then
		updateConsole("_")
	elseif c_timer >= 202.5 and c_timer < 203.5 then
		updateConsole("love.audio.play(ddlc)")
	elseif c_timer >= 203.5 and c_timer < 205 then
		updateConsole("_","Playing audio \"ddlc.ogg\"...")
	elseif c_timer >= 205 then
		console_enabled = false
		changeState('credits')
	end
end