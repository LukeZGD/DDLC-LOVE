function audioUpdate(audiox) --the audio update function yay
	if audiox == '0' then
		audioStop()
		ddlct = love.audio.newSource("./audio/bgm/0.wav")
		ddlct:setLooping(false)
		ddlct:play()
	elseif audiox == '1' then
		ddlct = love.audio.newSource("./audio/bgm/1.wav")
		ddlct:setLooping(true)
		ddlct:play()
	elseif audiox == '2' then
		audioStop()
		ddlct = love.audio.newSource('./audio/bgm/2.wav')
		ddlct:setLooping(true)
		ddlct:play()
	elseif audiox == '3' then
		audioStop()
		ddlct = love.audio.newSource('./audio/bgm/3.wav')
		ddlct:setLooping(true)
		ddlct:play()
	elseif audiox == 's_kill_early' then
		ddlct = love.audio.newSource('./audio/bgm/s_kill_early.wav')
		ddlct:setLooping(true)
		ddlct:play()
	end
end

function audioCheck() --checks if audio needs changes.. runs at load game or script progress
	if audio1 == 1 then
		if ch0ln <= 82 then --audio updates
			audioUpdate('2')
			audio1 = 0
		elseif ch0ln <= 85 then
			audioUpdate('0')
			audio1 = 0
		elseif ch0ln <= 200 then
			audioUpdate('3')
			audio1 = 0
		end
	end
end

function audioStop()
	if ddlct == nil then else ddlct:stop() end
	ddlct = nil
end

function sfx1play()
	sfx = love.audio.newSource("./audio/sfx/select.wav", "static")
	sfx:setLooping(false)
	sfx:play()
	sfx = nil
end

function resetchr(x)
	monikachr = io.open("./characters/monika.chr", "w")
	sayorichr = io.open("./characters/sayori.chr", "w")
	yurichr = io.open("./characters/yuri.chr", "w")
	natsukichr = io.open("./characters/natsuki.chr", "w")
	if x==1 then
		yurichr:write()
		natsukichr:write()
	elseif x==2 then
		monikachr:write()
		yurichr:write()
		natsukichr:write()
	else
		monikachr:write()
		sayorichr:write()
		yurichr:write()
		natsukichr:write()
	end
	monikachr:close()
	sayorichr:close()
	yurichr:close()
	natsukichr:close()
end

function charCheck() --checks if character draw needs changes.. runs at load game or script progress
	if sload == 1 then
		loadSayori()
		sload = 99
	elseif sload == 2 then
		unloadSayori()
		sload = 99
	end
	
	if yload == 1 then
		loadYuri()
		yload = 99
	elseif yload == 2 then
		unloadYuri()
		yload = 99
	end
	
	if nload == 1 then
		loadNatsuki()
		nload = 99
	elseif nload == 2 then
		unloadNatsuki()
		nload = 99
	end
	
	if mload == 1 then
		loadMonika()
		mload = 99
	elseif mload == 2 then
		unloadMonika()
		mload = 99
	end
end

function loadSayori()
	s1l = love.graphics.newImage('./images/sayori/1l.png')
	s1r = love.graphics.newImage('./images/sayori/1r.png')
	s2l = love.graphics.newImage('./images/sayori/2l.png')
	s2r = love.graphics.newImage('./images/sayori/2r.png')
	s3a = love.graphics.newImage('./images/sayori/3a.png')
	s3b = love.graphics.newImage('./images/sayori/3b.png')
	s3c = love.graphics.newImage('./images/sayori/3c.png')
	s3d = love.graphics.newImage('./images/sayori/3d.png')
	s_a = love.graphics.newImage('./images/sayori/a.png')
	s_b = love.graphics.newImage('./images/sayori/b.png')
	s_c = love.graphics.newImage('./images/sayori/c.png')
	--s_d = love.graphics.newImage('./images/sayori/d.png')
	--s_e = love.graphics.newImage('./images/sayori/e.png')
	--s_f = love.graphics.newImage('./images/sayori/f.png')
	s_g = love.graphics.newImage('./images/sayori/g.png')
	s_h = love.graphics.newImage('./images/sayori/h.png')
	--s_i = love.graphics.newImage('./images/sayori/i.png')
	s_j = love.graphics.newImage('./images/sayori/j.png')
	--s_k = love.graphics.newImage('./images/sayori/k.png')
	--s_l = love.graphics.newImage('./images/sayori/l.png')
	--s_m = love.graphics.newImage('./images/sayori/m.png')
	s_n = love.graphics.newImage('./images/sayori/n.png')
	--s_o = love.graphics.newImage('./images/sayori/o.png')
	s_p = love.graphics.newImage('./images/sayori/p.png')
	s_q = love.graphics.newImage('./images/sayori/q.png')
	s_r = love.graphics.newImage('./images/sayori/r.png')
	--s_s = love.graphics.newImage('./images/sayori/s.png')
	s_u = love.graphics.newImage('./images/sayori/u.png')
	s_w = love.graphics.newImage('./images/sayori/w.png')
	s_x = love.graphics.newImage('./images/sayori/x.png')
	s_y = love.graphics.newImage('./images/sayori/y.png')
end

function unloadSayori()
	s1l = nil
	s1r = nil
	s2l = nil
	s2r = nil
	s3a = nil
	s3b = nil
	s3c = nil
	s3d = nil
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
end

function loadYuri()	
	y1l = love.graphics.newImage('./images/yuri/1l.png')
	y1r = love.graphics.newImage('./images/yuri/1r.png')
	y2r = love.graphics.newImage('./images/yuri/2l.png')
	y2r = love.graphics.newImage('./images/yuri/2r.png')
	y3_ = love.graphics.newImage('./images/yuri/3.png')
	y_a = love.graphics.newImage('./images/yuri/a.png')
	--ya2 = love.graphics.newImage('./images/yuri/a2.png')
	--y_b = love.graphics.newImage('./images/yuri/b.png')
	yb2 = love.graphics.newImage('./images/yuri/b2.png')
	--y_c = love.graphics.newImage('./images/yuri/c.png')
	--yc2 = love.graphics.newImage('./images/yuri/c2.png')
	--y_d = love.graphics.newImage('./images/yuri/d.png')
	--yd2 = love.graphics.newImage('./images/yuri/d2.png')
	--y_e = love.graphics.newImage('./images/yuri/e.png')
	--ye2 = love.graphics.newImage('./images/yuri/e2.png')
	--y_f = love.graphics.newImage('./images/yuri/f.png')
	--y_g = love.graphics.newImage('./images/yuri/g.png')
	--y_h = love.graphics.newImage('./images/yuri/h.png')
	--y_i = love.graphics.newImage('./images/yuri/i.png')
	--y_j = love.graphics.newImage('./images/yuri/j.png')
	--y_k = love.graphics.newImage('./images/yuri/k.png')
	y_l = love.graphics.newImage('./images/yuri/l.png')
	--y_m = love.graphics.newImage('./images/yuri/m.png')
	--y_n = love.graphics.newImage('./images/yuri/n.png')
	--y_o = love.graphics.newImage('./images/yuri/o.png')
	--y_p = love.graphics.newImage('./images/yuri/p.png')
	--y_q = love.graphics.newImage('./images/yuri/q.png')
	--y_r = love.graphics.newImage('./images/yuri/r.png')
	--y_s = love.graphics.newImage('./images/yuri/s.png')
	--y_t = love.graphics.newImage('./images/yuri/t.png')
	--y_u = love.graphics.newImage('./images/yuri/u.png')
	--y_v = love.graphics.newImage('./images/yuri/v.png')
	--y_w = love.graphics.newImage('./images/yuri/w.png')
	--yy6 = love.graphics.newImage('./images/yuri/y6.png')
end

function unloadYuri()	
	y1l = nil
	y1r = nil
	y2r = nil
	y2r = nil
	y3_ = nil
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
end

function loadNatsuki()
	n1l = love.graphics.newImage('./images/natsuki/1l.png')
	n1r = love.graphics.newImage('./images/natsuki/1r.png')
	n2l = love.graphics.newImage('./images/natsuki/2l.png')
	n2r = love.graphics.newImage('./images/natsuki/2r.png')
	n3_ = love.graphics.newImage('./images/natsuki/3.png')
	--n_a = love.graphics.newImage('./images/natsuki/a.png')
	n_b = love.graphics.newImage('./images/natsuki/b.png')
	n_c = love.graphics.newImage('./images/natsuki/c.png')
	n_d = love.graphics.newImage('./images/natsuki/d.png')
	--n_e = love.graphics.newImage('./images/natsuki/e.png')
	--n_f = love.graphics.newImage('./images/natsuki/f.png')
	--n_g = love.graphics.newImage('./images/natsuki/g.png')
	n_h = love.graphics.newImage('./images/natsuki/h.png')
	--n_i = love.graphics.newImage('./images/natsuki/i.png')
	--n_j = love.graphics.newImage('./images/natsuki/j.png')
	--n_k = love.graphics.newImage('./images/natsuki/k.png')
	--n_l = love.graphics.newImage('./images/natsuki/l.png')
	--n_m = love.graphics.newImage('./images/natsuki/m.png')
	--n_n = love.graphics.newImage('./images/natsuki/n.png')
	--n_q = love.graphics.newImage('./images/natsuki/q.png')
	--n_r = love.graphics.newImage('./images/natsuki/r.png')
	n_s = love.graphics.newImage('./images/natsuki/s.png')
	--n_t = love.graphics.newImage('./images/natsuki/t.png')
	--n_u = love.graphics.newImage('./images/natsuki/u.png')
	--n_v = love.graphics.newImage('./images/natsuki/v.png')
	--n_w = love.graphics.newImage('./images/natsuki/w.png')
	--n_x = love.graphics.newImage('./images/natsuki/x.png')
	--n_y = love.graphics.newImage('./images/natsuki/y.png')
	n_z = love.graphics.newImage('./images/natsuki/z.png')
end

function unloadNatsuki()
	n1l = nil
	n1r = nil
	n2l = nil
	n2r = nil
	n3_ = nil
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
end
	
function loadMonika()
	m1l = love.graphics.newImage('./images/monika/1l.png')
	m1r = love.graphics.newImage('./images/monika/1r.png')
	m2l = love.graphics.newImage('./images/monika/2l.png')
	m2r = love.graphics.newImage('./images/monika/2r.png')
	m3a = love.graphics.newImage('./images/monika/3a.png')
	m3b = love.graphics.newImage('./images/monika/3b.png')
	m_a = love.graphics.newImage('./images/monika/a.png')
	m_b = love.graphics.newImage('./images/monika/b.png')
	m_c = love.graphics.newImage('./images/monika/c.png')
	m_d = love.graphics.newImage('./images/monika/d.png')
	--m_e = love.graphics.newImage('./images/monika/e.png')
	--m_f = love.graphics.newImage('./images/monika/f.png')
	--m_g = love.graphics.newImage('./images/monika/g.png')
	--m_h = love.graphics.newImage('./images/monika/h.png')
	--m_i = love.graphics.newImage('./images/monika/i.png')
	--m_j = love.graphics.newImage('./images/monika/j.png')
	m_k = love.graphics.newImage('./images/monika/k.png')
	--m_l = love.graphics.newImage('./images/monika/l.png')
	--m_m = love.graphics.newImage('./images/monika/m.png')
	--m_n = love.graphics.newImage('./images/monika/n.png')
	--m_o = love.graphics.newImage('./images/monika/o.png')
	--m_p = love.graphics.newImage('./images/monika/p.png')
	--m_q = love.graphics.newImage('./images/monika/q.png')
	--m_r = love.graphics.newImage('./images/monika/r.png')
end

function unloadMonika()
	m1l = nil
	m1r = nil
	m2l = nil
	m2r = nil
	m3a = nil
	m3b = nil
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
end