local skipspeed = 4
local bgalpha = 255
local cgalpha = 255
local textboxd = true

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
	lg.print(cl,5,690)
	if autotimer > 0 then
		lg.draw(gui.skip,0,27)
		lg.setColor(0,0,0)
		outlineText('Auto-Forward On',5,35)
	elseif autoskip > 0 then
		local skiptext
		if sectimer >= 0.75 then
			skiptext = 'Skipping >>>'
		elseif sectimer >= 0.5 then
			skiptext = 'Skipping >>'
		elseif sectimer >= 0.25 then
			skiptext = 'Skipping >'
		else
			skiptext = 'Skipping'
		end
		lg.draw(gui.skip,0,27)
		lg.setColor(0,0,0)
		outlineText(skiptext,5,35)
	end
	if menu_enabled then menu_draw() end
end

function updateGame(dt)
	scriptCheck()
	timerCheck()
	
	if bgch2 then
		bgalpha = math.max(bgalpha - 15, 0)
		if bgalpha == 0 then
			bgalpha = 255
			bgch2 = nil
		end
	end
	
	if cgch2 then
		cgalpha = math.max(cgalpha - 15, 0)
		if cgalpha == 0 then
			cgalpha = 255
			cgch2 = nil
		end
	end
	
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
	
	if event_enabled then event_update(dt) end
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
		autotimer = 0
		cl = cl + 1 --next script
		xaload = 0
		unitimer = 0
		collectgarbage()
		collectgarbage()
	elseif key == 'r' or key == 'rbutton' or key == 'plus' then
		textboxd = not textboxd
	end
end