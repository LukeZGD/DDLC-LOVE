require "draw"
require "script"
require "resources"
require "poemgame"
require "poemwords"

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
	
	--open save file
	file = io.open("save.txt", "r")
	
	--save file read
	if file ~= nil then
		fileContent = file:read "*l"
		fileContent = fileContent+1-1
		player = file:read "*l"
		file:close()
	end
	
	--check character files
	sayorichr = io.open("./characters/sayori.chr", "r")
	if sayorichr == nil or fileContent == 10000 then state = "s_kill_early" else sayorichr:close() end
	monikachr = io.open("./characters/monika.chr", "r")
	if monikachr == nil then ch0ln = 10001 else ch0ln = 1 monikachr:close() end
	
	if state == "s_kill_early" then --set up early act 1 end
		timer = 501
		endbg = love.graphics.newImage('./images/gui/end.png')
		s_killearly = love.graphics.newImage('./images/cg/s_kill_early.png')
		audioUpdate('s_kill_early')
	elseif fileContent == nil or fileContent == 0 then
		alpha = 255
		timer = 501
		ch0ln = 10016
		bgCheck()
		state = "newgame"
	else
		resetchr2()
		state = "splash1" --splash screen
		audioUpdate('1') --play titlescreen music
	end 
	
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
		--love.graphics.print(player, 0, 0, 0, 1, 1)
		
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
				resetchr()
				file = io.open("save.txt", "w")
				file:write('0')
				file:close()
				sfx1play()
				love.event.quit()  
			end
		end
	end
	
	if love.keyboard.isDown('lbutton') then
		if love.keyboard.isDown('rbutton') then
			if love.keyboard.isDown('start') then --L+R+Start reset the game
				timer = 0
				state = 'splash1'
				audioupdate('1')
			elseif love.keyboard.isDown('select') then --L+R+Select quit the game
				love.event.quit()
			end
		elseif love.keyboard.isDown('up') then --L+R+Up poem game test
			poemgame()
		end
	end
	
end

function love.keypressed(key)
	if key == 'start' then 
	
		if state == "title" then --new game
			sfx1play()
			if player == nil then
				love.keyboard.setTextInput(true)
			else
				audioUpdate('2')
				bgCheck()
				state = "game"

			end
		elseif state == "splash1" then --skip splash screens
			timer = 500
			state = "title"
		end
	
	elseif key == 'select' then --load game
		if state == "title" then
			sfx1play()
			if fileContent == nil or fileContent == 1 then else
				ch0ln = fileContent
				audio1 = 1
				audioCheck() 
				bgCheck()
				state = "game"
			end
		end
		
	elseif key == 'x' then --play sfx for skip
		if state == "game" then sfx1play() end
		
	elseif key == 'a' then 
		if state == "game" or state == "newgame" then
			ch0ln = ch0ln + 1 --next script
			audioCheck()
			bgCheck()
			xaload = 0
		end
		
	elseif key == 'y' then --save game
		if state == "game" then
			file = io.open("save.txt", "w")
			file:write(ch0ln, "\n", player)
			file:close()
			sfx1play()
		end
		
	elseif key == 'b' then --auto
		if state == "game" then 
			sfx1play()
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
		file = io.open("save.txt", "w")
		file:write('1', "\n", player)
		file:close()
		audioUpdate('2')
		bgCheck()
		state = "game"
	else
		state = "title"
	end
end
