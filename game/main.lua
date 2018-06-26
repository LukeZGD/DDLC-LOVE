require 'draw'
require 'resources'
require 'saveload'
require 'menu'

--Uncomment out the lines below to run in yuzu without sharedfont
--function love.graphics.print()
--end

function love.load() 
	dversion = 'v0.1.1'
	dvertype = 'Release'
	
	love.graphics.setBackgroundColor(0,0,0)	
	myTextStartTime = love.timer.getTime()
	autotimer = 0
	autoskip = 0
	l_timer = 94
	s_timer = 0
	xaload = 0
	alpha = 255
	posX = -40
	posY = 0
	menu_enabled = false
	
	--os detection
	global_os = love.system.getOS()
	if global_os ~= 'Horizon' and global_os ~= 'HorizonNX' then 
		love.window.setMode(600, 720) 
		love.window.setTitle('DDLC-3DS')
		windowicon = love.graphics.newImage('images/gui/icon.png')
		love.window.setIcon(windowicon:getData())
	end
	
	changeState('load')
end

function love.draw() 
	if global_os ~= 'Horizon' then love.graphics.scale(1.5, 1.5) end
	
	if event_enabled then
		event_draw()
	elseif state == 'load' then
		drawLoad()
	elseif state == 'splash1' or state == 'splash2' or state == 'title' then --title (Title Screen)
		drawSplash()
	elseif state == 'game' or state == 'newgame' then --game (Ingame)
		drawGame()
	elseif state == 'poemgame' then
		drawPoemGame()
	elseif state == 's_kill_early' then --early act 1 end
		drawTopScreen()
		love.graphics.setBackgroundColor (245,245,245)
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(endbg,0,0)
		drawBottomScreen()
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(s_killearly,32,0)
	end
	
	if global_os ~= 'Horizon' then
		love.graphics.setColor(0,0,0)
		drawTopScreen()
		love.graphics.rectangle('fill', 400, 0, 880, 720 )
		drawBottomScreen()
		love.graphics.rectangle('fill', -40, 240, 400, 240 )
	end
end

function love.update(dt)
	--moving background (3DS only)
	if global_os == 'Horizon' then
		posX = posX - 0.25
		posY = posY - 0.25
		if posX <= -80 then posX = 0 end
		if posY <= -80 then posY = 0 end
	end

	--touch(3DS only)/mouse checks
	if global_os ~= 'HorizonNX' then
		mouseDown = love.mouse.isDown(1)
		mouseX = love.mouse.getX()
		mouseY = love.mouse.getY()
		if global_os ~= 'Horizon' then
			mouseX = mouseX / 1.5 - 40
			mouseY = mouseY / 1.5 - 240
		end
	end
	
	--this acts as love.mousepressed
	if mouseDown and mousereleased ~= 1 then
		if menu_enabled ~= true then
			if state == 'splash1' or state == 'splash2' then
				splash_keypressed('a')
			elseif state == 'game' then
				game_mousepressed()
			elseif state == 'newgame' then 
				newgame_keypressed('a')
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
	
	--update depending on gamestate
	if state == 'load' then
		updateLoad(dt)
	elseif state == 'splash1' or state == 'splash2' or state == 'title' then
		updateSplash(dt)
	elseif state == 'game' or state == 'newgame' then
		updateGame(dt)
	elseif state == 'poemgame' then
		updatePoemGame(dt)
	end
end

function love.keypressed(key)
	if menu_enabled ~= true then
		if state == 'splash1' or state == 'splash2' then
			splash_keypressed(key)
		elseif state == 'game' then
			game_keypressed(key)
		elseif state == 'newgame' then
			newgame_keypressed(key)
		elseif state == 'poemgame' then
			poemgamekeypressed(key)
		end
	elseif menu_enabled then
		menu_keypressed(key)
	end
end

function love.keyreleased(key)
	if state == 'game' then
		game_keyreleased(key)
	end
end

--For the Switch
function love.gamepadpressed(joy, button)
	if button == 'dpup' then
		button = 'up'
	elseif button == 'dpdown' then
		button = 'down'
	elseif button == 'dpleft' then
		button = 'left'
	elseif button == 'dpright' then
		button = 'right'
	end
	love.keypressed(button)
end
function love.gamepadreleased(joy, button)
	love.keyreleased(button)
end

function love.textinput(text)
	if global_os == 'Horizon' then
		if text ~= '' then 
			player = text
			savepersistent()
			changeState('game',1)
		else
			changeState('title')
		end
	end
end

function game_quit()
	unloadAll('characters')
	unloadAll('stuff')
	unloadAll('poemgame')
	collectgarbage()
	collectgarbage()
	if global_os == 'Horizon' then
		love.quit()
	else
		love.event.quit()
	end
end