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
		lg.draw(titlebg, 0, 720-titlebg_ypos)
		lg.draw(sidebar,-720+titlebg_ypos,0)
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
		alpha = math.min(alpha+5,255)
		if y_timer < 1.5 then
			y_timer = y_timer + dt
		end
		titlebg_ypos = easeQuadOut(y_timer,0,720,1.5)
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
		if state == 's_kill_early' then
			lg.setBackgroundColor(245,245,245)
			lg.draw(s_killearly,230,0)
			lg.setColor(200,200,200)
			lg.setFont(m1)
			if s_timer > 600 then lg.print('Now everyone can be happy.',640,300) end
		elseif state == 'ghostmenu' then
			lg.draw(titlebg)
		end
	else
		lg.draw(endbg)
	end
end

function updateSplashspec(dt)
	s_timer = s_timer + dt
	
	if s_timer > 3.1 then
		alpha = math.min(alpha + 4, 255)
	elseif s_timer > 3 then
		alpha = 0
	elseif s_timer <= 3 then
		alpha = math.min(alpha + 4, 255)
	end
end