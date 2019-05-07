function loaderAssets(l_timer)
	if l_timer == 95 then
		font = lg.newFont('standard',14)
		lg.setFont(font)
	
	elseif l_timer == 96 then
		m1 = lg.newFont('standard',16)
		deffont = lg.newFont('standard',14)
		
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