require "draw"
require "resources"
require "poemgame"
require "poemwords"
require "saveload"

require "menu"
require "scripts.script"

function love.load() 
	dversion = "v0.0.2"

	love.graphics.setBackgroundColor(0,0,0)
	
	myTextStartTime = love.timer.getTime()
	l_timer = 0
	timer = 0
	autotimer = 0
	xaload = 0
	alpha = 255
	
	posX = 0
	posY = 0
	
	menu_enabled = false
	
	--os detection
	global_os = love.system.getOS()
	if global_os ~= 'Horizon' then 
		love.window.setMode(400, 480) 
		love.window.setTitle('DDLC-3DS')
	end
	
	state = 'load'
end

function love.draw() 

	if global_os == 'Horizon' then
		posX = posX - 0.125
		posY = posY - 0.125
	
		if posX <= -80 then posX = 0 end
		if posY <= -80 then posY = 0 end
	else
		posX = -75
		posY = 0
	end
	
	if timer <= 200 then --splash1 (Team Salvato Splash Screen)
		drawTopScreen()
		splashalpha(1)
		love.graphics.setBackgroundColor (255,255,255)
		love.graphics.setColor(255, 255, 255, alpha)
		love.graphics.draw(splash, 0, 0, 0)
		
	elseif state == "splash2" then --splash2 (Disclaimer)
		drawTopScreen()
		splashalpha(2)
		love.graphics.setColor(0,0,0, alpha)
		love.graphics.print("This game is not suitable for children", 95, 100)
		love.graphics.print("  or those who are easily disturbed.", 95, 116)
		love.graphics.print("Unofficial port by LukeeGD", 5, 220)
		
	elseif state == "title" then --title (Title Screen)
		drawTopScreen()
		splashalpha(3)
		love.graphics.setColor(255, 255, 255, alpha)
		love.graphics.draw(background_Image, posX, posY)
		love.graphics.draw(titlebg, 0, 0)
		
		drawBottomScreen()
		menu_draw()
		
	elseif state == "game" or state == "newgame" then --game (Ingame)
		drawGame()
		
	elseif state == "poemgame" then
		drawpoemgame()
		
	elseif state == "s_kill_early" then --early act 1 end
		drawTopScreen()
		love.graphics.setBackgroundColor (245,245,245)
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(endbg,0,0)
		drawBottomScreen()
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(s_killearly,32,0)
		
	elseif state == "load" then
		drawTopScreen()
		love.graphics.setBackgroundColor(255,255,255)
		love.graphics.setColor(0,0,0,alpha)
		love.graphics.rectangle("fill",0,0,400,240)
		love.graphics.setColor(255,255,255,alpha)
		love.graphics.print("Loading... ("..l_timer.."%)",0,0)
		drawBottomScreen()
		love.graphics.setColor(0,0,0,alpha)
		love.graphics.rectangle("fill",-40,0,400,240)
	end
end

function love.update(dt)

	--splash screen timer
	if timer <= 500 then
		timer = timer + 1
	end
	
	--update depending on state
	if state == "load" then
		updateloading(dt)
	elseif state == 'poemgame' then
		updatepoemgame(dt)
	end
	
	--auto next script
	if autotimer == 0 then
		autotimer = 0
	elseif autotimer <= 150 then
		autotimer = autotimer + 1
	elseif autotimer == 151 then
		cl = cl + 1
		xaload = 0
		autotimer = 1
	end
	
	--splash screen (change states)
	if state == "splash1" or state == "splash2" then 
		if timer == 180 then
			state = "splash2"
		elseif timer >= 470 then
			state = "title" 
		end
	end
	
	if love.keyboard.isDown('x') then --skip enable
		if state == 'game' and menu_enabled == false and cl ~= 666 then
			if tspd == nil then tspd = settings.textspd end
			settings.textspd = 10000
			if autotimer < 148 then autotimer = 148 end
		end
	end
end

function love.keypressed(key)
	if key == 'a' then 
		if state == "game" and menu_enabled == false or state == "newgame" then
			autotimer = 0
			cl = cl + 1 --next script
			xaload = 0
		end
	end

	if state == "game" and menu_enabled == false then
		if key ~= 'a' then sfx1:play() end
		if key == 'y' then --pause menu
			autotimer = 0
			menu_enable('pause',7)
			
		elseif key == 'b' then --auto on/off
			if autotimer == 0 then autotimer = 1 else autotimer = 0 end
		end
		
	elseif state == 'poemgame' then
		poemgamekeypressed(key)
	end
	
	if menu_enabled then
		menu_keypressed(key)
	end
end

function love.keyreleased(key)
	if key == 'x' then --skip disable
		if tspd ~= nil then settings.textspd = tspd end
		tspd = nil
		autotimer = 0
	end
end

function love.textinput(text)
	if global_os == 'Horizon' then
		if text ~= '' then 
			player = text
			savegame()
			xaload = 0
			state = "game"
			menu_enabled = false
		else
			state = "title"
		end
	end
end
