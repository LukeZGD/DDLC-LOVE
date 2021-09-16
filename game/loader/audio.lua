local audio_wloop = {'1','2','3','4','4g','5','5_monika','5_natsuki','5_sayori','5_yuri','6','7g','8','10','d','monika-end'}
audio_ext = '.ogg'
if g_system == 'PSP' then
	audio_ext = '.mp3'
end

function audioUpdate(audiox, forceload) --audio changes
	if audio1 ~= audiox or forceload then
		if audio_bgm then audio_bgm:stop() end
		if audio_bgmloop then audio_bgmloop:stop() end
		
		audio_bgm = nil
		audio_bgmloop = nil
		
		if audiox ~= '' and audiox ~= '0' then
			if audiox == 'credits' or audiox == 'end-voice' then
				audio_bgm = love.audio.newSource('assets/audio/bgm/'..settings.lang..'/'..audiox..audio_ext, 'stream')
			else
				audio_bgm = love.audio.newSource('assets/audio/bgm/'..audiox..audio_ext, 'stream')
			end

			--custom audio looping load
			if audiox == '2g' then
				audio_bgmloop = love.audio.newSource('assets/audio/bgm/2-loop'..audio_ext, 'stream')
			elseif audiox == '3g' or audiox == '3g2' then
				audio_bgmloop = love.audio.newSource('assets/audio/bgm/3-loop'..audio_ext, 'stream')
			elseif audiox == '7' then
				if persistent.ptr == 2 then
					audio_bgmloop = love.audio.newSource('assets/audio/bgm/7a'..audio_ext, 'stream')
				else
					audio_bgmloop = love.audio.newSource('assets/audio/bgm/7-loop'..audio_ext, 'stream')
				end
			elseif audiox ~= 'credits' and audiox ~= 'end-voice' and audiox ~= '6r' then
				audio_bgm:setLooping(true)
			end
			for i = 1, #audio_wloop do
				if audiox == audio_wloop[i] then
					audio_bgmloop = love.audio.newSource('assets/audio/bgm/'..audiox..'-loop'..audio_ext, 'stream')
				end
			end
			if audio_bgmloop then
				audio_bgm:setLooping(false)
				audio_bgmloop:setLooping(true)
			end
			game_setvolume()
			audio_bgm:play()
		end
	end
	audio1 = audiox
end

function sfxplay(sfx) --sfx stuff
	if xaload == 0 then
		sfxp = nil
		
		if sfx ~= '' then
			sfxp = love.audio.newSource('assets/audio/sfx/'..sfx..audio_ext, 'static')
		end
		if sfxp then
			sfxp:setVolume((settings.sfxvol/100)*(settings.masvol/100))
		end
		sfxp:play()
	end
end

function sfxplay2(sfx)
	local clone
	if global_os == "LOVE-WrapLua" or g_system == "Switch" then
		clone = sfx
	else
		clone = sfx:clone()
	end
	clone:play()
end
