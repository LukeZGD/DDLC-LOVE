require 'draw'
require 'resources'
require 'saveload'
require 'menu'

function love.load() 
	dversion = 'v0.0.3'

	love.graphics.setBackgroundColor(0,0,0)	
	myTextStartTime = love.timer.getTime()
	l_timer = 96
	timer = 0
	autotimer = 0
	xaload = 0
	alpha = 255
	
	posX = -75
	posY = 0
	
	menu_enabled = false
	
	--os detection
	global_os = love.system.getOS()
	if global_os ~= 'Horizon' and global_os ~= 'HorizonNX' then 
		love.window.setMode(400, 480) 
		love.window.setTitle('DDLC-3DS')
	end
	
	changeState('load')
end

function love.draw() 
	if state == 'load' then
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
	if global_os == 'Horizon' then
		posX = posX - 0.25
		posY = posY - 0.25
		if posX <= -80 then posX = 0 end
		if posY <= -80 then posY = 0 end
	end

	if global_os ~= 'HorizonNX' then
		mouseDown = love.mouse.isDown(1)
		mouseX = love.mouse.getX()
		mouseY = love.mouse.getY()
		if global_os ~= 'Horizon' then
			mouseX = mouseX - 40
			mouseY = mouseY - 240
		end
	end
	
	--this acts as love.mousepressed
	if mouseDown and mousereleased ~= 1 then
		if state == 'game' and menu_enabled == false then
			game_mousepressed()
		elseif state == 'poemgame' and menu_enabled == false then
			poemgamemousepressed()
		elseif menu_enabled then
			menu_mousepressed()
		end
		mousereleased = 1
	elseif mouseDown == false then
		mousereleased = nil
	end
	
	--update depending on state
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
	if state == 'splash1' or state == 'splash2' then
		splash_keypressed(key)
	elseif state == 'game' and menu_enabled == false then
		game_keypressed(key)
	elseif state == 'newgame' and menu_enabled == false then
		newgame_keypressed(key)
	elseif state == 'poemgame' and menu_enabled == false then
		poemgamekeypressed(key)
	elseif menu_enabled then
		menu_keypressed(key)
	end
end

function love.keyreleased(key)
	if state == 'game' then
		game_keyreleased(key)
	end
end

function love.textinput(text)
	if global_os == 'Horizon' then
		if text ~= '' then 
			player = text
			savegame()
			changeState('game',1)
		else
			state = 'title'
		end
	end
end