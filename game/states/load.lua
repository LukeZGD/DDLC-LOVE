local l_timer = 94
local err = ''

function drawLoad()
	lg.setColor(0,0,0,alpha)
	lg.rectangle('fill',0,0,1280,725)
	lg.setColor(255,255,255)
	lg.print(err,10,10)
	
	if err ~= '' and savedir then lg.print('Please delete all save data and try again.\n\nDelete everything in here:\n> '..savedir..'\n\nPress Y to quit',10,70) end
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
		sfx1 = love.audio.newSource('audio/sfx/select'..audio_ext, 'static')
		sfx2 = love.audio.newSource('audio/sfx/hover'..audio_ext, 'static')
		keysbox = lg.newImage("images/gui/box.png")
		menu_bg_m = lg.newImage("images/bg/Menu_bg_m.png")
		
	elseif l_timer == 98 then
		--splash, title screen, gui elements, sfx
		namebox = lg.newImage('images/gui/namebox.png')
		textbox = lg.newImage('images/gui/textbox.png')
		background_Image = lg.newImage('images/gui/menu_bg.png')
		guicheck = lg.newImage('images/gui/check.png')
		gui_ctc = lg.newImage('images/gui/ctc.png')
		gui_skip = lg.newImage('images/gui/skip.png')
		sidebar = lg.newImage('images/gui/sidebar.png')
		
	elseif l_timer == 99 then
		local file = love.filesystem.getInfo('persistent')
		if file then
			checkLoad()
		else
			changeState('newgame')
		end
	elseif l_timer == 100 then
		lg.setBackgroundColor(255,255,255)
		alpha = math.max(alpha - 5, 0)
		if alpha == 0 then
			changeState('splash')
		end
	end
end

function checkLoad()
	if love.filesystem.getInfo('persistent') and love.filesystem.getInfo('settings.sav') then
		loadpersistent()
		if not settings.bgmvol then
			settings = {textspd=100,autospd=4,bgmvol=0.7,sfxvol=0.7}
			savesettings()
		end
		sfx1:setVolume(settings.sfxvol)
		sfx2:setVolume(settings.sfxvol)
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
	
	local ghostmenu_chance = love.math.random(0, 63)
	if settings.textloc or not persistent.act2 then
		err = 'Error!\nOld save data detected, and it is not compatible with this version of DDLC-LOVE.'
	elseif persistent.chr.s == 0 and persistent.ptr == 0 then
		changeState('s_kill_early')
	elseif ghostmenu_chance == 0 and persistent.ptr == 2 and persistent.chr.s == 0 then
		changeState('ghostmenu')
		persistent.chr.s = 2
		savepersistent()
	elseif persistent.chr.m == 2 then
		changeState('game','autoload')
	else
		l_timer = 100
	end
end