function event_draw_1()
	--s_kill draw
	if event_type == 's_kill' then
		lg.draw(s_kill_bg)
		lg.draw(s_kill, 75-event_timer, 0)
	elseif event_type == 's_kill2' then
		lg.draw(s_kill_bg2)
		lg.draw(s_kill2, 75, 0)
	elseif event_type == 's_killzoom' then
		lg.draw(s_kill_bgzoom)
		lg.draw(s_killzoom, eventvar2)
		if event_timer >= 10 then
			lg.setColor(255,255,255,64)
			lg.draw(exception)
		elseif event_timer >= 5.75 then
			lg.setColor(255,255,255,128)
			lg.draw(background_Image, posX, posY)
		elseif event_timer >= 3.75 then
			lg.setColor(255,255,255,eventvar3)
			lg.draw(splash_glitch)
		end
	end
	
	if event_type == 's_glitch' then
		if event_timer < 3.5 then
			lg.draw(bgch)
			lg.draw(eventvar2, 80)
		end
	end
end

function event_update_1()
	--s_kill timers
	if event_type == 's_kill_start' and event_timer > 0.75 then event_next()
	elseif event_type == 's_kill' and event_timer > 3.75 then event_next()
	elseif event_type == 's_kill2' and event_timer > 0.26 then event_next()
	elseif event_type == 's_killzoom' then
		eventvar1 = eventvar1 + 1
		if eventvar1 >= 400 then
			eventvar1 = 0
		elseif eventvar1 > 200 then
			eventvar2 = eventvar2 - 0.0225
		else
			eventvar2 = eventvar2 + 0.0225
		end
		
		posX = posX - 0.25*eventvar4
		posY = posY - 0.25*eventvar4
		if posX <= -80 then posX = 0 end
		if posY <= -80 then posY = 0 end
		
		if event_timer >= 20.8 then
			audioUpdate('d')
			textbox_enabled = true
			
		elseif event_timer > 3.74 then
			eventvar3 = math.min(eventvar3+7, 128)
			eventvar4 = eventvar4 + 0.175
		end
	end
	
	if event_type == 's_glitch' then
		if event_timer > 7 then
			persistent.ptr = 2
			sp = {math.random(1, 11),math.random(1, 11),math.random(1, 11)}
			savepersistent()
			chapter = 20
			cl = 1
			changeState('game',1)
			event_end('s_glitch')
		elseif event_timer < 2 then
			eventvar1 = math.random(1, 16)
			if eventvar1 <= 8 then
				eventvar2 = s_glitch2
			else
				eventvar2 = s_glitch1
			end
		end
		posX = -40
		posY = 0
	end
end
