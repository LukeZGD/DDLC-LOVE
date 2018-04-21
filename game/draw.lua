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

function unloadbg()
	splash = nil
	titlebg = nil
	bgch = nil
end

function drawGame()
	ch0script()
	charCheck()
	
	drawTopScreen()
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(bgch, 0, 0) --background changes 
	
	if xaload >= 3	then
	drawSayori(sa,sb,sc) 
	drawYuri(ya,yb,yc) 
	drawNatsuki(na,nb,nc) 
	drawMonika(ma,mb,mc)
	end
	
	drawBottomScreen()
	love.graphics.draw(background_Image, posX, posY)
	if ch0t ~= '' then love.graphics.draw(namebox, 12, 40) end
	love.graphics.draw(textbox, 0, 60)
	
	love.graphics.setColor(0,0,0)
	love.graphics.print(ch0ln,0,0,0,1,1) --script number
	love.graphics.print(ch0t,20,40,0,1,1) --t name
	love.graphics.print(ch0a,8,64,0,1,1) --line 1
	love.graphics.print(ch0b,8,80,0,1,1) --line 2
	love.graphics.print(ch0c,8,96,0,1,1) --line 3
	love.graphics.print(ch0d,8,112,0,1,1) --line 4

	if state ~= 'newgame' then
	
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
	unloadSayori()
end

function hideYuri()
	ya = ''
	yb = ''
	yc = ''
	unloadYuri()
end

function hideNatsuki()
	na = ''
	nb = ''
	nc = ''
	nxh = nx
	ny = 0
	unloadNatsuki()
end

function hideMonika()
	ma = ''
	mb = ''
	mc = ''
	unloadMonika()
end

function drawSayori(sa,sb,sc)

	if sa=="" then
	elseif sa=="1l" then
		love.graphics.draw(s1l, sx, sy)
	elseif sa=="2l" then
		love.graphics.draw(s2l, sx, sy) 
	elseif sa=="3a" then
		love.graphics.draw(s3a, sx, sy)
	elseif sa=="3b" then
		love.graphics.draw(s3b, sx, sy)
	elseif sa=="3c" then
		love.graphics.draw(s3c, sx, sy)
	elseif sa=="3d" then
		love.graphics.draw(s3d, sx, sy)
	end
	
	if sb=="" then
	elseif sb=="1r" then
		love.graphics.draw(s1r, sx, sy)
	elseif sb=="2r" then
		love.graphics.draw(s2r, sx, sy)
	end
	
	if sc=="" then
	elseif sc=="a" then
		love.graphics.draw(s_a, sx, sy)
	elseif sc=="b" then
		love.graphics.draw(s_b, sx, sy)
	elseif sc=="c" then
		love.graphics.draw(s_c, sx, sy)
	elseif sc=="d" then
		love.graphics.draw(s_d, sx, sy)
	elseif sc=="e" then
		love.graphics.draw(s_e, sx, sy)
	elseif sc=="f" then
		love.graphics.draw(s_f, sx, sy)
	elseif sc=="g" then
		love.graphics.draw(s_g, sx, sy)
	elseif sc=="h" then
		love.graphics.draw(s_h, sx, sy)
	elseif sc=="i" then
		love.graphics.draw(s_i, sx, sy)
	elseif sc=="j" then
		love.graphics.draw(s_j, sx, sy)
	elseif sc=="k" then
		love.graphics.draw(s_k, sx, sy)
	elseif sc=="l" then
		love.graphics.draw(s_l, sx, sy)
	elseif sc=="m" then
		love.graphics.draw(s_m, sx, sy)
	elseif sc=="n" then
		love.graphics.draw(s_n, sx, sy)
	elseif sc=="o" then
		love.graphics.draw(s_o, sx, sy)
	elseif sc=="p" then
		love.graphics.draw(s_p, sx, sy)
	elseif sc=="q" then
		love.graphics.draw(s_q, sx, sy)
	elseif sc=="r" then
		love.graphics.draw(s_r, sx, sy)
	elseif sc=="s" then
		love.graphics.draw(s_s, sx, sy)
	elseif sc=="u" then
		love.graphics.draw(s_u, sx, sy)
	elseif sc=="w" then
		love.graphics.draw(s_w, sx, sy)
	elseif sc=="x" then
		love.graphics.draw(s_x, sx, sy)
	elseif sc=="y" then
		love.graphics.draw(s_y, sx, sy)
	end
	
end

function drawYuri(ya,yb,yc)

	if ya=="" then
	elseif ya=="1l" then
		love.graphics.draw(y1l, yx, yy)
	elseif ya=="2l" then
		love.graphics.draw(y2l, yx, yy)
	elseif ya=="3" then
		love.graphics.draw(y3_, yx, yy)
	end
	
	if yb=="" then
	elseif yb=="1r" then
		love.graphics.draw(y1r, yx, yy)
	elseif yb=="2r" then
		love.graphics.draw(y2r, yx, yy)
	end
	
	if yc=="" then
	elseif yc=="a" then
		love.graphics.draw(y_a, yx, yy)
	elseif yc=="a2" then
		love.graphics.draw(ya2, yx, yy)
	elseif yc=="b" then
		love.graphics.draw(y_b, yx, yy)
	elseif yc=="b2" then
		love.graphics.draw(yb2, yx, yy)
	elseif yc=="c" then
		love.graphics.draw(y_c, yx, yy)
	elseif yc=="c2" then
		love.graphics.draw(yc2, yx, yy)
	elseif yc=="d" then
		love.graphics.draw(y_d, yx, yy)
	elseif yc=="d2" then
		love.graphics.draw(yd2, yx, yy)
	elseif yc=="e" then
		love.graphics.draw(y_e, yx, yy)
	elseif yc=="e2" then
		love.graphics.draw(ye2, yx, yy)
	elseif yc=="g" then
		love.graphics.draw(y_g, yx, yy)
	elseif yc=="h" then
		love.graphics.draw(y_h, yx, yy)
	elseif yc=="j" then
		love.graphics.draw(y_j, yx, yy)
	elseif yc=="k" then
		love.graphics.draw(y_k, yx, yy)
	elseif yc=="l" then
		love.graphics.draw(y_l, yx, yy)
	elseif yc=="m" then
		love.graphics.draw(y_m, yx, yy)
	elseif yc=="n" then
		love.graphics.draw(y_n, yx, yy)
	elseif yc=="o" then
		love.graphics.draw(y_o, yx, yy)
	elseif yc=="p" then
		love.graphics.draw(y_p, yx, yy)
	elseif yc=="q" then
		love.graphics.draw(y_q, yx, yy)
	elseif yc=="r" then
		love.graphics.draw(y_r, yx, yy)
	elseif yc=="s" then
		love.graphics.draw(y_s, yx, yy)
	elseif yc=="t" then
		love.graphics.draw(y_t, yx, yy)
	elseif yc=="u" then
		love.graphics.draw(y_u, yx, yy)
	elseif yc=="v" then
		love.graphics.draw(y_v, yx, yy)
	elseif yc=="w" then
		love.graphics.draw(y_w, yx, yy)
	end

end

function drawNatsuki(na,nb,nc)

	if nc=="" then
	elseif nc=="a" then
		love.graphics.draw(n_a, nx, ny)
	elseif nc=="b" then
		love.graphics.draw(n_b, nx, ny)
	elseif nc=="c" then
		love.graphics.draw(n_c, nx, ny)
	elseif nc=="d" then
		love.graphics.draw(n_d, nx, ny)
	elseif nc=="e" then
		love.graphics.draw(n_e, nx, ny)
	elseif nc=="f" then
		love.graphics.draw(n_f, nx, ny)
	elseif nc=="g" then
		love.graphics.draw(n_g, nx, ny)
	elseif nc=="h" then
		love.graphics.draw(n_h, nxh, nyh)
	elseif nc=="i" then
		love.graphics.draw(n_i, nx, ny)
	elseif nc=="j" then
		love.graphics.draw(n_j, yx, ny)
	elseif nc=="k" then
		love.graphics.draw(n_k, nx, ny)
	elseif nc=="l" then
		love.graphics.draw(n_l, nx, ny)
	elseif nc=="m" then
		love.graphics.draw(n_m, nx, ny)
	elseif nc=="n" then
		love.graphics.draw(n_n, nx, ny)
	elseif nc=="q" then
		love.graphics.draw(n_q, nx, ny)
	elseif nc=="r" then
		love.graphics.draw(n_r, nx, ny)
	elseif nc=="s" then
		love.graphics.draw(n_s, nxh, nyh)
	elseif nc=="z" then
		love.graphics.draw(n_z, nx, ny)
		
	elseif nc=="2bt" then
		love.graphics.draw(n2bt, nx, ny)
	elseif nc=="2bta" then
		love.graphics.draw(n2bta, nx, ny)
	elseif nc=="2btb" then
		love.graphics.draw(n2btb, nx, ny)
	elseif nc=="2btc" then
		love.graphics.draw(n2btc, nxh, nyh)
	elseif nc=="2btd" then
		love.graphics.draw(n2btd, nx, ny)
	elseif nc=="2bte" then
		love.graphics.draw(n2bte, nx, ny)
	elseif nc=="2btf" then
		love.graphics.draw(n2btf, nx, ny)
	elseif nc=="2btg" then
		love.graphics.draw(n2btg, nx, ny)
	elseif nc=="2bth" then
		love.graphics.draw(n2bth, nx, ny)
	elseif nc=="2bti" then
		love.graphics.draw(n2bti, nx, ny)
	elseif nc=="2t" then
		love.graphics.draw(n2t, nx, ny)
	elseif nc=="2ta" then
		love.graphics.draw(n2ta, nx, ny)	
	elseif nc=="2tb" then
		love.graphics.draw(n2tb, nx, ny)	
	elseif nc=="2tc" then
		love.graphics.draw(n2tc, nx, ny)	
	elseif nc=="2td" then
		love.graphics.draw(n2td, nx, ny)	
	elseif nc=="2te" then
		love.graphics.draw(n2te, nx, ny)	
	elseif nc=="2tf" then
		love.graphics.draw(n2tf, nx, ny)	
	elseif nc=="2tg" then
		love.graphics.draw(n2tg, nx, ny)	
	elseif nc=="2th" then
		love.graphics.draw(n2th, nx, ny)	
	elseif nc=="2ti" then
		love.graphics.draw(n2ti, nx, ny)		
	end
	
	if na=="" then
	elseif na=="1l" then
		love.graphics.draw(n1l, nx, ny)
	elseif na=="2l" then
		love.graphics.draw(n2l, nx, ny)
	elseif na=="3" then
		love.graphics.draw(n3_, nx, ny)
	end
	
	if nb=="" then
	elseif nb=="1r" then
		love.graphics.draw(n1r, nx, ny)
	elseif nb=="2r" then
		love.graphics.draw(n2r, nx, ny)
	end
	
end

function drawMonika(ma,mb,mc)

	if ma=="" then
	elseif ma=="1l" then
		love.graphics.draw(m1l, mx)
	elseif ma=="2l" then
		love.graphics.draw(m2l, mx)
	elseif ma=="3a" then
		love.graphics.draw(m3a, mx)
	elseif ma=="3b" then
		love.graphics.draw(m3b, mx)
	end
	
	if mb=="" then
	elseif mb=="1r" then
		love.graphics.draw(m1r, mx)
	elseif mb=="2r" then
		love.graphics.draw(m2r, mx)
	end
	
	if mc=="" then
	elseif mc=="a" then
		love.graphics.draw(m_a, mx)
	elseif mc=="b" then
		love.graphics.draw(m_b, mx)
	elseif mc=="c" then
		love.graphics.draw(m_c, mx)
	elseif mc=="d" then
		love.graphics.draw(m_d, mx)
	elseif mc=="e" then
		love.graphics.draw(m_e, mx)
	elseif mc=="f" then
		love.graphics.draw(m_f, mx)
	elseif mc=="g" then
		love.graphics.draw(m_g, mx)
	elseif mc=="h" then
		love.graphics.draw(m_h, mx)
	elseif mc=="i" then
		love.graphics.draw(m_i, mx)
	elseif mc=="j" then
		love.graphics.draw(m_j, mx)
	elseif mc=="k" then
		love.graphics.draw(m_k, mx)
	elseif mc=="l" then
		love.graphics.draw(m_l, mx)
	elseif mc=="m" then
		love.graphics.draw(m_m, mx)
	elseif mc=="n" then
		love.graphics.draw(m_n, mx)
	elseif mc=="o" then
		love.graphics.draw(m_o, mx)
	elseif mc=="p" then
		love.graphics.draw(m_p, mx)
	elseif mc=="q" then
		love.graphics.draw(m_q, mx)
	elseif mc=="r" then
		love.graphics.draw(m_r, mx)
	end

end

