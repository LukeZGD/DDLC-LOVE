function drawLoad()
	drawTopScreen()
	love.graphics.setColor(0,0,0,0)
	love.graphics.rectangle('fill',0,0,400,240)
	love.graphics.setColor(255,255,255,alpha)
	drawBottomScreen()
	love.graphics.setColor(0,0,0,0)
	love.graphics.rectangle('fill',-40,0,400,240)
end

function updateLoad()
	timer = 501
	if l_timer <= 100 then
		l_timer = l_timer + 1
	end
	
	--loading assets
	if l_timer == 97 then
		font = love.graphics.newFont('images/gui/fonts/Aller_Rg',12)
		love.graphics.setFont(font)
		m1 = love.graphics.newFont('images/gui/fonts/m1',14)
		
	elseif l_timer == 98 then
		--splash, title screen, gui elements, sfx
		namebox = love.graphics.newImage('images/gui/namebox.png')
		textbox = love.graphics.newImage('images/gui/textbox.png')
		background_Image = love.graphics.newImage('images/bg/menu_bg.png')
		sfx1 = love.audio.newSource('audio/sfx/select.ogg')
		sfx2 = love.audio.newSource('audio/sfx/hover.ogg')
		
	elseif l_timer == 99 then
		l_timer = 99
		local file = love.filesystem.isFile('save1.sav')
		if file then
			checkchr()
		else
			changeState('newgame')
		end
	elseif l_timer >= 100 then
		love.graphics.setBackgroundColor(255,255,255)
		l_timer = 100
		splashalpha(6)
	end
end