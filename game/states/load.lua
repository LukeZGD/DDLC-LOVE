l_timer = 95
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
	if l_timer == 96 then
		consolefont = lg.newFont('fonts/F25_Bank_Printer.ttf',18)
		allerfont = lg.newFont('fonts/Aller_Rg.ttf',22)
		lg.setFont(allerfont)
		
	elseif l_timer == 97 then
		sfx1 = love.audio.newSource('audio/sfx/select'..'.mp3','static')
		sfx2 = love.audio.newSource('audio/sfx/hover'..'.mp3','static')
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
	
		--set your custom fonts for translations here!
		if settings.lang == 'eng' then
			m1 = lg.newFont('fonts/m1.ttf',28) --monika poem font
			y1 = lg.newFont('fonts/y1.ttf',30) --yuri poem font
			s1 = lg.newFont('fonts/s1.ttf',32) --sayori poem font
			n1 = lg.newFont('fonts/n1.ttf',26) --natsuki poem font
			deffont = lg.newFont('fonts/VerilySerifMono.ttf',23) --act 2 "edited" text font
			halogenfont = lg.newFont('fonts/Halogen.ttf',28) --poem game font
			rifficfont = lg.newFont('fonts/RifficFree-Bold.ttf',24) --charactername font
		--[[
		elseif settings.lang == 'languagecode' then
			m1 = lg.newFont('fonts/nameoffont.ttf',fontsize)
		]]
		end
		
		local f1 = love.filesystem.getInfo('persistent')
		local f2 = false
		if love.filesystem.getInfo('settings.sav') then
			if settings.lang then
				f2 = true
				require('scripts/'..settings.lang..'/text')
			end
		end
		if (not f1 and not f2) or (f1 and not f2) then
			changeState('language')
		elseif f2 and not f1 then
			changeState('newgame')
		elseif f1 and f2 then
			checkLoad()
		end
	elseif l_timer == 100 then
		lg.setBackgroundColor(255,255,255)
		changeState('splash')
	end
end

function checkLoad()
	loadpersistent()
	loadsettings()
	game_setvolume()
	
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
	if not settings.lang then
		changeState('language')
	end
	if not persistent.act2 then
		err = tr.error[2]..savedir..'\n\n'..tr.error[1]
	elseif persistent.chr.s == 0 and persistent.ptr == 0 then
		changeState('s_kill_early')
	elseif ghostmenu_chance == 0 and persistent.ptr == 2 and persistent.chr.s == 0 then
		changeState('ghostmenu')
		persistent.chr.s = 2
		savepersistent()
	elseif persistent.chr.m == 2 then
		changeState('game','autoload')
	elseif model == '1000' then
		err = tr.error[3]..'\n\n'..tr.error[1]
	elseif os_timecheck then
		love.math.setRandomSeed(os.time())
		math.randomseed(os.time())
		l_timer = 100
	else
		err = tr.error[4]..'\n'..tr.error[1]
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