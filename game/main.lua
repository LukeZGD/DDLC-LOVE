require "draw"
require "script"
require "resources"

--for saving and loading
file = io.open("save.txt", "r")
local function read_file(path)
   if not file then return nil end
  local content = file:read "*a"
  return content
end
local fileContent = read_file("save.txt");
file:close()

function love.load() 
	--set up stuff
	font = love.graphics.newFont('Aller_Rg.ttf')
	love.graphics.setFont(font)
	love.graphics.setBackgroundColor ( 255, 255, 255 )
	
	--set up more stuff (splash, backgrounds)
	splash = love.graphics.newImage('./images/bg/splash.png')
	titlebg = love.graphics.newImage('./images/bg/bg.png')
	bottombg = love.graphics.newImage('./images/bg/bottombg.png')

	--set up some other stuff)
	timer = 0 --this is a timer for the splash screens, 0 is default, set to 500 for title
	autotimer = 0
	ch0ln = 1 --ch line for the game script
	state = "splash1" --the state of the game! default is splash1, set to title for.. you guessed it
	audioUpdate('1') --play titlescreen music
	audio1 = 0
	sload = 0 
	yload = 0
	nload = 0
	mload = 0
end

function love.draw() 

	drawTopScreen()
	--love.graphics.setColor(0,0,0)
	--love.graphics.print(timer, 0, 0, 0, 1, 1)
	
	if timer <= 200 then --splash1 (Team Salvato Splash Screen)
		drawTopScreen()
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(splash, 0, 0, 0, 400, 240)
		
	elseif state == "splash2" then --splash2 (Disclaimer)
		drawTopScreen()
		love.graphics.setColor(0,0,0)
		love.graphics.print("This game is not suitable for children", 90, 100, 0, 1, 1)
		love.graphics.print("  or those who are easily disturbed.", 90, 116, 0, 1, 1)
		
	elseif state == "title" then --title (Title Screen)
		drawTopScreen()
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(titlebg, 0, 0)
		
		drawBottomScreen()
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(bottombg, 0, 0)
		love.graphics.setColor(0,0,0)
		love.graphics.print("START - New Game",16, 16, 0, 1, 1)
		love.graphics.print("SELECT - Load Game",16, 32, 0, 1, 1)
		love.graphics.print("X - Quit",16, 48, 0, 1, 1)
		--love.graphics.print(timer, 0, 0, 0, 1, 1)
		
	elseif state == "game" then --game (Ingame)
		drawGame()
	end
end

function love.update(dt)

	--splash screen timers
	if timer <= 500 then
		timer = timer + 1
	elseif timer == 501 then 
		timer = 501
	elseif timer == 502 then
		timer = 502
	end
	
	--auto next script
	if autotimer == 0 then
		autotimer = 0
	elseif autotimer <= 150 then
		autotimer = autotimer + 1
	elseif autotimer == 151 then
		ch0ln = ch0ln + 1
		audioCheck()
		bgcheck()
		charCheck()
		autotimer = 1
	end
	
	if state == "splash1" or state == "splash2" then
		if timer == 200 then
			state = "splash2"
		elseif timer >= 500 then
			state = "title"
		end
	end
	
	if state == 'game' then
		if love.keyboard.isDown('x') then 
			ch0ln = ch0ln + 1
			audioCheck()
			bgcheck()
			charCheck()
		end
	end
	
	if love.keyboard.isDown('start') then
		if love.keyboard.isDown('a') then
			love.event.quit()
		elseif state == 'splash1' then
			timer = 501
			state = 'title'
		end
	end
end

function love.keypressed(key)
	if key == 'start' then --new game
		if state == "title" then
			sfx1play()
			audioUpdate('2')
			bgcheck()
			charCheck()
			state = "game"		
		elseif state == "splash1" then
			timer = 500
			state = "title"
		end
	
	elseif key == 'select' then --load game
		if state == "title" then
			sfx1play()
			if fileContent == nil then else
			ch0ln = fileContent+1-1
			audio1 = 1
			audioCheck() --check for audio update
			charCheck()
			bgcheck()
			state = "game"
			end
		end	
	elseif key == 'start' and key == 'a' then --quit
		
	elseif key == 'x' then --skip sfx
		sfx1play()
		
	elseif key == 'a' then 
		if state == "game" then
			ch0ln = ch0ln + 1 --next script
			audioCheck() --check for audio update
			bgcheck()
			charCheck()
		end
		
	elseif key == 'y' then --save game
		if state == "game" then
			file = io.open("save.txt", "w")
			file:write(ch0ln)
			file:close()
			sfx1play()
		end
		
	elseif key == 'b' then --auto function
		sfx1play()
		if autotimer == 0 then
			autotimer = 1
		else
			autotimer = 0
		end
	end
end

function love.keyreleased(key)
	if key == 'x' then --skip sfx
		--sfx1play()
		autotimer = 0
	end
end

function love.quit() 
	sfx1play()
	audioUpdate('0')
end