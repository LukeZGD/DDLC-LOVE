function mainload() 
	getTime = 0
	startTime = getTime
	
	--for pc stuff
	if g_system ~= 'Switch' and global_os ~= 'LOVE-WrapLua' then
		love.window.setMode(1280, 720)
		love.window.setTitle('DDLC-LOVE')
		love.keyboard.setTextInput(false)
	end
end

function mainupdate()
	getTime = getTime + dt
	--moving background
	posX = posX - 0.625
	posY = posY - 0.625
	if posX <= -200 then posX = 0 end
	if posY <= -200 then posY = 0 end
	
	--custom audio looping
	if audio_bgm and audio_bgmloop then
		if not audio_bgm:isPlaying() and not audio_bgmloop:isPlaying() then
			audio_bgmloop:play()
		end
	end
end

function love.gamepadpressed(joy, button)
	if button == 'dpup' then
		button = 'up'
	elseif button == 'dpdown' then
		button = 'down'
	elseif button == 'dpleft' then
		button = 'left'
	elseif button == 'dpright' then
		button = 'right'
	end
	love.keypressed(button)
end

function game_setvolume()
	local masvol = settings.masvol/100
	local bgmvol = (settings.bgmvol/100)*masvol
	local sfxvol = (settings.sfxvol/100)*masvol
	if dvertype == '' then
		if audio_bgm then
			audio_bgm:setVolume(bgmvol)
		end
		if audio_bgmloop then
			audio_bgmloop:setVolume(bgmvol)
		end
		sfx1:setVolume(sfxvol)
		sfx2:setVolume(sfxvol)
	end
end
