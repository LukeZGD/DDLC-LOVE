dversion = 'v1.1.9'
dvertype = '' --put 'Test' for test mode
print("DDLC-LOVE "..dversion..' '..dvertype)

global_os = love.system.getOS()
g_system = love._console_name
if g_system == 'Switch' then
	joysticks = love.joystick.getJoysticks()
	joystick = joysticks[1]
end
love.math.setRandomSeed(os.time())
math.randomseed(os.time())
math.random()
math.random()
math.random()

local require_old = require
function require(req)
	print('require: '..req)
	return require_old(req)
end

require('loader/characters')
require('loader/audio')
require('loader/images')
require('loader/states')
require('menu')
require('saveload')
require('draw')
require('scripts/script')

function love.load() 
	lg.setBackgroundColor(0,0,0)
	getTime = 0
	startTime = getTime
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
	
	if pcall (lg.set3D, true) == true then
		lg.set3D(true)
	end
	
	if global_os ~= 'Horizon' and global_os ~= 'LOVE-WrapLua' then
		love.window.setFullscreen(true)
		love.window.setTitle('DDLC-LOVE')
		love.keyboard.setTextInput(false)
		dwidth, dheight = love.window.getDesktopDimensions()
	end
	
	changeState('load')
end

function love.draw()
	--for pc stuff
	if dwidth and dheight then
		lg.scale(dwidth/1280,dheight/720)
	end
	
	if event_enabled then
		event_draw()
	elseif state == 'language' then
		lang_draw()
	elseif state == 'load' then
		drawLoad()
	elseif state == 'splash' or state == 'splash2' or state == 'title' then
		drawSplash()
	elseif state == 'game' or state == 'newgame' then
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
	
	getTime = getTime + dt
	--moving background
	posX = posX - 0.625
	posY = posY - 0.625
	if posX <= -200 then posX = 0 end
	if posY <= -200 then posY = 0 end
	
	--custom audio looping
	if audio_bgm and audio_bgmloop then
		if not audio_bgm:isPlaying() and not audio_bgmloop:isPlaying() then
			audio_bgmloop:play()
		end
	end
	
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
	elseif keyboard then
		keyboard_keypressed(key)
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
	elseif button == 'a' then
		button = 'b'
	elseif button == 'b' then
		button = 'a'
	elseif button == 'x' then
		button = 'y'
	elseif button == 'y' then
		button = 'x'
	end
	love.keypressed(button)
end

function love.textinput(text)
	if text ~= '' and m_selected ~= 3 then 
		player = text
		savepersistent()
		cl = 1
		changeState('game',1)
	elseif m_selected == 3 then
		player = text
		savepersistent()
	else
		changeState('title')
	end
end

function game_setvolume()
	if not settings.masvol or not settings.bgmvol or not settings.sfxvol then
		settings.masvol = 80
		settings.bgmvol = 80
		settings.sfxvol = 80
	end
	
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
