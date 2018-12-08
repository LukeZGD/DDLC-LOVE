local random_msgchance = love.math.random(0, 3)
local splash_messages = {
	"You are my sunshine,\nMy only sunshine",
    "I missed you.",
    "Play with me",
    "It's just a game, mostly.",
    "This game is not suitable for children\nor those who are easily disturbed?",
    "sdfasdklfgsdfgsgoinrfoenlvbd",
    "null",
    "I have granted kids to hell",
    "PM died for this.",
    "It was only partially your fault.",
    "This game is not suitable for children\nor those who are easily dismembered.",
    "Don't forget to backup Monika's character file.";
	}
local random_msg = love.math.random(1, #splash_messages)
local running
local s_timer = 0

function drawSplash()
	if state == 'splash' then --splash1 (Team Salvato Splash Screen)
		lg.setBackgroundColor(255,255,255)
		lg.setColor(255,255,255,alpha)
		lg.draw(splash,0,0,0)
		lg.setColor(0,0,0,alpha)
		lg.print('DDLC-LOVE '..dversion..' '..dvertype,15,650)
		if g_system == 'Switch' then
			running = 'LovePotion Switch'
		elseif global_os == 'LOVE-OneLua' then
			running = 'LOVE-OneLua '..g_system
		else
			local major, minor, revision = love.getVersion()
			running = string.format('LOVE %d.%d.%d', major, minor, revision)
		end
		lg.print('Running in '..running,15,680)
		
	elseif state == 'splash2' then --splash2 (Disclaimer)
		lg.setColor(255,255,255,255)
		lg.rectangle('fill',0,0,1280,725)
		lg.setColor(0,0,0, alpha)
		if persistent.ptr == 2 and random_msgchance == 0 then
			lg.print(splash_messages[random_msg], 440, 300)
		else
			lg.print('This game is not suitable for children', 440, 300)
			lg.print('  or those who are easily disturbed.', 447, 330)
		end
		
	elseif state == 'title' then --title (Title Screen)
		lg.setBackgroundColor(255,255,255)
		lg.setColor(255,255,255,alpha)
		lg.draw(background_Image, posX, posY)
		lg.draw(gui.sidebar,-720+titlebg_ypos,0)
		drawSplashChar()
		lg.draw(gui.mainbuttons)
		lg.draw(gui.newgame)
		lg.setColor(64,64,64,alpha)
		lg.print('Unofficial port by LukeeGD',985,10)
		menu_draw()
		if ingamekeys then ingamekeys_draw() end
	end
	lg.setColor(0,0,0,255)
end

function updateSplash(dt)
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
	lg.setColor(255,255,255,alpha)
	if s_timer > 3.1 then
		lg.setBackgroundColor(230,230,230)
		if state == 's_kill_early' then
			lg.draw(s_killearly,230,0)
			lg.setColor(200,200,200)
			lg.setFont(m1)
			if s_timer > 600 then lg.print('Now everyone can be happy.',640,300) end
		elseif state == 'ghostmenu' then
			drawSplashChar()
		end
	else
		lg.draw(endbg)
	end
end

function updateSplashspec(dt)
	s_timer = s_timer + dt
	if s_timer > 3.1 then
		alpha = math.min(alpha + 4, 255)
		y_timer = y_timer + dt
		updateSplashChar()
	elseif s_timer > 3 then
		alpha = 0
	elseif s_timer <= 3 then
		alpha = math.min(alpha + 4, 255)
	end
end

function drawSplashChar()
	lg.draw(menu_art_y,tlp.yx,tlp.yy,0,tlp.scale,tlp.scale)
	lg.draw(menu_art_n,tlp.nx,tlp.ny,0,tlp.scale,tlp.scale)
	lg.draw(menu_art_s,tlp.sx,tlp.sy,0,tlp.scale,tlp.scale)
	lg.draw(menu_art_m,tlp.mx,tlp.my,0,tlp.scale,tlp.scale)
end

function updateSplashChar()
	if y_timer > 0.75 then
		if stmr[1] <= 1 then
			postempY = easeQuadInOut(stmr[1],0,8,1)
		elseif stmr[1] <= 2 then
			postempY = 8 - easeQuadInOut(stmr[1]-1,0,8,1)
		end
		tlp.yx = 525 - easeQuadInOut(stmr[1],0,67,2)
		tlp.nx = 670 - easeQuadInOut(stmr[1],0,38,2)
		tlp.sx = 470 - easeQuadInOut(stmr[1],0,101,2)
		tlp.mx = 680 + easeQuadInOut(stmr[1],0,20,2)
		tlp.yy = 720 - easeQuadInOut(stmr[1],0,705,2)
		tlp.ny = 800 - easeQuadInOut(stmr[1],0,728,2)
		tlp.sy = 880 - easeQuadInOut(stmr[1],0,747,2)
		tlp.my = 960 - easeQuadInOut(stmr[1],0,851,2)
		if stmr[1] > 0.75 and stmr[1] < 2 then
			stmr[2] = stmr[2] + dt
			tlp.scale = 0.75 + easeQuadInOut(stmr[2],0,0.25,1.25)
		end
		if stmr[1] <= 2 then
			stmr[1] = stmr[1] + dt
			posY = posY - postempY
		end
	end
end