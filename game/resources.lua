function updateloading(dt)
	timer = 501
	if l_timer <= 100 then
		l_timer = l_timer + 1
	end
	
	--loading assets
	if l_timer == 5 then
		--splash, title screen, gui elements, sfx
		splash = love.graphics.newImage('images/bg/splash.png')
		titlebg = love.graphics.newImage('images/bg/bg.png')
		textbox = love.graphics.newImage('images/gui/textbox.png')
		namebox = love.graphics.newImage('images/gui/namebox.png')
		sfx1 = love.audio.newSource("audio/sfx/select.ogg", "static")
		sfx2 = love.audio.newSource("audio/sfx/hover.ogg", "static")
		
		--scrolling background
		background_Image = love.graphics.newImage('images/bg/menu_bg.png')
	
	--This crashes the game, so it's commented out for now. It runs out of memory I guess?
	--[[elseif l_timer == 10 then
		s1l = love.graphics.newImage('images/sayori/1l.png') 
		s2l = love.graphics.newImage('images/sayori/2l.png') 
		s3a = love.graphics.newImage('images/sayori/3a.png') 
		s3b = love.graphics.newImage('images/sayori/3b.png') 
		s3c = love.graphics.newImage('images/sayori/3c.png') 
		s3d = love.graphics.newImage('images/sayori/3d.png') 
	
	elseif l_timer == 15 then
		s1bl = love.graphics.newImage('images/sayori/1bl.png') 
		s2bl = love.graphics.newImage('images/sayori/2bl.png') 
		saf = love.graphics.newImage('images/sayori/sayori.png')
		s1r = love.graphics.newImage('images/sayori/1r.png') 
		s2r = love.graphics.newImage('images/sayori/2r.png') 
		s1br = love.graphics.newImage('images/sayori/1br.png') 
		s2br = love.graphics.newImage('images/sayori/2br.png') 
	
	elseif l_timer == 20 then
		y1l = love.graphics.newImage('images/yuri/1l.png') 
		y2l = love.graphics.newImage('images/yuri/2l.png') 
		y3_ = love.graphics.newImage('images/yuri/3.png') 
		y1bl = love.graphics.newImage('images/yuri/1bl.png')
		y2bl = love.graphics.newImage('images/yuri/2bl.png')
		y3b = love.graphics.newImage('images/yuri/3b.png')
	
	elseif l_timer == 25 then
		--yaf = love.graphics.newImage('images/yuri/yuri.png') 
		y1r = love.graphics.newImage('images/yuri/1r.png')
		y2r = love.graphics.newImage('images/yuri/2r.png')
		y1br = love.graphics.newImage('images/yuri/1br.png')
		y2br = love.graphics.newImage('images/yuri/2br.png')
	
	elseif l_timer == 30 then
		 n1l = love.graphics.newImage('images/natsuki/1l.png')
		n2l = love.graphics.newImage('images/natsuki/2l.png')
		n3_ = love.graphics.newImage('images/natsuki/3.png')
		n1bl = love.graphics.newImage('images/natsuki/1bl.png')
		--naf = love.graphics.newImage('images/natsuki/natsuki.png') 

	elseif l_timer == 35 then
		n2bl = love.graphics.newImage('images/natsuki/2bl.png')
		n3b = love.graphics.newImage('images/natsuki/3b.png')
		n1r = love.graphics.newImage('images/natsuki/1r.png')
		n2r = love.graphics.newImage('images/natsuki/2r.png')
		n1br = love.graphics.newImage('images/natsuki/1br.png')
		n2br = love.graphics.newImage('images/natsuki/2br.png')
	
	elseif l_timer == 40 then
		m1l = love.graphics.newImage('images/monika/1l.png')
		m2l = love.graphics.newImage('images/monika/2l.png')
		m1r = love.graphics.newImage('images/monika/1r.png')
		m2r = love.graphics.newImage('images/monika/2r.png') 
	
	elseif l_timer == 45 then
		m3a = love.graphics.newImage('images/monika/3a.png') 
		m3b = love.graphics.newImage('images/monika/3b.png') 
	]]
	
	elseif l_timer == 50 then
		--poemgame stuff and fonts
		poemfont = love.graphics.newFont('images/gui/fonts/Halogen')
		sayoristicker1 = love.graphics.newImage('images/gui/poemgame/s_sticker_1.png')
		sayoristicker2 = love.graphics.newImage('images/gui/poemgame/s_sticker_2.png')
		yuristicker1 = love.graphics.newImage('images/gui/poemgame/y_sticker_1.png')
		y1 = love.graphics.newFont('images/gui/fonts/y1')
		
	elseif l_timer == 55 then
		--more poemgame stuff and fonts
		yuristicker2 = love.graphics.newImage('images/gui/poemgame/y_sticker_2.png')
		natsukisticker1 = love.graphics.newImage('images/gui/poemgame/n_sticker_1.png')
		natsukisticker2 = love.graphics.newImage('images/gui/poemgame/n_sticker_2.png')
		s1 = love.graphics.newFont('images/gui/fonts/s1')
		m1 = love.graphics.newFont('images/gui/fonts/m1')
	
	elseif l_timer == 100 then
		--go to splash screens and title screen
		timer = 0
		state = "splash1"
		audioUpdate('1') 
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
			bgch = love.graphics.newImage('images/bg/black.png')
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
		elseif audiox == 's_kill_early' then
			ddlct = love.audio.newSource('audio/bgm/s_kill_early.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		end
	end
	audio1 = audiox
end

function unloadbg()
	splash = nil
	bgch = nil
	bgch2 = nil
	cgch = nil
	collectgarbage()
end

function audioStop()
	if ddlct ~= nil then ddlct:stop() end
	ddlct = nil
	collectgarbage()
end

function charCheck()

	if xaload == 0 then
		loadSayori()
		loadYuri()
		loadNatsuki()
		loadMonika()
		xaload = xaload + 1
	else
		xaload = xaload + 1
	end
	
end

function updateSayori(a,b,c)
	sa = a
	sb = b
	sc = c
end

function updateYuri(a,b,c)
	ya = a
	yb = b
	yc = c
end

function updateNatsuki(a,b,c)
	na = a
	nb = b
	nc = c
end

function updateMonika(a,b,c)
	ma = a
	mb = b
	mc = c
end

function loadSayori()

	if sa=="" then
	elseif sa=="1l" then
		if s1l == nil then s1l = love.graphics.newImage('images/sayori/1l.png') end
	elseif sa=="2l" then
		if s2l == nil then s2l = love.graphics.newImage('images/sayori/2l.png') end 
	elseif sa=="3a" then
		if s3a == nil then s3a = love.graphics.newImage('images/sayori/3a.png') end
	elseif sa=="3b" then
		if s3b == nil then s3b = love.graphics.newImage('images/sayori/3b.png') end
	elseif sa=="3c" then
		if s3c == nil then s3c = love.graphics.newImage('images/sayori/3c.png') end 
	elseif sa=="3d" then
		if s3d == nil then s3d = love.graphics.newImage('images/sayori/3d.png') end
	elseif sa=="1bl" then
		if s1bl == nil then s1bl = love.graphics.newImage('images/sayori/1bl.png') end
	elseif sa=="2bl" then
		if s2bl == nil then s2bl = love.graphics.newImage('images/sayori/2bl.png') end 
	elseif sa=="sayori" then
		if saf == nil then saf = love.graphics.newImage('images/sayori/sayori.png') end 
	end
	
	if sb=="" then
	elseif sb=="1r" then
		if s1r == nil then s1r = love.graphics.newImage('images/sayori/1r.png') end 
	elseif sb=="2r" then
		if s2r == nil then s2r = love.graphics.newImage('images/sayori/2r.png') end 
	elseif sb=="1br" then
		if s1r == nil then s1r = love.graphics.newImage('images/sayori/1br.png') end 
	elseif sb=="2br" then
		if s2r == nil then s2r = love.graphics.newImage('images/sayori/2br.png') end 
	end
	
	if sc=="" then
	elseif sc=="a" then
		if s_a == nil then s_a = love.graphics.newImage('images/sayori/a.png') end
	elseif sc=="b" then
		if s_b == nil then s_b = love.graphics.newImage('images/sayori/b.png') end
	elseif sc=="c" then
		if s_c == nil then s_c = love.graphics.newImage('images/sayori/c.png') end
	elseif sc=="d" then
		if s_d == nil then s_d = love.graphics.newImage('images/sayori/d.png') end
	elseif sc=="e" then
		if s_e == nil then s_e = love.graphics.newImage('images/sayori/e.png') end
	elseif sc=="f" then
		if s_f == nil then s_f = love.graphics.newImage('images/sayori/f.png') end
	elseif sc=="g" then
		if s_g == nil then s_g = love.graphics.newImage('images/sayori/g.png') end
	elseif sc=="h" then
		if s_h == nil then s_h = love.graphics.newImage('images/sayori/h.png') end
	elseif sc=="i" then
		if s_i == nil then s_i = love.graphics.newImage('images/sayori/i.png') end
	elseif sc=="j" then
		if s_j == nil then s_j = love.graphics.newImage('images/sayori/j.png') end
	elseif sc=="k" then
		if s_k == nil then s_k = love.graphics.newImage('images/sayori/k.png') end
	elseif sc=="l" then
		if s_l == nil then s_l = love.graphics.newImage('images/sayori/l.png') end
	elseif sc=="m" then
		if s_m == nil then s_m = love.graphics.newImage('images/sayori/m.png') end
	elseif sc=="n" then
		if s_n == nil then s_n = love.graphics.newImage('images/sayori/n.png') end
	elseif sc=="o" then
		if s_o == nil then s_o = love.graphics.newImage('images/sayori/o.png') end
	elseif sc=="p" then
		if s_p == nil then s_p = love.graphics.newImage('images/sayori/p.png') end
	elseif sc=="q" then
		if s_q == nil then s_q = love.graphics.newImage('images/sayori/q.png') end
	elseif sc=="r" then
		if s_r == nil then s_r = love.graphics.newImage('images/sayori/r.png') end
	elseif sc=="s" then
		if s_s == nil then s_s = love.graphics.newImage('images/sayori/s.png') end
	elseif sc=="t" then
		if s_t == nil then s_s = love.graphics.newImage('images/sayori/t.png') end
	elseif sc=="u" then
		if s_u == nil then s_u = love.graphics.newImage('images/sayori/u.png') end
	elseif sc=="v" then
		if s_v == nil then s_v = love.graphics.newImage('images/sayori/v.png') end
	elseif sc=="w" then
		if s_w == nil then s_w = love.graphics.newImage('images/sayori/w.png') end
	elseif sc=="x" then
		if s_x == nil then s_x = love.graphics.newImage('images/sayori/x.png') end
	elseif sc=="y" then
		if s_y == nil then s_y = love.graphics.newImage('images/sayori/y.png') end
	end
	
end

function unloadSayori()
	s_a = nil
	s_b = nil
	s_c = nil
	s_d = nil
	s_e = nil
	s_f = nil
	s_g = nil
	s_h = nil
	s_i = nil
	s_j = nil
	s_k = nil
	s_l = nil
	s_m = nil
	s_n = nil
	s_o = nil
	s_p = nil
	s_q = nil
	s_r = nil
	s_s = nil
	s_u = nil
	s_w = nil
	s_x = nil
	s_y = nil
	collectgarbage()
end

function loadYuri()	
	
	if ya=="" then
	elseif ya=="1l" then
		if yl1 == nil then y1l = love.graphics.newImage('images/yuri/1l.png') end
	elseif ya=="2l" then
		if y2l == nil then y2l = love.graphics.newImage('images/yuri/2l.png') end
	elseif ya=="3" then
		if y3_ == nil then y3_ = love.graphics.newImage('images/yuri/3.png') end
	elseif ya=="1bl" then
		if ylb1 == nil then y1bl = love.graphics.newImage('images/yuri/1bl.png') end
	elseif ya=="2bl" then
		if y2bl == nil then y2bl = love.graphics.newImage('images/yuri/2bl.png') end
	elseif ya=="3b" then
		if y3b == nil then y3b = love.graphics.newImage('images/yuri/3b.png') end
	elseif ya=="yuri" then
		if yaf == nil then yaf = love.graphics.newImage('images/yuri/yuri.png') end 
	end
	
	if yb=="" then
	elseif yb=="1r" then
		if y1r == nil then y1r = love.graphics.newImage('images/yuri/1r.png') end
	elseif yb=="2r" then
		if y2r == nil then y2r = love.graphics.newImage('images/yuri/2r.png') end
	elseif yb=="1br" then
		if y1br == nil then y1br = love.graphics.newImage('images/yuri/1br.png') end
	elseif yb=="2br" then
		if y2br == nil then y2br = love.graphics.newImage('images/yuri/2br.png') end
	end]]
	
	if yc=="" then
	elseif yc=="a" then
		if y_a == nil then y_a = love.graphics.newImage('images/yuri/a.png') end
	elseif yc=="a2" then
		if ya2 == nil then ya2 = love.graphics.newImage('images/yuri/a2.png') end
	elseif yc=="b" then
		if y_b == nil then y_b = love.graphics.newImage('images/yuri/b.png') end
	elseif yc=="b2" then
		if yb2 == nil then yb2 = love.graphics.newImage('images/yuri/b2.png') end
	elseif yc=="c" then
		if y_c == nil then y_c = love.graphics.newImage('images/yuri/c.png') end
	elseif yc=="c2" then
		if yc2 == nil then yc2 = love.graphics.newImage('images/yuri/c2.png') end
	elseif yc=="d" then
		if y_d == nil then y_d = love.graphics.newImage('images/yuri/d.png') end
	elseif yc=="d2" then
		if yd2 == nil then yd2 = love.graphics.newImage('images/yuri/d2.png') end
	elseif yc=="e" then
		if y_e == nil then y_e = love.graphics.newImage('images/yuri/e.png') end
	elseif yc=="f" then
		if y_f == nil then y_f = love.graphics.newImage('images/yuri/f.png') end
	elseif yc=="g" then
		if y_g == nil then y_g = love.graphics.newImage('images/yuri/g.png') end
	elseif yc=="h" then
		if y_h == nil then y_h = love.graphics.newImage('images/yuri/h.png') end
	elseif yc=="i" then
		if y_i == nil then y_i = love.graphics.newImage('images/yuri/i.png') end
	elseif yc=="j" then
		if y_j == nil then y_j = love.graphics.newImage('images/yuri/j.png') end
	elseif yc=="k" then 
		if y_k == nil then y_k = love.graphics.newImage('images/yuri/k.png') end
	elseif yc=="l" then
		if y_l == nil then y_l = love.graphics.newImage('images/yuri/l.png') end
	elseif yc=="m" then
		if y_m == nil then y_m = love.graphics.newImage('images/yuri/m.png') end
	elseif yc=="n" then
		if y_n == nil then y_n = love.graphics.newImage('images/yuri/n.png') end
	elseif yc=="o" then
		if y_o == nil then y_o = love.graphics.newImage('images/yuri/o.png') end
	elseif yc=="p" then
		if y_p == nil then y_p = love.graphics.newImage('images/yuri/p.png') end
	elseif yc=="q" then
		if y_q == nil then y_q = love.graphics.newImage('images/yuri/q.png') end
	elseif yc=="r" then
		if y_r == nil then y_r = love.graphics.newImage('images/yuri/r.png') end
	elseif yc=="s" then
		if y_s == nil then y_s = love.graphics.newImage('images/yuri/s.png') end
	elseif yc=="t" then
		if y_t == nil then y_t = love.graphics.newImage('images/yuri/t.png') end
	elseif yc=="u" then
		if y_u == nil then y_u = love.graphics.newImage('images/yuri/u.png') end
	elseif yc=="v" then
		if y_v == nil then y_v = love.graphics.newImage('images/yuri/v.png') end
	elseif yc=="w" then
		if y_w == nil then y_w = love.graphics.newImage('images/yuri/w.png') end
	elseif yc=="y1" then
		if yy1 == nil then yy1 = love.graphics.newImage('images/yuri/y1.png') end
	elseif yc=="y2" then
		if yy2 == nil then yy2 = love.graphics.newImage('images/yuri/y2.png') end
	elseif yc=="y3" then
		if yy3 == nil then yy3 = love.graphics.newImage('images/yuri/y3.png') end
	elseif yc=="y4" then
		if yy4 == nil then yy4 = love.graphics.newImage('images/yuri/y4.png') end
	elseif yc=="y5" then
		if yy5 == nil then yy5 = love.graphics.newImage('images/yuri/y5.png') end
	elseif yc=="y6" then
		if yy6 == nil then yy6 = love.graphics.newImage('images/yuri/y6.png') end
	end
	
end

function unloadYuri()	
	y_a = nil
	ya2 = nil
	y_b = nil
	yb2 = nil
	y_c = nil
	yc2 = nil
	y_d = nil
	yd2 = nil
	y_e = nil
	ye2 = nil
	y_f = nil
	y_g = nil
	y_h = nil
	y_i = nil
	y_j = nil
	y_k = nil
	y_l = nil
	y_m = nil
	y_n = nil
	y_o = nil
	y_p = nil
	y_q = nil
	y_r = nil
	y_s = nil
	y_t = nil
	y_u = nil
	y_v = nil
	y_w = nil
	yy6 = nil
	yaf = nil
	collectgarbage()
end

function loadNatsuki()

	if nc=="" then
	elseif nc=="a" then
		if n_a == nil then n_a = love.graphics.newImage('images/natsuki/a.png') end
	elseif nc=="b" then
		if n_b == nil then n_b = love.graphics.newImage('images/natsuki/b.png') end
	elseif nc=="c" then
		if n_c == nil then n_c = love.graphics.newImage('images/natsuki/c.png') end
	elseif nc=="d" then
		if n_d == nil then n_d = love.graphics.newImage('images/natsuki/d.png') end
	elseif nc=="e" then
		if n_e == nil then n_e = love.graphics.newImage('images/natsuki/e.png') end
	elseif nc=="f" then
		if n_f == nil then n_f = love.graphics.newImage('images/natsuki/f.png') end
	elseif nc=="g" then
		if n_g == nil then n_g = love.graphics.newImage('images/natsuki/g.png') end
	elseif nc=="h" then
		if n_h == nil then n_h = love.graphics.newImage('images/natsuki/h.png') end
	elseif nc=="i" then
		if n_i == nil then n_i = love.graphics.newImage('images/natsuki/i.png') end
	elseif nc=="j" then
		if n_j == nil then n_j = love.graphics.newImage('images/natsuki/j.png') end
	elseif nc=="k" then
		if n_k == nil then n_k = love.graphics.newImage('images/natsuki/k.png') end
	elseif nc=="l" then
		if n_l == nil then n_l = love.graphics.newImage('images/natsuki/l.png') end
	elseif nc=="m" then
		if n_m == nil then n_m = love.graphics.newImage('images/natsuki/m.png') end
	elseif nc=="n" then
		if n_n == nil then n_n = love.graphics.newImage('images/natsuki/n.png') end
	elseif nc=="o" then
		if n_o == nil then n_o = love.graphics.newImage('images/natsuki/o.png') end
	elseif nc=="p" then
		if n_p == nil then n_p = love.graphics.newImage('images/natsuki/p.png') end
	elseif nc=="q" then
		if n_q == nil then n_q = love.graphics.newImage('images/natsuki/q.png') end
	elseif nc=="r" then
		if n_r == nil then n_r = love.graphics.newImage('images/natsuki/r.png') end
	elseif nc=="s" then
		if n_s == nil then n_s = love.graphics.newImage('images/natsuki/s.png') end
	elseif nc=="t" then
		if n_t == nil then n_t = love.graphics.newImage('images/natsuki/t.png') end
	elseif nc=="u" then
		if n_u == nil then n_u = love.graphics.newImage('images/natsuki/u.png') end
	elseif nc=="v" then
		if n_v == nil then n_v = love.graphics.newImage('images/natsuki/v.png') end
	elseif nc=="w" then
		if n_w == nil then n_w = love.graphics.newImage('images/natsuki/w.png') end
	elseif nc=="x" then
		if n_x == nil then n_x = love.graphics.newImage('images/natsuki/x.png') end
	elseif nc=="y" then
		if n_y == nil then n_y = love.graphics.newImage('images/natsuki/y.png') end
	elseif nc=="z" then
		if n_z == nil then n_z = love.graphics.newImage('images/natsuki/z.png') end

	elseif nc=="1t" then
		if n1t == nil then n1t = love.graphics.newImage('images/natsuki/1t.png') end
	elseif nc=="2bt" then
		if n2bt == nil then n2bt = love.graphics.newImage('images/natsuki/2bt.png') end
	elseif nc=="2bta" then
		if n2bta == nil then n2bta = love.graphics.newImage('images/natsuki/2bta.png') end
	elseif nc=="2btb" then
		if n2btb == nil then n2btb = love.graphics.newImage('images/natsuki/2btb.png') end
	elseif nc=="2btc" then
		if n2btc == nil then n2btc = love.graphics.newImage('images/natsuki/2btc.png') end
	elseif nc=="2btd" then
		if n2btd == nil then n2btd = love.graphics.newImage('images/natsuki/2btd.png') end
	elseif nc=="2bte" then
		if n2bte == nil then n2bte = love.graphics.newImage('images/natsuki/2bte.png') end
	elseif nc=="2btf" then
		if n2btf == nil then n2btf = love.graphics.newImage('images/natsuki/2btf.png') end
	elseif nc=="2btg" then
		if n2btg == nil then n2btg = love.graphics.newImage('images/natsuki/2btg.png') end
	elseif nc=="2bth" then
		if n2bth == nil then n2bth = love.graphics.newImage('images/natsuki/2bth.png') end
	elseif nc=="2bti" then
		if n2bti == nil then n2bti = love.graphics.newImage('images/natsuki/2bti.png') end
	elseif nc=="2t" then
		if n2t == nil then n2t = love.graphics.newImage('images/natsuki/2t.png') end
	elseif nc=="2ta" then
		if n2ta == nil then n2ta = love.graphics.newImage('images/natsuki/2ta.png') end
	elseif nc=="2tb" then
		if n2tb == nil then n2tb = love.graphics.newImage('images/natsuki/2tb.png') end
	elseif nc=="2tc" then
		if n2tc == nil then n2tc = love.graphics.newImage('images/natsuki/2tc.png') end
	elseif nc=="2td" then
		if n2td == nil then n2td = love.graphics.newImage('images/natsuki/2td.png') end
	elseif nc=="2te" then
		if n2te == nil then n2te = love.graphics.newImage('images/natsuki/2te.png') end
	elseif nc=="2tf" then
		if n2tf == nil then n2tf = love.graphics.newImage('images/natsuki/2tf.png') end
	elseif nc=="2tg" then
		if n2tg == nil then n2tg = love.graphics.newImage('images/natsuki/2tg.png') end
	elseif nc=="2th" then
		if n2th == nil then n2th = love.graphics.newImage('images/natsuki/2th.png') end
	elseif nc=="2ti" then
		if n2ti == nil then n2ti = love.graphics.newImage('images/natsuki/2ti.png') end	
	end

	if na=="" then
	elseif na=="1l" then
		if n1l == nil then n1l = love.graphics.newImage('images/natsuki/1l.png') end
	elseif na=="2l" then
		if n2l == nil then n2l = love.graphics.newImage('images/natsuki/2l.png') end
	elseif na=="3" then
		if n3_ == nil then n3_ = love.graphics.newImage('images/natsuki/3.png') end
	elseif na=="1bl" then
		if n1bl == nil then n1bl = love.graphics.newImage('images/natsuki/1bl.png') end
	elseif na=="2bl" then
		if n2bl == nil then n2bl = love.graphics.newImage('images/natsuki/2bl.png') end
	elseif na=="3b" then
		if n3b == nil then n3b = love.graphics.newImage('images/natsuki/3b.png') end
	elseif na=="natsuki" then
		if naf == nil then naf = love.graphics.newImage('images/natsuki/natsuki.png') end 
	end
	
	if nb=="" then
	elseif nb=="1r" then
		if n1r == nil then n1r = love.graphics.newImage('images/natsuki/1r.png') end
	elseif nb=="2r" then
		if n2r == nil then n2r = love.graphics.newImage('images/natsuki/2r.png') end
	elseif nb=="1br" then
		if n1br == nil then n1br = love.graphics.newImage('images/natsuki/1br.png') end
	elseif nb=="2br" then
		if n2br == nil then n2br = love.graphics.newImage('images/natsuki/2br.png') end
	end
	
end

function unloadNatsuki()
	n_a = nil
	n_b = nil
	n_c = nil
	n_d = nil
	n_e = nil
	n_f = nil
	n_g = nil
	n_h = nil
	n_i = nil
	n_j = nil
	n_k = nil
	n_l = nil
	n_m = nil
	n_n = nil
	n_q = nil
	n_r = nil
	n_s = nil
	n_t = nil
	n_u = nil
	n_v = nil
	n_w = nil
	n_x = nil
	n_y = nil
	n_z = nil
	naf = nil
	collectgarbage()
end
	
function loadMonika()

	if ma=="" then
	elseif ma=="1l" then
		if m1l == nil then m1l = love.graphics.newImage('images/monika/1l.png') end
	elseif ma=="2l" then
		if m2l == nil then m2l = love.graphics.newImage('images/monika/2l.png') end
	elseif ma=="3a" then
		if m3a == nil then m3a = love.graphics.newImage('images/monika/3a.png') end
	elseif ma=="3b" then
		if m3b == nil then m3b = love.graphics.newImage('images/monika/3b.png') end
	end
	
	if mb=="" then
	elseif mb=="1r" then
		if m1r == nil then m1r = love.graphics.newImage('images/monika/1r.png') end
	elseif mb=="2r" then
		if m2r == nil then m2r = love.graphics.newImage('images/monika/2r.png') end
	end
	
	if mc=="" then
	elseif mc=="a" then
		if m_a == nil then m_a = love.graphics.newImage('images/monika/a.png') end
	elseif mc=="b" then
		if m_b == nil then m_b = love.graphics.newImage('images/monika/b.png') end
	elseif mc=="c" then
		if m_c == nil then m_c = love.graphics.newImage('images/monika/c.png') end
	elseif mc=="d" then
		if m_d == nil then m_d = love.graphics.newImage('images/monika/d.png') end
	elseif mc=="e" then
		if m_e == nil then m_e = love.graphics.newImage('images/monika/e.png') end
	elseif mc=="f" then
		if m_f == nil then m_f = love.graphics.newImage('images/monika/f.png') end
	elseif mc=="g" then
		if m_g == nil then m_g = love.graphics.newImage('images/monika/g.png') end
	elseif mc=="h" then
		if m_h == nil then m_h = love.graphics.newImage('images/monika/h.png') end
	elseif mc=="i" then
		if m_i == nil then m_i = love.graphics.newImage('images/monika/i.png') end
	elseif mc=="j" then
		if m_j == nil then m_j = love.graphics.newImage('images/monika/j.png') end
	elseif mc=="k" then
		if m_k == nil then m_k = love.graphics.newImage('images/monika/k.png') end
	elseif mc=="l" then
		if m_l == nil then m_l = love.graphics.newImage('images/monika/l.png') end
	elseif mc=="m" then
		if m_m == nil then m_m = love.graphics.newImage('images/monika/m.png') end
	elseif mc=="n" then
		if m_n == nil then m_n = love.graphics.newImage('images/monika/n.png') end
	elseif mc=="o" then
		if m_o == nil then m_o = love.graphics.newImage('images/monika/o.png') end
	elseif mc=="p" then
		if m_p == nil then m_p = love.graphics.newImage('images/monika/p.png') end
	elseif mc=="q" then
		if m_q == nil then m_q = love.graphics.newImage('images/monika/q.png') end
	elseif mc=="r" then
		if m_r == nil then m_r = love.graphics.newImage('images/monika/r.png') end
	end
end

function unloadMonika()
	m_a = nil
	m_b = nil
	m_c = nil
	m_d = nil
	m_e = nil
	m_f = nil
	m_g = nil
	m_h = nil
	m_i = nil
	m_j = nil
	m_k = nil
	m_l = nil
	m_m = nil
	m_n = nil
	m_o = nil
	m_p = nil
	m_q = nil
	m_r = nil
	collectgarbage()
end

function unloadAll()
	unloadSayori()
	unloadYuri()
	unloadNatsuki()
	unloadMonika()
end
