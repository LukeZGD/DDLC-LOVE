dversion = 'v1.0.5'
dvertype = '' --put 'Test' for test mode

global_os, g_system = love.system.getOS()
if global_os == 'Horizon' then
	joysticks = love.joystick.getJoysticks()
	joystick = joysticks[1]
end

require 'loader/audio'
require 'loader/images'
require 'loader/characters'
require 'loader/states'
require 'draw'
require 'saveload'
require 'menu'
require 'scripts/script'

function love.load()
	if pcall (love.graphics.set3D, true) == true then
		love.graphics.set3D(true)
	end
	
	lg.setBackgroundColor(0,0,0)
	myTextStartTime = love.timer.getTime()
	last_text = ""
	print_full_text = false
	autotimer = 0
	autoskip = 0
	sectimer = 0
	xaload = 0
	alpha = 255
	posX = -40
	posY = 0
	menu_enabled = false
	textbox_enabled = true
	bgimg_disabled = false
    
	math.randomseed(os.time())
	math.random()
	math.random()
	math.random()
	
	--for pc stuff
	if global_os ~= 'Horizon' then
		love.window.setMode(600, 720) 
		love.window.setTitle('DDLC-3DS')
		love.keyboard.setTextInput(false)
	end
	
	changeState('load')
end

function love.draw()
	if global_os ~= 'Horizon' then lg.scale(1.5, 1.5) end
	
	if event_enabled then
		event_draw()
	elseif state == 'load' then
		drawLoad()
	elseif state == 'splash' or state == 'splash2' or state == 'title' then --title (Title Screen)
		drawSplash()
	elseif state == 'game' or state == 'newgame' then --game (Ingame)
		drawGame()
	elseif state == 'poemgame' then
		drawPoemGame()
	elseif state == 's_kill_early' or state == 'ghostmenu' then
		drawSplashspec()
	elseif state == 'poem_special' then
		drawpoem_special()
	elseif state == 'credits' then
		drawCredits()
	end
end

function love.update()
	dt = love.timer.getDelta()
	
	sectimer = sectimer + dt
	if sectimer >= 1 then sectimer = 0 end
	
	if global_os == 'Horizon' then
		posX = posX - 0.25
		posY = posY - 0.25
		if posX <= -80 then posX = 0 end
		if posY <= -80 then posY = 0 end
	end
	
	--touch (3DS)
	if global_os == 'Horizon' then
		--local touches = love.touch.getTouches()
		--mouseX, mouseY = love.touch.getPosition(touches[1])
	else
		mouseX = love.mouse.getX()
		mouseY = love.mouse.getY()
		mouseX = mouseX / 1.5 - 40
		mouseY = mouseY / 1.5 - 240
	end
	
	--update depending on gamestate
	if state == 'load' then
		updateLoad(dt)
	elseif state == 'splash' or state == 'splash2' or state == 'title' then
		updateSplash(dt)
	elseif state == 'game' or state == 'newgame' then
		updateGame(dt)
	elseif state == 'poemgame' then
		updatePoemGame(dt)
	elseif state == 'poem_special' then
		updatepoem_special(dt)
	elseif state == 's_kill_early' or state == 'ghostmenu' then
		updateSplashspec(dt)
	elseif state == 'credits' then
		updateCredits(dt)
	end
	if menu_enabled then
		menu_update(dt)
	end
end

function love.keypressed(key)
	if menu_enabled ~= true then
		if state == 'splash' or state == 'splash2' then
			splash_keypressed(key)
		elseif state == 'game' then
			game_keypressed(key)
		elseif state == 'newgame' then
			newgame_keypressed(key)
		elseif state == 'poemgame' then
			poemgamekeypressed(key)
		elseif state == 'poem_special' then
			poem_special_keypressed(key)
		elseif (state == 'load' or state == 's_kill_early' or state == 'ghostmenu') and key == 'y' then
			love.event.quit()
		end
	elseif menu_enabled then
		menu_keypressed(key)
	end
end

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

end

function love.gamepadaxis(joy, axis, value)

end

function love.mousepressed()
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
end

function love.touchpressed()
	love.mousepressed()
end

function love.textinput(text)
	if text ~= '' then 
		player = text
		savepersistent()
		cl = 1
		changeState('game',1)
	else
		changeState('title')
	end
end

function game_quit()
	love.event.quit()
end