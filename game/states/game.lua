local skipspeed = 4

function drawGame()
	if (autotimer > 0 or autoskip > 0) and event_enabled ~= true then
		scriptCheck()
		charCheck()
	end
	drawTopScreen()
	love.graphics.setColor(255, 255, 255, alpha)
	if bgch then love.graphics.draw(bgch, 0, 0) end
	if xaload >= 1 then
		if cg1 ~= '' then love.graphics.draw(cgch, 0, 0) end
		drawSayori(s_Set.a,s_Set.b)
		drawYuri(y_Set.a,y_Set.b)
		drawNatsuki(n_Set.a,n_Set.b)
		drawMonika(m_Set.a,m_Set.b)
	end
	
	if poem_enabled then drawPoem()	end
	
	if menu_enabled and menu_type ~= 'choice' then
		love.graphics.setColor(255,255,255,128)
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	drawBottomScreen()
	love.graphics.setColor(255,255,255,alpha)
	love.graphics.setFont(font)
	if bgimg_disabled ~= true then love.graphics.draw(background_Image, posX, posY) end
	drawNumbers()
	drawTextBox()
	
	love.graphics.setColor(0,0,0)
	if autotimer > 0 then 
		love.graphics.print('Auto-Forward On', 2, 20)
	elseif autoskip > 0 then
		love.graphics.print('Skipping >>>', 2, 20)
	end
	
	if state ~= 'newgame' and poem_enabled ~= true and event_enabled ~= true then
		love.graphics.setColor(255,189,225,alpha)
		love.graphics.rectangle('fill', 47, 2, 40, 16 ) 
		love.graphics.rectangle('fill', 139, 2, 32, 16 ) 
		love.graphics.rectangle('fill', 237, 2, 32, 16 ) 
		love.graphics.setColor(0,0,0,alpha)
		love.graphics.print('Menu',51,2,0,1,1)
		love.graphics.print('Auto',142,2,0,1,1)
		love.graphics.print('Skip',241,2,0,1,1) 
	end
	--drawdatetime()
	if menu_enabled then menu_draw() end
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
	
	if global_os ~= 'HorizonNX' and state ~= 'newgame' and event_enabled ~= true then
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
	
	if event_enabled then event_update(dt) end
end

function game_keypressed(key)
	if event_enabled then
		event_keypressed(key)
	elseif key == 'y' then --pause menu
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
	if mouseX>=50 and mouseX<=80 and mouseY<=18 then game_keypressed('y')
	elseif mouseX>=142 and mouseX<=172 and mouseY<=18 then game_keypressed('b')
	elseif mouseX>=240 and mouseX<=270 and mouseY<=18 then game_keypressed('x')
	else game_keypressed('a')
	end
end