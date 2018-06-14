function changeState(cstate,x)
	unloadAll('stuff')
	if cstate == 'load' then
		states = require 'states.load'
		state = 'load'
	elseif cstate == 'splash' then
		splash = love.graphics.newImage('images/bg/splash.png')
		titlebg = love.graphics.newImage('images/bg/bg.png')
		states = require 'states.splash'
		alpha = 0
		xaload = 0
		timer = 0
		state = 'splash1'
		audioUpdate('1')
	elseif cstate == 'title' then
		states =  require 'states.splash'
		poem_enabled = false
		state = 'title'
		timer = 501
		xaload = 0
		if audio1 ~= '1' then
			audioStop()
			audioUpdate('1')
		end
		menu_enable('title',6)
	elseif cstate == 'game' and x == 1 then --new game
		xaload = 0
		state = 'game'
		menu_enabled = false
	elseif cstate == 'game' and x == 2 then --load game
		hideAll()
		loadgame()
		loadAll()
		loadupdate()
		xaload = 0
		state = 'game'
		poem_enabled = false
		menu_enabled = false
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
		poemfont = love.graphics.newFont('images/gui/fonts/Halogen',12)
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
		s_killearly = love.graphics.newImage('images/cg/s_kill_early.png')
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

function audioUpdate(audiox) --audio changes
	if xaload == 0 then
		audioStop()
		if audiox ~= '' then
			ddlct = love.audio.newSource('audio/bgm/'..audiox..'.ogg', 'stream')
			ddlct:setLooping(true)
		end
		ddlct:play()
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
	if s.a=='1' then
		sl = love.graphics.newImage('images/sayori/1l.png') 
		sr = love.graphics.newImage('images/sayori/1r.png') 
	elseif s.a=='2' then
		sl = love.graphics.newImage('images/sayori/1l.png') 
		sr = love.graphics.newImage('images/sayori/2r.png') 
	elseif s.a=='3' then
		sl = love.graphics.newImage('images/sayori/2l.png') 
		sr = love.graphics.newImage('images/sayori/1r.png') 
	elseif s.a=='4' then
		sl = love.graphics.newImage('images/sayori/2l.png') 
		sr = love.graphics.newImage('images/sayori/2r.png') 
	
	elseif s.a=='1b' then
		sl = love.graphics.newImage('images/sayori/1bl.png')
		sr = love.graphics.newImage('images/sayori/1br.png')
	elseif s.a=='2b' then
		sl = love.graphics.newImage('images/sayori/1bl.png') 
		sr = love.graphics.newImage('images/sayori/2br.png') 
	elseif s.a=='3b' then
		sr = love.graphics.newImage('images/sayori/2bl.png') 
		sr = love.graphics.newImage('images/sayori/1br.png') 
	elseif s.a=='4b' then
		sl = love.graphics.newImage('images/sayori/2bl.png') 
		sr = love.graphics.newImage('images/sayori/2br.png') 
	
	elseif s.a=='5a' then
		sl = love.graphics.newImage('images/sayori/3a.png') 
	elseif s.a=='5b' then
		sl = love.graphics.newImage('images/sayori/3b.png') 
	elseif s.a=='5c' then
		sl = love.graphics.newImage('images/sayori/3c.png')  
	elseif s.a=='5d' then
		sl = love.graphics.newImage('images/sayori/3d.png') 
	elseif s.a~='' then
		sl = love.graphics.newImage('images/sayori/'..s.a..'.png')
	end
	
	if s.b~='' then s_a = love.graphics.newImage('images/sayori/'..s.b..'.png') end
end

function unloadSayori()
	sl = nil
	sr = nil
	s_a = nil
end

function loadYuri()	
	if y.a=='1' then
		yl = love.graphics.newImage('images/yuri/1l.png') 
		yr = love.graphics.newImage('images/yuri/1r.png') 
	elseif y.a=='2' then
		yl = love.graphics.newImage('images/yuri/1l.png') 
		yr = love.graphics.newImage('images/yuri/2r.png') 
	elseif y.a=='3' then
		yl = love.graphics.newImage('images/yuri/2l.png') 
		yr = love.graphics.newImage('images/yuri/2r.png') 
		
	elseif y.a=='1b' then
		yl = love.graphics.newImage('images/yuri/1bl.png') 
		yr = love.graphics.newImage('images/yuri/1br.png') 
	elseif y.a=='2b' then
		yl = love.graphics.newImage('images/yuri/1bl.png')
		yr = love.graphics.newImage('images/yuri/2br.png') 
	elseif y.a=='3b' then
		yl = love.graphics.newImage('images/yuri/2bl.png') 
		yr = love.graphics.newImage('images/yuri/2br.png') 
	
	elseif y.a=='4' then
		yl = love.graphics.newImage('images/yuri/3.png') 
	elseif y.a=='4b' then
		yl = love.graphics.newImage('images/yuri/3b.png')
	elseif y.a~='' then
		yl = love.graphics.newImage('images/yuri/'..y.a..'.png')
	end
	
	if y.b ~= '' then y_a = love.graphics.newImage('images/yuri/'..y.b..'.png') end
end

function unloadYuri()
	yl = nil
	yr = nil
	y_a = nil
end

function loadNatsuki()
	if n.b~='' then
		n_a = love.graphics.newImage('images/natsuki/'..n.b..'.png')
	end
	
	if n.a=='1' then
		nl = love.graphics.newImage('images/natsuki/1l.png') 
		nr = love.graphics.newImage('images/natsuki/1r.png') 
	elseif n.a=='2' then
		nl = love.graphics.newImage('images/natsuki/1l.png') 
		nr = love.graphics.newImage('images/natsuki/2r.png') 
	elseif n.a=='3' then
		nl = love.graphics.newImage('images/natsuki/2l.png') 
		nr = love.graphics.newImage('images/natsuki/1r.png') 
	elseif n.a=='4' then
		nl = love.graphics.newImage('images/natsuki/2l.png') 
		nr = love.graphics.newImage('images/natsuki/2r.png') 
		
	elseif n.a=='1b' then
		nl = love.graphics.newImage('images/natsuki/1bl.png') 
		nr = love.graphics.newImage('images/natsuki/1br.png') 
	elseif n.a=='2b' then
		nl = love.graphics.newImage('images/natsuki/1bl.png') 
		nr = love.graphics.newImage('images/natsuki/2br.png') 
	elseif n.a=='3b' then
		nl = love.graphics.newImage('images/natsuki/2bl.png') 
		nr = love.graphics.newImage('images/natsuki/1br.png') 
	elseif n.a=='4b' then
		nl = love.graphics.newImage('images/natsuki/2bl.png') 
		nr = love.graphics.newImage('images/natsuki/2br.png') 
		
	elseif n.a=='5' then
		nl = love.graphics.newImage('images/natsuki/3.png') 
	elseif n.a=='5b' then
		nl = love.graphics.newImage('images/natsuki/3b.png') 
	elseif n.a~='' then
		nl = love.graphics.newImage('images/natsuki/'..n.a..'.png')   
	end
end

function unloadNatsuki()
	nl = nil
	nr = nil
	n_a = nil
end

function loadMonika()
	if m.a=='5a' then
		ml = love.graphics.newImage('images/monika/3a.png') 
	elseif m.a=='5b' then
		ml = love.graphics.newImage('images/monika/3b.png') 
	elseif m.a=='1' then
		ml = love.graphics.newImage('images/monika/1l.png')
		mr = love.graphics.newImage('images/monika/1r.png')
	elseif m.a=='2' then
		ml = love.graphics.newImage('images/monika/1l.png')
		mr = love.graphics.newImage('images/monika/2r.png')
	elseif m.a=='3' then
		ml = love.graphics.newImage('images/monika/2l.png')
		mr = love.graphics.newImage('images/monika/1r.png')
	elseif m.a=='4' then
		ml = love.graphics.newImage('images/monika/2l.png')
		mr = love.graphics.newImage('images/monika/2r.png')
	end
	
	if m.b~='' then
		m_a = love.graphics.newImage('images/monika/'..m.b..'.png') 
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
	end
end