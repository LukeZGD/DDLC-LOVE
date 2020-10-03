local random_msgchance = love.math.random(0,3)
local random_msg = love.math.random(1,12)
local s_timer = 0
local s_kille = {x=280,y=-5}
splashx = 975

function drawSplash()
	lgsetColor(255,255,255,255)
	lg.rectangle('fill',0,0,1280,725)
	if state == 'splash' then --splash1 (Team Salvato Splash Screen)
		lgsetColor(255,255,255,alpha)
		lg.draw(splash)
		lgsetColor(0,0,0,alpha)
		lg.print('DDLC-LOVE '..dversion..' '..dvertype,15,675)
		
	elseif state == 'splash2' then --splash2 (Disclaimer)
		lgsetColor(0,0,0, alpha)
		if persistent.ptr == 2 and random_msgchance == 0 then
			lg.print(tr.splash[random_msg], 440, 300)
		else
			lg.print(tr.splash[13], 440, 300)
			lg.print(tr.splash[14], 447, 330)
		end
		
	elseif state == 'title' then --title (Title Screen)
		lgsetColor(255,255,255,alpha)
		lg.draw(menu_bg, posX, posY)
		lg.draw(gui.sidebar,-720+titlebg_ypos,0)
		drawSplashChar()
		lg.draw(gui.mainbuttons)
		if persistent.ptr == 1 and gui.newgame1 then
			lg.draw(gui.newgame1)
		elseif gui.newgame then
			lg.draw(gui.newgame)
		end
		lgsetColor(64,64,64,alpha)
		lg.print(tr.splash[16],splashx,10)
		menu_draw()
		if keyboard then keyboard_draw() end
	end
	lgsetColor(0,0,0,255)
end

function updateSplash()
	--splash screen s_timer
	s_timer = s_timer + dt
	
	if state == 'splash' then 	
	--team salvato splash
		if s_timer <= 3 then
			alpha = math.min(alpha+7.75,255)
		elseif s_timer > 3 then
			alpha = math.max(alpha-7.75,0)
			if alpha == 0 then state = 'splash2' end
		end
	--warning screen
	elseif state == 'splash2' then
		if s_timer <= 6 then
			alpha = math.min(alpha+7.75,255)
		elseif s_timer > 6 and s_timer < 7 then
			alpha = math.max(alpha-7.75,0)
		elseif s_timer >= 7 then
			changeState('title')
		end
	--fade in title screen
	elseif state == 'title' then
		y_timer = y_timer + dt
		alpha = math.min(alpha+5,255)
		updateSplashChar()
		if y_timer > 0.7 and y_timer < 1.7 then
			titlebg_ypos = easeQuadOut(y_timer-0.7,0,720,1)
		end
	end
end

function splash_keypressed(key)
	if key == 'a' then
		changeState('title')
	end
end

function drawSplashspec(spec)
	lgsetColor(255,255,255,alpha)
	if s_timer > 3.1 then
		lg.setBackgroundColor(230,230,230)
		if state == 's_kill_early' then
			lg.draw(s_killearly,s_kille.x,s_kille.y)
			lgsetColor(255,255,255,32)
			drawanimframe()
			lgsetColor(160,160,160)
			lg.setFont(s1)
			if s_timer > 600 then lg.print(tr.splash[15],640,300) end
		elseif state == 'ghostmenu' then
			drawSplashChar()
		end
	else
		lg.draw(endbg)
	end
end

function updateSplashspec()
	s_timer = s_timer + dt
	if s_timer > 3.1 then
		alpha = math.min(alpha + 4, 255)
		y_timer = y_timer + dt
		if state == 'ghostmenu' then
			updateSplashChar()
		end
	elseif s_timer > 3 then
		alpha = 0
	elseif s_timer <= 3 then
		alpha = math.min(alpha + 4, 255)
	end
	
	if y_timer > 0.5 and state == 's_kill_early' then
		if love.math.random(1,2) == 1 and s_kille.x < 285 then
			s_kille.x = s_kille.x + 1
		elseif love.math.random(1,2) == 1 and s_kille.x > 275 then
			s_kille.x = s_kille.x - 1
		elseif love.math.random(1,2) == 1 and s_kille.y > -5 then
			s_kille.y = s_kille.y - 1
		elseif love.math.random(1,2) == 1 and s_kille.y < -3 then
			s_kille.y = s_kille.y + 1
		end
		y_timer = 0
	end
end

function drawSplashChar()
    if g_system == 'Switch' then
        lg.push()
        lg.scale(tlp.scale,tlp.scale)
        lg.draw(menu_art_y,tlp.yx/tlp.scale,tlp.yy/tlp.scale)
        lg.draw(menu_art_n,tlp.nx/tlp.scale,tlp.ny/tlp.scale)
        lg.draw(menu_art_m,tlp.mx/tlp.scale,tlp.my/tlp.scale)
        if menu_art_s_break then
            lg.draw(menu_art_s_break,tlp.sx/tlp.scale,tlp.sy/tlp.scale)
        elseif menu_art_s then
            lg.draw(menu_art_s,tlp.sx/tlp.scale,tlp.sy/tlp.scale)
        end
        lg.pop()
    else
        lg.draw(menu_art_y,tlp.yx,tlp.yy,0,tlp.scale,tlp.scale)
        lg.draw(menu_art_n,tlp.nx,tlp.ny,0,tlp.scale,tlp.scale)
        lg.draw(menu_art_m,tlp.mx,tlp.my,0,tlp.scale,tlp.scale)
        if menu_art_s_break then
            lg.draw(menu_art_s_break,tlp.sx,tlp.sy,0,tlp.scale,tlp.scale)
        elseif menu_art_s then
            lg.draw(menu_art_s,tlp.sx,tlp.sy,0,tlp.scale,tlp.scale)
        end
    end
end

function updateSplashChar()
	if y_timer > 0.75 then
		if z_timer[1] <= 1 then
			postempY = easeQuadInOut(z_timer[1],0,8,1)
		elseif z_timer[1] <= 2 then
			postempY = 8 - easeQuadInOut(z_timer[1]-1,0,8,1)
		end
		tlp.yx = 525 - easeQuadInOut(z_timer[1],0,67,2)
		tlp.nx = 670 - easeQuadInOut(z_timer[1],0,38,2)
		tlp.sx = 470 - easeQuadInOut(z_timer[1],0,101,2)
		tlp.mx = 680 + easeQuadInOut(z_timer[1],0,20,2)
		tlp.yy = 720 - easeQuadInOut(z_timer[1],0,705,2)
		tlp.ny = 800 - easeQuadInOut(z_timer[1],0,728,2)
		tlp.sy = 880 - easeQuadInOut(z_timer[1],0,747,2)
		tlp.my = 960 - easeQuadInOut(z_timer[1],0,851,2)
		if z_timer[1] > 0.75 and z_timer[1] < 2 then
			z_timer[2] = z_timer[2] + dt
			tlp.scale = 0.75 + easeQuadInOut(z_timer[2],0,0.25,1.25)
		end
		if z_timer[1] <= 2 then
			z_timer[1] = z_timer[1] + dt
			posY = posY - postempY
		end
	end
end
