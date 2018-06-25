local event_timer = 0
local event_type
local s_killzoom_timer = 0
local s_killzoom_x = 0
local sg_alpha = 0
local posSpeed = 0

local w_alpha = 0
local bgch_change

function event_start(etype, arg1)
	event_enabled = true
	event_type = etype
	if event_type == 's_kill_start' then
		settings.textspd = 25
		textbox_enabled = true
		bgimg_disabled = true
	elseif event_type == 's_kill' then
		settings.textspd = 150
		textbox_enabled = false
		if audio1 ~= 's_kill' then
			xaload = 0
			audioUpdate('s_kill')
		end
	elseif event_type == 'wipe' then
		hideAll()
		textbox_enabled = false
		if arg1 then bgch_change = arg1 end
	elseif event_type == 'black' then
		textbox_enabled = true
		bgimg_disabled = true
	elseif event_type == 'endscreen' then
		hideAll()
		textbox_enabled = false
		if audio1 ~= '0' then
			xaload = 0
			audioUpdate('0')
		end
	end
end

function event_draw()
	drawTopScreen()
	love.graphics.setColor(255,255,255)
	
	--s_kill draw
	if event_type == 's_kill' then
		love.graphics.draw(s_kill_bg)
		love.graphics.draw(s_kill, 75-event_timer, 0)
	elseif event_type == 's_kill2' then
		love.graphics.draw(s_kill_bg2)
		love.graphics.draw(s_kill2, 75, 0)
	elseif event_type == 's_killzoom' then
		love.graphics.draw(s_kill_bgzoom)
		love.graphics.draw(s_killzoom, s_killzoom_x)
		if event_timer >= 10 then
			love.graphics.setColor(255,255,255,64)
			love.graphics.draw(exception)
		elseif event_timer >= 5.75 then
			love.graphics.setColor(255,255,255,128)
			love.graphics.draw(background_Image, posX, posY)
		elseif event_timer >= 3.75 then
			love.graphics.setColor(255,255,255,sg_alpha)
			love.graphics.draw(splash_glitch)
		end
	end
	
	if event_type == 'wipe' then
		love.graphics.draw(bgch)
		love.graphics.setColor(0,0,0,w_alpha)
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	if event_type == 'endscreen' then
		love.graphics.setColor(255,255,255,w_alpha)
		love.graphics.draw(bgch)
	end
	
	drawBottomScreen()
	if textbox_enabled == false then
		love.graphics.setColor(0,0,0)
		love.graphics.rectangle('fill', -40, 0, 400, 240)
		love.graphics.setColor(255,255,255,255)
		--love.graphics.print(event_timer)
	else
		drawnumbers()
		drawTextBox()
	end
end

function event_update(dt)
	event_timer = event_timer + dt
	
	--s_kill timers
	if event_type == 's_kill_start' and event_timer > 0.75 then event_next()
	elseif event_type == 's_kill' and event_timer > 3.75 then event_next()
	elseif event_type == 's_kill2' and event_timer > 0.26 then event_next()
	elseif event_type == 's_killzoom' then
		s_killzoom_timer = s_killzoom_timer + 1
		if s_killzoom_timer >= 400 then
			s_killzoom_timer = 0
		elseif s_killzoom_timer > 200 then
			s_killzoom_x = s_killzoom_x - 0.0225
		else
			s_killzoom_x = s_killzoom_x + 0.0225
		end
		
		posX = posX - 0.25*posSpeed
		posY = posY - 0.25*posSpeed
		if posX <= -80 then posX = 0 end
		if posY <= -80 then posY = 0 end
		
		if event_timer >= 21.125 then
			if audio1 ~= 'd' then
				xaload = 0
				audioUpdate('d')
			end
			textbox_enabled = true
			
		elseif event_timer > 3.74 then
			sg_alpha = math.min(sg_alpha+7, 128)
			posSpeed = posSpeed + 0.175
		end
	end
	
	--wipe timers
	if event_type == 'wipe' and event_timer > 1.5 then event_end('next')
	elseif event_type == 'wipe' and event_timer >= 1 then
		w_alpha = math.max(w_alpha - 15, 0)
	elseif event_type == 'wipe' and event_timer > 0.5 then
		if bgch_change and bg1 ~= bgch_change then
			xaload = 0
			bgUpdate(bgch_change)
		end
	elseif event_type == 'wipe' and event_timer < 0.5 then
		w_alpha = math.min(w_alpha + 15, 255)
	end
	
	if event_type == 'endscreen' and event_timer > 3 then event_end('next')
	elseif event_type == 'endscreen' and event_timer >= 2.5 then
		w_alpha = math.max(w_alpha - 7, 0)
	elseif event_type == 'endscreen' and event_timer <= 0.5 then
		w_alpha = math.min(w_alpha + 7, 255)
	end
end

function event_next()
	newgame_keypressed('a')
	event_timer = 0
end

function event_keypressed(key)
	if textbox_enabled then
		if key == 'a' then
			newgame_keypressed('a')
		end
	end
end

function event_end(arg1)
	event_enabled = false
	event_timer = 0
	textbox_enabled = true
	bgimg_disabled = false
	
	bgch_change = nil
	
	if arg1 == 's_kill' then
		s_kill = nil
		s_kill2 = nil
		s_kill_bg = nil
		s_kill_bg2 = nil
		s_kill_bgzoom = nil
		splash_glitch = nil
		exception = nil
		posX = -40
		posY = 0
	elseif arg1 == 'next' then
		newgame_keypressed('a')
	end
end