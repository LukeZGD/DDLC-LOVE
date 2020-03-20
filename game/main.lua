dversion = 'v1.0.7'
dvertype = '' --put 'Test' for test mode
global_os, g_system = love.system.getOS()

if g_system == 'Switch' then
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
	lg.setBackgroundColor(0,0,0)
	getTime = 0
	startTime = getTime
	last_text = ""
	print_full_text = false
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
    
	--for pc stuff
	if g_system ~= 'Switch' and global_os ~= 'LOVE-WrapLua' then
		love.window.setMode(1280, 720)
		love.window.setTitle('DDLC-LOVE')
		love.keyboard.setTextInput(false)
	end
	
	changeState('load')
end

function love.draw()
	if event_enabled then
		event_draw()
	elseif state == 'language' then
		lang_draw()
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
	local delta = love.timer.getDelta()
	if dvertype == 'Test' then
		dt = 0.0166 --this is for yuzu
	else
		dt = delta
	end
	getTime = getTime + dt
	sectimer = sectimer + dt
	if sectimer >= 1 then sectimer = 0 end
	
	posX = posX - 0.625
	posY = posY - 0.625
	if posX <= -200 then posX = 0 end
	if posY <= -200 then posY = 0 end
	
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
	
	--custom audio looping
	if audio_bgm and audio_bgmloop then
		if not audio_bgm:isPlaying() and not audio_bgmloop:isPlaying() then
			audio_bgmloop:play()
		end
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

function game_setvolume()
	local masvol = settings.masvol/100
	local bgmvol = (settings.bgmvol/100)*masvol
	local sfxvol = (settings.sfxvol/100)*masvol
	if dvertype == '' then
		if audio_bgm then
			audio_bgm:setVolume(bgmvol)
		end
		if audio_bgmloop then
			audio_bgmloop:setVolume(bgmvol)
		end
		sfx1:setVolume(sfxvol)
		sfx2:setVolume(sfxvol)
	end
end
