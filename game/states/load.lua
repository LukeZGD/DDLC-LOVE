require('loader/assets_load')
l_timer = 95
local err = ''
local errtime = 0
local ghostmenu_chance = love.math.random(0,63)
if g_system == 'Switch' then
	savedir = 'sdmc:/switch/DDLC-LOVE/'
elseif g_system == 'Vita' then
	savedir = 'ux0:/data/DDLC-LOVE/savedata/'
else
	savedir = 'savedir'
end

function drawLoad()
	lg.setBackgroundColor(0,0,0)
	if err ~= '' then
		lgsetColor(255,255,255)
		lg.print(err,10,10)
	else
		lg.rectangle('fill',0,710,256*(l_timer-95),10)
	end
end

function updateLoad()
	print('l_timer: '..l_timer)
	if l_timer < 99 then
		l_timer = l_timer + 1
	end
	
	loaderAssets(l_timer)
	
	if l_timer == 99 then
		checkLoad()
	elseif l_timer == 100 then
		lg.setBackgroundColor(255,255,255)
		changeState('splash')
	end
end

function checkLoad()
	local f1 = love.filesystem.getInfo('persistent')
	local f2 = love.filesystem.getInfo('settings.sav')

	if f1 then
		loadpersistent()
	end
	if f2 then
		loadsettings()
		game_setvolume()
	end
	
    if settings.lang and f2 then
		require('scripts/'..settings.lang..'/text')
		loaderAssets(101)
    elseif g_system == 'Switch' then
        settings.lang = 'eng'
        savesettings()
        require('scripts/'..settings.lang..'/text')
        loaderAssets(101)
	else
		settings.lang = 'eng'
		require('scripts/eng/text')
		changeState('language')
	end
	
	if (f2 and not f1) or (g_system == 'Switch' and not f1) then
		changeState('newgame')
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
	else
		l_timer = 100
	end
end

function loadkeypressed(key)
	if key == 'y' then
		love.event.quit()
	elseif key == 'a' and errtime == 1 then
		l_timer = 100
	end
end
