function event_draw_2()
	if event_type == 'm_glitch1' then
		lg.draw(bgch)
		lg.draw(ml,100)
	end
	
	if event_type == 'n_glitch1' then
		lg.draw(bgch)
		drawMonika()
		drawYuri()
		lg.draw(nl,200,n_Set.y)
	end
	
	if event_type == 'm_onlayer_front' then
		lg.draw(bgch)
		drawYuri()
		drawNatsuki()
	end
	
	if event_type == 'n_rects_ghost' then
		lg.draw(bgch)
		lg.setColor(0,0,0)
		lg.rectangle('fill',math.random(262,272),math.random(100,110),math.random(18,28),math.random(18,28))
		lg.rectangle('fill',math.random(262,272),math.random(100,110),math.random(18,28),math.random(18,28))
		lg.rectangle('fill',math.random(220,230),math.random(127,137),math.random(15,25),math.random(15,25))
		lg.rectangle('fill',math.random(220,230),math.random(127,137),math.random(15,25),math.random(15,25))
		lg.rectangle('fill',math.random(247,257),math.random(140,150),math.random(15,25),math.random(10,20))
		lg.rectangle('fill',math.random(247,257),math.random(140,150),math.random(15,25),math.random(10,20))
		textbox_enabled = true
	end
	
	if event_type == 'n_blackeyes' then
		lg.draw(bgch)
		if event_timer > 2 then
			lg.draw(n_blackeyes, 80)
		else
			drawNatsuki()
		end
	end
	
	if event_type == 'ny_argument' then
		lg.draw(bgch)
		drawYuri()
		drawNatsuki()
		if eventvar3 and eventvar4 then
			if event_timer > eventvar3[eventvar5] and event_timer < eventvar4[eventvar5] then
				lg.draw(vignette)
			end
		end
		lg.setColor(255,255,255,eventvar1)
		lg.draw(vignette)
		lg.setColor(255,255,255,eventvar2)
		drawanimframe()
	end
	
	if event_type == 'ny_argument2' then
		drawanimframe()
		if cl <= 1008 and ml then
			lg.draw(ml)
		end
	end
	
	if event_type == 'yuri_glitch' then
		lg.draw(bgch)
		drawMonika()
		drawanimframe(80)
	end
	
	if event_type == 'show_vignette' then
		lg.draw(bgch)
		lg.draw(vignette)
	elseif event_type == 'yuri_eyes' then
		lg.draw(bgch)
		lg.draw(eyes1,-13)
		lg.draw(eyes2,eventvar2,eventvar3)
		if cl <= 701 then
			lg.setColor(32,0,0,192)
		else
			lg.setColor(0,0,0,192)
		end
		lg.rectangle('fill',0,0,400,240)
		lg.setColor(255,255,255)
		if poem_enabled then drawPoem()	end
	end
	
	if event_type == 'faint_effect' then
		lg.setColor(255,255,255,alpha)
		lg.draw(bgch)
		drawNatsuki()
		drawYuri()
		drawMonika()
		lg.setColor(128,0,0,eventvar1)
		lg.rectangle('fill',0,0,400,240)
	end
	
	if event_type == 'yuri_glitch_head' then
		if eventvar1 == 2 then
			drawanimframe(220,10)
		else
			drawanimframe(180)
		end
	end
	
	if event_type == 'show_darkred' then
		lg.setColor(255,255,255,alpha)
		lg.draw(bgch)
		drawYuri()
		lg.setColor(32,0,0,eventvar2)
		lg.rectangle('fill',0,0,400,240)
		if eventvar4 == 'show_noise' then
			lg.setColor(255,255,255,eventvar2/8)
			drawanimframe()
		end
		lg.setColor(255,255,255,alpha)
		drawMonika()
	end
	
	if event_type == 'yuri_ch23' then
		if event_timer >= 5.5 then
			lg.draw(bg_glitch)
			drawanimframe(80)
		elseif event_timer >= 4.5 then
			lg.draw(bgch)
			lg.draw(eyes1,-13)
		end
	end
	
	if event_type == 'yuri_ch23_2' then
		lg.draw(bgch,eventvar1)
		drawYuri()
		lg.setColor(0,0,0,128+(eventvar1*4))
		lg.rectangle('fill',0,0,400,240)
	end
	
	if event_type == 'm_ch23ex' then
		lg.setColor(255,255,255,255)
		if event_timer > 1 then
			lg.draw(ex3top)
		end
		if event_timer > 4 then
			drawMonika()
		end
	end
	
	if event_type == 'natsuki_ch22' then
		lg.draw(bgch)
		if cl < 726 then
			drawNatsuki()
			if cl < 725 then
				lg.setColor(255,255,255,eventvar3)
				lg.draw(ghost_blood,80)
				lg.setColor(0,0,0,eventvar2)
				lg.rectangle('fill',math.random(176,180),math.random(80,84),math.random(6,10),math.random(6,10))
				lg.rectangle('fill',math.random(176,180),math.random(80,84),math.random(6,10),math.random(6,10))
				lg.rectangle('fill',math.random(196,200),math.random(80,84),math.random(6,10),math.random(6,10))
				lg.rectangle('fill',math.random(196,200),math.random(80,84),math.random(6,10),math.random(6,10))
				lg.rectangle('fill',math.random(186,190),math.random(100,104),math.random(5,9),math.random(5,9))
				lg.rectangle('fill',math.random(186,190),math.random(100,104),math.random(5,9),math.random(5,9))
			end
		end
		lg.setColor(32,0,0,eventvar1)
		lg.rectangle('fill',0,0,400,240)
		lg.setColor(255,255,255)
		if cl == 726 then
			if event_timer < 1 then
				lg.draw(nl,80)
			elseif event_timer < 1.5 then
				lg.draw(ghost3,80)
			elseif event_timer < 1.5625 then
				lg.draw(ghost3_1,80)
			elseif event_timer < 1.625 then
				lg.draw(ghost3_2,80)
			elseif event_timer < 1.6875 then
				lg.draw(ghost3_3,80)
			end
		end
	end
	
	if event_type == 'yuri_kill' then
		if event_timer < 9.5 then
			lg.draw(bgch)
			if event_timer < 1.43 then
				drawYuri()
			else
				lg.draw(eventvar1,80,eventvar2)
			end
		end
	end
end

function event_update_2()
	--m_glitch
	if event_type == 'm_glitch1' then
		if event_timer > 0.8 then
			event_end('next')
		end
		posX = -40
		posY = 0
	end
	
	if event_type == 'n_glitch1' then
		n_Set.y = math.max(n_Set.y - 7, 0)
		if n_Set.y <= 0 then
			n_Set.y = 50
		end
		if event_timer >= 0.75 then
			event_end('next')
		end
	end
	
	if event_type == 'n_blackeyes' then
		if event_timer > 2.75 then
			event_end('n_blackeyes')
		elseif event_timer > 2 and event_timer < 2.03 then
			xaload = 0
			sfxplay('stab')
		end
	end
	
	if event_type == 'ny_argument' then
		eventvar1 = math.min(eventvar1 + 0.15, 255)
		if cl >= 1000 then
			eventvar2 = 60+(20*(cl-1000))
		elseif event_timer > 36 then
			eventvar2 = 40
		elseif event_timer > 26 then
			eventvar2 = 32
		elseif event_timer > 22 then
			eventvar2 = 16
		elseif event_timer > 18 then
			eventvar2 = 8
		end
		if event_timer > eventvar4[eventvar5] and event_timer < 26.2 then
			eventvar5 = eventvar5 + 1
		end
	end
	
	if event_type == 'yuri_glitch' and event_timer > 0.5 then event_end('next') end
	
	if event_type == 'yuri_eyes' then
		eventvar1 = eventvar1 + dt
		if eventvar1 >= 2 then
			eventvar1 = 0
			eventvar2 = math.random(-14,-12)
			eventvar3 = math.random(0,1)
		end
		if eventvar2 > -12 then eventvar2 = math.random(-14,-12) end
		if cl >= 1439 then
			if xaload > 125 then
				textbox_enabled = true
				if cl == 1442 then event_end('yuri_eyes') end
			else
				textbox_enabled = false
			end
		elseif cl >= 700 then textbox_enabled = true
		end
	end
	
	if event_type == 'faint_effect' then
		if cl == 1456 then
			alpha = math.max(alpha - 5, 1)
			eventvar1 = math.max(eventvar1 - 2.25, 1)
			audioUpdate('0')
		elseif cl > 1456 then
			alpha = 255
			event_end()
			audioUpdate('3')
		end
	end
	
	if event_type == 'yuri_glitch_head' then
		if xaload < 5 then event_timer = 0 end
		if eventvar1 == 2 and cl == 1560 and event_timer <= 1.3 then
			if event_timer >= 0.5 and event_timer <= 0.53 then
				xaload = 0
				sfxplay('stab')
			elseif event_timer >= 1.25 then
				event_end('next')
			end
		end
	end
	
	if event_type == 'show_darkred' then
		if cl > 1000 then
			eventvar2 = math.min(eventvar2 + 0.1, 128)
		else
			eventvar2 = 192
		end
	end
	
	if event_type == 'yuri_ch23' and textbox_enabled == false then
		if event_timer >= 5.5 then 
			textbox_enabled = true
			newgame_keypressed('a')
		end
	end
	
	if event_type == 'yuri_ch23_2' then
		eventvar3 = eventvar3 + dt
		if eventvar3 >= math.random(0.5,2) then
			eventvar1 = math.random(-1,1)
			eventvar3 = 0
		end
		if cl == 1764 then eventvar2 = 2
		elseif cl >= 1768 and cl <= 1775 then eventvar2 = cl-1764
		elseif cl >= 1776 and cl <= 1802 then eventvar2 = 9.7*(cl-1775)
		end
	end
	
	if event_type == 'm_ch23ex' and textbox_enabled == false then
		if event_timer >= 4 then 
			textbox_enabled = true
			newgame_keypressed('a')
		end
	end
	
	if event_type == 'natsuki_ch22' then
		eventvar1 = math.min(eventvar1 + 0.1, 128)
		eventvar2 = math.min(eventvar2 + 0.05, 192)
		if cl == 726 and textbox_enabled then
			event_timer = 0
			textbox_enabled = false
		elseif cl == 726 and event_timer > 1 and event_timer < 1.02 then
			xaload = 0
			sfxplay('crack')
		elseif cl == 726 and event_timer > 1.5 and event_timer < 1.52 then
			xaload = 0
			sfxplay('run')
		elseif cl == 726 and event_timer > 1.75 then
			event_end('natsuki_ch22')
		elseif cl >= 716 then
			eventvar3 = math.min(eventvar3 + 0.2, 255)
		end
	end
	
	if event_type == 'yuri_kill' then
		if event_timer > 2.18 and event_timer <= 3.43 then
			eventvar1 = stab2
		elseif event_timer > 3.43 and event_timer <= 4.18 then
			eventvar1 = stab3
		elseif event_timer > 4.18 and event_timer <= 5.43 then
			eventvar1 = stab4
		elseif event_timer > 5.43 and event_timer <= 6.13 then
			eventvar1 = stab5
		elseif event_timer > 6.13 and event_timer <= 9 then
			eventvar1 = stab6f
		elseif event_timer > 9 and event_timer <= 12 then
			eventvar3 = eventvar3 * 1.25
			eventvar2 = eventvar2 + eventvar3
			eventvar1 = stab6
		elseif event_timer > 12 then
			event_end('yuri_kill')
		end
	end
end
