function changeState(cstate,x)
	if cstate == 'load' then
		require "states.load"
		state = 'load'
	elseif cstate == 'splash' then
		require "states.splash"
		alpha = 0
		xaload = 0
		timer = 0
		state = "splash1"
		audioUpdate('1')
	elseif cstate == 'title' then
		poem_enabled = false
		state = 'title'
		timer = 501
		xaload = 0
		audioStop()
		audioUpdate('1')
		menu_enable('title',6)
	elseif cstate == 'game' and x == 1 then --new game
		xaload = 0
		state = "game"
		menu_enabled = false
	elseif cstate == 'game' and x == 2 then --load game
		hideAll()
		loadgame()
		loadAll()
		loadupdate()
		xaload = 0
		state = "game"
		poem_enabled = false
		menu_enabled = false
	elseif cstate == 'game' and x == 3 then --change state to game from poemgame
		cl = cl + 2
		xaload = 0
		state = "game"
		alpha = 255
	elseif cstate == 'newgame' then --first new game
		timer = 501
		cl = 10016
		state = "newgame"
		alpha = 255
	elseif cstate == 'poemgame' then
		poemfont = love.graphics.newFont('images/gui/fonts/Halogen')
		s_sticker_1 = love.graphics.newImage('images/gui/poemgame/s_sticker_1.png')
		s_sticker_2 = love.graphics.newImage('images/gui/poemgame/s_sticker_2.png')
		y_sticker_1 = love.graphics.newImage('images/gui/poemgame/y_sticker_1.png')
		y_sticker_2 = love.graphics.newImage('images/gui/poemgame/y_sticker_2.png')
		n_sticker_1 = love.graphics.newImage('images/gui/poemgame/n_sticker_1.png')
		n_sticker_2 = love.graphics.newImage('images/gui/poemgame/n_sticker_2.png')
		require "states.poemgame"
		poemgame()
		alpha = 255
	end
	
	if cstate == 'game' or cstate == 'newgame' then	
		require "states.game"
		require "scripts.script"
		if chapter == 0 then
			require "scripts.script-ch0"
		elseif chapter == 1 then
			require "scripts.script-ch1"
		elseif chapter == 2 then
			require "scripts.script-ch2"
		elseif chapter == 3 then
			require "scripts.script-ch3"
		elseif chapter == 4 then
			require "scripts.script-ch4"
		elseif chapter == 5 then
			require "scripts.script-ch5"
		end
		if poemwinner[chapter] == 'Sayori' then
			require "scripts.script-exclusives-sayori"
		elseif poemwinner[chapter] == 'Natsuki' then
			require "scripts.script-exclusives-natsuki"
		elseif poemwinner[chapter] == 'Yuri' then
			require "scripts.script-exclusives-yuri"
		end
		unloadAll('poemgame')
	end
end

function bgUpdate(bgx) --background changes
	if xaload == 0 then
		--backgrounds
		if bgx == 'residential' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/residential.png')
		elseif bgx == 'class' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/class.png')
		elseif bgx == 'corridor' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/corridor.png')
		elseif bgx == 'club' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/club.png')
		elseif bgx == 'closet' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/closet.png')
		elseif bgx == 'house' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/house.png')
		elseif bgx == 'kitchen' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/kitchen.png')
		elseif bgx == 'bedroom' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/bedroom.png')
		elseif bgx == 'sayori_bedroom' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/sayori_bedroom.png')
		elseif bgx == 'black' then
			unloadbg()
			
		--cg bases/backgrounds are added here
		elseif bgx == 's_cg1' then
			unloadbg()
			bgch = love.graphics.newImage('images/cg/s_cg1.png')
		elseif bgx == 'n_cg1_base' then
			unloadbg()
			bgch = love.graphics.newImage('images/cg/n_cg1_base.png')
		elseif bgx == 'y_cg1_base' then
			unloadbg()
			bgch = love.graphics.newImage('images/cg/y_cg1_base.png')
			
		--warning screens
		elseif bgx == 'warning' then
			bgch = love.graphics.newImage('images/bg/warning.png')
			bgch2 = love.graphics.newImage('images/bg/warning2.png')
		elseif bgx == 'warning2' then
			bgch = bgch2
		end
	end	
	bg1 = bgx
end

function cgUpdate(cgx) --cg changes
	if xaload == 0 then
		if cgx == 'y_cg1_exp1' then
			cgch = love.graphics.newImage('images/cg/y_cg1_exp1.png')
		elseif cgx == 'y_cg1_exp2' then
			cgch = love.graphics.newImage('images/cg/y_cg1_exp2.png')
		elseif cgx == 'y_cg1_exp3' then
			cgch = love.graphics.newImage('images/cg/y_cg1_exp3.png')
		elseif cgx == 'n_cg1_exp1' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp1.png')
		elseif cgx == 'n_cg1_exp2' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp2.png')
		elseif cgx == 'n_cg1_exp3' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp3.png')
		elseif cgx == 'n_cg1_exp4' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp4.png')
		elseif cgx == 'n_cg1_exp5' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp5.png')
		end
	end	
	cg1 = cgx
end

function audioUpdate(audiox) --the audio update function yay
	if xaload == 0 then
		if audiox == '0' then
			audioStop()
			ddlct = love.audio.newSource("audio/bgm/0.ogg", "stream")
			ddlct:setLooping(false)
			ddlct:play()
		elseif audiox == '1' then
			ddlct = love.audio.newSource("audio/bgm/1.ogg", "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '2' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/2.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '3' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/3.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '4' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/4.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_monika' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_monika.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_natsuki' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_natsuki.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_sayori' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_sayori.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_yuri' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_yuri.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '6' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/6.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '7' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/7.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '8' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/8.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '9' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/9.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '10' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/10.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == 'd' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/d.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		--ACT 2 MUSIC
		elseif audiox == '2g' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/2g.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '3g' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/3g.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '3g2' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/3g2.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '4g' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/4g.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_ghost' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_ghost.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_yuri2' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_yuri2.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '6g' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/6g.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '6o' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/6o.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '6r' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/6r.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '6s' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/6s.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '7g' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/7g.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '9g' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/9g.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '10-yuri' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/10-yuri.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == 'yuri-kill' then
			audioStop()
			ddlct = love.audio.newSource('audio/sfx/yuri-kill.ogg', "stream")
			ddlct:setLooping(false)
			ddlct:play()
		elseif audiox == 'heartbeat' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/heartbeat.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == 'g1' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/g1.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == 'g2' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/g2.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		--ACT 3&4 MUSIC
		elseif audiox == 'monika-start' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/monika-start.ogg', "stream")
			ddlct:setLooping(false)
			ddlct:play()
		elseif audiox == 'm1' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/m1.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == 'monika-end' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/monika-end.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == 'end-voice' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/end-voice.ogg', "stream")
			ddlct:setLooping(false)
			ddlct:play()
		elseif audiox == 'credits' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/credits.ogg', "stream")
			ddlct:setLooping(false)
			ddlct:play()
		elseif audiox == 's_kill_early' then
			ddlct = love.audio.newSource('audio/bgm/s_kill_early.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		end
	end
	audio1 = audiox
end

function sfxplay(sfx)
	sfxp = nil
	collectgarbage()
	collectgarbage()
	if sfx == 'pageflip' then
		sfxp = love.audio.newSource('audio/sfx/pageflip.ogg')
	end
	sfxp:play()
end

function unloadbg()
	splash = nil
	bgch = nil
	bgch2 = nil
	cgch = nil
	collectgarbage()
	collectgarbage()
end

function audioStop()
	if ddlct ~= nil then ddlct:stop() end
	ddlct = nil
	collectgarbage()
	collectgarbage()
end

function charCheck()
	if xaload == 0 then
		myTextStartTime = love.timer.getTime()
		xaload = xaload + 1
	else
		xaload = xaload + 1
	end
	
end
	
function updateSayori(a,b,px,py)
	if b == nil then b = '' end
	s.a = a
	s.b = b
	if xaload == 0 then loadSayori() end
	if px and autotimer < 147 and xaload > 0 and settings.animh == 1 then 
		if s.x > px then
			s.x = math.max(s.x - 24, px)
		elseif s.x < px then
			s.x = math.min(s.x + 24, px)
		end
	elseif px and xaload > 0 then
		s.x = px
	end
	if py ~= nil then s.y = py end
end

function updateYuri(a,b,px,py)
	y.a = a 
	y.b = b
	if xaload == 0 then loadYuri() end
	if px and autotimer < 147 and xaload > 0 and settings.animh == 1 then
		if y.x > px then
			y.x = math.max(y.x - 24, px)
		elseif y.x < px then
			y.x = math.min(y.x + 24, px)
		end
	elseif px and xaload > 0 then
		y.x = px
	end
	if py ~= nil then y.y = py end
end

function updateNatsuki(a,b,px,py)
	n.a = a
	n.b = b
	if xaload == 0 then loadNatsuki() end
	if px and autotimer < 147 and xaload > 0 and settings.animh == 1 then 
		if n.x > px then
			n.x = math.max(n.x - 24, px)
		elseif n.x < px then
			n.x = math.min(n.x + 24, px)
		end
	elseif px and xaload > 0 then
		n.x = px
	end
	if py ~= nil then n.y = py end
end

function updateMonika(a,b,px,py)
	if b == nil then b = '' end
	m.a = a
	m.b = b
	if xaload == 0 then loadMonika() end
	if px and autotimer < 147 and xaload > 0 and settings.animh == 1 then 
		if m.x > px then
			m.x = math.max(m.x - 24, px)
		elseif m.x < px then
			m.x = math.min(m.x + 24, px)
		end
	elseif px and xaload > 0 then
		m.x = px		
	end
	if py ~= nil then m.y = py end
end

function loadSayori()
	if s.a=="1" then
		sl = love.graphics.newImage('images/sayori/1l.png') 
		sr = love.graphics.newImage('images/sayori/1r.png') 
	elseif s.a=="2" then
		sl = love.graphics.newImage('images/sayori/1l.png') 
		sr = love.graphics.newImage('images/sayori/2r.png') 
	elseif s.a=="3" then
		sl = love.graphics.newImage('images/sayori/2l.png') 
		sr = love.graphics.newImage('images/sayori/1r.png') 
	elseif s.a=="4" then
		sl = love.graphics.newImage('images/sayori/2l.png') 
		sr = love.graphics.newImage('images/sayori/2r.png') 
	
	elseif s.a=="1b" then
		sl = love.graphics.newImage('images/sayori/1bl.png')
		sr = love.graphics.newImage('images/sayori/1br.png')
	elseif s.a=="2b" then
		sl = love.graphics.newImage('images/sayori/1bl.png') 
		sr = love.graphics.newImage('images/sayori/2br.png') 
	elseif s.a=="3b" then
		sr = love.graphics.newImage('images/sayori/2bl.png') 
		sr = love.graphics.newImage('images/sayori/1br.png') 
	elseif s.a=="4b" then
		sl = love.graphics.newImage('images/sayori/2bl.png') 
		sr = love.graphics.newImage('images/sayori/2br.png') 
	
	elseif s.a=="5a" then
		sl = love.graphics.newImage('images/sayori/3a.png') 
	elseif s.a=="5b" then
		sl = love.graphics.newImage('images/sayori/3b.png') 
	elseif s.a=="5c" then
		sl = love.graphics.newImage('images/sayori/3c.png')  
	elseif s.a=="5d" then
		sl = love.graphics.newImage('images/sayori/3d.png') 
	elseif s.a=="sayori" then
		sl = love.graphics.newImage('images/sayori/sayori.png') 
	end
	
	if s.b~='' then s_a = love.graphics.newImage('images/sayori/'..s.b..'.png') end
end

function unloadSayori()
	sl = nil
	sr = nil
	s_a = nil
	collectgarbage()
	collectgarbage()
end

function loadYuri()	
	if y.a=='1' then
		yl = love.graphics.newImage('images/yuri/1l.png') 
		yr = love.graphics.newImage('images/yuri/1r.png') 
	elseif y.a=="2" then
		yl = love.graphics.newImage('images/yuri/1l.png') 
		yr = love.graphics.newImage('images/yuri/2r.png') 
	elseif y.a=="3" then
		yl = love.graphics.newImage('images/yuri/2l.png') 
		yr = love.graphics.newImage('images/yuri/2r.png') 
		
	elseif y.a=='1b' then
		yl = love.graphics.newImage('images/yuri/1bl.png') 
		yr = love.graphics.newImage('images/yuri/1br.png') 
	elseif y.a=="2b" then
		yl = love.graphics.newImage('images/yuri/1bl.png')
		yr = love.graphics.newImage('images/yuri/2br.png') 
	elseif y.a=="3b" then
		yl = love.graphics.newImage('images/yuri/2bl.png') 
		yr = love.graphics.newImage('images/yuri/2br.png') 
	
	elseif y.a=="4" then
		yl = love.graphics.newImage('images/yuri/3.png') 
	elseif y.a=="4b" then
		yl = love.graphics.newImage('images/yuri/3b.png') 
	elseif y.a=="yuri" then
		yl = love.graphics.newImage('images/yuri/yuri.png') 
	end
	
	if y.b ~= '' then y_a = love.graphics.newImage('images/yuri/'..y.b..'.png') end
end

function unloadYuri()
	yl = nil
	yr = nil
	y_a = nil
	collectgarbage()
	collectgarbage()
end

function loadNatsuki()
	if n.b=="1t" then
		n_a = love.graphics.newImage('images/natsuki/1t.png') 
	elseif n.b=="2bt" then
		n_a = love.graphics.newImage('images/natsuki/2bt.png') 
	elseif n.b=="2a" then
		n_a = love.graphics.newImage('images/natsuki/2bta.png') 
	elseif n.b=="2b" then
		n_a = love.graphics.newImage('images/natsuki/2btb.png') 
	elseif n.b=="2c" then
		n_a = love.graphics.newImage('images/natsuki/2btc.png') 
	elseif n.b=="2d" then
		n_a = love.graphics.newImage('images/natsuki/2btd.png') 
	elseif n.b=="2e" then
		n_a = love.graphics.newImage('images/natsuki/2bte.png') 
	elseif n.b=="2f" then
		n_a = love.graphics.newImage('images/natsuki/2btf.png') 
	elseif n.b=="2g" then
		n_a = love.graphics.newImage('images/natsuki/2btg.png') 
	elseif n.b=="2h" then
		n_a = love.graphics.newImage('images/natsuki/2bth.png') 
	elseif n.b=="2i" then
		n_a = love.graphics.newImage('images/natsuki/2bti.png') 
	elseif n.b~='' then
		n_a = love.graphics.newImage('images/natsuki/'..n.b..'.png')
	end
	
	if n.a=="1" then
		nl = love.graphics.newImage('images/natsuki/1l.png') 
		nr = love.graphics.newImage('images/natsuki/1r.png') 
	elseif n.a=="2" then
		nl = love.graphics.newImage('images/natsuki/1l.png') 
		nr = love.graphics.newImage('images/natsuki/2r.png') 
	elseif n.a=="3" then
		nl = love.graphics.newImage('images/natsuki/2l.png') 
		nr = love.graphics.newImage('images/natsuki/1r.png') 
	elseif n.a=="4" then
		nl = love.graphics.newImage('images/natsuki/2l.png') 
		nr = love.graphics.newImage('images/natsuki/2r.png') 
		
	elseif n.a=="1b" then
		nl = love.graphics.newImage('images/natsuki/1bl.png') 
		nr = love.graphics.newImage('images/natsuki/1br.png') 
	elseif n.a=="2b" then
		nl = love.graphics.newImage('images/natsuki/1bl.png') 
		nr = love.graphics.newImage('images/natsuki/2br.png') 
	elseif n.a=="3b" then
		nl = love.graphics.newImage('images/natsuki/2bl.png') 
		nr = love.graphics.newImage('images/natsuki/1br.png') 
	elseif n.a=="4b" then
		nl = love.graphics.newImage('images/natsuki/2bl.png') 
		nr = love.graphics.newImage('images/natsuki/2br.png') 
		
	elseif n.a=="5" then
		nl = love.graphics.newImage('images/natsuki/3.png') 
	elseif n.a=="5b" then
		nl = love.graphics.newImage('images/natsuki/3b.png') 
	elseif n.a=="natsuki" then
		nl = love.graphics.newImage('images/natsuki/natsuki.png') 
	elseif n.a=="natsuki2" then
		nl = love.graphics.newImage('images/natsuki/natsuki2.png') 
	elseif n.a=="natsuki3" then
		nl = love.graphics.newImage('images/natsuki/natsuki3.png') 
	end
end

function unloadNatsuki()
	nl = nil
	nr = nil
	n_a = nil
	collectgarbage()
	collectgarbage()
end

function loadMonika()
	if m.a=="5a" then
		ml = love.graphics.newImage('images/monika/3a.png') 
	elseif m.a=="5b" then
		ml = love.graphics.newImage('images/monika/3b.png') 
	elseif m.a=="1" then
		ml = love.graphics.newImage('images/monika/1l.png')
		mr = love.graphics.newImage('images/monika/1r.png')
	elseif m.a=="2" then
		ml = love.graphics.newImage('images/monika/1l.png')
		mr = love.graphics.newImage('images/monika/2r.png')
	elseif m.a=="3" then
		ml = love.graphics.newImage('images/monika/2l.png')
		mr = love.graphics.newImage('images/monika/1r.png')
	elseif m.a=="4" then
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
	collectgarbage()
	collectgarbage()
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
	end
	collectgarbage()
	collectgarbage()
end