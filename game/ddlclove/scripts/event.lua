function event_draw()
	lgsetColor(255,255,255)
	
	if persistent.ptr <= 1 then
		if event_draw_1 then event_draw_1() end
	elseif persistent.ptr == 2 then
		if event_draw_2 then event_draw_2() end
	else
		if event_draw_3 then event_draw_3() end
	end
	
	if event_type == 'wipe' then
		lgsetColor(255,255,255,alpha)
		lg.draw(bgch)
		lgsetColor(0,0,0,eventvar1)
		lg.rectangle('fill',0,0,1280,725)
	end
	
	if event_type == 'endscreen' then
		lgsetColor(255,255,255,eventvar1)
		lg.draw(bgch)
	end
	
	if event_type == 'show_dark' then
		if bg1 ~= 'cg/monika_bg_glitch' then lg.draw(bgch) end
		drawYuri()
		if chapter == 40 then
			lgsetColor(0,0,0,128)
		else
			lgsetColor(0,0,0,192)
		end
		lg.rectangle('fill',0,0,1280,725)
		lgsetColor(255,255,255,255)
		if bg1 == 'cg/monika_bg_glitch' then lg.draw(bgch) end
		if cl < 271 then drawSayori() end
		if not menu_enabled and cl >= 286 and cl <= 290 then
			lgsetColor(255,255,255,128)
			lg.rectangle('fill',0,0,1280,725)
		end
	end
	
	if event_type == 'just_monika' then
		lg.setBackgroundColor(255,255,255)
		if event_timer < 3.75 then
			lgsetColor(255,255,255,alpha)
			lg.draw(splash)
			lgsetColor(0,0,0,alpha)
			lg.print('DDLC-LOVE '..dversion..' '..dvertype,15,675)
		else
			lgsetColor(0,0,0,alpha)
			lg.print('Just Monika.', 544, 300)
		end
	end
	
	if event_type == 'ch23-30' then
		lg.draw(bgch)
		lg.draw(cgch)
		drawSayori()
		drawYuri()
		drawNatsuki()
		drawMonika()
		drawConsole()
		if poem_enabled then drawPoem()	end
		if autotimer > 0 then
			lg.draw(gui.skip,0,27)
			lgsetColor(0,0,0)
			outlineText(tr.auto,5,35)
		end
	end
	
	lgsetColor(255,255,255,255)
	lg.setFont(allerfont)
	if textbox_enabled then
		if dvertype == 'Test' then lg.print(cl,5,690) end
		drawTextBox()	
	end
	
	if event_type == 'm_onlayer_front' or event_type == 'ny_argument2' then
		lgsetColor(255,255,255)
		drawMonika()
		textbox_enabled = true
	elseif event_type == 'yuri_ch23_2' then
		lgsetColor(255,255,255,eventvar2)
		drawMonika()
	elseif event_type == 'show_dark' and cl >= 271 and chapter == 40 then
		lgsetColor(255,255,255,255)
		drawSayori()
	end
	
	if menu_enabled then menu_draw() end
end

function event_update()
	event_timer = event_timer + dt
	
	if persistent.ptr <= 1 then
		if event_update_1 then event_update_1() end
	elseif persistent.ptr == 2 then
		if event_update_2 then event_update_2() end
	else
		if event_update_3 then event_update_3() end
	end
	
	--wipe timers
	if event_type == 'wipe' and event_timer > 1.5 then event_end('next')
	elseif event_type == 'wipe' and event_timer >= 1 then
		eventvar1 = math.max(eventvar1 - 15, 0)
	elseif event_type == 'wipe' and event_timer > 0.5 then
		if eventvar2 and bg1 ~= eventvar2 then
			bgUpdate(eventvar2,true)
		end
	elseif event_type == 'wipe' and event_timer < 0.5 then
		eventvar1 = math.min(eventvar1 + 15, 255)
	end
	
	--end screen
	if event_type == 'endscreen' and event_timer > 3 then event_end('next')
	elseif event_type == 'endscreen' and event_timer >= 2.5 then
		eventvar1 = math.max(eventvar1 - 7, 0)
	elseif event_type == 'endscreen' and event_timer <= 0.5 then
		eventvar1 = math.min(eventvar1 + 7, 255)
	end
	
	if event_type == 'just_monika' then
		if event_timer <= 3 then
			alpha = math.min(alpha+7.75,255)
		elseif event_timer > 3 and event_timer < 3.75 then
			alpha = math.max(alpha-7.75,0)
		elseif event_timer <= 6 then
			if eventvar1 == 'ch30' then event_timer = 7 end
			alpha = math.min(alpha+7.75,255)
		elseif event_timer > 6 then
			alpha = 255
			event_end('next')
		end
	end
	
	if event_type == 'ch23-30' then
		if persistent.chr.m == 0 and cl < 1001 then
			scriptJump(1050)
		end
	end
end
