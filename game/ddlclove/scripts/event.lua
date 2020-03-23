event_timer = 0
eventvar1 = 0
eventvar2 = 0
eventvar3 = 0
eventvar4 = 0
eventvar5 = 0
sectimer = 0
local currentframe

function event_start(etype, arg1)
	autotimer = 0
	autoskip = 0
	event_enabled = true
	event_type = etype
	if event_type == 's_kill_start' then
		textbox_enabled = true
	elseif string.sub(event_type,1,6) == 's_kill' then
		textbox_enabled = false
		if event_type == 's_kill' then
			audioUpdate('d')
			eventvar1 = 0
			eventvar2 = 0
		end
	elseif event_type == 'wipe' then
		eventvar1 = 0
		hideAll()
		textbox_enabled = false
		if arg1 then
			eventvar2 = arg1
		else
			eventvar2 = nil
		end
	elseif event_type == 'black' then
		textbox_enabled = true
	elseif event_type == 'endscreen' then
		hideAll()
		textbox_enabled = false
		audioUpdate('0')
	elseif event_type == 's_glitch' or event_type == 'm_glitch1' or event_type == 'n_glitch1' then
		textbox_enabled = false
	elseif event_type == 'ny_argument' then
		eventvar1 = 0
		eventvar2 = 0
		eventvar3 = {2.0,3.6,5.2,6.8,8.3,9.90,11.5,13.1,14.7,16.3,17.90,19.45,21.1,22.7,24.2,25.8}
		eventvar4 = {2.5,4.1,5.7,7.3,8.8,10.3,12.0,13.5,15.1,16.7,18.25,19.85,21.5,23.0,24.6,26.2}
		eventvar5 = 1
		textbox_enabled = true
	elseif event_type == 'yuri_eyes' then
		textbox_enabled = false
		eventvar1 = 2
		eventvar2 = -13
		eventvar3 = 0
	elseif event_type == 'faint_effect' then
		eventvar1 = 192
		textbox_enabled = true
	elseif event_type == 'yuri_glitch_head' then
		eventvar1 = arg1
		textbox_enabled = true
	elseif event_type == 'show_darkred' then
		eventvar2 = 1
		textbox_enabled = true
	elseif event_type == 'yuri_ch23_2' or event_type == 'natsuki_ch22' then
		eventvar1 = 0
		eventvar2 = 0
		eventvar3 = 0
		textbox_enabled = true
	elseif event_type == 'yuri_ch23' or event_type == 'm_ch23ex' or event_type == 'just_monika' then
		textbox_enabled = false
		if event_type == 'just_monika' then 
			alpha = 0
			if arg1 == 'ch30' then eventvar1 = 'ch30' end
		end
	elseif event_type == 'yuri_kill' then
		eventvar1 = stab1
		eventvar2 = 4
		eventvar3 = 0.025
		textbox_enabled = false
	elseif event_type == 'monika_end' then
		eventvar1 = 200
		eventvar2 = math.random(1,8)*50
		eventvar3 = math.random(1,8)*50
		eventvar5 = 0
		textbox_enabled = false
		if arg1 == 2 then
			event_timer = 0.69
			eventvar4 = 'end2'
		end
	elseif event_type == 'beforecredits' or event_type == 'sayori_gs' then
		if event_type == 'beforecredits' then
			audioUpdate('end-voice')
		end
		eventvar1 = 0
		eventvar2 = nil
		eventvar3 = 0
		textbox_enabled = false
	else
		textbox_enabled = true
	end
	if arg1 == 'show_noise' then
		eventvar4 = 'show_noise'
	elseif arg1 == 'show_vignette' then
		eventvar4 = 'show_vignette'
	elseif arg1 == 'show_darkred' then
		eventvar4 = 'show_darkred'
	elseif arg1 == '' then
		eventvar4 = ''
	end
end

function event_draw()
	lg.setColor(255,255,255)
	
	if persistent.ptr <= 1 then
		if event_draw_1 then event_draw_1() end
	elseif persistent.ptr == 2 then
		if event_draw_2 then event_draw_2() end
	else
		if event_draw_3 then event_draw_3() end
	end
	
	if event_type == 'wipe' then
		lg.draw(bgch)
		lg.setColor(0,0,0,eventvar1)
		lg.rectangle('fill',0,0,1280,725)
	end
	
	if event_type == 'endscreen' then
		lg.setColor(255,255,255,eventvar1)
		lg.draw(bgch)
	end
	
	if event_type == 'show_dark' then
		if bg1 ~= 'cg/monika_bg_glitch' then lg.draw(bgch) end
		drawYuri()
		if chapter == 40 then
			lg.setColor(0,0,0,128)
		else
			lg.setColor(0,0,0,192)
		end
		lg.rectangle('fill',0,0,1280,725)
		lg.setColor(255,255,255,255)
		if bg1 == 'cg/monika_bg_glitch' then lg.draw(bgch) end
		if cl < 271 then drawSayori() end
		if menu_enabled then
			lg.setColor(255,255,255,128)
			lg.rectangle('fill',0,0,1280,725)
		end
	end
	
	if event_type == 'just_monika' then
		lg.setBackgroundColor(255,255,255)
		if event_timer < 3.75 then
			lg.setColor(255,255,255,alpha)
			lg.draw(splash)
		else
			lg.setColor(0,0,0,alpha)
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
	end
	
	lg.setColor(255,255,255,255)
	lg.setFont(allerfont)
	if textbox_enabled then
		if dvertype == 'Test' then lg.print(cl,5,690) end
		drawTextBox()	
	end
	
	if event_type == 'm_onlayer_front' or event_type == 'ny_argument2' then
		lg.setColor(255,255,255)
		drawMonika()
		textbox_enabled = true
	elseif event_type == 'yuri_ch23_2' then
		lg.setColor(255,255,255,eventvar2)
		drawMonika()
	elseif event_type == 'show_dark' and cl >= 271 and chapter == 40 then
		lg.setColor(255,255,255,255)
		drawSayori()
	end
	
	if menu_enabled then menu_draw() end
end

function drawanimframe(x,y)
	if x == nil then x = 0 end
	if y == nil then y = 0 end
	if animframe[currentframe] then
		lg.draw(animframe[currentframe],x,y)
	end
	if sectimer > 0.75 and animframe[4] then
		currentframe = 4
	elseif sectimer > 0.5 and animframe[3] then
		currentframe = 3
	elseif sectimer > 0.25 and animframe[2] then
		currentframe = 2
	elseif animframe[1] then
		currentframe = 1
	end
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
			xaload = 0
			bgUpdate(eventvar2)
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

function event_next()
	newgame_keypressed('a')
	event_timer = 0
end

function event_keypressed(key)
	if ((textbox_enabled and event_type ~= 'show_vignette') or (event_type == 'yuri_eyes' and cl < 700)) and (key == 'a' or key == 'lbutton') then
		newgame_keypressed('a')
	elseif key == 'y' and event_type == 'ch23-30' then
		menu_mchance = 50
		menu_enable('pause')
	end
end