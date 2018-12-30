local l_timer = 94
local err = ''
local savedir
local errtime = 0

function drawLoad()
	lg.setBackgroundColor(255,255,255)
	if err ~= '' then
		lg.setColor(0,0,0,alpha)
		lg.rectangle('fill',0,0,1280,725)
		lg.setColor(255,255,255)
		lg.print(err,10,10)
	end
end

function updateLoad()
	if l_timer < 99 then
		l_timer = l_timer + 1
	end
	
	--loading assets
	if l_timer == 95 then
		m1 = lg.newFont('fonts/m1.ttf',28)
		y1 = lg.newFont('fonts/y1.ttf',30)
		allerfont = lg.newFont('fonts/Aller_Rg.ttf',22)
		lg.setFont(allerfont)
		
	elseif l_timer == 96 then
		s1 = lg.newFont('fonts/s1.ttf',32)
		n1 = lg.newFont('fonts/n1.ttf',26)
		deffont = lg.newFont('fonts/VerilySerifMono.ttf',23)
		halogenfont = lg.newFont('fonts/Halogen.ttf',28)
		rifficfont = lg.newFont('fonts/RifficFree-Bold.ttf',24)
		
	elseif l_timer == 97 then
		sfx1 = love.audio.newSource('audio/sfx/select'..'.mp3', 'static')
		sfx2 = love.audio.newSource('audio/sfx/hover'..'.mp3', 'static')
		menu_bg_m = lg.newImage("images/gui/menu_bg_m.png")
		gui = {}
		gui.keysbox = lg.newImage("images/gui/button/box.png")
		gui.mmenu = lg.newImage("images/gui/overlay/main_menu.png")
		gui.gmenu = lg.newImage("images/gui/overlay/game_menu.png")
		gui.mainbuttons = lg.newImage("images/gui/overlay/mainbuttons.png")
		gui.gamebuttons = lg.newImage("images/gui/overlay/gamebuttons.png")
		gui.history = lg.newImage("images/gui/overlay/history.png")
		gui.gamemenu = lg.newImage("images/gui/overlay/gamemenu.png")
		gui.load = lg.newImage("images/gui/overlay/load.png")
		gui.save = lg.newImage("images/gui/overlay/save.png")
		gui.settings = lg.newImage("images/gui/overlay/settings.png")
		gui.setbuttons = lg.newImage("images/gui/overlay/setbuttons.png")
		
	elseif l_timer == 98 then
		--splash, title screen, gui elements, sfx
		namebox = lg.newImage('images/gui/namebox.png')
		textbox = lg.newImage('images/gui/textbox.png')
		background_Image = lg.newImage('images/gui/menu_bg.png')
		gui.check = lg.newImage('images/gui/button/check_selected_foreground.png')
		gui.ctc = lg.newImage('images/gui/ctc.png')
		gui.skip = lg.newImage('images/gui/skip.png')
		gui.sidebar = lg.newImage('images/gui/overlay/sidebar.png')
		gui.slothover = lg.newImage('images/gui/button/slot_hover_background.png')
		gui.slotidle = lg.newImage('images/gui/button/slot_idle_background.png')
		gui.scrbarh = lg.newImage('images/gui/scrollbar/horizontal_poem_bar.png')
		gui.scrhover = lg.newImage('images/gui/slider/horizontal_hover_thumb.png')		
		
	elseif l_timer == 99 then
		local file = love.filesystem.getInfo('persistent')
		if file then
			checkLoad()
		else
			changeState('newgame')
		end
	elseif l_timer == 100 then
		lg.setBackgroundColor(255,255,255)
		changeState('splash')
	end
end

function checkLoad()
	if love.filesystem.getInfo('persistent') then
		loadpersistent()
	end
	
	if love.filesystem.getInfo('settings.sav') then
		loadsettings()
		if not settings.masvol then
			settings = {textspd=100,autospd=4,masvol=70,bgmvol=70,sfxvol=70}
			savesettings()
		end
		game_setvolume()
	end
	
	if g_system == 'Switch' then
		savedir = 'sdmc:/switch/DDLC-LOVE/'
	elseif g_system == 'Vita' then
		savedir = 'ux0:/data/DDLC-LOVE/savedata/'
	elseif g_system == 'PSP' then
		savedir = 'ms0:/data/DDLC-LOVE/savedata/'
	else
		savedir = '%appdata%\\LOVE\\DDLC-LOVE\\'
	end
	
	os_timecheck = os.time()
	if g_system == 'PSP' then
		model = hw.getmodel()
	end
	
	local ghostmenu_chance = love.math.random(0, 63)
	if not persistent.act2 then
		err = [[
		Error!
		Old save data detected, and it is not compatible with this version of DDLC-LOVE.
		Please delete all save data and try again.
		
		Delete persistent and save files in here:
		> ]]..savedir..'\n\nPress Y to quit'
	elseif persistent.chr.s == 0 and persistent.ptr == 0 then
		changeState('s_kill_early')
	elseif ghostmenu_chance == 0 and persistent.ptr == 2 and persistent.chr.s == 0 then
		changeState('ghostmenu')
		persistent.chr.s = 2
		savepersistent()
	elseif persistent.chr.m == 2 then
		changeState('game','autoload')
	elseif model == '1000' then
		err = [[
		Error!
		PSP 1000 system detected. DDLC-LOVE will not run properly on this model because
		of the lack of RAM. (32 MB on 1000, 64 MB on other models)
		]]
	elseif os_timecheck then
		love.math.setRandomSeed(os.time())
		math.randomseed(os.time())
		l_timer = 100
	else
		err = [[
		Warning!
		os.time() returned nil
		
		Your device might have never been online, or this is just a bug that I won't be able to fix.
		The game will still launch, but some stuff that rely on random might be broken.
		
		Press A to continue
		Press Y to quit
		]]
		errtime = 1
	end
end

function loadkeypressed(key)
	if key == 'y' then
		love.event.quit()
	elseif key == 'a' and errtime == 1 then
		l_timer = 100
	end
end