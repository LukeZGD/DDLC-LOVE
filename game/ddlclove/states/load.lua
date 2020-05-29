require('ddlclove/loader/assets_load')
l_timer = 95
local err = ''
local errtime = 0
local ghostmenu_chance = love.math.random(0,63)
if g_system == 'Switch' then
	savedir = 'sdmc:/switch/DDLC-LOVE/'
elseif g_system == 'Vita' then
	savedir = 'ux0:/data/DDLC-LOVE/savedata/'
elseif g_system == 'PSP' then
	savedir = 'ms0:/data/DDLC-LOVE/savedata/'
elseif g_system == 'PS3' then
	savedir = 'dev_usb000:/DDLC-LOVE/savedata/'
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
		if g_system == 'PSP' then
			loaderAssets(102)
		else
			loaderAssets(101)
		end
	else
		settings.lang = 'eng'
		require('scripts/eng/text')
		changeState('language')
	end
	
	if dvertype == 'Test' then
		loaderAssets(101)
		l_timer = 100
	elseif f2 and not f1 then
		changeState('newgame')
	end
	
	if g_system == 'PSP' then
		model = hw.getmodel()
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
