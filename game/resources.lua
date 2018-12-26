local audio_wloop = {'1','2','3','4','4g','5','5_monika','5_natsuki','5_sayori','5_yuri','6','7g','8','10','d','monika-end'}

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
		
		if persistent.ptr == 1 or persistent.ptr == 2 then
			menu_art_s = lg.newImage("images/gui/menu_art_s_break.png")
		else
			menu_art_s = lg.newImage("images/gui/menu_art_s.png")
		end
		
		if persistent.ptr == 1 then
			gui.newgame = lg.newImage("images/gui/overlay/newgame1.png")
		else
			gui.newgame = lg.newImage("images/gui/overlay/newgame.png")
		end
		
		if persistent.ptr == 4 then
			menu_art_m = lg.newImage("images/cg/blank.png")
		else
			menu_art_m = lg.newImage("images/gui/menu_art_m.png")
		end
		
		menu_art_n = lg.newImage("images/gui/menu_art_n.png")
		menu_art_y = lg.newImage("images/gui/menu_art_y.png")
		poem_enabled = false
		audioUpdate('1')
		menu_enable('title')
		y_timer = 0
		titlebg_ypos = -240
		tlp = {yx=525,nx=670,sx=470,mx=680,yy=720,ny=720,sy=720,my=720,scale=0.75}
		z_timer = {0,0}
		
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
				m_sticker_2 = lg.newImage('images/gui/poemgame/m_sticker_2.png')
				y_sticker_1_broken = lg.newImage('images/gui/poemgame/y_sticker_1_broken.png')
				y_sticker_2g = lg.newImage('images/gui/poemgame/y_sticker_2g.png')
			end
			if chapter == 22 then
				y_sticker_1 = lg.newImage('images/gui/poemgame/y_sticker_cut_1.png')
				y_sticker_2 = lg.newImage('images/gui/poemgame/y_sticker_cut_2.png')
			else
				y_sticker_1 = lg.newImage('images/gui/poemgame/y_sticker_1.png')
				y_sticker_2 = lg.newImage('images/gui/poemgame/y_sticker_2.png')
			end
			n_sticker_1 = lg.newImage('images/gui/poemgame/n_sticker_1.png')
			n_sticker_2 = lg.newImage('images/gui/poemgame/n_sticker_2.png')
		else
			m_sticker_1 = lg.newImage('images/gui/poemgame/m_sticker_1.png')
		end
		poemgame()
		alpha = 255
	elseif cstate == 's_kill_early' then --set up very early act 1 end
		require 'states/splash'
		require 'scripts/event'
		loadNoise()
		endbg = lg.newImage('images/gui/end.png')
		s_killearly = lg.newImage('images/cg/s_kill/s_kill_early.png')
		audioUpdate('s_kill_early')
		y_timer = 0
		alpha = 0
	elseif cstate == 'ghostmenu' then
		require 'states/splash'
		endbg = lg.newImage('images/gui/end.png')
		menu_art_m = lg.newImage("images/gui/menu_art_m_ghost.png")
		menu_art_s = lg.newImage("images/gui/menu_art_s_ghost.png")
		menu_art_n = lg.newImage("images/gui/menu_art_n_ghost.png")
		menu_art_y = lg.newImage("images/gui/menu_art_y_ghost.png")
		y_timer = 0.7
		tlp = {yx=525,nx=670,sx=470,mx=680,yy=720,ny=720,sy=720,my=720,scale=0.75}
		z_timer = {0,0}
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
			changeX.y = {s=s_Set.x,y=y_Set.x,n=n_Set.x,m=m_Set.x}
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
	if xaload == 0 then
		myTextStartTime = love.timer.getTime()
	end
	xaload = xaload + 1
	if unitimer < uniduration then
		unitimer = unitimer + dt
	end
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
		if audio_bgm then audio_bgm:stop() end
		if audio_bgmloop then audio_bgmloop:stop() end
		audio_bgm = nil
		audio_bgmloop = nil
		if audiox ~= '' and audiox ~= '0' then
			audio_bgm = love.audio.newSource('audio/bgm/'..audiox..'.mp3', 'stream')
			
			--custom audio looping load
			if audiox == '2g' then
				audio_bgmloop = love.audio.newSource('audio/bgm/2re.mp3', 'stream')
			elseif audiox == '3g' or audiox == '3g2' then
				audio_bgmloop = love.audio.newSource('audio/bgm/3re.mp3', 'stream')
			elseif audiox == '7' then
				if persistent.ptr == 2 then
					audio_bgmloop = love.audio.newSource('audio/bgm/7a.mp3', 'stream')
				else
					audio_bgmloop = love.audio.newSource('audio/bgm/7re.mp3', 'stream')
				end
			else
				audio_bgmloop = audio_bgm
			end
			for i = 1, #audio_wloop do
				if audiox == audio_wloop[i] then
					audio_bgmloop = love.audio.newSource('audio/bgm/'..audiox..'re.mp3', 'stream')
					audio_bgmloop:setLooping(true)
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
			sfxp = love.audio.newSource('audio/sfx/'..sfx..'.mp3', 'static')
		end
		game_setvolume()
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