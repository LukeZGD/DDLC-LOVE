local textinput = ""
local keycursorX = 1
local keycursorY = 1
local caps = false
local keyboardrow1 = {'1','2','3','4','5','6','7','8','9','0'}
local keyboardrow2c = {'Q','W','E','R','T','Y','U','I','O','P'}
local keyboardrow3c = {'A','S','D','F','G','H','J','K','L','X  Space'}
local keyboardrow4c = {'Z','X','C','V','B','N','M','','','X  Enter'}
local keyboardrow2 = {'q','w','e','r','t','y','u','i','o','p'}
local keyboardrow3 = {'a','s','d','f','g','h','j','k','l','X  Space'}
local keyboardrow4 = {'z','x','c','v','b','n','m','','','X  Enter'}

function ingamekeys_draw()
	lg.setColor(255,255,255,menu_alpha/2)
	lg.rectangle('fill',0,0,1280,725)
	lg.setColor(255,189,225,menu_alpha)
	lg.rectangle('fill',270,180,630,360)
	lg.setColor(255,230,244,menu_alpha)
	lg.rectangle('fill',280,190,610,340)
	lg.setColor(0,0,0,255)
	lg.print("Player Name:\n"..textinput,290,220)
	for i = 1, #keyboardrow1 do
		lg.print(keyboardrow1[i],(50*i)+290,300)
	end
	if caps then
		for i = 1, #keyboardrow2c do
			lg.print(keyboardrow2c[i],(50*i)+290,350)
		end
		for i = 1, #keyboardrow3c do
			lg.print(keyboardrow3c[i],(50*i)+290,400)
		end
		for i = 1, #keyboardrow4c do
			lg.print(keyboardrow4c[i],(50*i)+290,450)
		end
	else
		for i = 1, #keyboardrow2 do
			lg.print(keyboardrow2[i],(50*i)+290,350)
		end
		for i = 1, #keyboardrow3 do
			lg.print(keyboardrow3[i],(50*i)+290,400)
		end
		for i = 1, #keyboardrow4 do
			lg.print(keyboardrow4[i],(50*i)+290,450)
		end
	end
	lg.draw(gui.keysbox,(keycursorX*50)+282,(keycursorY*50)+250)
	lg.print("Triangle - Toggle Caps Lock",290,500)
end

function ingamekeys_keypressed(key)
	if key == 'left' and keycursorX > 1 then
		keycursorX = keycursorX - 1
	elseif key == 'right' and keycursorX < 10 then
		keycursorX = keycursorX + 1
	elseif key == 'up' and keycursorY > 0 then
		keycursorY = keycursorY - 1
	elseif key == 'down' and keycursorY < 4 then
		keycursorY = keycursorY + 1
	elseif key == 'a' then
		if keycursorY == 3 and keycursorX == 10 then
			textinput = textinput..' '
		elseif keycursorY == 4 and keycursorX == 10 then
			ingamekeys = false
			ingamekeyset = true
			love.textinput(textinput)
		elseif keycursorY == 1 then
			textinput = textinput..keyboardrow1[keycursorX]
		elseif keycursorY == 2 and caps then
			textinput = textinput..keyboardrow2c[keycursorX]
		elseif keycursorY == 2 then
			textinput = textinput..keyboardrow2[keycursorX]
		elseif keycursorY == 3 and caps then
			textinput = textinput..keyboardrow3c[keycursorX]
		elseif keycursorY == 3 then
			textinput = textinput..keyboardrow3[keycursorX]
		elseif keycursorY == 4 and caps then
			textinput = textinput..keyboardrow4c[keycursorX]
		elseif keycursorY == 4 then
			textinput = textinput..keyboardrow4[keycursorX]
		end
	elseif key == 'b' then
		textinput = string.sub(textinput,1,string.len(textinput)-1)
	elseif key == 'y' then
		caps = not caps
	end
end