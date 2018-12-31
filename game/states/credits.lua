local c_timer = 200
local c_timer2
local ra1 = 440
local ra2 = 415
local ra3 = 482
local ra4 = 430
local ra5 = 488
local ra6 = 460

function loadCredits(x)
	if x ~= 1 then
		logo = lg.newImage('images/cg/credits/ddlc.png')
		
		audioUpdate('credits')
		c_timer = 0
	end
	alpha = 255
	state = 'credits'
end

function drawCredits()
	lg.setBackgroundColor(0,0,0)
	lg.setColor(255,255,255,alpha)
	
	if c_timer < 51 then
		lg.setFont(m1)
		lg.print("Every day, I imagine a future where I can be with you",440,200)
		lg.print("In my hand is a pen that will write a poem of me and you",415,250)
		lg.print("The ink flows down into a dark puddle",485,300)
		lg.print("Just move your hand - write the way into his heart!",435,350)
		lg.print("But in this world of infinite choices",488,400)
		lg.print("What will it take just to find that special day?",460,450)
		lg.setColor(0,0,0)
		lg.rectangle('fill',ra1,200,960,60)
		lg.rectangle('fill',ra2,250,960,60)
		lg.rectangle('fill',ra3,300,960,60)
		lg.rectangle('fill',ra4,350,960,60)
		lg.rectangle('fill',ra5,400,960,60)
		lg.rectangle('fill',ra6,450,960,60)
	elseif c_timer < 60 then
		lg.draw(logo)
	elseif c_timer < 165 then
		lg.draw(nats1, 600, 750 - c_timer2)
		lg.draw(nats2, 80, 1536 - c_timer2)
		lg.draw(yuri1, 600, 2130 - c_timer2)
		lg.draw(yuri2, 80, 2820 - c_timer2)
		lg.draw(nats3, 600, 3510 - c_timer2)
		lg.draw(yuri3, 80, 4200 - c_timer2)
		lg.draw(sayo1, 600, 4890 - c_timer2)
		lg.draw(sayo2, 80, 5580 - c_timer2)
		lg.draw(s_sticker_1, 360, 6180 - c_timer2)
		lg.draw(n_sticker_1, 490, 6180 - c_timer2)
		lg.draw(y_sticker_1, 660, 6180 - c_timer2)
		lg.draw(m_sticker_1, 810, 6180 - c_timer2)
		lg.draw(sayo3, 600, 6810 - c_timer2)
		lg.draw(moni1, 80, 7500 - c_timer2)
		lg.setFont(halogenfont)
		lg.print("Dan Salvato",225,930 - c_timer2)
		lg.print("Satchely",920,1620 - c_timer2)
		lg.print("Velinquent",243,2310 - c_timer2)
		lg.print("Dan Salvato",870,3000 - c_timer2)
		lg.print("Dan Salvato",210,3690 - c_timer2)
		lg.print("Jillian Ashcraft",870,4380 - c_timer2)
		lg.print("Masha Gutin",229,5055 - c_timer2)
		lg.print("Kagefumi",245,5100 - c_timer2)
		lg.print("David Evelyn",873,5745 - c_timer2)
		lg.print("Corey Shin",883,5790 - c_timer2)
		lg.print("Alecia Bardachino",200,6975 - c_timer2)
		lg.print("Matt Naples",220,7020 - c_timer2)
		lg.print("Monika",903,7665 - c_timer2)
		lg.print(player,910,7710 - c_timer2)
		lg.setColor(255,185,230)
		lg.setFont(rifficfont)
		lg.print("Concept and Game Design",144,855 - c_timer2)
		lg.print("Character Art",880,1545 - c_timer2)
		lg.print("Background Art",210,2235 - c_timer2)
		lg.print("Writing",890,2925 - c_timer2)
		lg.print("Music",246,3615 - c_timer2)
		lg.print("Vocals",917,4305 - c_timer2)
		lg.print("Special Thanks",210,4980 - c_timer2)
		lg.print("Special Thanks",860,5670 - c_timer2)
		lg.print("Special Thanks",210,6900 - c_timer2)
		lg.print("Special Thanks",860,7590 - c_timer2)
	elseif c_timer < 200 then
		lg.draw(splashw)
		lg.setFont(allerfont)
		lg.print('DDLC-LOVE',5,615)
		lg.print('Unofficial port by LukeeGD',5,660)
	end
	
	lg.setColor(255,255,255)
	lg.setFont(allerfont)
	drawConsole()
end

function updateCredits(dt)
	c_timer = c_timer + dt
	c_timer2 = (c_timer - 60) * 75
	--lyrics part stuff
	if c_timer >= 10.3 and c_timer <= 11.4 then
		ra1 = math.min(ra1 + 3, 505)
	elseif c_timer >= 11.7 and c_timer <= 13.55 then
		ra1 = math.min(ra1 + 3, 683)
	elseif c_timer >= 13.7 and c_timer <= 16 then
		ra1 = math.min(ra1 + 3, 1000)
	elseif c_timer >= 19.4 and c_timer <= 20.65 then
		ra2 = math.min(ra2 + 3, 495)
	elseif c_timer >= 20.8 and c_timer <= 23 then
		ra2 = math.min(ra2 + 3, 730)
	elseif c_timer >= 23.2 and c_timer <= 26 then
		ra2 = math.min(ra2 + 3, 1000)
	elseif c_timer >= 28.3 and c_timer <= 30 then
		ra3 = math.min(ra3 + 3, 615)
	elseif c_timer >= 30.1 and c_timer <= 32.4 then
		ra3 = math.min(ra3 + 3, 1000)
	elseif c_timer >= 32.8 and c_timer <= 34.2 then
		ra4 = math.min(ra4 + 3, 580)
	elseif c_timer >= 34.3 and c_timer <= 37 then
		ra4 = math.min(ra4 + 3, 1000)
	elseif c_timer >= 37.5 and c_timer <= 39.1 then
		ra5 = math.min(ra5 + 3, 615)
	elseif c_timer >= 39.2 and c_timer <= 41.7 then
		ra5 = math.min(ra5 + 3, 1000)
	elseif c_timer >= 42 and c_timer < 43.3 then
		ra6 = math.min(ra6 + 3, 580)
	elseif c_timer >= 43.4 and c_timer < 50 then
		ra6 = math.min(ra6 + 3, 1000)
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
		updateConsole("_","menu.lua deleted successfully.","resources.lua deleted successfully.","draw.lua deleted successfully.")
	elseif c_timer >= 163 and c_timer < 164 then
		updateConsole("os.remove(\"scripts/script.lua\")","menu.lua deleted successfully.","resources.lua deleted successfully.","draw.lua deleted successfully.")
	elseif c_timer >= 164 and c_timer < 165 then
		updateConsole("_","script.lua deleted successfully.","menu.lua deleted successfully.","resources.lua deleted successfully.")
	elseif c_timer >= 165 then
		console_enabled = false
	end
	
	if c_timer >= 200 and c_timer < 201.5 then
		updateConsole("ddlc=love.audio.newSource(\"ddlc"..'.mp3'.."\")")
	elseif c_timer >= 201.5 and c_timer < 202.5 then
		updateConsole("_")
	elseif c_timer >= 202.5 and c_timer < 203.5 then
		updateConsole("love.audio.play(ddlc)")
	elseif c_timer >= 203.5 and c_timer < 205 then
		updateConsole("_","Playing audio \"ddlc"..'.mp3'.."\"...")
	elseif c_timer >= 205 then
		console_enabled = false
		changeState('credits')
	end
end