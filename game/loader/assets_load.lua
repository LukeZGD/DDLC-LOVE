function loaderAssets(l_timer)
	--loading assets
	if l_timer == 95 then
		font = lg.newFont('assets/fonts/Aller_Rg',12)
		lg.setFont(font)
	
	elseif l_timer == 96 then
		m1 = lg.newFont('assets/fonts/m1',14)
		deffont = lg.newFont()
		
	elseif l_timer == 97 then
		sfx1 = love.audio.newSource('assets/audio/sfx/select.ogg', 'static')
		sfx2 = love.audio.newSource('assets/audio/sfx/hover.ogg', 'static')
		
	elseif l_timer == 98 then
		--splash, title screen, gui elements, sfx
		namebox = lg.newImage('assets/images/gui/namebox.png')
		textbox = lg.newImage('assets/images/gui/textbox.png')
		background_Image = lg.newImage('assets/images/bg/menu_bg.png')
		guicheck = lg.newImage('assets/images/gui/check.png')
	end
end
