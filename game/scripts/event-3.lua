function event_draw_3()
	if event_type == 'monika_end' then
		lg.draw(bgch)
		lg.setColor(255,255,255,255)
		if eventvar4 ~= 'end2' then
			lg.rectangle('fill',eventvar2,eventvar2/2,64,64)
			lg.rectangle('fill',eventvar3,eventvar3/2,64,64)
			lg.rectangle('fill',eventvar3-eventvar2,eventvar2/2,64,64)
			lg.rectangle('fill',eventvar3-eventvar2,eventvar3/2,64,64)
			lg.rectangle('fill',eventvar2-eventvar3,eventvar2/2,64,64)
			lg.rectangle('fill',eventvar2-eventvar3,eventvar3/2,64,64)
		end
		
		drawConsole()
		
		lg.setColor(255,255,255,eventvar1)
		drawanimframe()
	end
	
	if event_type == 'beforecredits' then
		lg.setColor(255,255,255,eventvar1)
		lg.draw(vignette)
		drawanimframe()
		if eventvar2 then lg.draw(eventvar2,0,eventvar3) end
	end
end

function event_update_3()
	if event_type == 'monika_end' then
		eventvar5 = eventvar5 + dt
		if eventvar5 >= 0.25 then
			eventvar2 = math.random(1,8)*150
			eventvar3 = math.random(1,8)*150
			eventvar5 = 0
		end
		if event_timer >= 0.73 then
			eventvar1 = math.max(eventvar1 - 2, 0)
		elseif event_timer >= 0.7 and event_timer <= 0.73 then
			eventvar1 = 200
		elseif event_timer >= 0.38 then
			eventvar1 = math.max(eventvar1 - 6, 10)
		elseif event_timer >= 0.35 and event_timer <= 0.38 then
			eventvar1 = 200
		else
			eventvar1 = math.max(eventvar1 - 6, 10)
		end
	end
	
	if event_type == 'beforecredits' then
		eventvar1 = math.min(eventvar1 + 2, 128)
		
		if event_timer > 10 and event_timer <= 20 then eventvar2 = end_glitch1
		elseif event_timer > 22.5 and event_timer <= 25 then eventvar2 = end_glitch2
		elseif event_timer > 28 then eventvar2 = end_glitch3
		end
		
		eventvar3 = eventvar3 - 6
		if eventvar3 <= -640 then eventvar3 = 0 end
	end
end