dversion = 'v1.0.8'
dvertype = '' --put 'Test' for test mode
global_os, g_system = love.system.getOS()
if g_system == 'Switch' then
	joysticks = love.joystick.getJoysticks()
	joystick = joysticks[1]
end
if global_os == 'Horizon' and g_system ~= 'Switch' and global_os ~= 'LOVE-OneLua' then
    branch = '3ds'
else
    branch = 'ddlclove'
end

require('loader/characters')
require(branch..'/loader/audio')
require(branch..'/loader/images')
require(branch..'/loader/states')
require(branch..'/main')
require(branch..'/draw')
require(branch..'/saveload')
require(branch..'/menu')
require(branch..'/scripts/script')

function love.load() 
	lg.setBackgroundColor(0,0,0)
	
	last_text = ''
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
    
    mainload()    
	changeState('load')
end

function love.draw()
	if event_enabled then
		event_draw()
	elseif state == 'language' then
		lang_draw()
	elseif state == 'load' then
		drawLoad()
	elseif state == 'splash' or state == 'splash2' or state == 'title' then
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
	
	mainupdate()
	
	--update depending on gamestate
	if state == 'load' then
		updateLoad()
	elseif state == 'splash' or state == 'splash2' or state == 'title' then
		updateSplash()
	elseif state == 'game' or state == 'newgame' then
		updateGame()
	elseif state == 'poemgame' then
		updatePoemGame()
	elseif state == 'poem_special' then
		updatepoem_special()
	elseif state == 's_kill_early' or state == 'ghostmenu' then
		updateSplashspec()
	elseif state == 'credits' then
		updateCredits()
	end
	if menu_enabled then
		menu_update()
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
		elseif state == 'load' then
			loadkeypressed(key)
		elseif (state == 's_kill_early' or state == 'ghostmenu') and key == 'y' then
			love.event.quit()
		end
    elseif ingamekeys then
		ingamekeys_keypressed(key)
	elseif menu_enabled then
		menu_keypressed(key)
	end
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
