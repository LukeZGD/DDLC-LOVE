local skipspeed = 4
local audiotell = 0
local bgalpha = 255
local cgalpha = 255

function drawGame()
	if autotimer > 0 or autoskip > 0 then
		scriptCheck()
		timerCheck()
	end
	lg.setBackgroundColor(0,0,0)
	
	lg.setColor(255,255,255,alpha)
	lg.draw(bgch)
	lg.draw(cgch)
	lg.setColor(255,255,255,bgalpha)
	lg.draw(bgch2)
	lg.setColor(255,255,255,cgalpha)
	lg.draw(cgch2)
	
	lg.setColor(255,255,255,alpha)
	if xaload > 0 then
		drawSayori()
		drawYuri()
		drawNatsuki()
		drawMonika()
	end
	
	if poem_enabled then drawPoem()	end
	
	drawTextBox()
	lg.setFont(font)
	lg.print(cl,5,5)
	
	lg.setColor(255,255,255,alpha)
	if autotimer > 0 then
		lg.draw(gui_skip,0,27)
		lg.setColor(0,0,0)
		lg.print('Auto-Forward On', 5, 35)
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
		lg.draw(gui_skip,0,27)
		lg.setColor(0,0,0)
		lg.print(skiptext, 5, 35)
	end
	if menu_enabled then menu_draw() end
end

function updateGame(dt)
	if autotimer == 0 and autoskip == 0 then
		scriptCheck()
		timerCheck()
	end
	
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
	
	--skipping
	if global_os ~= 'HorizonNX' and g_system ~= 'Switch' then
		if love.keyboard.isDown('x') then
			if autoskip < 1 then autoskip = 1 end
		elseif autoskip > 0 then
			autoskip = 0
		end
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
	
	--custom audio looping
	if audio1 == '7' and persistent.ptr == 2 then
		audiotell = audiotell + dt
		if audiotell > 4.1 then audioUpdate('7a') end
	elseif audio1 == '7g' then
		audiotell = audiotell + dt
		if audiotell > 31.75 then audioUpdate('7g2') end
	elseif audio1 == '3g' then
		audiotell = audiotell + dt
		if audiotell > 25.5 and audio1 ~= '3g2' then audioUpdate('3g2') end
	else
		audiotell = 0
	end
end

function game_keypressed(key)
	if event_enabled then
		event_keypressed(key)
	elseif key == 'y' then --pause menu
		autotimer = 0
		if persistent.chr.m == 2 then menu_enable('pause2')
		else menu_enable('pause')
		end
	elseif key == 'b' then --auto on/off
		sfx1:play()
		if autotimer == 0 then autotimer = 0.01 else autotimer = 0 end		
	elseif key == 'x' then
		sfx1:play()
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

function game_mousepressed()
	if mouseX>=50 and mouseX<=80 and mouseY<=18 then game_keypressed('y')
	elseif mouseX>=142 and mouseX<=172 and mouseY<=18 then game_keypressed('b')
	elseif mouseX>=240 and mouseX<=270 and mouseY<=18 then game_keypressed('x')
	else game_keypressed('a')
	end
end