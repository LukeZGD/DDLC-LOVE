require 'draw'
require 'resources'
require 'saveload'
require 'menu'
require 'scripts/script'

function love.load() 
	dversion = 'v0.5.0'
	dvertype = 'Release'
	
	lg.setBackgroundColor(0,0,0)
	myTextStartTime = love.timer.getTime()
	autotimer = 0
	autoskip = 0
	sectimer = 0
	xaload = 0
	alpha = 255
	posX = 0
	posY = 0
	menu_enabled = false
	textbox_enabled = true
	bgimg_disabled = false
	
	love.math.setRandomSeed(os.time())
	
	--os detection
	global_os, g_system = love.system.getOS()
	if g_system ~= 'Switch' and global_os ~= 'LOVE-OneLua' then
		love.window.setMode(1280, 720)
		love.window.setTitle('DDLC-LOVE')
		love.keyboard.setTextInput(false)
	end
	
	changeState('load')
end

function love.draw()
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

function love.update(dt)
	sectimer = sectimer + dt
	if sectimer >= 1 then sectimer = 0 end
	
	posX = posX - 0.625
	posY = posY - 0.625
	if posX <= -200 then posX = 0 end
	if posY <= -200 then posY = 0 end
	
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
			game_quit()
		end
	elseif ingamekeys then
		ingamekeys_keypressed(key)
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
	unloadAll('characters')
	unloadAll('stuff')
	unloadAll('poemgame')
	collectgarbage()
	collectgarbage()
	love.event.quit()
end