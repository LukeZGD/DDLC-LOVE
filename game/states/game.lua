local c_y
local skipspeed = 4

function drawGame()
	if (autotimer > 0 or autoskip > 0) and event_enabled ~= true then
		scriptCheck()
		charCheck()
	end
	drawTopScreen()
	love.graphics.setColor(255, 255, 255, alpha)
	if bgch then love.graphics.draw(bgch, 0, 0) end
	if xaload >= 1 and menu_enabled == false or menu_type == 'choice' then
		if cg1 ~= '' then love.graphics.draw(cgch, 0, 0) end
		drawSayori(s.a,s.b)
		drawYuri(y.a,y.b) 
		drawNatsuki(n.a,n.b)  
		drawMonika(m.a,m.b)
	end
	
	if menu_enabled ~= true and poem_enabled ~= true and settings.textloc == 'Top' then
		if ct ~= '' then love.graphics.draw(namebox, 52, 142) end
		love.graphics.draw(textbox, 40, 162)
		love.graphics.setColor(0,0,0)
		if ct then love.graphics.print(ct,63,142) end
		if global_os == 'Horizon' then
			if ca then love.graphics.print(ca,48,166) end
			if cb then love.graphics.print(cb,48,182) end
			if cc then love.graphics.print(cc,48,198) end
			if cd then love.graphics.print(cd,48,214) end
		else
			if textx then love.graphics.printf(textx,48,166,300) end
		end
		c_y = 2
	end
	
	if menu_enabled and menu_type ~= 'choice' then
		love.graphics.draw(background_Image, posX, posY)
	elseif poem_enabled then drawPoem()
	end
	
	drawBottomScreen()
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.setFont(font)
	love.graphics.draw(background_Image, posX, posY)
	drawnumbers()
	
	love.graphics.setColor(0,0,0)
	if autotimer > 0 then 
		love.graphics.print('Auto On', 2, 16)
	elseif autoskip > 0 then
		love.graphics.print('Skipping...', 2, 16)
	end
	
	if poem_enabled ~= true and settings.textloc == 'Bottom' then
		love.graphics.setColor(255,255,255,alpha)
		if ct ~= '' then love.graphics.draw(namebox, 12, 40) end
		love.graphics.draw(textbox, 0, 60)
		love.graphics.setColor(0,0,0)
		if ct then love.graphics.print(ct,23,40) end
		if global_os == 'Horizon' then
			if ca then love.graphics.print(ca,8,64) end
			if cb then love.graphics.print(cb,8,80) end
			if cc then love.graphics.print(cc,8,96) end
			if cd then love.graphics.print(cd,8,112) end
		else
			if textx then love.graphics.printf(textx,8,64,300) end
		end
		c_y = 220
	end
	
	if state ~= 'newgame' or poem_enabled == false and c_y then
		love.graphics.setColor(255,189,225,alpha)
		love.graphics.rectangle('fill', 47, c_y, 40, 16 ) 
		love.graphics.rectangle('fill', 139, c_y, 32, 16 ) 
		love.graphics.rectangle('fill', 237, c_y, 32, 16 ) 
		love.graphics.setColor(0,0,0,alpha)
		love.graphics.print('Pause',50,c_y,0,1,1)
		love.graphics.print('Auto',142,c_y,0,1,1)
		love.graphics.print('Skip',240,c_y,0,1,1) 
	end
	if menu_enabled then menu_draw() end
end

function drawPoem()
	if poembg then
		love.graphics.draw(poembg, 40, 0)
	else
		love.graphics.setColor(243,243,243)
		love.graphics.rectangle('fill',40,0,320,240)
	end
	love.graphics.setColor(0,0,0)
	love.graphics.print(poemtext, 45, 6)
end

function updateGame(dt)
	if autotimer == 0 and autoskip == 0 then
		scriptCheck()
		charCheck()
	end
	
	--auto next script
	if autotimer == 0 then
		autotimer = 0
	elseif autotimer <= settings.autospd then
		autotimer = autotimer + dt
	elseif autotimer >= settings.autospd then
		game_keypressed('a')
		autotimer = 0.1
	end
	
	if global_os ~= 'HorizonNX' then
		if love.keyboard.isDown('x') then
			game_skip()
		elseif mouseDown and mouseX>=240 and mouseX<=270 then
			if mouseY<=16 or mouseY>=220 then
				game_skip()
			end
		elseif mouseDown == false and autoskip > 0 then
			game_keyreleased('x')
		end
	end
end

function game_keypressed(key)
	if key == 'y' then --pause menu
		sfx1:play()
		autotimer = 0
		menu_enable('pause')
	elseif key == 'b' then --auto on/off
		sfx1:play()
		if autotimer == 0 then autotimer = 0.1 else autotimer = 0 end		
	elseif key == 'x' then
		sfx1:play()
	else
		newgame_keypressed(key)
	end
end

function newgame_keypressed(key)
	if key == 'a' and xaload >= 14 then 
		autotimer = 0
		cl = cl + 1 --next script
		xaload = 0
		collectgarbage()
		collectgarbage()
	end
end

function game_keyreleased(key)
	if key == 'x' then --skip disable
		if tspd ~= nil then settings.textspd = tspd end
		tspd = nil
		autoskip = 0
	end
end

function game_skip()
	if menu_enabled == false and cl ~= 666 then
		if tspd == nil then tspd = settings.textspd end
		settings.textspd = 10000
		if autoskip < 1 then
			autoskip = 1
		elseif autoskip > 0 and autoskip < skipspeed then
			autoskip = autoskip + 1
		elseif autoskip >= skipspeed then
			autotimer = 0
			cl = cl + 1
			xaload = 0
			collectgarbage()
			collectgarbage()
			autoskip = 1
		end
	end
end

function game_mousepressed()
	if mouseX>=50 and mouseX<=80 then
		if mouseY<=18 or mouseY>=220 then game_keypressed('y') end
	elseif mouseX>=142 and mouseX<=172 then 
		if mouseY<=18 or mouseY>=220 then game_keypressed('b') end
	elseif mouseX>=240 and mouseX<=270 then
		if mouseY<=18 or mouseY>=220 then game_keypressed('x') end
	else
		game_keypressed('a')
	end
end

function drawnumbers()
	if global_os == 'HorizonNX' then
		local cl_a = tostring(cl)
		local cl_len = string.len(cl_a)
		drawnum_x = 0
		for i = 1, cl_len do
			num = i
			loadstring("fnum = string.sub("..cl_a..","..i..","..i..")")()
			loadstring("love.graphics.draw(number_"..fnum..","..drawnum_x..")")()
			drawnum_x = drawnum_x + 11
		end
	else
		love.graphics.setColor(0,0,0)
		love.graphics.print(cl)
	end
end