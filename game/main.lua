dversion = 'v1.1.8-2'
dvertype = '' --put 'Test' for test mode
print("DDLC-LOVE "..dversion..' '..dvertype)

if lutro then
	love = lutro
	function love.conf(t)
		t.width = 480
		t.height = 272
	end
end
global_os = love.system.getOS()
g_system = love._console_name
if g_system == 'Switch' then
	joysticks = love.joystick.getJoysticks()
	joystick = joysticks[1]
end
if global_os == 'Horizon' and g_system ~= 'Switch' and global_os ~= 'LOVE-WrapLua' then
	branch = '3ds'
else
	branch = 'ddlclove'
end

os_timecheck = os.time()
if os_timecheck then
	if branch == 'ddlclove' then
		love.math.setRandomSeed(os.time())
	end
	math.randomseed(os.time())
	math.random()
	math.random()
	math.random()
end

local require_old = require
function require(req)
	print('require: '..req)
	return require_old(req)
end

require('loader/characters')
require(branch..'/loader/audio')
require(branch..'/loader/images')
require('loader/states')
require(branch..'/main')
require(branch..'/menu')
require('saveload')
require('draw')
require('scripts/script')

function love.load() 
	lg.setBackgroundColor(0,0,0)
	if lutro then
		dfnt = love.graphics.newImageFont('FontMedium.png', " 0123456789abcdefghijklmnopqrstuvxyzABCDEFGHIJKLMNOPQRSTUVXYZ!-.,$")
	end
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
	
	if global_os ~= 'Horizon' and global_os ~= 'LOVE-WrapLua' and not lutro then
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
	
	main_update()
	
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
