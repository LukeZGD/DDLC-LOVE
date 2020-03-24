function loadNoise()
	animframe = {}
	for i = 1, 4 do
		animframe[i] = lg.newImage("assets/images/bg/noise"..i..".png")
	end
end

function loadVignette()
	vignette = lg.newImage('assets/images/bg/vignette.png')
end

function loadYuriGlitch()
	animframe = {}
	for i = 1, 4 do
		animframe[i] = lg.newImage("assets/images/yuri/glitch"..i..".png")
	end
end

function unloadanimframe()
	for i = 1, 4 do
		animframe[i] = nil
	end
end

function unloadvignette()
	vignette = nil
end

function event_init(etype,arg1,arg2)
	if xaload == 1 then
		require(branch..'/scripts/event')
		if persistent.ptr <= 1 then
			require(branch..'/scripts/event-1')
		elseif persistent.ptr == 2 then
			require(branch..'/scripts/event-2')
		else
			require(branch..'/scripts/event-3')
		end
		if etype == 's_kill' then --Sayo-nara.... load sprites
			s_kill = lg.newImage('assets/images/cg/s_kill/s_kill.png')
			s_kill2 = lg.newImage('assets/images/cg/s_kill/s_kill2.png')
			s_killzoom = lg.newImage('assets/images/cg/s_kill/s_killzoom.png')
			s_kill_bg = lg.newImage('assets/images/cg/s_kill/s_kill_bg.png')
			s_kill_bg2 = lg.newImage('assets/images/cg/s_kill/s_kill_bg2.png')
			s_kill_bgzoom = lg.newImage('assets/images/cg/s_kill/s_kill_bgzoom.png')
			splash_glitch = lg.newImage('assets/images/bg/splash-glitch.png')
			exception = lg.newImage('assets/images/cg/s_kill/ex2.png')
			loadNoise()
		elseif etype == 'endscreen' then
			if arg1 == 'flipped' then
				bgch = lg.newImage('assets/images/gui/'..settings.lang..'/endflipped.png')
			else
				bgch = lg.newImage('assets/images/gui/'..settings.lang..'/end.png')
			end
		elseif etype == 's_glitch' then
			s_glitch1 = lg.newImage('assets/images/sayori/glitch1.png')
			s_glitch2 = lg.newImage('assets/images/sayori/glitch2.png')
		elseif etype == 'm_glitch1' then
			ml = lg.newImage('assets/images/monika/g2.png')
		elseif etype == 'n_glitch1' then
			nl = lg.newImage('assets/images/natsuki/glitch1.png')
		elseif etype == 'n_blackeyes' then
			n_blackeyes = lg.newImage('assets/images/natsuki/blackeyes.png')
			n_eye = lg.newImage('assets/images/natsuki/eye.png')
		elseif etype == 'ny_argument' then
			loadVignette()
			loadNoise()
		elseif etype == 'ny_argument2' then
			ml = lg.newImage('assets/images/monika/ac.png')
		elseif etype == 'yuri_glitch' then
			loadYuriGlitch()
		elseif etype == 'show_vignette' then
			loadVignette()
		elseif etype == 'yuri_eyes' then
			eyes1 = lg.newImage('assets/images/yuri/eyes1.png')
			eyes2 = lg.newImage('assets/images/yuri/eyes2.png')
		elseif etype == 'yuri_glitch_head' then
			animframe[1] = lg.newImage('assets/images/yuri/za.png')
			animframe[2] = lg.newImage('assets/images/yuri/zb.png')
			animframe[3] = lg.newImage('assets/images/yuri/zc.png')
			animframe[4] = lg.newImage('assets/images/yuri/zd.png')
		elseif etype == 'yuri_ch23' then
			bg_glitch = lg.newImage('assets/images/bg/glitch.png')
			eyes1 = lg.newImage('assets/images/yuri/eyes1.png')
			loadYuriGlitch()
		elseif etype == 'm_ch23ex' then
			ex3top = lg.newImage('assets/images/gui/'..settings.lang..'/ex3top.png')
		elseif etype == 'just_monika' then
			if arg1 == 'ch30' then
				splash = lg.newImage('assets/images/bg/splash-glitch2.png')
			elseif g_system == '3DS' then
				splash = lg.newImage('assets/images/bg/splash.png')
			end
		elseif etype == 'natsuki_ch22' then --oh snap
			ghost_blood = lg.newImage('assets/images/natsuki/ghost_blood.png')
			ghost3 = lg.newImage('assets/images/natsuki/ghost3.png')
			ghost3_1 = lg.newImage('assets/images/natsuki/ghost3-1.png')
			ghost3_2 = lg.newImage('assets/images/natsuki/ghost3-2.png')
			ghost3_3 = lg.newImage('assets/images/natsuki/ghost3-3.png')
		elseif etype == 'yuri_kill' then --that looks painful
			stab1 = lg.newImage('assets/images/yuri/stab/1.png')
			stab2 = lg.newImage('assets/images/yuri/stab/2.png')
			stab3 = lg.newImage('assets/images/yuri/stab/3.png')
			stab4 = lg.newImage('assets/images/yuri/stab/4.png')
			stab5 = lg.newImage('assets/images/yuri/stab/5.png')
			stab6 = lg.newImage('assets/images/yuri/stab/6.png')
			stab6f = lg.newImage('assets/images/yuri/stab/6-full.png')
		elseif etype == 'beforecredits' then
			end_glitch1 = lg.newImage('assets/images/bg/end-glitch1.png')
			end_glitch2 = lg.newImage('assets/images/bg/end-glitch2.png')
			end_glitch3 = lg.newImage('assets/images/bg/end-glitch3.png')
			loadNoise()
			loadVignette()
		elseif etype == 'sayori_gs' then
			sayori_gs1 = lg.newImage('assets/images/bg/GlitchSayoriScreen1.png')
			sayori_gs2 = lg.newImage('assets/images/bg/GlitchSayoriScreen2.png')
		end
		if arg1 == 'show_noise' then
			loadNoise()
		elseif arg1 == 'show_vignette' then
			loadVignette()
		end
	end
end

function event_initstart(etype,arg1,arg2)
	event_init(etype,arg1,arg2)
	if xaload == 2 then event_start(etype,arg1,arg2) end
end

function event_endnext()
	cl = cl + 1
	xaload = 0
	collectgarbage()
	collectgarbage()
end

function event_end(arg1)
	event_enabled = false
	event_timer = 0
	textbox_enabled = true
	bgimg_disabled = false
	
	if arg1 == 's_kill' then
		s_kill = nil
		s_kill2 = nil
		s_kill_bg = nil
		s_kill_bg2 = nil
		s_kill_bgzoom = nil
		splash_glitch = nil
		exception = nil
		posX = -40
		posY = 0
		unloadanimframe()
	elseif arg1 == 'next' then
		event_endnext()
	elseif arg1 == 's_glitch' then
		s_glitch1 = nil
		s_glitch2 = nil
	elseif arg1 == 'n_blackeyes' then
		n_blackeyes = nil
		event_endnext()
	elseif arg1 == 'ny_argument2' then
		unloadvignette()
		unloadanimframe()
		event_endnext()
	elseif arg1 == 'yuri_glitch' then
		unloadanimframe()
		event_endnext()
	elseif arg1 == 'show_vignette' then
		unloadvignette()
	elseif arg1 == 'yuri_eyes' then
		eyes1 = nil
		eyes2 = nil
		event_endnext()
	elseif arg1 == 'yuri_ch23' then
		eyes1 = nil
		bg_glitch = nil
		unloadanimframe()
	elseif arg1 == 'm_ch23ex' then
		ex3top = nil
	elseif arg1 == 'natsuki_ch22' then
		ghost3 = nil
		ghost3_1 = nil
		ghost3_2 = nil
		ghost3_3 = nil
		ghost_blood = nil
		event_endnext()
	elseif arg1 == 'yuri_kill' then
		stab1 = nil
		stab2 = nil
		stab3 = nil
		stab4 = nil
		stab5 = nil
		stab6 = nil
		stab6f = nil
		event_endnext()
	elseif arg1 == 'monika_end' then
		unloadanimframe()
		event_endnext()
	elseif arg1 == 'beforecredits' then
		end_glitch1 = nil
		end_glitch2 = nil
		end_glitch3 = nil
		unloadanimframe()
		event_endnext()
	end
end
