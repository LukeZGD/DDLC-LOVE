function drawSplash()
	if state == 'splash1' then --splash1 (Team Salvato Splash Screen)
		drawTopScreen()
		love.graphics.setBackgroundColor (255,255,255)
		love.graphics.setColor(255, 255, 255, alpha)
		love.graphics.draw(splash, 0, 0, 0)
		
	elseif state == 'splash2' then --splash2 (Disclaimer)
		drawTopScreen()
		love.graphics.setColor(0,0,0, alpha)
		love.graphics.print('This game is not suitable for children', 95, 100)
		love.graphics.print('  or those who are easily disturbed.', 95, 116)
		love.graphics.print('Unofficial port by LukeeGD', 5, 220)
		
	elseif state == 'splash3' then --Just Monika. (ahaha)
		drawTopScreen()
		love.graphics.setColor(0,0,0, alpha)
		love.graphics.print('Just Monika.', 170, 100)
		
	elseif state == 'title' then --title (Title Screen)
		drawTopScreen()
		love.graphics.setColor(255, 255, 255, alpha)
		love.graphics.draw(background_Image, posX, posY)
		love.graphics.draw(titlebg, 0, 0)
		
		drawBottomScreen()
		menu_draw()
	end
end

function updateSplash(dt)
	--splash screen timer
	if timer <= 500 then
		timer = timer + 1
	end
	
	--splash screen (change states)
	if state == 'splash1' or state == 'splash2' then 
		if timer == 190 then
			state = 'splash2'
		elseif timer >= 470 then
			state = 'title' 
		end
	end
	
	if state == 'splash1' then 
		splashalpha(1)
	elseif state == 'splash2' then
		splashalpha(2)
	elseif state == 'title' then
		splashalpha(3)
	end
end

function splash_keypressed(key)
	if key == 'a' or key == 'start' then
		changeState('title')
	end
end