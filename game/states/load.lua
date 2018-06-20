function drawLoad()
	drawTopScreen()
	love.graphics.setColor(255,255,255)
	love.graphics.print(l_timer)
	love.graphics.setColor(0,0,0,alpha)
	love.graphics.rectangle('fill',0,0,400,240)
	drawBottomScreen()
	love.graphics.setColor(0,0,0,alpha)
	love.graphics.rectangle('fill',-40,0,400,240)
end

function updateLoad()
	timer = 501
	if l_timer <= 100 then
		l_timer = l_timer + 1
	end
	
	--loading assets
	if l_timer == 95 then
		font = love.graphics.newFont('images/gui/fonts/Aller_Rg',12)
		love.graphics.setFont(font)
	
	elseif l_timer == 96 then
		m1 = love.graphics.newFont('images/gui/fonts/m1',14)
		
	elseif l_timer == 97 then
		sfx1 = love.audio.newSource('audio/sfx/select.ogg', 'static')
		sfx2 = love.audio.newSource('audio/sfx/hover.ogg', 'static')
		
	elseif l_timer == 98 then
		--splash, title screen, gui elements, sfx
		namebox = love.graphics.newImage('images/gui/namebox.png')
		textbox = love.graphics.newImage('images/gui/textbox.png')
		background_Image = love.graphics.newImage('images/bg/menu_bg.png')
		guicheck = love.graphics.newImage('images/gui/check.png')
		guicheckwhite = love.graphics.newImage('images/gui/checkwhite.png')
		if global_os == 'HorizonNX' then
			for i = 0, 9, 1 do
				num = i
				loadstring("number_"..num.." = love.graphics.newImage('images/gui/fonts/numbers/'..num..'.png')")()
			end
		end
		
	elseif l_timer == 99 then
		l_timer = 99
		local file = love.filesystem.isFile('persistent')
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