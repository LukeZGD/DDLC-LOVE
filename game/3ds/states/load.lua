require('3ds/loader/assets_load')
local l_timer = 94
local err = ''
local errmsg = 
[[
Error!
Old save data detected, and it is not compatible with this version.

Please delete all save data and try again.

Delete everything in here:
> sdmc:/3ds/data/LovePotion/DDLC-LOVE/

Press Y to quit
]]

function drawLoad()
	lg.setBackgroundColor(255,255,255)
	if err ~= '' then
		drawTopScreen()
		lg.setColor(0,0,0,alpha)
		lg.rectangle('fill',0,0,400,240)
		lg.setColor(255,255,255)
		lg.print(err,5,5)
		lg.print(errmsg,5,35)
		drawBottomScreen()
		lg.setColor(0,0,0,alpha)
		lg.rectangle('fill',-40,0,400,240)
	end
end

function updateLoad()
	if l_timer < 99 then
		l_timer = l_timer + 1
	end
	
	--loading assets
	loaderAssets(l_timer)
		
	if l_timer == 99 then
		local file = love.filesystem.isFile('persistent')
		require('scripts/eng/text')
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
	
	local ghostmenu_chance = math.random(0, 63)
	if persistent.playthrough or settings.dtym or not settings.lang then
		err = errmsg
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
    end
end
