require('ddlclove/loader/assets_load')
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
	local f1 = love.filesystem.getInfo('persistent')
	local f2 = love.filesystem.getInfo('settings.sav')


	if l_timer < 99 then
		l_timer = l_timer + 1
	end



	if l_timer == 97 then
		if f2 then
			loadsettings()
			require('scripts/'..settings.lang..'/text')
			loaderAssets(101)
		end
		if not f2 then
			require('scripts/eng/text')
		end
	end

	loaderAssets(l_timer)
	
	--save check
	if l_timer == 99 then		
		
		if dvertype == 'Test' then
			l_timer = 100
		elseif (not f1 and not f2) or (f1 and not f2) then
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
