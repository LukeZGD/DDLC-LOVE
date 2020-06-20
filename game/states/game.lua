local skipspeed = 4
local textboxd = true
bgalpha = 255
cgalpha = 255

function drawGame()
	lg.setBackgroundColor(0,0,0)
	
	lgsetColor(255,255,255,alpha)
	lg.draw(bgch)
	lg.draw(cgch)
	lgsetColor(255,255,255,bgalpha)
	lg.draw(bgch2)
	lgsetColor(255,255,255,cgalpha)
	lg.draw(cgch2)
	
	lgsetColor(255,255,255,alpha)
	drawSayori()
	drawYuri()
	drawNatsuki()
	drawMonika()
	
	if poem_enabled then drawPoem()	end
	if textboxd then
		drawTextBox()
	end
	
	lg.setFont(allerfont)
	lgsetColor(255,255,255,alpha)
	if dvertype == 'Test' then lg.print(cl,5,690) end
	if autotimer > 0 then
		lg.draw(gui.skip,0,27)
		lgsetColor(0,0,0)
		outlineText(tr.auto,5,35)
	elseif autoskip > 0 then
		local skiptext
		if sectimer >= 0.75 then
			skiptext = tr.skip..' >>>'
		elseif sectimer >= 0.5 then
			skiptext = tr.skip..' >>'
		elseif sectimer >= 0.25 then
			skiptext = tr.skip..' >'
		else
			skiptext = tr.skip
		end
		lg.draw(gui.skip,0,27)
		lgsetColor(0,0,0)
		outlineText(skiptext,5,35)
	end
	if menu_enabled then menu_draw() end
end

function updateGame()
	scriptCheck()
	--timercheck
	if xaload == 0 then
		startTime = getTime
		print('cl: '..cl)
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
	elseif autotimer > 0 then
		autotimer = autotimer + dt
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
		if global_os ~= 'LOVE-WrapLua' then sfx1:play() end
		if autotimer == 0 then autotimer = 0.01 else autotimer = 0 end		
	elseif key == 'x' then
		if global_os ~= 'LOVE-WrapLua' then sfx1:play() end
		if not event_enabled then
			if autoskip < 1 then autoskip = 1
			elseif autoskip > 0 then autoskip = 0 end
		end
	else
		newgame_keypressed(key)
	end
end

function newgame_keypressed(key)
	if (key == 'a' or key == 'leftshoulder') and unitimer >= uniduration then 
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
	elseif key == '=' or key == 'start' then
		textboxd = not textboxd
	elseif key == '-' or key == 'back' then
		if settings.o ~= 1 then settings.o = 1
		else settings.o = 0 end
	end
end
