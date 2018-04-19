function drawTopScreen()
	love.graphics.setScreen("top")
end

function drawBottomScreen()
	love.graphics.setScreen("bottom")
end

function splashalpha(x)
	if x == 1 then
		if timer <=150 then
			if alpha >= 255 then
				alpha = 255
			else
				alpha = alpha + 2.5
			end
		elseif timer <=200 then
			if alpha >= 1 then
				alpha = alpha - 2.5
			else
				alpha = 0
			end
		else alpha = 0 end
	elseif x == 2 then
		if timer <=400 then
			if alpha >= 255 then
				alpha = 255
			else
				alpha = alpha + 2.5
			end
		elseif timer <=480 then
			if alpha >= 1 then
				alpha = alpha - 2.5
			else
				alpha = 0
			end
		else alpha = 0 end
	elseif x == 3 then
		if alpha >= 255 then
			alpha = 255
		else
			alpha = alpha + 2.5
		end
	end
end

function bgCheck() --background changes
	if ch0ln <= 46 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/residential.png')
	elseif ch0ln <= 82 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/class.png')
	elseif ch0ln <= 85 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/corridor.png')
	elseif ch0ln <= 300 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/club.png')
	elseif ch0ln <= 10015 then
		unloadbg()
		bgch = love.graphics.newImage('./images/bg/residential.png')
	elseif ch0ln <= 10019 then
		bgch = love.graphics.newImage('./images/bg/warning.png')
	elseif ch0ln == 10020 then
		bgch = love.graphics.newImage('./images/bg/warning2.png')
	end
	
end

function unloadbg()
	splash = nil
	titlebg = nil
	bgch = nil
end

function loadingf()
	if sload == 1 
	or yload == 1 
	or nload == 1 
	or mload == 1 
	or xaload == 1 then
	
	drawTopScreen()
	love.graphics.print("Load", 182, 0, 0, 1, 1)
	
	end
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
	loadingf()
	drawSayori(sa,sb,sc) 
	drawYuri(ya,yb,yc) 
	drawNatsuki(na,nb,nc) 
	drawMonika(ma,mb,mc)
		
	drawBottomScreen()
	love.graphics.draw(background_Image, posX, posY)
	if ch0t == '' then else love.graphics.draw(namebox, 12, 40) end
	love.graphics.draw(textbox, 0, 60)
	
	love.graphics.setColor(0,0,0)
	love.graphics.print(ch0ln,0,0,0,1,1) --script number
	love.graphics.print(ch0t,20,40,0,1,1) --t name
	love.graphics.print(ch0a,8,64,0,1,1) --line 1
	love.graphics.print(ch0b,8,80,0,1,1) --line 2
	love.graphics.print(ch0c,8,96,0,1,1) --line 3
	love.graphics.print(ch0d,8,112,0,1,1) --line 4

	if state == 'newgame' then else
	
	love.graphics.print("Y - Save Game",16,220,0,1,1)
	if autotimer == 0 then
		love.graphics.print("B - Auto On",120,220,0,1,1)
	else
		love.graphics.print("B - Auto Off",120,220,0,1,1)
	end
	love.graphics.print("X - Skip",220,220,0,1,1)
	
	end
end

ch0t = "" --name text

sa = "" --sayori
sb = ""
sc = ""
sx = 80
sy = 0

ya = "" --yuri
yb = ""
yc = ""
yx = 80
yy = 0

na = "" --natsuki
nb = ""
nc = ""
nx = 80
nxh = nx
ny = 0
nyh = ny

ma = "" --just monika
mb = ""
mc = ""
mx = 0 - 40
my = 0

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

	if sload == 0 then --elseif sload == 2 then 
	else

	if a=="" then
	elseif a=="1l" then
		love.graphics.draw(s1l, sx, sy)
	elseif a=="2l" then
		love.graphics.draw(s2l, sx, sy)
	elseif a=="3a" then
		love.graphics.draw(s3a, sx, sy)
	elseif a=="3b" then
		love.graphics.draw(s3b, sx, sy)
	elseif a=="3c" then
		love.graphics.draw(s3c, sx, sy)
	elseif a=="3d" then
		love.graphics.draw(s3d, sx, sy)
	end
	
	if b=="" then
	elseif b=="1r" then
		love.graphics.draw(s1r, sx, sy)
	elseif b=="2r" then
		love.graphics.draw(s2r, sx, sy)
	end
	
	if c=="" then
	elseif c=="a" then
		love.graphics.draw(s_a, sx, sy)
	elseif c=="b" then
		love.graphics.draw(s_b, sx, sy)
	elseif c=="c" then
		love.graphics.draw(s_c, sx, sy)
	elseif c=="d" then
		love.graphics.draw(s_d, sx, sy)
	elseif c=="e" then
		love.graphics.draw(s_e, sx, sy)
	elseif c=="f" then
		love.graphics.draw(s_f, sx, sy)
	elseif c=="g" then
		love.graphics.draw(s_g, sx, sy)
	elseif c=="h" then
		love.graphics.draw(s_h, sx, sy)
	elseif c=="i" then
		love.graphics.draw(s_i, sx, sy)
	elseif c=="j" then
		love.graphics.draw(s_j, sx, sy)
	elseif c=="k" then
		love.graphics.draw(s_k, sx, sy)
	elseif c=="l" then
		love.graphics.draw(s_l, sx, sy)
	elseif c=="m" then
		love.graphics.draw(s_m, sx, sy)
	elseif c=="n" then
		love.graphics.draw(s_n, sx, sy)
	elseif c=="o" then
		love.graphics.draw(s_o, sx, sy)
	elseif c=="p" then
		love.graphics.draw(s_p, sx, sy)
	elseif c=="q" then
		love.graphics.draw(s_q, sx, sy)
	elseif c=="r" then
		love.graphics.draw(s_r, sx, sy)
	elseif c=="s" then
		love.graphics.draw(s_s, sx, sy)
	elseif c=="u" then
		love.graphics.draw(s_u, sx, sy)
	elseif c=="w" then
		love.graphics.draw(s_w, sx, sy)
	elseif c=="x" then
		love.graphics.draw(s_x, sx, sy)
	elseif c=="y" then
		love.graphics.draw(s_y, sx, sy)
	end
	
	end
	
end

function drawYuri(a,b,c)

	if yload == 0 then --elseif yload == 2 then 
	else

	if a=="" then
	elseif a=="1l" then
		love.graphics.draw(y1l, yx, yy)
	elseif a=="2l" then
		love.graphics.draw(y2l, yx, yy)
	elseif a=="3" then
		love.graphics.draw(y3_, yx, yy)
	end
	
	if b=="" then
	elseif b=="1r" then
		love.graphics.draw(y1r, yx, yy)
	elseif b=="2r" then
		love.graphics.draw(y2r, yx, yy)
	end
	
	if c=="" then
	elseif c=="a" then
		love.graphics.draw(y_a, yx, yy)
	elseif c=="a2" then
		love.graphics.draw(ya2, yx, yy)
	elseif c=="b" then
		love.graphics.draw(y_b, yx, yy)
	elseif c=="b2" then
		love.graphics.draw(yb2, yx, yy)
	elseif c=="c" then
		love.graphics.draw(y_c, yx, yy)
	elseif c=="c2" then
		love.graphics.draw(yc2, yx, yy)
	elseif c=="d" then
		love.graphics.draw(y_d, yx, yy)
	elseif c=="d2" then
		love.graphics.draw(yd2, yx, yy)
	elseif c=="e" then
		love.graphics.draw(y_e, yx, yy)
	elseif c=="e2" then
		love.graphics.draw(ye2, yx, yy)
	elseif c=="g" then
		love.graphics.draw(y_g, yx, yy)
	elseif c=="h" then
		love.graphics.draw(y_h, yx, yy)
	elseif c=="j" then
		love.graphics.draw(y_j, yx, yy)
	elseif c=="k" then
		love.graphics.draw(y_k, yx, yy)
	elseif c=="l" then
		love.graphics.draw(y_l, yx, yy)
	elseif c=="m" then
		love.graphics.draw(y_m, yx, yy)
	elseif c=="n" then
		love.graphics.draw(y_n, yx, yy)
	elseif c=="o" then
		love.graphics.draw(y_o, yx, yy)
	elseif c=="p" then
		love.graphics.draw(y_p, yx, yy)
	elseif c=="q" then
		love.graphics.draw(y_q, yx, yy)
	elseif c=="r" then
		love.graphics.draw(y_r, yx, yy)
	elseif c=="s" then
		love.graphics.draw(y_s, yx, yy)
	elseif c=="t" then
		love.graphics.draw(y_t, yx, yy)
	elseif c=="u" then
		love.graphics.draw(y_u, yx, yy)
	elseif c=="v" then
		love.graphics.draw(y_v, yx, yy)
	elseif c=="w" then
		love.graphics.draw(y_w, yx, yy)
	end
	
	end

end

function drawNatsuki(a,b,c)

	if nload == 0 then --elseif nload == 2 then 
	else
	
	if c=="" then
	elseif c=="a" then
		love.graphics.draw(n_a, nx, ny)
	elseif c=="b" then
		love.graphics.draw(n_b, nx, ny)
	elseif c=="c" then
		love.graphics.draw(n_c, nx, ny)
	elseif c=="d" then
		love.graphics.draw(n_d, nx, ny)
	elseif c=="e" then
		love.graphics.draw(n_e, nx, ny)
	elseif c=="f" then
		love.graphics.draw(n_f, nx, ny)
	elseif c=="g" then
		love.graphics.draw(n_g, nx, ny)
	elseif c=="h" then
		love.graphics.draw(n_h, nxh, nyh)
	elseif c=="i" then
		love.graphics.draw(n_i, nx, ny)
	elseif c=="j" then
		love.graphics.draw(n_j, yx, ny)
	elseif c=="k" then
		love.graphics.draw(n_k, nx, ny)
	elseif c=="l" then
		love.graphics.draw(n_l, nx, ny)
	elseif c=="m" then
		love.graphics.draw(n_m, nx, ny)
	elseif c=="n" then
		love.graphics.draw(n_n, nx, ny)
	elseif c=="q" then
		love.graphics.draw(n_q, nx, ny)
	elseif c=="r" then
		love.graphics.draw(n_r, nx, ny)
	elseif c=="s" then
		love.graphics.draw(n_s, nxh, nyh)
	elseif c=="z" then
		love.graphics.draw(n_z, nx, ny)
		
	elseif c=="2bt" then
		love.graphics.draw(n2bt, nx, ny)
	elseif c=="2bta" then
		love.graphics.draw(n2bta, nx, ny)
	elseif c=="2btb" then
		love.graphics.draw(n2btb, nx, ny)
	elseif c=="2btc" then
		love.graphics.draw(n2btc, nxh, nyh)
	elseif c=="2btd" then
		love.graphics.draw(n2btd, nx, ny)
	elseif c=="2bte" then
		love.graphics.draw(n2bte, nx, ny)
	elseif c=="2btf" then
		love.graphics.draw(n2btf, nx, ny)
	elseif c=="2btg" then
		love.graphics.draw(n2btg, nx, ny)
	elseif c=="2bth" then
		love.graphics.draw(n2bth, nx, ny)
	elseif c=="2bti" then
		love.graphics.draw(n2bti, nx, ny)
	elseif c=="2t" then
		love.graphics.draw(n2t, nx, ny)
	elseif c=="2ta" then
		love.graphics.draw(n2ta, nx, ny)	
	elseif c=="2tb" then
		love.graphics.draw(n2tb, nx, ny)	
	elseif c=="2tc" then
		love.graphics.draw(n2tc, nx, ny)	
	elseif c=="2td" then
		love.graphics.draw(n2td, nx, ny)	
	elseif c=="2te" then
		love.graphics.draw(n2te, nx, ny)	
	elseif c=="2tf" then
		love.graphics.draw(n2tf, nx, ny)	
	elseif c=="2tg" then
		love.graphics.draw(n2tg, nx, ny)	
	elseif c=="2th" then
		love.graphics.draw(n2th, nx, ny)	
	elseif c=="2ti" then
		love.graphics.draw(n2ti, nx, ny)		
	end
	
	if a=="" then
	elseif a=="1l" then
		love.graphics.draw(n1l, nx, ny)
	elseif a=="2l" then
		love.graphics.draw(n2l, nx, ny)
	elseif a=="3" then
		love.graphics.draw(n3_, nx, ny)
	end
	
	if b=="" then
	elseif b=="1r" then
		love.graphics.draw(n1r, nx, ny)
	elseif b=="2r" then
		love.graphics.draw(n2r, nx, ny)
	end
	
	end
	
end

function drawMonika(a,b,c)

	if mload == 0 then --elseif mload == 2 then 
	else

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
	elseif c=="e" then
		love.graphics.draw(m_e, mx)
	elseif c=="f" then
		love.graphics.draw(m_f, mx)
	elseif c=="g" then
		love.graphics.draw(m_g, mx)
	elseif c=="h" then
		love.graphics.draw(m_h, mx)
	elseif c=="i" then
		love.graphics.draw(m_i, mx)
	elseif c=="j" then
		love.graphics.draw(m_j, mx)
	elseif c=="k" then
		love.graphics.draw(m_k, mx)
	elseif c=="l" then
		love.graphics.draw(m_l, mx)
	elseif c=="m" then
		love.graphics.draw(m_m, mx)
	elseif c=="n" then
		love.graphics.draw(m_n, mx)
	elseif c=="o" then
		love.graphics.draw(m_o, mx)
	elseif c=="p" then
		love.graphics.draw(m_p, mx)
	elseif c=="q" then
		love.graphics.draw(m_q, mx)
	elseif c=="r" then
		love.graphics.draw(m_r, mx)
	end
	
	end
	
end

