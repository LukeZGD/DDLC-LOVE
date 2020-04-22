local random_msgchance = math.random(0,3)
local random_msg = math.random(1,12)
local running
local s_timer = 0

function drawSplash()
	if state == 'splash' then --splash1 (Team Salvato Splash Screen)
		drawTopScreen()
		lg.setBackgroundColor(255,255,255)
		lgsetColor(255,255,255,alpha)
		lg.draw(splash)
		lgsetColor(0,0,0,alpha)
		lg.print('DDLC-LOVE '..dversion..' '..dvertype,5,220)
		
	elseif state == 'splash2' then --splash2 (Disclaimer)
		drawTopScreen()
		lgsetColor(0,0,0, alpha)
		if persistent.ptr == 2 and random_msgchance == 0 then
			lg.print(tr.splash[random_msg], 95, 100)
		else
			lg.print('This game is not suitable for children', 95, 100)
			lg.print('  or those who are easily disturbed.', 98, 116)
		end
		
	elseif state == 'title' then --title (Title Screen)
		drawTopScreen()
		lg.setBackgroundColor(255,255,255)
		lgsetColor(255,255,255,alpha)
		lg.draw(menu_bg,posX,posY)
		lg.draw(titlebg)
		
		lgsetColor(64,64,64,alpha)
		lg.print('Unofficial port by LukeeGD',245,5)
		drawBottomScreen()
		menu_draw()
	end
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
		if y_timer < 1 then
			y_timer = y_timer + dt
		end
		alpha = easeQuadOut(y_timer,0,256,1)
	end
end

function splash_keypressed(key)
	if (key == 'a' or key == 'start') then
		changeState('title')
	end
end

function drawSplashspec(spec)
	drawTopScreen()
	lgsetColor(255,255,255,alpha)
	if s_timer > 3.1 then
		if state == 's_kill_early' then
			lg.setBackgroundColor(245,245,245)
			lg.draw(s_killearly,72,0)
			lgsetColor(200,200,200)
			lg.setFont(m1)
			if s_timer > 600 then lg.print('Now everyone can be happy.',200,100) end
		elseif state == 'ghostmenu' then
			lg.draw(titlebg)
		end
	else
		lg.draw(endbg)
	end
	drawBottomScreen()
	lgsetColor(0,0,0)
	lg.rectangle('fill',-40,0,400,240)
end

function updateSplashspec()
	s_timer = s_timer + dt
	
	if s_timer > 3.1 then
		alpha = math.min(alpha + 4, 255)
	elseif s_timer > 3 then
		alpha = 0
	elseif s_timer <= 3 then
		alpha = math.min(alpha + 4, 255)
	end
end
