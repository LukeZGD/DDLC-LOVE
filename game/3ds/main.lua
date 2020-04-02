love.filesystem.getInfo = love.filesystem.isFile

function main_update()
	getTime = getTime + dt
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

function love.errhand(msg)
	msg = debug.traceback("Error: " .. tostring(msg))
	love.filesystem.write("error.txt",msg)
end
