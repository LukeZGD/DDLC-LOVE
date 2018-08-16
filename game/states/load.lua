local l_timer = 94
local err = ''

function drawLoad()
	drawTopScreen()
	lg.setColor(0,0,0,alpha)
	lg.rectangle('fill',0,0,400,240)
	lg.setColor(255,255,255)
	lg.print(err,5,5)
	if err ~= '' then lg.print('Please delete all save data and try again.\n\nDelete everything in here:\n> '..savedir..'\n\nPress Y to quit',5,35) end
	drawBottomScreen()
	lg.setColor(0,0,0,alpha)
	lg.rectangle('fill',-40,0,400,240)
end

function updateLoad()
	if l_timer < 99 then
		l_timer = l_timer + 1
	end
	
	--loading assets
	if l_timer == 95 then
		font = lg.newFont('fonts/Aller_Rg',12)
		lg.setFont(font)
	
	elseif l_timer == 96 then
		m1 = lg.newFont('fonts/m1',12)
		deffont = lg.newFont()
		
	elseif l_timer == 97 then
		sfx1 = love.audio.newSource('audio/sfx/select.ogg', 'static')
		sfx2 = love.audio.newSource('audio/sfx/hover.ogg', 'static')
		
	elseif l_timer == 98 then
		--splash, title screen, gui elements, sfx
		namebox = lg.newImage('images/gui/namebox.png')
		textbox = lg.newImage('images/gui/textbox.png')
		background_Image = lg.newImage('images/bg/menu_bg.png')
		guicheck = lg.newImage('images/gui/check.png')
		
	elseif l_timer == 99 then
		local file = love.filesystem.isFile('persistent')
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
	if love.filesystem.isFile('persistent') and love.filesystem.isFile('settings.sav') then
		loadpersistent()
	end
	if global_os == 'Horizon' then
		savedir = 'sdmc:/3ds/data/LovePotion/DDLC-3DS/'
	elseif global_os == 'HorizonNX' then
		savedir = 'sdmc:/switch/DDLC-3DS/'
	else
		savedir = '%appdata%\\LOVE\\DDLC-3DS\\'
	end
	
	local ghostmenu_chance = math.random(0, 63)
	if persistent.playthrough or settings.animh == nil then
		err = 'Error!\nOld save data detected, and it is not compatible with this version.'
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