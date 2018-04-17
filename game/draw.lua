function drawTopScreen()
	love.graphics.setScreen("top")
end

function drawBottomScreen()
	love.graphics.setScreen("bottom")
end

function bgcheck() --background changes (update with audio)
	if ch0ln <= 44 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/residential.png')
	elseif ch0ln <= 80 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/class.png')
	elseif ch0ln <= 83 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/corridor.png')
	elseif ch0ln <= 200 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/club.png')
	end
end

function unloadbg()
	splash = nil
	titlebg = nil
	bgch = nil
end

function drawGame()
	ch0script()

	if timer == 501 then
		if sa=='' and sb == '' and sc == '' then else sload = 99 loadSayori() end
		if ya=='' and yb == '' and yc == '' then else yload = 99 loadYuri() end
		if na=='' and nb == '' and nc == '' then else nload = 99 loadNatsuki() end
		if ma=='' and mb == '' and mc == '' then else mload = 99 loadMonika() end
		timer = 502
	end
	
	drawTopScreen()
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(bgch, 0, 0) --background changes over time check bgcheck!
	--love.graphics.draw(audiox, 0, 16)
	drawSayori(sa,sb,sc) 
	drawYuri(ya,yb,yc) 
	drawNatsuki(na,nb,nc) 
	drawMonika(ma,mb,mc)
		
	drawBottomScreen()
	love.graphics.draw(bottombg, 0, 0)
	love.graphics.setColor(0,0,0)
	love.graphics.print(ch0ln,0,0,0,1,1) --script numbet
	love.graphics.print(ch0t,8,38,0,1,1) --t name
	love.graphics.print(ch0a,8,64,0,1,1) --line 1
	love.graphics.print(ch0b,8,80,0,1,1) --line 2
	love.graphics.print(ch0c,8,96,0,1,1) --line 3
	love.graphics.print(ch0d,8,112,0,1,1) --line 4
	love.graphics.print("Y - Save Game",16,220,0,1,1)
	if autotimer == 0 then
		love.graphics.print("B - Auto On",120,220,0,1,1)
	else
		love.graphics.print("B - Auto Off",120,220,0,1,1)
	end
	love.graphics.print("X - Skip",220,220,0,1,1)
end

ch0t = "" --name text

sa = "" --sayori
sb = ""
sc = ""
sx = 80

ya = "" --yuri
yb = ""
yc = ""
yx = 80

na = "" --natsuki
nb = ""
nc = ""
nx = 80
nxh = nx
ny = 0

ma = "" --just monika
mb = ""
mc = ""
mx = 0 - 40

function hideSayori()
	sa = ''
	sb = ''
	sc = ''
end

function hideYuri()
	ya = ''
	yb = ''
	yc = ''
end

function hideNatsuki()
	na = ''
	nb = ''
	nc = ''
	nxh = nx
	ny = 0
end

function hideMonika()
	ma = ''
	mb = ''
	mc = ''
end

function drawSayori(a,b,c)

	if sload == 0 then else

	if a=="" then
	elseif a=="1l" then
		love.graphics.draw(s1l, sx)
	elseif a=="2l" then
		love.graphics.draw(s2l, sx)
	elseif a=="3a" then
		love.graphics.draw(s3a, sx)
	elseif a=="3b" then
		love.graphics.draw(s3b, sx)
	elseif a=="3c" then
		love.graphics.draw(s3c, sx)
	elseif a=="3d" then
		love.graphics.draw(s3d, sx)
	end
	
	if b=="" then
	elseif b=="1r" then
		love.graphics.draw(s1r, sx)
	elseif b=="2r" then
		love.graphics.draw(s2r, sx)
	end
	
	if c=="" then
	elseif c=="a" then
		love.graphics.draw(s_a, sx)
	elseif c=="b" then
		love.graphics.draw(s_b, sx)
	elseif c=="c" then
		love.graphics.draw(s_c, sx)
	elseif c=="d" then
		love.graphics.draw(s_d, sx)
	elseif c=="e" then
		love.graphics.draw(s_e, sx)
	elseif c=="f" then
		love.graphics.draw(s_f, sx)
	elseif c=="g" then
		love.graphics.draw(s_g, sx)
	elseif c=="h" then
		love.graphics.draw(s_h, sx)
	elseif c=="i" then
		love.graphics.draw(s_i, sx)
	elseif c=="j" then
		love.graphics.draw(s_j, sx)
	elseif c=="k" then
		love.graphics.draw(s_k, sx)
	elseif c=="l" then
		love.graphics.draw(s_l, sx)
	elseif c=="m" then
		love.graphics.draw(s_m, sx)
	elseif c=="n" then
		love.graphics.draw(s_n, sx)
	elseif c=="o" then
		love.graphics.draw(s_o, sx)
	elseif c=="p" then
		love.graphics.draw(s_p, sx)
	elseif c=="q" then
		love.graphics.draw(s_q, sx)
	elseif c=="r" then
		love.graphics.draw(s_r, sx)
	elseif c=="s" then
		love.graphics.draw(s_s, sx)
	elseif c=="x" then
		love.graphics.draw(s_x, sx)
	elseif c=="y" then
		love.graphics.draw(s_y, sx)
	end
	
	end
	
end

function drawYuri(a,b,c)

	if yload == 0 then else

	if a=="" then
	elseif a=="1l" then
		love.graphics.draw(y1l, yx)
	elseif a=="2l" then
		love.graphics.draw(y2l, yx)
	elseif a=="3" then
		love.graphics.draw(y3_, yx)
	end
	
	if b=="" then
	elseif b=="1r" then
		love.graphics.draw(y1r, yx)
	elseif b=="2r" then
		love.graphics.draw(y2r, yx)
	end
	
	if c=="" then
	elseif c=="a" then
		love.graphics.draw(y_a, yx)
	elseif c=="a2" then
		love.graphics.draw(ya2, yx)
	elseif c=="b" then
		love.graphics.draw(y_b, yx)
	elseif c=="b2" then
		love.graphics.draw(yb2, yx)
	elseif c=="c" then
		love.graphics.draw(y_c, yx)
	elseif c=="c2" then
		love.graphics.draw(yc2, yx)
	elseif c=="d" then
		love.graphics.draw(y_d, yx)
	elseif c=="d2" then
		love.graphics.draw(yd2, yx)
	elseif c=="e" then
		love.graphics.draw(y_e, yx)
	elseif c=="e2" then
		love.graphics.draw(ye2, yx)
	elseif c=="g" then
		love.graphics.draw(s_g, yx)
	elseif c=="h" then
		love.graphics.draw(s_h, yx)
	elseif c=="j" then
		love.graphics.draw(s_j, yx)
	elseif c=="l" then
		love.graphics.draw(y_l, yx)
	elseif c=="p" then
		love.graphics.draw(s_p, yx)
	elseif c=="q" then
		love.graphics.draw(s_q, yx)
	elseif c=="r" then
		love.graphics.draw(s_r, sx)
	elseif c=="y" then
		love.graphics.draw(s_y, sx)
	end
	
	end
	
end

function drawNatsuki(a,b,c)

	if nload == 0 then else
	
	if a=="" then
	elseif a=="1l" then
		love.graphics.draw(n1l, nx)
	elseif a=="2l" then
		love.graphics.draw(n2l, nx)
	elseif a=="3" then
		love.graphics.draw(n3_, nx)
	end
	
	if b=="" then
	elseif b=="1r" then
		love.graphics.draw(n1r, nx)
	elseif b=="2r" then
		love.graphics.draw(n2r, nx)
	end
	
	if c=="" then
	elseif c=="a" then
		love.graphics.draw(n_a, nx)
	elseif c=="b" then
		love.graphics.draw(n_b, nx)
	elseif c=="c" then
		love.graphics.draw(n_c, nx)
	elseif c=="g" then
		love.graphics.draw(n_g, nx)
	elseif c=="h" then
		love.graphics.draw(n_h, nx)
	elseif c=="j" then
		love.graphics.draw(s_j, yx)
	elseif c=="p" then
		love.graphics.draw(s_p, yx)
	elseif c=="q" then
		love.graphics.draw(s_q, yx)
	elseif c=="r" then
		love.graphics.draw(s_r, sx)
	elseif c=="s" then
		love.graphics.draw(n_s, nxh, ny)
	elseif c=="z" then
		love.graphics.draw(n_z, nx)
	end
	
	end
	
end

function drawMonika(a,b,c)

	if mload == 0 then else

	if a=="" then
	elseif a=="1l" then
		love.graphics.draw(m1l, mx)
	elseif a=="2l" then
		love.graphics.draw(m2l, mx)
	elseif a=="3a" then
		love.graphics.draw(m3a, mx)
	elseif a=="3b" then
		love.graphics.draw(m3b, mx)
	end
	
	if b=="" then
	elseif b=="1r" then
		love.graphics.draw(m1r, mx)
	elseif b=="2r" then
		love.graphics.draw(m2r, mx)
	end
	
	if c=="" then
	elseif c=="a" then
		love.graphics.draw(m_a, mx)
	elseif c=="b" then
		love.graphics.draw(m_b, mx)
	elseif c=="c" then
		love.graphics.draw(m_c, mx)
	elseif c=="d" then
		love.graphics.draw(m_d, mx)
	elseif c=="g" then
		love.graphics.draw(s_g, yx)
	elseif c=="h" then
		love.graphics.draw(s_h, yx)
	elseif c=="j" then
		love.graphics.draw(s_j, yx)
	elseif c=="k" then
		love.graphics.draw(m_k, mx)
	elseif c=="p" then
		love.graphics.draw(s_p, yx)
	elseif c=="q" then
		love.graphics.draw(s_q, yx)
	elseif c=="r" then
		love.graphics.draw(s_r, sx)
	end
	
	end
	
end

