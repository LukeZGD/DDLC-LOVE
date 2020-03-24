audio_ext = '.mp3'
local audio_wloop = {'1','2','3','4','4g','5','5_monika','5_natsuki','5_sayori','5_yuri','6','7g','8','10','d','monika-end'}

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
			if g_system ~= 'PS3' then
				if audiox == '2g' then
					audio_bgmloop = love.audio.newSource('assets/audio/bgm/2re'..audio_ext, 'stream')
				elseif audiox == '3g' or audiox == '3g2' then
					audio_bgmloop = love.audio.newSource('assets/audio/bgm/3re'..audio_ext, 'stream')
				elseif audiox == '7' then
					if persistent.ptr == 2 then
						audio_bgmloop = love.audio.newSource('assets/audio/bgm/7a'..audio_ext, 'stream')
					else
						audio_bgmloop = love.audio.newSource('assets/audio/bgm/7re'..audio_ext, 'stream')
					end
				else
					audio_bgmloop = audio_bgm
				end
				for i = 1, #audio_wloop do
					if audiox == audio_wloop[i] then
						if audiox == 'credits' or audiox == 'end-voice' then
							audio_bgmloop = love.audio.newSource('assets/audio/bgm/'..settings.lang..'/'..audiox..'re'..audio_ext, 'stream')
						else
							audio_bgmloop = love.audio.newSource('assets/audio/bgm/'..audiox..'re'..audio_ext, 'stream')
						end
							audio_bgmloop:setLooping(true)
					end
				end
			end
			
			audio_bgm:setLooping(false)
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
