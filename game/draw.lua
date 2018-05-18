function drawTopScreen()
	if drawbottom == 1 then
		love.graphics.pop()
		drawbottom = 0
	elseif global_os == 'Horizon' then
		love.graphics.setScreen("top")
	end
end

function drawBottomScreen()
	if global_os == 'Windows' then
		love.graphics.push()
		love.graphics.translate((400 - 320) / 2, 240)
		drawbottom = 1
	else
		love.graphics.setScreen("bottom")
	end
end

function dripText(text,charactersPerSecond,startTime)
	currentTime = love.timer.getTime()
	if (currentTime <= startTime) or startTime == 0 then return "" end
	if currentTime > startTime then myTextStartTime2 = love.timer.getTime() end
	return text:sub(1,math.min(math.floor((currentTime-startTime)*charactersPerSecond),text:len()))
end

function splashalpha(x)
	if x == 1 then
		if timer <=150 then
			if alpha >= 255 then
				alpha = 255
			else
				alpha = alpha + 4.25
			end
		elseif timer <=200 then
			if alpha >= 1 then
				alpha = alpha - 4.25
			else
				alpha = 0
			end
		else alpha = 0 end
	elseif x == 2 then
		if timer <=400 then
			if alpha >= 255 then
				alpha = 255
			else
				alpha = alpha + 4.25
			end
		elseif timer <=480 then
			if alpha >= 1 then
				alpha = alpha - 4.25
			else
				alpha = 0
			end
		else alpha = 0 end
	elseif x == 3 then
		if alpha >= 255 then
			alpha = 255
		else
			menu_enable('title', 6)
			alpha = alpha + 3
		end
	elseif x == 4 then
		if alpha <= 0 then
			alpha = 255
			poemgame()
		else	
			alpha = alpha - 1.5
		end
	elseif x == 5 then
		if alpha <= 0 then
			alpha = 255
			cl = cl + 2
			xaload = 0
			state = "game"
		else	
			alpha = alpha - 1.5
		end
	end
end

function drawGame()
	ch0script()
	charCheck()	
	
	drawTopScreen()
	love.graphics.setColor(255, 255, 255, alpha)
	love.graphics.draw(bgch, 0, 0)
	if xaload >= 1 and menu_enabled == false or menu_type == 'choice' then
		if cg1 ~= "" then love.graphics.draw(cgch, 0, 0) end
		drawSayori(sa,sb)
		drawYuri(ya,yb) 
		drawNatsuki(na,nb)  
		drawMonika(ma,mb)
	end
	
	if menu_enabled ~= true and poem_enabled ~= true and setting_textloc == 'Top' then
		if ct ~= '' then love.graphics.draw(namebox, 52, 142) end
		love.graphics.draw(textbox, 40, 162)
		love.graphics.setColor(0,0,0)
		love.graphics.print(ct,60,142) --t name
		love.graphics.print(ca,48,166) --line 1
		love.graphics.print(cb,48,182) --line 2
		love.graphics.print(cc,48,198) --line 3
		love.graphics.print(cd,48,214) --line 4
		c_x = 0
	end
	
	if menu_enabled and menu_type ~= 'choice' then
		love.graphics.draw(background_Image, posX, posY)
	elseif poem_enabled then drawPoem()
	end
	
	drawBottomScreen()
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.setFont(font)
	love.graphics.draw(background_Image, posX, posY)
	
	love.graphics.setColor(0,0,0)
	love.graphics.print(cl,0,0,0) --script number
	if autotimer > 0 then love.graphics.print('Auto/Skip - On', 0, 16) end
		
	if poem_enabled ~= true and setting_textloc == 'Bottom' then
		love.graphics.setColor(255,255,255,alpha)
		if ct ~= '' then love.graphics.draw(namebox, 12, 40) end
		love.graphics.draw(textbox, 0, 60)
		love.graphics.setColor(0,0,0)
		love.graphics.print(ct,20,40) --t name
		love.graphics.print(ca,8,64) --line 1
		love.graphics.print(cb,8,80) --line 2
		love.graphics.print(cc,8,96) --line 3
		love.graphics.print(cd,8,112) --line 4
		c_x = 220
	end
	
	if state ~= 'newgame' or poem_enabled == false then
		love.graphics.print("Y - Pause",40,c_x,0,1,1)
		love.graphics.print("B - Auto",135,c_x,0,1,1)
		love.graphics.print("X - Skip",225,c_x,0,1,1)
	end
	if menu_enabled then menu_draw() end
end

function drawPoem()
	love.graphics.draw(poembg, 40, 0)
	love.graphics.setColor(0,0,0)
	love.graphics.print(poemtext, 45, 15)
end

ct = "" --name text

function cgHide()
	cg1 = ''
end

function hideSayori()
	sa = ''
	sb = ''
end

function hideYuri()
	ya = ''
	yb = ''
end

function hideNatsuki()
	na = ''
	nb = ''
end

function hideMonika()
	ma = ''
	mb = ''
end

function drawSayori(sa,sb)
	if sa=="1" then
		love.graphics.draw(s1l, sx, sy)
		love.graphics.draw(s1r, sx, sy)
	elseif sa=="2" then
		love.graphics.draw(s1l, sx, sy)
		love.graphics.draw(s2r, sx, sy)
	elseif sa=="3" then
		love.graphics.draw(s2l, sx, sy)
		love.graphics.draw(s1r, sx, sy)
	elseif sa=="4" then
		love.graphics.draw(s2l, sx, sy)
		love.graphics.draw(s2r, sx, sy)
		
	elseif sa=="1b" then
		love.graphics.draw(s1bl, sx, sy)
		love.graphics.draw(s1br, sx, sy)
	elseif sa=="2b" then
		love.graphics.draw(s1bl, sx, sy)
		love.graphics.draw(s2br, sx, sy)
	elseif sa=="3b" then
		love.graphics.draw(s2bl, sx, sy)
		love.graphics.draw(s1br, sx, sy)
	elseif sa=="4b" then
		love.graphics.draw(s2bl, sx, sy)
		love.graphics.draw(s2br, sx, sy)

	elseif sa=="5a" then
		love.graphics.draw(s3a, sx, sy)
	elseif sa=="5b" then
		love.graphics.draw(s3b, sx, sy)
	elseif sa=="5c" then
		love.graphics.draw(s3c, sx, sy)
	elseif sa=="5d" then
		love.graphics.draw(s3d, sx, sy)
	elseif sa=="sayori" then
		love.graphics.draw(saf, sx, sy)
	end
	
	if sb=="a" then
		love.graphics.draw(s_a, sx, sy)
	elseif sb=="b" then
		love.graphics.draw(s_b, sx, sy)
	elseif sb=="c" then
		love.graphics.draw(s_c, sx, sy)
	elseif sb=="d" then
		love.graphics.draw(s_d, sx, sy)
	elseif sb=="e" then
		love.graphics.draw(s_e, sx, sy)
	elseif sb=="f" then
		love.graphics.draw(s_f, sx, sy)
	elseif sb=="g" then
		love.graphics.draw(s_g, sx, sy)
	elseif sb=="h" then
		love.graphics.draw(s_h, sx, sy)
	elseif sb=="i" then
		love.graphics.draw(s_i, sx, sy)
	elseif sb=="j" then
		love.graphics.draw(s_j, sx, sy)
	elseif sb=="k" then
		love.graphics.draw(s_k, sx, sy)
	elseif sb=="l" then
		love.graphics.draw(s_l, sx, sy)
	elseif sb=="m" then
		love.graphics.draw(s_m, sx, sy)
	elseif sb=="n" then
		love.graphics.draw(s_n, sx, sy)
	elseif sb=="o" then
		love.graphics.draw(s_o, sx, sy)
	elseif sb=="p" then
		love.graphics.draw(s_p, sx, sy)
	elseif sb=="q" then
		love.graphics.draw(s_q, sx, sy)
	elseif sb=="r" then
		love.graphics.draw(s_r, sx, sy)
	elseif sb=="s" then
		love.graphics.draw(s_s, sx, sy)
	elseif sb=="t" then
		love.graphics.draw(s_t, sx, sy)
	elseif sb=="u" then
		love.graphics.draw(s_u, sx, sy)
	elseif sb=="v" then
		love.graphics.draw(s_v, sx, sy)
	elseif sb=="w" then
		love.graphics.draw(s_w, sx, sy)
	elseif sb=="x" then
		love.graphics.draw(s_x, sx, sy)
	elseif sb=="y" then
		love.graphics.draw(s_y, sx, sy)
	end
	
end

function drawYuri(ya,yb)
	if ya=="1" then
		love.graphics.draw(y1l, yx, yy)
		love.graphics.draw(y1r, yx, yy)
	elseif ya=="2" then
		love.graphics.draw(y1l, yx, yy)
		love.graphics.draw(y2r, yx, yy)
	elseif ya=="3" then
		love.graphics.draw(y2l, yx, yy)
		love.graphics.draw(y2r, yx, yy)

	elseif ya=="1b" then
		love.graphics.draw(y1bl, yx, yy)
		love.graphics.draw(y1br, yx, yy)
	elseif ya=="2b" then
		love.graphics.draw(y1bl, yx, yy)
		love.graphics.draw(y2br, yx, yy)
	elseif ya=="3b" then
		love.graphics.draw(y2bl, yx, yy)
		love.graphics.draw(y2br, yx, yy)
		
	elseif ya=="4" then
		love.graphics.draw(y3_, yx, yy)
	elseif ya=="4b" then
		love.graphics.draw(y3b, yx, yy)
	elseif ya=="yuri" then
		love.graphics.draw(yaf, yx, sy)
	end

	if yb=="a" then
		love.graphics.draw(y_a, yx, yy)
	elseif yb=="a2" then
		love.graphics.draw(ya2, yx, yy)
	elseif yb=="b" then
		love.graphics.draw(y_b, yx, yy)
	elseif yb=="b2" then
		love.graphics.draw(yb2, yx, yy)
	elseif yb=="c" then
		love.graphics.draw(y_c, yx, yy)
	elseif yb=="c2" then
		love.graphics.draw(yb2, yx, yy)
	elseif yb=="d" then
		love.graphics.draw(y_d, yx, yy)
	elseif yb=="d2" then
		love.graphics.draw(yd2, yx, yy)
	elseif yb=="e" then
		love.graphics.draw(y_e, yx, yy)
	elseif yb=="e2" then
		love.graphics.draw(ye2, yx, yy)
	elseif yb=="f" then
		love.graphics.draw(y_f, yx, yy)
	elseif yb=="g" then
		love.graphics.draw(y_g, yx, yy)
	elseif yb=="h" then
		love.graphics.draw(y_h, yx, yy)
	elseif yb=="i" then
		love.graphics.draw(y_i, yx, yy)
	elseif yb=="j" then
		love.graphics.draw(y_j, yx, yy)
	elseif yb=="k" then
		love.graphics.draw(y_k, yx, yy)
	elseif yb=="l" then
		love.graphics.draw(y_l, yx, yy)
	elseif yb=="m" then
		love.graphics.draw(y_m, yx, yy)
	elseif yb=="n" then
		love.graphics.draw(y_n, yx, yy)
	elseif yb=="o" then
		love.graphics.draw(y_o, yx, yy)
	elseif yb=="p" then
		love.graphics.draw(y_p, yx, yy)
	elseif yb=="q" then
		love.graphics.draw(y_q, yx, yy)
	elseif yb=="r" then
		love.graphics.draw(y_r, yx, yy)
	elseif yb=="s" then
		love.graphics.draw(y_s, yx, yy)
	elseif yb=="t" then
		love.graphics.draw(y_t, yx, yy)
	elseif yb=="u" then
		love.graphics.draw(y_u, yx, yy)
	elseif yb=="v" then
		love.graphics.draw(y_v, yx, yy)
	elseif yb=="w" then
		love.graphics.draw(y_w, yx, yy)
	elseif yb=="y6" then
		love.graphics.draw(yy6, yx, yy)
	end
end

function drawNatsuki(na,nb)
	if nb=="a" then
		love.graphics.draw(n_a, nxh, nyh)
	elseif nb=="b" then
		love.graphics.draw(n_b, nxh, nyh)
	elseif nb=="c" then
		love.graphics.draw(n_c, nxh, nyh)
	elseif nb=="d" then
		love.graphics.draw(n_d, nxh, nyh)
	elseif nb=="e" then
		love.graphics.draw(n_e, nxh, nyh)
	elseif nb=="f" then
		love.graphics.draw(n_f, nxh, nyh)
	elseif nb=="g" then
		love.graphics.draw(n_g, nxh, nyh)
	elseif nb=="h" then
		love.graphics.draw(n_h, nxh, nyh)
	elseif nb=="i" then
		love.graphics.draw(n_i, nxh, nyh)
	elseif nb=="j" then
		love.graphics.draw(n_j, nxh, nyh)
	elseif nb=="k" then
		love.graphics.draw(n_k, nxh, nyh)
	elseif nb=="l" then
		love.graphics.draw(n_l, nxh, nyh)
	elseif nb=="m" then
		love.graphics.draw(n_m, nxh, nyh)
	elseif nb=="n" then
		love.graphics.draw(n_n, nxh, nyh)
	elseif nb=="o" then
		love.graphics.draw(n_o, nxh, nyh)
	elseif nb=="p" then
		love.graphics.draw(n_p, nxh, nyh)
	elseif nb=="q" then
		love.graphics.draw(n_q, nxh, nyh)
	elseif nb=="r" then
		love.graphics.draw(n_r, nxh, nyh)
	elseif nb=="s" then
		love.graphics.draw(n_s, nxh, nyh)
	elseif nb=="t" then
		love.graphics.draw(n_t, nxh, nyh)
	elseif nb=="u" then
		love.graphics.draw(n_u, nxh, nyh)
	elseif nb=="v" then
		love.graphics.draw(n_v, nxh, nyh)
	elseif nb=="w" then
		love.graphics.draw(n_w, nxh, nyh)
	elseif nb=="x" then
		love.graphics.draw(n_x, nxh, nyh)
	elseif nb=="y" then
		love.graphics.draw(n_y, nxh, nyh)
	elseif nb=="z" then
		love.graphics.draw(n_z, nxh, nyh)
	
	elseif nb=="1t" then
		love.graphics.draw(n1t, nxh, nyh)
	elseif nb=="2a" then
		love.graphics.draw(n2bta, nxh, nyh)
	elseif nb=="2b" then
		love.graphics.draw(n2btb, nxh, nyh)
	elseif nb=="2c" then
		love.graphics.draw(n2btc, nxh, nyh)
	elseif nb=="2d" then
		love.graphics.draw(n2btd, nxh, nyh)
	elseif nb=="2e" then
		love.graphics.draw(n2bte, nxh, nyh)
	elseif nb=="2f" then
		love.graphics.draw(n2btf, nxh, nyh)
	elseif nb=="2g" then
		love.graphics.draw(n2btg, nxh, nyh)
	elseif nb=="2h" then
		love.graphics.draw(n2bth, nxh, nyh)
	elseif nb=="2i" then
		love.graphics.draw(n2bti, nxh, nyh)	
	end
	
	if na=="1" then
		love.graphics.draw(n1l, nx, ny)
		love.graphics.draw(n1r, nx, ny)
	elseif na=="2" then
		love.graphics.draw(n1l, nx, ny)
		love.graphics.draw(n2r, nx, ny)
	elseif na=="3" then
		love.graphics.draw(n2l, nx, ny)
		love.graphics.draw(n1r, nx, ny)
	elseif na=="4" then
		love.graphics.draw(n2l, nx, ny)
		love.graphics.draw(n2r, nx, ny)
		
	elseif na=="1b" then
		love.graphics.draw(n1bl, nx, ny)
		love.graphics.draw(n1br, nx, ny)
	elseif na=="2b" then
		love.graphics.draw(n1bl, nx, ny)
		love.graphics.draw(n2br, nx, ny)
	elseif na=="3b" then
		love.graphics.draw(n2bl, nx, ny)
		love.graphics.draw(n1br, nx, ny)
	elseif na=="4b" then
		love.graphics.draw(n2bl, nx, ny)
		love.graphics.draw(n2br, nx, ny)
	
	elseif na=="5" then
		love.graphics.draw(n3_, nx, ny)
	elseif na=="5b" then
		love.graphics.draw(n3b, nx, ny)
	elseif na=="natsuki" then
		love.graphics.draw(naf, nx, ny)
	elseif na=="natsuki2" then
		love.graphics.draw(nbf, nx, ny)
	end
	
	if na=="5" or na=="5b" then --set natsuki's head x and y
		nxh = nx+4
		nyh = ny+6
	else
		nxh = nx
		nyh = ny
	end
end

function drawMonika(ma,mb)
	if ma=="1" then
		love.graphics.draw(m1l, mx, my)
		love.graphics.draw(m1r, mx, my)
	elseif ma=="2" then
		love.graphics.draw(m1l, mx, my)
		love.graphics.draw(m2r, mx, my)
	elseif ma=="3" then
		love.graphics.draw(m2l, mx, my)
		love.graphics.draw(m1r, mx, my)
	elseif ma=="4" then
		love.graphics.draw(m2l, mx, my)
		love.graphics.draw(m2r, mx, my)
	elseif ma=="5a" then
		love.graphics.draw(m3a, mx, my)
	elseif ma=="5b" then
		love.graphics.draw(m3b, mx, my)
	end
	
	if mb=="a" then
		love.graphics.draw(m_a, mx)
	elseif mb=="b" then
		love.graphics.draw(m_b, mx)
	elseif mb=="c" then
		love.graphics.draw(m_c, mx)
	elseif mb=="d" then
		love.graphics.draw(m_d, mx)
	elseif mb=="e" then
		love.graphics.draw(m_e, mx)
	elseif mb=="f" then
		love.graphics.draw(m_f, mx)
	elseif mb=="g" then
		love.graphics.draw(m_g, mx)
	elseif mb=="h" then
		love.graphics.draw(m_h, mx)
	elseif mb=="i" then
		love.graphics.draw(m_i, mx)
	elseif mb=="j" then
		love.graphics.draw(m_j, mx)
	elseif mb=="k" then
		love.graphics.draw(m_k, mx)
	elseif mb=="l" then
		love.graphics.draw(m_l, mx)
	elseif mb=="m" then
		love.graphics.draw(m_m, mx)
	elseif mb=="n" then
		love.graphics.draw(m_n, mx)
	elseif mb=="o" then
		love.graphics.draw(m_o, mx)
	elseif mb=="p" then
		love.graphics.draw(m_p, mx)
	elseif mb=="q" then
		love.graphics.draw(m_q, mx)
	elseif mb=="r" then
		love.graphics.draw(m_r, mx)
	end
end

