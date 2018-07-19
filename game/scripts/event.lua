local event_timer = 0
local event_type
local eventvar1 = 0
local eventvar2 = 0
local eventvar3 = 0
local eventvar4 = 0
local eventvar5 = 0
local eventvar6 = 0
local animframe
local animtimer = 0

--[[
Info about the eventvar stuff
The eventvars can be used for anything that will be coded here

s_kill:
- eventvar 1 - timer for eventvar 2, on when it will go left/right
- eventvar 2 - x pos of s_killzoom
- eventvar 3 - alpha of splash_glitch
- eventvar 4 - speed of background_Image

wipe:
- eventvar 1 - alpha of the black rectangle that un/covers the bg1
- eventvar 2 - the bg that will replace the current

endscreen:
- eventvar 1 - alpha of endscreen

s_glitch:
- eventvar 1 - random number from 1 to 16, determines eventvar 2
- eventvar 2 - one of 2 s_glitch sprites (randomized by eventvar 1)

ny_argument:
- eventvar 1 - alpha of vignette
- eventvar 2 - alpha of noise
- eventvar 3 - table for start to show vignette
- eventvar 4 - table for end to hide vignette
- eventvar 5 - set table item number
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
		eventvar1 = 0
		eventvar2 = 0
	elseif event_type == 'wipe' then
		hideAll()
		textbox_enabled = false
		if arg1 then eventvar2 = arg1 
		else eventvar2 = nil 
		end
	elseif event_type == 'black' then
		textbox_enabled = true
		bgimg_disabled = true
	elseif event_type == 'endscreen' then
		hideAll()
		textbox_enabled = false
		audioUpdate('0')
	elseif event_type == 's_glitch' or event_type == 'm_glitch1' or event_type == 'n_glitch1' or event_type == 'yuri_eyes' then
		bgimg_disabled = false
		textbox_enabled = false
	elseif event_type == 'ny_argument' then
		eventvar1 = 0
		eventvar2 = 0
		eventvar3 = {2.0,3.6,5.2,6.8,8.3,9.90,11.5,13.1,14.7,16.3,17.90,19.45,21.1,22.7,24.2,25.8}
		eventvar4 = {2.5,4.1,5.7,7.3,8.8,10.3,12.0,13.5,15.1,16.7,18.25,19.85,21.5,23.0,24.6,26.2}
		eventvar5 = 1
		bgimg_disabled = false
		textbox_enabled = true
	elseif event_type == 'yuri_eyes' then
		bgimg_disabled = false
		textbox_enabled = false
		eventvar1 = 2
		eventvar2 = -13
		eventvar3 = 0
	else
		bgimg_disabled = false
		textbox_enabled = true
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
		love.graphics.draw(ml,100)
	end
	
	if event_type == 'n_glitch1' then
		love.graphics.draw(bgch)
		drawMonika(m_Set.a,m_Set.b)
		drawYuri(y_Set.a,y_Set.b)
		love.graphics.draw(nl,200,n_Set.y)
	end
	
	if event_type == 'm_onlayer_front' then
		love.graphics.draw(bgch)
		drawYuri(y_Set.a,y_Set.b)
		drawNatsuki(n_Set.a,n_Set.b)
	end
	
	if event_type == 'n_rects_ghost' then
		love.graphics.draw(bgch)
		love.graphics.setColor(0,0,0)
		love.graphics.rectangle('fill',math.random(262,272),math.random(100,110),math.random(18,28),math.random(18,28))
		love.graphics.rectangle('fill',math.random(262,272),math.random(100,110),math.random(18,28),math.random(18,28))
		love.graphics.rectangle('fill',math.random(220,230),math.random(127,137),math.random(15,25),math.random(15,25))
		love.graphics.rectangle('fill',math.random(220,230),math.random(127,137),math.random(15,25),math.random(15,25))
		love.graphics.rectangle('fill',math.random(247,257),math.random(140,150),math.random(15,25),math.random(10,20))
		love.graphics.rectangle('fill',math.random(247,257),math.random(140,150),math.random(15,25),math.random(10,20))
		textbox_enabled = true
	end
	
	if event_type == 'n_blackeyes' then
		love.graphics.draw(bgch)
		if event_timer > 2 then
			love.graphics.draw(n_blackeyes, 80)
		else
			drawNatsuki(n_Set.a,n_Set.b)
		end
	end
	
	if event_type == 'ny_argument' then
		love.graphics.draw(bgch)
		drawYuri(y_Set.a,y_Set.b)
		drawNatsuki(n_Set.a,n_Set.b)
		if eventvar3 and eventvar4 then
			if event_timer > eventvar3[eventvar5] and event_timer < eventvar4[eventvar5] then
				love.graphics.draw(vignette)
			end
		end
		love.graphics.setColor(255,255,255,eventvar1)
		love.graphics.draw(vignette)
		love.graphics.setColor(255,255,255,eventvar2)
		drawanimframe()
	end
	
	if event_type == 'ny_argument2' then
		drawanimframe()
		if cl <= 1008 and ml then
			love.graphics.draw(ml)
		end
	end
	
	if event_type == 'yuri_glitch' then
		love.graphics.draw(bgch)
		drawMonika(m_Set.a,m_Set.b)
		drawanimframe(80)
	end
	
	if event_type == 'show_vignette' then
		love.graphics.draw(bgch)
		love.graphics.draw(vignette)
	elseif event_type == 'show_dark' then
		love.graphics.draw(bgch)
		drawYuri(y_Set.a,y_Set.b)
		love.graphics.setColor(0,0,0,192)
		love.graphics.rectangle('fill',0,0,400,240)
	elseif event_type == 'yuri_eyes' then
		love.graphics.draw(bgch)
		if eyes1 then love.graphics.draw(eyes1,-13) end
		if eyes2 then love.graphics.draw(eyes2,eventvar2,eventvar3) end
		love.graphics.setColor(0,0,0,192)
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	drawBottomScreen()
	love.graphics.setColor(255,255,255)
	if bgimg_disabled ~= true then
		love.graphics.draw(background_Image, posX, posY)
		love.graphics.setColor(0,0,0)
	end
	
	if textbox_enabled then
		drawNumbers()
		drawTextBox()	
	end
	love.graphics.print(event_timer,2,220)
	if eventvar2 then love.graphics.print(eventvar2,2,200) end
	
	if event_type == 'm_onlayer_front' or event_type == 'ny_argument2' then
		love.graphics.setColor(255,255,255)
		drawMonika(m_Set.a,m_Set.b)
		textbox_enabled = true
	end
	
	if menu_enabled then menu_draw() end
end

function drawanimframe(x)
	if x == nil then x = 0 end
	if animframe then
		love.graphics.draw(animframe,x)
	end
	local dt = love.timer.getDelta()
	animtimer = animtimer + dt
	if animtimer > 1 then
		animtimer = 0
	elseif animtimer > 0.75 and animframe4 then
		animframe = animframe4
	elseif animtimer > 0.5 and animframe3 then
		animframe = animframe3
	elseif animtimer > 0.25 and animframe2 then
		animframe = animframe2
	elseif animframe1 then
		animframe = animframe1
	end
end

function unloadanimframe()
	animframe1 = nil
	animframe2 = nil
	animframe3 = nil
	animframe4 = nil
end

function event_update(dt)
	event_timer = event_timer + dt
	xaload = xaload + 1
	
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
	
	--s_glitch
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
	
	--m_glitch
	if event_type == 'm_glitch1' then
		if event_timer > 0.8 then
			event_end('next')
		end
		posX = -40
		posY = 0
	end
	
	if event_type == 'n_glitch1' then
		if n_Set.y <= 0 then
			n_Set.y = 50
		else
			n_Set.y = n_Set.y - 7
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
		if cl == 1000 then
			eventvar2 = 60
		elseif cl == 1001 then
			eventvar2 = 80
		elseif cl == 1002 then
			eventvar2 = 100
		elseif cl == 1003 then
			eventvar2 = 120
		elseif cl == 1004 then
			eventvar2 = 140
		elseif cl == 1005 then
			eventvar2 = 160
		elseif cl == 1006 then
			eventvar2 = 180
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
		if xaload > 450 and cl == 1442 then
			event_end('yuri_eyes')
		elseif xaload > 450 then
			textbox_enabled = true
		else
			textbox_enabled = false
		end
	end
end

function event_next()
	newgame_keypressed('a')
	event_timer = 0
end

function event_endnext()
	cl = cl + 1
	xaload = 0
end

function event_keypressed(key)
	if textbox_enabled then
		if key == 'a' then
			newgame_keypressed('a')
		elseif key == 'y' and event_type == 'ny_argument' then
			menu_enable('pause')
		end
	end
end

function event_end(arg1)
	event_enabled = false
	event_timer = 0
	textbox_enabled = true
	bgimg_disabled = false
	
	if event_type == 'wipe' then
		eventvar2 = nil
	end
	
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
		event_endnext()
	elseif arg1 == 's_glitch' then
		s_glitch1 = nil
		s_glitch2 = nil
	elseif arg1 == 'n_blackeyes' then
		n_blackeyes = nil
		event_endnext()
	elseif arg1 == 'ny_argument2' then
		vignette = nil
		unloadanimframe()
		event_endnext()
	elseif arg1 == 'yuri_glitch' then
		unloadanimframe()
		event_endnext()
	elseif arg1 == 'show_vignette' then
		vignette = nil
	elseif arg1 == 'yuri_eyes' then
		eyes1 = nil
		eyes2 = nil
		event_endnext()
	end
end