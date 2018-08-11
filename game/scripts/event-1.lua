function event_draw_1()
	--s_kill draw
	if event_type == 's_kill' then
		love.graphics.draw(s_kill_bg)
		love.graphics.draw(s_kill, 75-event_timer, 0)
	elseif event_type == 's_kill2' then
		love.graphics.draw(s_kill_bg2)
		love.graphics.draw(s_kill2, 75, 0)
	elseif event_type == 's_killzoom' then
		love.graphics.draw(s_kill_bgzoom)
		love.graphics.draw(s_killzoom, eventvar2)
		if event_timer >= 10 then
			love.graphics.setColor(255,255,255,64)
			love.graphics.draw(exception)
		elseif event_timer >= 5.75 then
			love.graphics.setColor(255,255,255,128)
			love.graphics.draw(background_Image, posX, posY)
		elseif event_timer >= 3.75 then
			love.graphics.setColor(255,255,255,eventvar3)
			love.graphics.draw(splash_glitch)
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
		
		if event_timer >= 21.05 then
			audioUpdate('d')
			textbox_enabled = true
			
		elseif event_timer > 3.74 then
			eventvar3 = math.min(eventvar3+7, 128)
			eventvar4 = eventvar4 + 0.175
		end
	end
end