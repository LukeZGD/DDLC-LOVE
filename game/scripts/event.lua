local event_timer = 0
local event_type
local eventvar1 = 0
local eventvar2 = 0
local eventvar3 = 0
local eventvar4 = 0

--[[
Info about the eventvar stuff
The eventvars can be used for anything that will be coded here

s_kill:
- eventvar 1 is the timer for eventvar 2, on when it will go left/right
- eventvar 2 is the x pos of s_killzoom
- eventvar 3 is the alpha of splash_glitch
- eventvar 4 is the speed of background_Image

wipe:
- eventvar 1 is the alpha of the black rectangle that un/covers the bg1
- eventvar 2 is the bg that will replace the current

endscreen:
- eventvar 1 - alpha of endscreen

s_glitch:
- eventvar 1 - random number from 1 to 16, determines eventvar 2
- eventvar 2 - one of 2 s_glitch sprites (randomized by eventvar 1)
]]

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
		audioUpdate('s_kill')
	elseif event_type == 'wipe' then
		hideAll()
		textbox_enabled = false
		if arg1 then eventvar2 = arg1 end
	elseif event_type == 'black' then
		textbox_enabled = true
		bgimg_disabled = true
	elseif event_type == 'endscreen' then
		hideAll()
		textbox_enabled = false
		audioUpdate('0')
	elseif event_type == 's_glitch' then
		bgimg_disabled = false
		textbox_enabled = false
		audioUpdate('2gs')
	elseif event_type == 'm_glitch1' then
		bgimg_disabled = false
		textbox_enabled = false
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
	
	if event_type == 'wipe' then
		love.graphics.draw(bgch)
		love.graphics.setColor(0,0,0,eventvar1)
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	if event_type == 'endscreen' then
		love.graphics.setColor(255,255,255,eventvar1)
		love.graphics.draw(bgch)
	end
	
	if event_type == 's_glitch' then
		if event_timer < 3.5 then
			love.graphics.draw(bgch)
			love.graphics.draw(eventvar2, 80)
		end
	end
	
	if event_type == 'm_glitch1' then
		love.graphics.draw(bgch)
		love.graphics.draw(ml, 100)
	end
	
	drawBottomScreen()
	if bgimg_disabled ~= true then
		love.graphics.setColor(255,255,255)
		love.graphics.draw(background_Image, posX, posY)
	end
	
	if textbox_enabled then
		drawNumbers()
		drawTextBox()
	else
		--love.graphics.print(event_timer)
	end
end

function event_update(dt)
	event_timer = event_timer + dt
	
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
		
		if event_timer >= 21.125 then
			audioUpdate('d')
			textbox_enabled = true
			
		elseif event_timer > 3.74 then
			eventvar3 = math.min(eventvar3+7, 128)
			eventvar4 = eventvar4 + 0.175
		end
	end
	
	--wipe timers
	if event_type == 'wipe' and event_timer > 1.5 then event_end('next')
	elseif event_type == 'wipe' and event_timer >= 1 then
		eventvar1 = math.max(eventvar5 - 15, 0)
	elseif event_type == 'wipe' and event_timer > 0.5 then
		if eventvar2 and bg1 ~= eventvar2 then
			bgUpdate(eventvar2)
		end
	elseif event_type == 'wipe' and event_timer < 0.5 then
		eventvar1 = math.min(eventvar5 + 15, 255)
	end
	
	--end screen
	if event_type == 'endscreen' and event_timer > 3 then event_end('next')
	elseif event_type == 'endscreen' and event_timer >= 2.5 then
		eventvar1 = math.max(eventvar1 - 7, 0)
	elseif event_type == 'endscreen' and event_timer <= 0.5 then
		eventvar1 = math.min(eventvar1 + 7, 255)
	end
	
	--s_glitch
	if event_type == 's_glitch' then
		if event_timer > 7 then
			persistent.playthrough = 2
			savepersistent()
			special_poems = {math.random(1, 11),math.random(1, 11),math.random(1, 11)}
			savespecialpoems()
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
	end
	
	--m_glitch
	if event_type == 'm_glitch1' then
		xaload = xaload + 1
		if event_timer > 0.8 then
			event_end('next')
		end
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
	
	eventvar2 = nil
	
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
		cl = cl + 1
		xaload = 0
	elseif arg1 == 's_glitch' then
		s_glitch1 = nil
		s_glitch2 = nil
	end
end