local bgs = {x=-20,sx=1.1,ny=80,my=200}

function event_draw_1()
	--s_kill draw
	if event_type == 's_kill' then
		lg.draw(s_kill_bg,bgs.x,bgs.x,0,bgs.sx,bgs.sx)
		lg.draw(s_kill, 225-(event_timer*3), 0)
		lg.setColor(0,0,0)
	elseif event_type == 's_kill2' then
		lg.draw(s_kill_bg2)
		lg.draw(s_kill2, 225, 0)
	elseif event_type == 's_killzoom' then
		lg.setColor(255,255,255,255)
		lg.draw(s_kill_bgzoom)
		if event_timer >= 8.75 and event_timer < 10 then
			bgs.ny = bgs.ny-love.math.random(-50,50)
			bgs.my = bgs.my-love.math.random(-50,50)
			lg.draw(menu_art_n,love.math.random(140,180),bgs.ny,0,0.6)
			lg.draw(menu_art_m,love.math.random(240,280),bgs.my,0,0.5)
			lg.draw(menu_art_y,love.math.random(950,1100),love.math.random(350,500),0,0.7)
		end
		lg.draw(s_killzoom, eventvar2)
		
		if event_timer >= 10 then
			lg.setColor(255,255,255,92)
			lg.draw(exception)
		elseif event_timer >= 5.75 then
			lg.setColor(255,255,255,128)
			lg.draw(background_Image, posX, posY)
		elseif event_timer >= 3.75 then
			lg.setColor(255,255,255,eventvar3)
			lg.draw(splash_glitch)
		end
		lg.setColor(255,255,255,32)
		drawanimframe()
		lg.setColor(255,255,255,255)
	end
	
	if event_type == 's_glitch' then
		if event_timer < 3.5 then
			lg.draw(bgch)
			lg.draw(eventvar2, 240)
		end
	end
end

function event_update_1()
	--s_kill timers
	if event_type == 's_kill_start' and event_timer > 0.75 then event_next()
	elseif event_type == 's_kill' then
		bgs.x = math.min(bgs.x+0.075,0)
		bgs.sx = math.max(bgs.sx-0.00025,1)
		if event_timer > 3.75 then 
			event_next()
		end
	elseif event_type == 's_kill2' and event_timer > 0.26 then event_next()
	elseif event_type == 's_killzoom' then
		eventvar1 = eventvar1 + 3.2
		if eventvar1 >= 800 then
			eventvar1 = 0
		elseif eventvar1 > 400 then
			eventvar2 = eventvar2 - 0.027
		else
			eventvar2 = eventvar2 + 0.027
		end
		
		posX = posX - 0.625*eventvar4
		posY = posY - 0.625*eventvar4
		if posX <= -200 then posX = 0 end
		if posY <= -200 then posY = 0 end
		
		if event_timer >= 20.8 then
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