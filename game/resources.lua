function changeState(cstate,x)
	unloadAll('stuff')
	if cstate ~= 's_kill_early' and cstate ~= 'ghostmenu' and cstate ~= 'newgame' and cstate ~= 'title' then
		states = require('states.'..cstate)
	end
	state = cstate
	if cstate == 'splash' then
		splash = love.graphics.newImage('images/bg/splash.png')
		alpha = 0
		state = 'splash1'
		audioUpdate('1')
	elseif cstate == 'title' then
		alpha = 0
		if persistent.ptr == 0 then
			titlebg = love.graphics.newImage('images/gui/bg.png')
		elseif persistent.ptr <= 2 then
			titlebg = love.graphics.newImage('images/gui/bg2.png')
		elseif persistent.ptr == 4 then
			titlebg = love.graphics.newImage('images/gui/bg3.png')
		end
		poem_enabled = false
		state = 'title'
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
		states = require 'states.game'
		cl = 10016
	elseif cstate == 'poemgame' then --load poemgame assets and state
		poemfont = love.graphics.newFont('fonts/Halogen',12)
		if persistent.ptr <= 2 then
			if persistent.ptr == 0 then
				s_sticker_1 = love.graphics.newImage('images/gui/poemgame/s_sticker_1.png')
				s_sticker_2 = love.graphics.newImage('images/gui/poemgame/s_sticker_2.png')
			else
				eyes = love.graphics.newImage('images/bg/eyes.png')
			end
			y_sticker_1 = love.graphics.newImage('images/gui/poemgame/y_sticker_1.png')
			y_sticker_2 = love.graphics.newImage('images/gui/poemgame/y_sticker_2.png')
			n_sticker_1 = love.graphics.newImage('images/gui/poemgame/n_sticker_1.png')
			n_sticker_2 = love.graphics.newImage('images/gui/poemgame/n_sticker_2.png')
		else
			m_sticker_1 = love.graphics.newImage('images/gui/poemgame/m_sticker_1.png')
		end
		poemgame()
		alpha = 255
	elseif cstate == 's_kill_early' then --set up very early act 1 end
		states = require 'states.splash'
		endbg = love.graphics.newImage('images/gui/end.png')
		s_killearly = love.graphics.newImage('images/cg/s_kill/s_kill_early.png')
		audioUpdate('s_kill_early')
		alpha = 0
	elseif cstate == 'ghostmenu' then
		states = require 'states.splash'
		endbg = love.graphics.newImage('images/gui/end.png')
		titlebg = love.graphics.newImage('images/gui/bg_ghost.png')
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
		if audio1 == '4' then
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
		script_main = require('scripts.script-ch'..chapter)
		if persistent.ptr == 0 then
			if poemwinner[chapter] == 'Sayori' then
				script_exclusive = require 'scripts.script-exclusives-sayori'
			elseif poemwinner[chapter] == 'Natsuki' then
				script_exclusive = require 'scripts.script-exclusives-natsuki'
			elseif poemwinner[chapter] == 'Yuri' then
				script_exclusive = require 'scripts.script-exclusives-yuri'
			end
		elseif persistent.ptr == 2 and chapter > 20 then
			if poemwinner[chapter-20] == 'Natsuki' and chapter == 21 then
				script_exclusive = require 'scripts.script-exclusives2-natsuki'
			elseif poemwinner[chapter-20] == 'Yuri' or chapter > 21 then
				script_exclusive = require 'scripts.script-exclusives2-yuri'
			end
		end
		unloadAll('poemgame')
	end
	menu_previous = nil
end

function timerCheck()
	local dt = love.timer.getDelta()
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
		unloadbg()
		if bgx ~= 'black' and bgx ~= '' then
			bgch = love.graphics.newImage('images/bg/'..bgx..'.png')
		end
	end	
	bg1 = bgx
end

function cgUpdate(cgx, forceload) --cg changes
	if cg1 ~= cgx or forceload then
		if cgx ~= '' then
			cgch = love.graphics.newImage('images/cg/'..cgx..'.png')
		end
	end	
	cg1 = cgx
end

function audioUpdate(audiox, forceload) --audio changes
	if audio1 ~= audiox or forceload then
		if ddlct ~= nil then ddlct:stop() end
		ddlct = nil
		if audiox ~= '' and audiox ~= '0' then
			ddlct = love.audio.newSource('audio/bgm/'..audiox..'.ogg', 'stream')
			ddlct:setLooping(true)
			ddlct:play()
		end
	end
	audio1 = audiox
end

function sfxplay(sfx) --sfx stuff
	if xaload == 0 then
		sfxp = nil
		if sfx ~= '' then
			sfxp = love.audio.newSource('audio/sfx/'..sfx..'.ogg', 'static')
		end
		sfxp:play()
	end
end

function unloadbg()
	splash = nil
	bgch = nil
	bgch2 = nil
	titlebg = nil
end


function loadSayori()
	if s_Set.a=='1' then
		sl = love.graphics.newImage('images/sayori/1l.png') 
		sr = love.graphics.newImage('images/sayori/1r.png') 
	elseif s_Set.a=='2' then
		sl = love.graphics.newImage('images/sayori/1l.png') 
		sr = love.graphics.newImage('images/sayori/2r.png') 
	elseif s_Set.a=='3' then
		sl = love.graphics.newImage('images/sayori/2l.png') 
		sr = love.graphics.newImage('images/sayori/1r.png') 
	elseif s_Set.a=='4' then
		sl = love.graphics.newImage('images/sayori/2l.png') 
		sr = love.graphics.newImage('images/sayori/2r.png') 
	
	elseif s_Set.a=='1b' then
		sl = love.graphics.newImage('images/sayori/1bl.png')
		sr = love.graphics.newImage('images/sayori/1br.png')
	elseif s_Set.a=='2b' then
		sl = love.graphics.newImage('images/sayori/1bl.png') 
		sr = love.graphics.newImage('images/sayori/2br.png') 
	elseif s_Set.a=='3b' then
		sr = love.graphics.newImage('images/sayori/2bl.png') 
		sr = love.graphics.newImage('images/sayori/1br.png') 
	elseif s_Set.a=='4b' then
		sl = love.graphics.newImage('images/sayori/2bl.png') 
		sr = love.graphics.newImage('images/sayori/2br.png') 
	
	elseif s_Set.a=='5a' then
		sl = love.graphics.newImage('images/sayori/3a.png') 
	elseif s_Set.a=='5b' then
		sl = love.graphics.newImage('images/sayori/3b.png') 
	elseif s_Set.a=='5c' then
		sl = love.graphics.newImage('images/sayori/3c.png')  
	elseif s_Set.a=='5d' then
		sl = love.graphics.newImage('images/sayori/3d.png') 
	elseif s_Set.a~='' then
		sl = love.graphics.newImage('images/sayori/'..s_Set.a..'.png')
	end
	
	if s_Set.b~='' then s_a = love.graphics.newImage('images/sayori/'..s_Set.b..'.png') end
end

function unloadSayori()
	sl = nil
	sr = nil
	s_a = nil
end

function loadYuri()	
	if y_Set.a=='1' then
		yl = love.graphics.newImage('images/yuri/1l.png') 
		yr = love.graphics.newImage('images/yuri/1r.png') 
	elseif y_Set.a=='2' then
		yl = love.graphics.newImage('images/yuri/1l.png') 
		yr = love.graphics.newImage('images/yuri/2r.png') 
	elseif y_Set.a=='3' then
		yl = love.graphics.newImage('images/yuri/2l.png') 
		yr = love.graphics.newImage('images/yuri/2r.png') 
		
	elseif y_Set.a=='1b' then
		yl = love.graphics.newImage('images/yuri/1bl.png') 
		yr = love.graphics.newImage('images/yuri/1br.png') 
	elseif y_Set.a=='2b' then
		yl = love.graphics.newImage('images/yuri/1bl.png')
		yr = love.graphics.newImage('images/yuri/2br.png') 
	elseif y_Set.a=='3b' then
		yl = love.graphics.newImage('images/yuri/2bl.png') 
		yr = love.graphics.newImage('images/yuri/2br.png') 
	
	elseif y_Set.a=='4' then
		yl = love.graphics.newImage('images/yuri/3.png') 
	elseif y_Set.a=='4b' then
		yl = love.graphics.newImage('images/yuri/3b.png')
	elseif y_Set.a~='' then
		yl = love.graphics.newImage('images/yuri/'..y_Set.a..'.png')
	end
	
	if y_Set.b ~= '' then y_a = love.graphics.newImage('images/yuri/'..y_Set.b..'.png') end
end

function unloadYuri()
	yl = nil
	yr = nil
	y_a = nil
end

function loadNatsuki()
	if n_Set.b~='' then
		n_a = love.graphics.newImage('images/natsuki/'..n_Set.b..'.png')
	end
	
	if n_Set.a=='1' then
		nl = love.graphics.newImage('images/natsuki/1l.png') 
		nr = love.graphics.newImage('images/natsuki/1r.png') 
	elseif n_Set.a=='2' then
		nl = love.graphics.newImage('images/natsuki/1l.png') 
		nr = love.graphics.newImage('images/natsuki/2r.png') 
	elseif n_Set.a=='3' then
		nl = love.graphics.newImage('images/natsuki/2l.png') 
		nr = love.graphics.newImage('images/natsuki/1r.png') 
	elseif n_Set.a=='4' then
		nl = love.graphics.newImage('images/natsuki/2l.png') 
		nr = love.graphics.newImage('images/natsuki/2r.png') 
		
	elseif n_Set.a=='1b' then
		nl = love.graphics.newImage('images/natsuki/1bl.png') 
		nr = love.graphics.newImage('images/natsuki/1br.png') 
	elseif n_Set.a=='2b' then
		nl = love.graphics.newImage('images/natsuki/1bl.png') 
		nr = love.graphics.newImage('images/natsuki/2br.png') 
	elseif n_Set.a=='3b' then
		nl = love.graphics.newImage('images/natsuki/2bl.png') 
		nr = love.graphics.newImage('images/natsuki/1br.png') 
	elseif n_Set.a=='4b' then
		nl = love.graphics.newImage('images/natsuki/2bl.png') 
		nr = love.graphics.newImage('images/natsuki/2br.png') 
		
	elseif n_Set.a=='5' then
		nl = love.graphics.newImage('images/natsuki/3.png') 
	elseif n_Set.a=='5b' then
		nl = love.graphics.newImage('images/natsuki/3b.png') 
	elseif n_Set.a~='' then
		nl = love.graphics.newImage('images/natsuki/'..n_Set.a..'.png')   
	end
end

function unloadNatsuki()
	nl = nil
	nr = nil
	n_a = nil
end

function loadMonika()
	if m_Set.a=='5a' then
		ml = love.graphics.newImage('images/monika/3a.png') 
	elseif m_Set.a=='5b' then
		ml = love.graphics.newImage('images/monika/3b.png') 
	elseif m_Set.a=='1' then
		ml = love.graphics.newImage('images/monika/1l.png')
		mr = love.graphics.newImage('images/monika/1r.png')
	elseif m_Set.a=='2' then
		ml = love.graphics.newImage('images/monika/1l.png')
		mr = love.graphics.newImage('images/monika/2r.png')
	elseif m_Set.a=='3' then
		ml = love.graphics.newImage('images/monika/2l.png')
		mr = love.graphics.newImage('images/monika/1r.png')
	elseif m_Set.a=='4' then
		ml = love.graphics.newImage('images/monika/2l.png')
		mr = love.graphics.newImage('images/monika/2r.png')
	elseif m_Set.a~='' then
		ml = love.graphics.newImage('images/monika/'..m_Set.a..'.png')
	end
	
	if m_Set.b~='' then
		m_a = love.graphics.newImage('images/monika/'..m_Set.b..'.png') 
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
	elseif x == 'stuff' then
		states = nil
		script_main = nil
		script_exclusive = nil
		eventscript = nil
	end
end