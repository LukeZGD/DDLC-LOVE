function drawLoad()
	drawTopScreen()
	love.graphics.setBackgroundColor(255,255,255)
	love.graphics.setColor(0,0,0,alpha)
	love.graphics.rectangle("fill",0,0,400,240)
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.print("Loading... ("..l_timer.."%)",0,0)
	drawBottomScreen()
	love.graphics.setColor(0,0,0,alpha)
	love.graphics.rectangle("fill",-40,0,400,240)
end

function updateLoad()
	timer = 501
	if l_timer <= 100 then
		l_timer = l_timer + 1
	end
	
	--loading assets
	if l_timer == 1 then
		font = love.graphics.newFont('images/gui/fonts/Aller_Rg')
		love.graphics.setFont(font)
	elseif l_timer == 5 then
		--splash, title screen, gui elements, sfx
		splash = love.graphics.newImage('images/bg/splash.png')
		titlebg = love.graphics.newImage('images/bg/bg.png')
		namebox = love.graphics.newImage('images/gui/namebox.png')
		textbox = love.graphics.newImage('images/gui/textbox.png')
		background_Image = love.graphics.newImage('images/bg/menu_bg.png')
		sfx1 = love.audio.newSource('audio/sfx/select.ogg')
		sfx2 = love.audio.newSource('audio/sfx/hover.ogg')
	
	elseif l_timer == 50 then
		poemfont = love.graphics.newFont('images/gui/fonts/Halogen')

	elseif l_timer == 52 then
		sfxpageflip = love.audio.newSource('audio/sfx/pageflip.ogg')
		
	elseif l_timer == 55 then
		sayoristicker1 = love.graphics.newImage('images/gui/poemgame/s_sticker_1.png')
		sayoristicker2 = love.graphics.newImage('images/gui/poemgame/s_sticker_2.png')
		yuristicker1 = love.graphics.newImage('images/gui/poemgame/y_sticker_1.png')
		
	elseif l_timer == 60 then
		yuristicker2 = love.graphics.newImage('images/gui/poemgame/y_sticker_2.png')
		natsukisticker1 = love.graphics.newImage('images/gui/poemgame/n_sticker_1.png')
		natsukisticker2 = love.graphics.newImage('images/gui/poemgame/n_sticker_2.png')

	elseif l_timer == 65 then
		m1 = love.graphics.newFont('images/gui/fonts/m1')
		
	elseif l_timer == 99 then
		l_timer = 99
		local file = love.filesystem.isFile("save1.sav")
		if file then
			checkchr()
		else
			alpha = 255
			timer = 501
			cl = 10016
			state = "newgame"
		end
	elseif l_timer >= 100 then
		l_timer = 100
		splashalpha(6)
	end
end