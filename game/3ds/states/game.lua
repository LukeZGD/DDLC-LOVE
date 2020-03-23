local skipspeed = 4
local audiotell = 0
local bgalpha = 255

function timerCheck()
	if xaload == 0 then
		myTextStartTime = love.timer.getTime()
	end
	xaload = xaload + 1
end

function drawGame()
	if autotimer > 0 or autoskip > 0 then
		scriptCheck()
		timerCheck()
	end
	lg.setBackgroundColor(0,0,0)
	
	drawTopScreen()
	lg.setColor(255,255,255,alpha)
	lg.draw(bgch)
	if bgch2 and menu_enabled ~= true then
		lg.setColor(255,255,255,bgalpha)
		lg.draw(bgch2)
	end
	
	lg.setColor(255,255,255,alpha)
	if cg1 ~= '' then lg.draw(cgch) end
	if xaload > 0 then
		drawSayori()
		drawYuri()
		drawNatsuki()
		drawMonika()
	end
	
	if poem_enabled then drawPoem()	end
	
	if menu_enabled and menu_type ~= 'choice' then
		lg.setColor(255,255,255,menu_alpha/2)
		lg.rectangle('fill',0,0,400,240)
	end
	
	drawBottomScreen()
	lg.setColor(255,255,255,alpha)
	if bgimg_disabled ~= true then lg.draw(background_Image, posX, posY) end
	lg.setFont(font)
	if textbox_enabled then
		drawNumbers()
		drawTextBox()
	end
	
	lg.setColor(0,0,0)
	lg.setFont(font)
	if autotimer > 0 then
		lg.print('Auto-Forward On', 2, 20)
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
		lg.print(skiptext, 2, 20)
	end
	
	if state ~= 'newgame' and poem_enabled ~= true and event_enabled ~= true then
		lg.setColor(255,189,225,alpha)
		lg.rectangle('fill',47,2,40,16) 
		lg.rectangle('fill',139,2,32,16) 
		lg.rectangle('fill',237,2,32,16) 
		lg.setColor(0,0,0,alpha)
		lg.print('Menu',51,2,0,1,1)
		lg.print('Auto',142,2,0,1,1)
		lg.print('Skip',241,2,0,1,1) 
	end
	if menu_enabled then menu_draw() end
end

function updateGame()	
	if autotimer == 0 and autoskip == 0 then
		scriptCheck()
		timerCheck()
	end
	
	if bgch2 then
		bgalpha = math.max(bgalpha - dt*1000, 0)
		if bgalpha == 0 then
			bgch2 = nil
			bgalpha = 255
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
		if love.keyboard.isDown('up') and poem_scroll.y < 1 then
			poem_scroll.y = poem_scroll.y + dt*10
		elseif love.keyboard.isDown('down') then
			poem_scroll.y = poem_scroll.y - dt*10
		end
	end
	
	if event_enabled then event_update() end
	
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
		if not event_enabled then
			if autoskip < 1 then autoskip = 1
			elseif autoskip > 0 then autoskip = 0 end
		end
	else
		newgame_keypressed(key)
	end
end

function newgame_keypressed(key)
	if (key == 'a' or key == 'lbutton') then
		if print_full_text then
			autotimer = 0
			cl = cl + 1 --next script
			xaload = 0
			print_full_text = false
		else
			print_full_text = true
		end
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
