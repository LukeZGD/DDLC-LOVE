local random_msgchance = math.random(0, 3)
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
local random_msg = math.random(1, #splash_messages)

local s_timer = 0

function drawSplash()
	if state == 'splash1' then --splash1 (Team Salvato Splash Screen)
		drawTopScreen()
		love.graphics.setBackgroundColor(255,255,255)
		love.graphics.setColor(255, 255, 255, alpha)
		love.graphics.draw(splash, 0, 0, 0)
		love.graphics.setColor(0, 0, 0, alpha)
		love.graphics.print('DDLC-3DS '..dversion..' '..dvertype,0,205)
		love.graphics.print('Made with LovePotion/LOVE 0.10.2',0,220)
		
	elseif state == 'splash2' then --splash2 (Disclaimer)
		drawTopScreen()
		love.graphics.setColor(0,0,0, alpha)
		if persistent.ptr == 2 and random_msgchance == 0 then
			love.graphics.print(splash_messages[random_msg], 95, 100)
		else
			love.graphics.print('This game is not suitable for children', 95, 100)
			love.graphics.print('  or those who are easily disturbed.', 95, 116)
		end
		
	elseif state == 'splash3' then --Just Monika. (ahaha)
		drawTopScreen()
		love.graphics.setColor(0,0,0, alpha)
		love.graphics.print('Just Monika.', 170, 100)
		
	elseif state == 'title' then --title (Title Screen)
		drawTopScreen()
		love.graphics.setBackgroundColor(255,255,255)
		love.graphics.setColor(255,255,255,alpha)
		love.graphics.draw(background_Image, posX, posY)
		love.graphics.draw(titlebg, 0, titlebg_ypos-240)
		love.graphics.setColor(64,64,64,alpha)
		love.graphics.print('Unofficial port by LukeeGD',240,5)
		drawBottomScreen()
		menu_draw()
	end
end

function updateSplash(dt)
	--splash screen s_timer
	s_timer = s_timer + dt
	
	if state == 'splash1' then 	
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
		if y_timer < 1 then
			y_timer = y_timer + dt
		end
		titlebg_ypos = easeQuadOut(y_timer,0,240,1)
	end
end

function splash_keypressed(key)
	if (key == 'a' or key == 'start') then
		changeState('title')
	end
end

function drawSplashspec(spec)
	drawTopScreen()
	love.graphics.setColor(255,255,255,alpha)
	if s_timer > 3.1 then
		if state == 's_kill_early' then
			love.graphics.setBackgroundColor(245,245,245)
			love.graphics.draw(s_killearly,72,0)
			love.graphics.setColor(200,200,200)
			love.graphics.setFont(m1)
			if s_timer > 600 then love.graphics.print('Now everyone can be happy.',200,100) end
		elseif state == 'ghostmenu' then
			love.graphics.draw(titlebg)
		end
	else
		love.graphics.draw(endbg)
	end
	drawBottomScreen()
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle('fill',-40,0,400,240)
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