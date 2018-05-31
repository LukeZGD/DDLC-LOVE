function drawGame()
	scriptCheck()
	charCheck()

	drawTopScreen()
	love.graphics.setColor(255, 255, 255, alpha)
	love.graphics.draw(bgch, 0, 0)
	if xaload >= 1 and menu_enabled == false or menu_type == 'choice' then
		
		if cg1 ~= "" then love.graphics.draw(cgch, 0, 0) end
		drawSayori(s.a,s.b)
		drawYuri(y.a,y.b) 
		drawNatsuki(n.a,n.b)  
		drawMonika(m.a,m.b)
	end
	
	if menu_enabled ~= true and poem_enabled ~= true and settings.textloc == 'Top' then
		if ct ~= '' then love.graphics.draw(namebox, 52, 142) end
		love.graphics.draw(textbox, 40, 162)
		love.graphics.setColor(0,0,0)
		love.graphics.print(ct,60,142) --t name
		love.graphics.print(ca,48,166) --line 1
		love.graphics.print(cb,48,182) --line 2
		love.graphics.print(cc,48,198) --line 3
		love.graphics.print(cd,48,214) --line 4
		c_x = 0
	end
	
	if menu_enabled and menu_type ~= 'choice' then
		love.graphics.draw(background_Image, posX, posY)
	elseif poem_enabled then drawPoem()
	end
	
	drawBottomScreen()
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.setFont(font)
	love.graphics.draw(background_Image, posX, posY)
	
	love.graphics.setColor(0,0,0)
	love.graphics.print(cl,0,0,0) --script number
	if autotimer > 0 then love.graphics.print('Auto/Skip - On', 0, 16) end
		
	if poem_enabled ~= true and settings.textloc == 'Bottom' then
		love.graphics.setColor(255,255,255,alpha)
		if ct ~= '' then love.graphics.draw(namebox, 12, 40) end
		love.graphics.draw(textbox, 0, 60)
		love.graphics.setColor(0,0,0)
		love.graphics.print(ct,20,40) --t name
		love.graphics.print(ca,8,64) --line 1
		love.graphics.print(cb,8,80) --line 2
		love.graphics.print(cc,8,96) --line 3
		love.graphics.print(cd,8,112) --line 4
		c_x = 220
	end
	
	if state ~= 'newgame' or poem_enabled == false then
		love.graphics.print("Y - Pause",40,c_x,0,1,1)
		love.graphics.print("B - Auto",135,c_x,0,1,1)
		love.graphics.print("X - Skip",225,c_x,0,1,1)
		--love.graphics.print(xaload,0,220) 
	end
	if menu_enabled then menu_draw() end
end

function drawPoem()
	love.graphics.setColor(243,243,243)
	love.graphics.rectangle("fill",40,0,320,240)
	love.graphics.setColor(0,0,0)
	love.graphics.print(poemtext, 45, 15)
end

function updateGame(dt)
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
	
	if love.keyboard.isDown('x') then --skip enable
		if state ~= 'newgame' and menu_enabled == false and cl ~= 666 then
			if tspd == nil then tspd = settings.textspd end
			settings.textspd = 10000
			if autotimer < 147 then autotimer = 147 end
		end
	end
end

function game_keypressed(key)
	if key == 'y' then --pause menu
		sfx1:play()
		autotimer = 0
		menu_enable('pause',7)
		
	elseif key == 'b' then --auto on/off
		sfx1:play()
		if autotimer == 0 then autotimer = 1 else autotimer = 0 end
		
	elseif key == 'x' then
		sfx1:play()
	end
	newgame_keypressed(key)
end

function newgame_keypressed(key)
	if key == 'a' and xaload >= 14 then 
		autotimer = 0
		cl = cl + 1 --next script
		xaload = 0
	end
end