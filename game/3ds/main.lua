function mainload() 
	if pcall (love.graphics.set3D, true) == true then
		love.graphics.set3D(true)
	end
	myTextStartTime = love.timer.getTime()
	posX = -40
	
	math.randomseed(os.time())
	math.random()
	math.random()
	math.random()
end

function mainupdate()
	--moving background
	posX = posX - 0.25
	posY = posY - 0.25
	if posX <= -80 then posX = 0 end
	if posY <= -80 then posY = 0 end

	--touch checks
	mouseDown = love.mouse.isDown(1)
	mouseX = love.mouse.getX()
	mouseY = love.mouse.getY()
    
	--this acts as love.mousepressed
	if mouseDown and mousereleased ~= 1 then
		if menu_enabled ~= true then
			if state == 'splash' or state == 'splash2' or state == 'newgame' or state == 'poem_special' then
				love.keypressed('a')
			elseif state == 'game' then
				game_mousepressed()
			elseif state == 'poemgame' then
				poemgamemousepressed()
			end
		elseif menu_enabled then
			menu_mousepressed()
		end
		mousereleased = 1
	elseif mouseDown == false then
		mousereleased = nil
	end
end
