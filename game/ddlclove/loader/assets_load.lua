function loaderAssets(l_timer)
	if not gui then
		gui = {}
	end

	--loading assets
	if l_timer == 96 then
		consolefont = lg.newFont('assets/fonts/F25_Bank_Printer.ttf',18)
		allerfont = lg.newFont('assets/fonts/Aller_Rg.ttf',23)
		lg.setFont(allerfont)

	elseif l_timer == 97 then
		sfx1 = love.audio.newSource('assets/audio/sfx/select.mp3','static')
		sfx2 = love.audio.newSource('assets/audio/sfx/hover.mp3','static')
		menu_bg_m = lgnewImage("assets/images/gui/menu_bg_m.png")

		gui.keysbox = lgnewImage("assets/images/gui/button/box.png")
		gui.mmenu = lgnewImage("assets/images/gui/overlay/main_menu.png")
		gui.gmenu = lgnewImage("assets/images/gui/overlay/game_menu.png")
		
	elseif l_timer == 98 then
		--splash, title screen, gui elements, sfx
		namebox = lgnewImage('assets/images/gui/namebox.png')
		textbox = lgnewImage('assets/images/gui/textbox.png')
		menu_bg = lgnewImage('assets/images/gui/menu_bg.png')
		gui.check = lgnewImage('assets/images/gui/button/check_selected_foreground.png')
		gui.ctc = lgnewImage('assets/images/gui/ctc.png')
		gui.skip = lgnewImage('assets/images/gui/skip.png')
		gui.sidebar = lgnewImage('assets/images/gui/overlay/sidebar.png')
		gui.slothover = lgnewImage('assets/images/gui/button/slot_hover_background.png')
		gui.slotidle = lgnewImage('assets/images/gui/button/slot_idle_background.png')
		gui.scrbarh = lgnewImage('assets/images/gui/scrollbar/horizontal_poem_bar.png')
		gui.scrhover = lgnewImage('assets/images/gui/slider/horizontal_hover_thumb.png')		
		
	elseif l_timer == 99 then
		m1 = lg.newFont('assets/fonts/m1.ttf',30) --monika poem font
		y1 = lg.newFont('assets/fonts/y1.ttf',33) --yuri poem font
		s1 = lg.newFont('assets/fonts/s1.ttf',35) --sayori poem font
		n1 = lg.newFont('assets/fonts/n1.ttf',24) --natsuki poem font
		dfnt = lg.newFont('assets/fonts/VerilySerifMono.ttf',23) --act 2 "edited" text font
		halogenfont = lg.newFont('assets/fonts/Halogen.ttf',28) --poem game font
		rifficfont = lg.newFont('assets/fonts/RifficFree-Bold.ttf',24) --charactername font
		
		
		--[[
		if settings.lang == 'languagecode' then
			m1 = lg.newFont('assets/fonts/nameoffont.ttf',fontsize)
			--set custom fonts for translations here!
		end
		]]

	elseif l_timer == 101 then
		gui.mainbuttons = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/mainbuttons.png")
		gui.gamebuttons = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/gamebuttons.png")
		gui.history = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/history.png")
		gui.gamemenu = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/gamemenu.png")
		gui.load = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/load.png")
		gui.save = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/save.png")
		gui.settings = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/settings.png")
		gui.setbuttons = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/setbuttons.png")
		
	elseif l_timer == 102 then
		gui.mainbuttons = lgnewImage("assets/images/gui/overlay/mainbuttons.png")
		gui.gamebuttons = lgnewImage("assets/images/gui/overlay/gamebuttons.png")
		gui.history = lgnewImage("assets/images/gui/overlay/history.png")
		gui.gamemenu = lgnewImage("assets/images/gui/overlay/gamemenu.png")
		gui.load = lgnewImage("assets/images/gui/overlay/load.png")
		gui.save = lgnewImage("assets/images/gui/overlay/save.png")
		gui.settings = lgnewImage("assets/images/gui/overlay/settings.png")
		gui.setbuttons = lgnewImage("assets/images/gui/overlay/setbuttons.png")
	end
end
