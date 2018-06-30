function changeState(cstate,x)
	unloadAll('stuff')
	if cstate == 'load' then
		states = require 'states.load'
		state = 'load'
	elseif cstate == 'splash' then
		splash = love.graphics.newImage('images/bg/splash.png')
		if persistent.playthrough == 0 then
			titlebg = love.graphics.newImage('images/gui/bg.png')
		else
			titlebg = love.graphics.newImage('images/gui/bg2.png')
		end
		states = require 'states.splash'
		alpha = 0
		xaload = 0
		state = 'splash1'
		audioUpdate('1')
	elseif cstate == 'title' then
		alpha = 0
		if x == 1 then
			titlebg = love.graphics.newImage('images/gui/bg2.png')
		end
		states =  require 'states.splash'
		poem_enabled = false
		state = 'title'
		xaload = 0
		if audio1 ~= '1' then
			audioStop()
			audioUpdate('1')
		end
		menu_enable('title',6)
	elseif cstate == 'game' and x == 0 then
		xaload = 0
		state = 'game'
		menu_enabled = false
	elseif cstate == 'game' and x == 1 then --new game
		if persistent.playthrough == 0 then 
			chapter = 0
		elseif persistent.playthrough == 1 then
			chapter = 10
		else
			chapter = 20
		end
		xaload = 0
		state = 'game'
		menu_enabled = false
	elseif cstate == 'game' and x == 2 then --load game
		hideAll()
		loadgame()
		if data_ptr ~= persistent.playthrough then --default to new game when loading a save from different act
			changeState('title')
		else
			loadAll()
			loadupdate()
			xaload = 0
			state = 'game'
			poem_enabled = false
			menu_enabled = false
		end
	elseif cstate == 'game' and x == 3 then --change state to game from poemgame
		cl = cl + 2
		xaload = 0
		state = 'game'
		alpha = 255
	elseif cstate == 'newgame' then --first time newgame
		timer = 501
		cl = 10016
		state = 'newgame'
		alpha = 255
	elseif cstate == 'poemgame' then --load poemgame assets and state
		poemfont = love.graphics.newFont('fonts/Halogen',12)
		s_sticker_1 = love.graphics.newImage('images/gui/poemgame/s_sticker_1.png')
		s_sticker_2 = love.graphics.newImage('images/gui/poemgame/s_sticker_2.png')
		y_sticker_1 = love.graphics.newImage('images/gui/poemgame/y_sticker_1.png')
		y_sticker_2 = love.graphics.newImage('images/gui/poemgame/y_sticker_2.png')
		n_sticker_1 = love.graphics.newImage('images/gui/poemgame/n_sticker_1.png')
		n_sticker_2 = love.graphics.newImage('images/gui/poemgame/n_sticker_2.png')
		states = require 'states.poemgame'
		poemgame()
		alpha = 255
	elseif cstate == 's_kill_early' then --set up very early act 1 end
		timer = 501
		endbg = love.graphics.newImage('images/gui/end.png')
		s_killearly = love.graphics.newImage('images/cg/s_kill/s_kill_early.png')
		state = 's_kill_early'
		audioUpdate('s_kill_early')
	end
	
	--load game state and scripts
	if cstate == 'game' or cstate == 'newgame' then	
		states = require 'states.game'
		script_mg = require 'scripts.script'
		if chapter == 0 then
			script_main = require 'scripts.script-ch0'
		elseif chapter == 1 then
			script_main = require 'scripts.script-ch1'
		elseif chapter == 2 then
			script_main = require 'scripts.script-ch2'
		elseif chapter == 3 then
			script_main = require 'scripts.script-ch3'
		elseif chapter == 4 then
			script_main = require 'scripts.script-ch4'
		elseif chapter == 5 then
			script_main = require 'scripts.script-ch5'
		elseif chapter == 10 then
			script_main = require 'scripts.script-ch10'
		end
		if poemwinner[chapter] == 'Sayori' then
			script_exclusive = require 'scripts.script-exclusives-sayori'
		elseif poemwinner[chapter] == 'Natsuki' then
			script_exclusive = require 'scripts.script-exclusives-natsuki'
		elseif poemwinner[chapter] == 'Yuri' then
			script_exclusive = require 'scripts.script-exclusives-yuri'
		end
		unloadAll('poemgame')
	end
	menu_previous = nil
end

function bgUpdate(bgx) --background changes
	if xaload == 0 then
		unloadbg()
		if bgx ~= 'black' and bgx ~= '' then
			bgch = love.graphics.newImage('images/bg/'..bgx..'.png')
		end
	end	
	bg1 = bgx
end

function cgUpdate(cgx) --cg changes
	if xaload == 0 then
		if cgx ~= '' then
			cgch = love.graphics.newImage('images/cg/'..cgx..'.png')
		end
	end	
	cg1 = cgx
end

function audioUpdate(audiox, looping) --audio changes
	if xaload == 0 then
		audioStop()
		if audiox ~= '' and audiox ~= '0' then
			ddlct = love.audio.newSource('audio/bgm/'..audiox..'.ogg', 'stream')
			if looping == nil or looping == true then
				ddlct:setLooping(true)
			else
				ddlct:setLooping(false)
			end
			ddlct:play()
		end
	end
	audio1 = audiox
end

function sfxplay(sfx, sfxtype) --sfx stuff
	if xaload == 0 then
		sfxp = nil
		if sfx ~= '' then
			if sfxtype == nil then sfxtype = 'static' end
			sfxp = love.audio.newSource('audio/sfx/'..sfx..'.ogg', sfxtype)
		end
		sfxp:play()
	end
end

function unloadbg()
	splash = nil
	bgch = nil
	bgch2 = nil
end

function audioStop()
	if ddlct ~= nil then ddlct:stop() end
	ddlct = nil
end

function charCheck()
	if xaload == 0 then
		myTextStartTime = love.timer.getTime()
		xaload = xaload + 1
	else
		xaload = xaload + 1
	end
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
	elseif x == 'stuff' then
		states = nil
		script_mg = nil
		script_main = nil
		script_exclusive = nil
		eventscript = nil
	end
end