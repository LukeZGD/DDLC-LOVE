require "draw"
require "resources"
require "poemgame"
require "poemwords"
require "saveload"

require "menu"
require "scripts.script"

function love.load() 
	--set up stuff
	font = love.graphics.newFont('images/gui/fonts/Aller_Rg')
	love.graphics.setFont(font)
	
	l_timer = 0
	timer = 0
	autotimer = 0
	xaload = 0
	alpha = 0
	
	posX = 0
	posY = 0
	
	menu_enabled = false
	
	--os detection
	global_os = love.system.getOS()
	if global_os ~= 'Horizon' then 
		love.window.setMode(400, 480) 
		love.window.setTitle('DDLC-3DS')
	end
	
	filecheck()
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
		love.graphics.setBackgroundColor ( 255,255,255 )
		love.graphics.setColor(255, 255, 255, alpha)
		love.graphics.draw(splash, 0, 0, 0)
		
	elseif state == "splash2" then --splash2 (Disclaimer)
		drawTopScreen()
		splashalpha(2)
		love.graphics.setColor(0,0,0, alpha)
		love.graphics.print("This game is not suitable for children", 90, 100, 0, 1, 1)
		love.graphics.print("  or those who are easily disturbed.", 90, 116, 0, 1, 1)
		love.graphics.print("Unofficial port by LukeeGD", 5, 220, 0, 1, 1)
		
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
		love.graphics.setBackgroundColor ( 225,225,225 )
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(endbg,0,0)
		drawBottomScreen()
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(s_killearly,32,0)
		
	elseif state == "load" then
		love.graphics.setBackgroundColor(0,0,0)
		love.graphics.setColor(255,255,255)
		love.graphics.print("Loading... ("..l_timer.."%)",0,0)
	end
end

function love.update(dt)

	--splash screen timers
	if timer <= 500 then
		timer = timer + 1
	end
	
	--loading timer
	if state == "load" then
		updateloading(dt)
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
	
	if state == "splash1" or state == "splash2" then --splash screen (change state)
		if timer == 180 then
			state = "splash2" --set new state
		elseif timer >= 470 then
			state = "title" --set new state
		end
	end
	
	if love.keyboard.isDown('x') then  --skip enable
		if state == 'game' and menu_enabled == false then
			cl = cl + 1
			xaload = -2
		end
	end

	if state == 'poemgame' then
		updatepoemgame(dt)
	end
	
end

function love.keypressed(key)
	if key == 'a' then 
		if state == "game" and menu_enabled == false or state == "newgame" then
			cl = cl + 1 --next script
			xaload = 0
		end
	end

	if state == "game" and menu_enabled == false then
		if key == 'x' then sfx1:play()
		elseif key == 'y' then 
			menu_enable('pause',7)
			sfx1:play()	
		elseif key == 'b' then --auto
			sfx1:play()
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
		if state == 'game' and menu_enabled == false then
			autotimer = 0
			xaload = 0
			audioUpdate(audio1)
			bgUpdate(bg1)
			cgUpdate(cg1)
		end
	end
end

function love.textinput(text)
	if global_os == 'Horizon' then
		if text ~= '' then 
			player = text
			savegame()
			menu_enabled = false
			xaload = 0
			state = "game"
		else
			state = "title"
		end
	end
end
