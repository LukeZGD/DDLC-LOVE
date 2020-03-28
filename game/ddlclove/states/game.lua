local skipspeed = 4
local textboxd = true
bgalpha = 255
cgalpha = 255

function drawGame()
	lg.setBackgroundColor(0,0,0)
	
	lg.setColor(255,255,255,alpha)
	lg.draw(bgch)
	lg.draw(cgch)
	lg.setColor(255,255,255,bgalpha)
	lg.draw(bgch2)
	lg.setColor(255,255,255,cgalpha)
	lg.draw(cgch2)
	
	lg.setColor(255,255,255,alpha)
	drawSayori()
	drawYuri()
	drawNatsuki()
	drawMonika()
	
	if poem_enabled then drawPoem()	end
	if textboxd then
		drawTextBox()
	end
	
	lg.setFont(allerfont)
	lg.setColor(255,255,255,alpha)
	if dvertype == 'Test' then lg.print(cl,5,690) end
	if autotimer > 0 then
		lg.draw(gui.skip,0,27)
		lg.setColor(0,0,0)
		outlineText(tr.auto,5,35)
	elseif autoskip > 0 then
		local skiptext
		if sectimer >= 0.75 then
			skiptext = tr.skip[4]
		elseif sectimer >= 0.5 then
			skiptext = tr.skip[3]
		elseif sectimer >= 0.25 then
			skiptext = tr.skip[2]
		else
			skiptext = tr.skip[1]
		end
		lg.draw(gui.skip,0,27)
		lg.setColor(0,0,0)
		outlineText(skiptext,5,35)
	end
	if menu_enabled then menu_draw() end
end

function updateGame()
	scriptCheck()
	
	--timercheck
	if xaload == 0 then
		startTime = getTime
	end
	xaload = xaload + 1
	if unitimer < uniduration then
		unitimer = unitimer + dt
	end
	
	--bgch2 and cgch2 stuff
	loaderGame()
	
	--auto next script
	if autotimer == 0 then
		autotimer = 0
	elseif autotimer <= settings.autospd then
		autotimer = autotimer + dt
	elseif autotimer >= settings.autospd then
		game_keypressed('a')
		autotimer = 0.01
	end
	
	if menu_enabled == false and cl ~= 666 then
		if autoskip > 0 and autoskip < skipspeed then
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
	
	if poem_enabled and poem_scroll and not menu_enabled then
		if g_system == 'Switch' then
			if joystick:isGamepadDown('dpup') then
				poem_scroll.y = poem_scroll.y + 0.3
			elseif joystick:isGamepadDown('dpdown') then
				poem_scroll.y = poem_scroll.y - 0.3
			end
		else
			if love.keyboard.isDown('up') and poem_scroll.y < 1 then
				poem_scroll.y = poem_scroll.y + 0.3
			elseif love.keyboard.isDown('down') then
				poem_scroll.y = poem_scroll.y - 0.3
			end
		end
	end
	
	if event_enabled then event_update() end
end

function game_keypressed(key)
	if event_enabled then
		event_keypressed(key)
	elseif key == 'y' then --pause menu
		menu_mchance = math.random(1,50)
		autotimer = 0
		menu_enable('pause')
	elseif key == 'b' then --auto on/off
		sfx1:play()
		if autotimer == 0 then autotimer = 0.01 else autotimer = 0 end		
	elseif key == 'x' then
		sfx1:play()
		if not event_enabled then
			if autoskip < 1 then autoskip = 1
			elseif autoskip > 0 then autoskip = 0 end
		end
	else
		newgame_keypressed(key)
	end
end

function newgame_keypressed(key)
	if (key == 'a' or key == 'lbutton') and unitimer >= uniduration then 
		textboxd = true
		if print_full_text then
			autotimer = 0
			cl = cl + 1 --next script
			xaload = 0
			unitimer = 0
		else
			print_full_text = true
		end
		collectgarbage()
		collectgarbage()
	elseif key == 'r' or key == 'rbutton' or key == 'plus' then
		textboxd = not textboxd
	elseif key == 'minus' or key == '-' or key == 'select' then
		if settings.o ~= 1 then settings.o = 1
		else settings.o = 0 end
	end
end