require "draw"
require "script"
require "resources"
require "poemgame"
require "poemwords"
require "saveload"

function love.load() 
	--set up stuff
	love.graphics.setBackgroundColor ( 0,0,0 )
	font = love.graphics.newFont('Aller_Rg')
	love.graphics.setFont(font)
	
	--set up more stuff (splash, title screen, gui elements)
	splash = love.graphics.newImage('./images/bg/splash.png')
	titlebg = love.graphics.newImage('./images/bg/bg.png')
	textbox = love.graphics.newImage('./images/gui/textbox.png')
	namebox = love.graphics.newImage('./images/gui/namebox.png')
	sfx1 = love.audio.newSource("./audio/sfx/select.ogg", "static")
	sfx2 = love.audio.newSource("./audio/sfx/hover.ogg", "static")

	--scrolling background
	background_Image = love.graphics.newImage('./images/bg/menu_bg.png')
	posX = 0
	posY = 0
	
	--set up some other stuff
	timer = 0
	autotimer = 0
	audio1 = 0
	xaload = 0
	alpha = 0
	
	filecheck()
end

function love.draw() 

	posX = posX - 0.125
	posY = posY - 0.125
	
    if posX <= -80 then posX = 0 end
	if posY <= -80 then posY = 0 end
	
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
		love.graphics.print(ch0ln,16, 16, 0, 1, 1)
		love.graphics.print(player,16, 32, 0, 1, 1)
		
		drawBottomScreen()
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(background_Image, posX, posY)
		love.graphics.setColor(0,0,0)
		love.graphics.print("Start - New Game",16, 16, 0, 1, 1)
		love.graphics.print("Select - Load Game",16, 32, 0, 1, 1)
		love.graphics.print("Controls:",16, 64, 0, 1, 1)
		love.graphics.print("Y - Save Game",16, 80, 0, 1, 1)
		love.graphics.print("B - Auto On/Off",16, 96, 0, 1, 1)
		love.graphics.print("X - Skip",16, 112, 0, 1, 1)
		love.graphics.print("L+R+Start - Reset Game",16, 144, 0, 1, 1)
		love.graphics.print("L+R+Select - Quit",16, 160, 0, 1, 1)
		love.graphics.print("Up+X+B - Erase Save Data",16, 176, 0, 1, 1)
		love.graphics.print("L+R+Up - Poem Game Test",16, 192, 0, 1, 1)
		
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
		
	end
end

function love.update(dt)

	--splash screen timers
	if timer <= 500 then
		timer = timer + 1
	end
	
	--auto next script
	if autotimer == 0 then
		autotimer = 0
	elseif autotimer <= 150 then
		autotimer = autotimer + 1
	elseif autotimer == 151 then
		ch0ln = ch0ln + 1
		audioCheck()
		bgCheck()
		xaload = 0
		autotimer = 1
	end
	
	if state == "splash1" or state == "splash2" then --splash screen (change state)
		if timer == 200 then
			state = "splash2"
		elseif timer >= 480 then
			state = "title"
		end
	end
	
	if love.keyboard.isDown('x') then  --skip enable
		if state == 'game' then
			ch0ln = ch0ln + 1
			xaload = 0
		end
	end
	
	if love.keyboard.isDown('up') then 
		if love.keyboard.isDown('x') then
			if love.keyboard.isDown('b') then --Up+X+B erase save data
				ch0ln = 0
				savegame()
				sfx1:play()
				love.quit()  
			end
		end
	end
	
	if love.keyboard.isDown('lbutton') then
		if love.keyboard.isDown('rbutton') then
			if love.keyboard.isDown('start') then --L+R+Start reset the game
				unloadAll()
				unloadbg()
				audioUpdate('0')
				love.load()
			elseif love.keyboard.isDown('select') then --L+R+Select quit the game
				love.quit()
			elseif love.keyboard.isDown('up') then --L+R+Up poem game test
				poemgame()
			end
		end
	end
	
end

function love.keypressed(key)
	if key == 'start' then 
	
		if state == "title" then --new game
			sfx1:play()
			if player == "" then
				love.keyboard.setTextInput(true)
			elseif ch0ln == 10001 then
				audioUpdate('2')
				bgCheck()
				state = "game"
			elseif ch0ln ~= 1 and ch0ln <= 9999 then
				ch0ln = 1
				audioUpdate('2')
				bgCheck()
				state = "game"
			end
		elseif state == "splash1" or state == "splash2" then --skip splash screens
			timer = 500
			state = "title"
		end
	
	elseif key == 'select' then --load game
	
		if state == "title" then
			sfx1:play()
			if player ~= "" and ch0ln ~= 0 then
				audio1 = 1
				audioCheck() 
				bgCheck()
				state = "game"
			end
		end
		
	elseif key == 'x' then --play sfx for skip
		if state == "game" then sfx1:play() end
		
	elseif key == 'a' then 
		if state == "game" or state == "newgame" then
			ch0ln = ch0ln + 1 --next script
			audioCheck()
			bgCheck()
			xaload = 0
		end
		
	elseif key == 'y' then --save game
		if state == "game" then
			savegame()
			sfx1:play()
		end
		
	elseif key == 'b' then --auto
		if state == "game" then 
			sfx1:play()
			if autotimer == 0 then autotimer = 1 else autotimer = 0 end
		end
	end
	
	if state == 'poemgame' then
		poemgamekeypressed(key)
	end
end

function love.keyreleased(key)
	if key == 'x' then --skip disable
		if state == 'game' then
			autotimer = 0
			audioCheck()
			bgCheck()
		end
	end
end

function love.textinput(text)
	if text ~= '' then 
		player = text
		savegame()
		audioUpdate('2')
		bgCheck()
		state = "game"
	else
		state = "title"
	end
end
