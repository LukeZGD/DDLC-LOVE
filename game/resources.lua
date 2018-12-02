audio_ext = '.ogg'
if isPSP then
	audio_ext = '.mp3'
end

function changeState(cstate,x)
	menu_alpha = 0
	menu_previous = nil
	
	if cstate ~= 's_kill_early' and cstate ~= 'ghostmenu' and cstate ~= 'newgame' and cstate ~= 'title' then
		require('states/'..cstate)
	end
	
	if cstate == 'splash' then
		splash = lg.newImage('images/bg/splash.png')
		alpha = 0
		audioUpdate('1')
	elseif cstate == 'title' then
		alpha = 0
		if persistent.ptr == 0 then
			titlebg = lg.newImage('images/gui/bg.png')
		elseif persistent.ptr <= 2 then
			titlebg = lg.newImage('images/gui/bg2.png')
		elseif persistent.ptr == 4 then
			titlebg = lg.newImage('images/gui/bg3.png')
		end
		poem_enabled = false
		audioUpdate('1')
		menu_enable('title')
		y_timer = 0
		titlebg_ypos = -240
	elseif cstate == 'game' and x == 1 then --new game
		cl = 1
		chapter = persistent.ptr * 10
		if persistent.ptr == 0 and persistent.chr.m == 0 then
			cl = 10001
		end
	elseif cstate == 'game' and x == 2 then --load game
		loadgame()
	elseif cstate == 'game' and x == 3 then --change state to game from poemgame
		cl = cl + 2
	elseif cstate == 'game' and x == 'autoload' then
		loadgame('autoload')
	elseif cstate == 'newgame' then --first time newgame
		require 'states/game'
		cl = 10016
	elseif cstate == 'poemgame' then --load poemgame assets and state
		if persistent.ptr <= 2 then
			if persistent.ptr == 0 then
				s_sticker_1 = lg.newImage('images/gui/poemgame/s_sticker_1.png')
				s_sticker_2 = lg.newImage('images/gui/poemgame/s_sticker_2.png')
			else
				eyes = lg.newImage('images/bg/eyes.png')
			end
			y_sticker_1 = lg.newImage('images/gui/poemgame/y_sticker_1.png')
			y_sticker_2 = lg.newImage('images/gui/poemgame/y_sticker_2.png')
			n_sticker_1 = lg.newImage('images/gui/poemgame/n_sticker_1.png')
			n_sticker_2 = lg.newImage('images/gui/poemgame/n_sticker_2.png')
		else
			m_sticker_1 = lg.newImage('images/gui/poemgame/m_sticker_1.png')
		end
		poemgame()
		alpha = 255
	elseif cstate == 's_kill_early' then --set up very early act 1 end
		require 'states/splash'
		endbg = lg.newImage('images/gui/end.png')
		s_killearly = lg.newImage('images/cg/s_kill/s_kill_early.png')
		audioUpdate('s_kill_early')
		alpha = 0
	elseif cstate == 'ghostmenu' then
		require 'states/splash'
		endbg = lg.newImage('images/gui/end.png')
		titlebg = lg.newImage('images/gui/bg_ghost.png')
		audioUpdate('ghostmenu')
		alpha = 0
	elseif cstate == 'poem_special' then
		poem_special_i(x)
	elseif cstate == 'credits' then
		loadCredits(x)
	end
	
	--load game state and scripts
	if cstate == 'game' or cstate == 'newgame' then	
		hideAll()
		if audio1 == '4' and x == 2 then
			alpha = 20
		else
			alpha = 255
			loadAll()
			bgUpdate(bg1, true)
			audioUpdate(audio1, true)
			cgUpdate(cg1, true)
		end
		poem_enabled = false
		menu_enabled = false
		xaload = -1
		require('scripts/script-ch'..chapter)
		if persistent.ptr == 0 then
			if poemwinner[chapter] == 'Sayori' then
				require 'scripts/script-exclusives-sayori'
			elseif poemwinner[chapter] == 'Natsuki' then
				require 'scripts/script-exclusives-natsuki'
			elseif poemwinner[chapter] == 'Yuri' then
				require 'scripts/script-exclusives-yuri'
			end
		elseif persistent.ptr == 2 and chapter > 20 then
			if poemwinner[chapter-20] == 'Natsuki' and chapter == 21 then
				require 'scripts/script-exclusives2-natsuki'
			elseif poemwinner[chapter-20] == 'Yuri' or chapter > 21 then
				require 'scripts/script-exclusives2-yuri'
			end
		end
		unloadAll('poemgame')
	end
	
	state = cstate
end

function timerCheck()
	local dt = love.timer.getDelta()
	if xaload == 0 then
		myTextStartTime = love.timer.getTime()
	end
	xaload = xaload + 1
end

function bgUpdate(bgx, forceload) --background changes
	if bgx == 'club_day2' then
		local bgclub_day = math.random(1, 6)
		if bgclub_day == 6 then
			bgx = 'club-skill'
		else
			bgx = 'club'
		end
	end
	
	if xaload == 0 or forceload then
		if autoskip == 0 and forceload ~= true then bgch2 = bgch end
		bgch = nil
		bgch = lg.newImage('images/bg/'..bgx..'.png')
	end	
	bg1 = bgx
end

function cgUpdate(cgx, forceload) --cg changes
	if cg1 ~= cgx or forceload then
		if autoskip == 0 and forceload ~= true then cgch2 = cgch end
		cgch = nil
		cgch = lg.newImage('images/cg/'..cgx..'.png')
	end	
	cg1 = cgx
end

function audioUpdate(audiox, forceload) --audio changes
	if audio1 ~= audiox or forceload then
		if audio_bgm ~= nil then audio_bgm:stop() end
		audio_bgm = nil
		if audiox ~= '' and audiox ~= '0' then
			audio_bgm = love.audio.newSource('audio/bgm/'..audiox..audio_ext, 'stream')
			audio_bgm:setLooping(true)
			if g_system ~= 'Switch' then
				audio_bgm:setVolume(settings.bgmvol)
			end
			audio_bgm:play()
		end
	end
	audio1 = audiox
end

function sfxplay(sfx) --sfx stuff
	if xaload == 0 then
		sfxp = nil
		if sfx ~= '' then
			sfxp = love.audio.newSource('audio/sfx/'..sfx..audio_ext, 'static')
		end
		if g_system ~= 'Switch' then
			sfxp:setVolume(settings.sfxvol)
		end
		sfxp:play()
	end
end

function loadSayori()
	if s_Set.a=='1' then
		sl = lg.newImage('images/sayori/1l.png') 
		sr = lg.newImage('images/sayori/1r.png') 
	elseif s_Set.a=='2' then
		sl = lg.newImage('images/sayori/1l.png') 
		sr = lg.newImage('images/sayori/2r.png') 
	elseif s_Set.a=='3' then
		sl = lg.newImage('images/sayori/2l.png') 
		sr = lg.newImage('images/sayori/1r.png') 
	elseif s_Set.a=='4' then
		sl = lg.newImage('images/sayori/2l.png') 
		sr = lg.newImage('images/sayori/2r.png') 
	
	elseif s_Set.a=='1b' then
		sl = lg.newImage('images/sayori/1bl.png')
		sr = lg.newImage('images/sayori/1br.png')
	elseif s_Set.a=='2b' then
		sl = lg.newImage('images/sayori/1bl.png') 
		sr = lg.newImage('images/sayori/2br.png') 
	elseif s_Set.a=='3b' then
		sr = lg.newImage('images/sayori/2bl.png') 
		sr = lg.newImage('images/sayori/1br.png') 
	elseif s_Set.a=='4b' then
		sl = lg.newImage('images/sayori/2bl.png') 
		sr = lg.newImage('images/sayori/2br.png') 
	
	elseif s_Set.a=='5a' then
		sl = lg.newImage('images/sayori/3a.png') 
	elseif s_Set.a=='5b' then
		sl = lg.newImage('images/sayori/3b.png') 
	elseif s_Set.a=='5c' then
		sl = lg.newImage('images/sayori/3c.png')  
	elseif s_Set.a=='5d' then
		sl = lg.newImage('images/sayori/3d.png') 
	elseif s_Set.a~='' then
		sl = lg.newImage('images/sayori/'..s_Set.a..'.png')
	end
	
	if s_Set.b~='' then s_a = lg.newImage('images/sayori/'..s_Set.b..'.png') end
end

function unloadSayori()
	sl = nil
	sr = nil
	s_a = nil
end

function loadYuri()	
	if y_Set.a=='1' then
		yl = lg.newImage('images/yuri/1l.png') 
		yr = lg.newImage('images/yuri/1r.png') 
	elseif y_Set.a=='2' then
		yl = lg.newImage('images/yuri/1l.png') 
		yr = lg.newImage('images/yuri/2r.png') 
	elseif y_Set.a=='3' then
		yl = lg.newImage('images/yuri/2l.png') 
		yr = lg.newImage('images/yuri/2r.png') 
		
	elseif y_Set.a=='1b' then
		yl = lg.newImage('images/yuri/1bl.png') 
		yr = lg.newImage('images/yuri/1br.png') 
	elseif y_Set.a=='2b' then
		yl = lg.newImage('images/yuri/1bl.png')
		yr = lg.newImage('images/yuri/2br.png') 
	elseif y_Set.a=='3b' then
		yl = lg.newImage('images/yuri/2bl.png') 
		yr = lg.newImage('images/yuri/2br.png') 
	
	elseif y_Set.a=='4' then
		yl = lg.newImage('images/yuri/3.png') 
	elseif y_Set.a=='4b' then
		yl = lg.newImage('images/yuri/3b.png')
	elseif y_Set.a~='' then
		yl = lg.newImage('images/yuri/'..y_Set.a..'.png')
	end
	
	if y_Set.b ~= '' then y_a = lg.newImage('images/yuri/'..y_Set.b..'.png') end
end

function unloadYuri()
	yl = nil
	yr = nil
	y_a = nil
end

function loadNatsuki()
	if n_Set.b~='' then
		n_a = lg.newImage('images/natsuki/'..n_Set.b..'.png')
	end
	
	if n_Set.a=='1' then
		nl = lg.newImage('images/natsuki/1l.png') 
		nr = lg.newImage('images/natsuki/1r.png') 
	elseif n_Set.a=='2' then
		nl = lg.newImage('images/natsuki/1l.png') 
		nr = lg.newImage('images/natsuki/2r.png') 
	elseif n_Set.a=='3' then
		nl = lg.newImage('images/natsuki/2l.png') 
		nr = lg.newImage('images/natsuki/1r.png') 
	elseif n_Set.a=='4' then
		nl = lg.newImage('images/natsuki/2l.png') 
		nr = lg.newImage('images/natsuki/2r.png') 
		
	elseif n_Set.a=='1b' then
		nl = lg.newImage('images/natsuki/1bl.png') 
		nr = lg.newImage('images/natsuki/1br.png') 
	elseif n_Set.a=='2b' then
		nl = lg.newImage('images/natsuki/1bl.png') 
		nr = lg.newImage('images/natsuki/2br.png') 
	elseif n_Set.a=='3b' then
		nl = lg.newImage('images/natsuki/2bl.png') 
		nr = lg.newImage('images/natsuki/1br.png') 
	elseif n_Set.a=='4b' then
		nl = lg.newImage('images/natsuki/2bl.png') 
		nr = lg.newImage('images/natsuki/2br.png') 
		
	elseif n_Set.a=='5' then
		nl = lg.newImage('images/natsuki/3.png') 
	elseif n_Set.a=='5b' then
		nl = lg.newImage('images/natsuki/3b.png') 
	elseif n_Set.a~='' then
		nl = lg.newImage('images/natsuki/'..n_Set.a..'.png')   
	end
end

function unloadNatsuki()
	nl = nil
	nr = nil
	n_a = nil
end

function loadMonika()
	if m_Set.a=='5a' then
		ml = lg.newImage('images/monika/3a.png') 
	elseif m_Set.a=='5b' then
		ml = lg.newImage('images/monika/3b.png') 
	elseif m_Set.a=='1' then
		ml = lg.newImage('images/monika/1l.png')
		mr = lg.newImage('images/monika/1r.png')
	elseif m_Set.a=='2' then
		ml = lg.newImage('images/monika/1l.png')
		mr = lg.newImage('images/monika/2r.png')
	elseif m_Set.a=='3' then
		ml = lg.newImage('images/monika/2l.png')
		mr = lg.newImage('images/monika/1r.png')
	elseif m_Set.a=='4' then
		ml = lg.newImage('images/monika/2l.png')
		mr = lg.newImage('images/monika/2r.png')
	elseif m_Set.a~='' then
		ml = lg.newImage('images/monika/'..m_Set.a..'.png')
	end
	
	if m_Set.b~='' then
		m_a = lg.newImage('images/monika/'..m_Set.b..'.png') 
	end
end

function unloadMonika()
	ml = nil
	mr = nil
	m_a = nil
end

function loadAll()
	loadSayori()
	loadNatsuki()
	loadYuri()
	loadMonika()
end

function unloadAll(x)
	if x == nil or x == 'characters' then
		sl = nil
		sr = nil
		yl = nil
		yr = nil
		nl = nil
		nr = nil
		ml = nil
		mr = nil
		s_a = nil
		y_a = nil
		n_a = nil
		m_a = nil
	elseif x == 'poemgame' then
		poemfont = nil
		sayoristicker1 = nil
		sayoristicker2 = nil
		yuristicker1 = nil
		yuristicker2 = nil
		natsukisticker1 = nil
		natsukisticker2 = nil
		eyes = nil
	end
end