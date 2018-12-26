local skipspeed = 4
local bgalpha = 255
local cgalpha = 255

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
	
	drawTextBox()
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
	outlineText(s_Set.x..'\n'..changeX.z.s,0,0)
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
	
	if event_enabled then event_update(dt) end
end

function game_keypressed(key)
	if event_enabled then
		event_keypressed(key)
	elseif poem_enabled and poem_scroll then
		if key == 'up' and poem_scroll.y < 1 then
			poem_scroll.y = poem_scroll.y + 3
		elseif key == 'down' then
			poem_scroll.y = poem_scroll.y - 3
		end
		newgame_keypressed(key)
	elseif key == 'y' then --pause menu
		menu_mchance = math.random(1,50)
		autotimer = 0
		if persistent.chr.m == 2 then menu_enable('pause2')
		else menu_enable('pause')
		end
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
		autotimer = 0
		cl = cl + 1 --next script
		xaload = 0
		unitimer = 0
		collectgarbage()
		collectgarbage()
	end
end