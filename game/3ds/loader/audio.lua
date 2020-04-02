function audioUpdate(audiox, forceload) --audio changes
	if audio1 ~= audiox or forceload then
		if audio_bgm ~= nil then audio_bgm:stop() end
		audio_bgm = nil
		collectgarbage()
		collectgarbage()
		if audiox ~= '' and audiox ~= '0' then
			audio_bgm = love.audio.newSource('assets/audio/bgm/'..audiox..'.ogg', 'stream')
			audio_bgm:setLooping(true)
			audio_bgm:play()
		end
	end
	audio1 = audiox
end

function sfxplay(sfx) --sfx stuff
	if xaload == 0 then
		sfxp = nil
		collectgarbage()
		collectgarbage()
		if sfx ~= '' then
			sfxp = love.audio.newSource('assets/audio/sfx/'..sfx..'.ogg', 'static')
		end
		sfxp:play()
	end
end
