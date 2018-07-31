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

function loadNoise()
	animframe1 = love.graphics.newImage('images/bg/noise1.png')
	animframe2 = love.graphics.newImage('images/bg/noise2.png')
	animframe3 = love.graphics.newImage('images/bg/noise3.png')
	animframe4 = love.graphics.newImage('images/bg/noise4.png')
end

function loadVignette()
	vignette = love.graphics.newImage('images/bg/vignette.png')
end

function loadYuriGlitch()
	animframe1 = love.graphics.newImage('images/yuri/glitch1.png')
	animframe2 = love.graphics.newImage('images/yuri/glitch2.png')
	animframe3 = love.graphics.newImage('images/yuri/glitch3.png')
	animframe4 = love.graphics.newImage('images/yuri/glitch4.png')
end

function event_start(etype, arg1)
	autotimer = 0
	autoskip = 0
	event_enabled = true
	event_type = etype
	if event_type == 's_kill_start' then
		textbox_enabled = true
		bgimg_disabled = true
	elseif string.sub(event_type,1,6) == 's_kill' then
		bgimg_disabled = true
		textbox_enabled = false
		if event_type == 's_kill' then
			audioUpdate('s_kill')
			eventvar1 = 0
			eventvar2 = 0
		end
	elseif event_type == 'wipe' then
		hideAll()
		textbox_enabled = false
		if arg1 then
			eventvar2 = arg1
		else
			eventvar2 = nil
		end
	elseif event_type == 'black' then
		textbox_enabled = true
		bgimg_disabled = true
	elseif event_type == 'endscreen' then
		hideAll()
		textbox_enabled = false
		audioUpdate('0')
	elseif event_type == 's_glitch' or event_type == 'm_glitch1' or event_type == 'n_glitch1' then
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
	elseif event_type == 'faint_effect' then
		eventvar1 = 192
		bgimg_disabled = false
		textbox_enabled = true
	elseif event_type == 'yuri_glitch_head' then
		eventvar1 = arg1
		bgimg_disabled = false
		textbox_enabled = true
	elseif event_type == 'show_darkred' then
		eventvar2 = 1
		bgimg_disabled = false
		textbox_enabled = true
	elseif event_type == 'yuri_ch23_2' or event_type == 'natsuki_ch22' then
		eventvar1 = 0
		eventvar2 = 0
		eventvar3 = 0
		bgimg_disabled = false
		textbox_enabled = true
	elseif event_type == 'yuri_ch23' or event_type == 'm_ch23ex' or event_type == 'just_monika' then
		bgimg_disabled = true
		textbox_enabled = false
		if event_type == 'just_monika' then 
			alpha = 0
			if arg1 == 'ch30' then eventvar1 = 'ch30' end
		end
	elseif event_type == 'yuri_kill' then
		eventvar1 = stab1
		eventvar2 = 0
		eventvar3 = 0.025
		bgimg_disabled = true
		textbox_enabled = false
	else
		bgimg_disabled = false
		textbox_enabled = true
	end
	if arg1 == 'show_noise' then
		eventvar4 = 'show_noise'
	elseif arg1 == 'show_vignette' then
		eventvar4 = 'show_vignette'
	elseif arg1 == 'show_darkred' then
		eventvar4 = 'show_darkred'
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
		if bgch then love.graphics.draw(bgch) end
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
		if cl <= 701 then
			love.graphics.setColor(32,0,0,192)
		else
			love.graphics.setColor(0,0,0,192)
		end
		love.graphics.rectangle('fill',0,0,400,240)
		love.graphics.setColor(255,255,255)
		if poem_enabled then drawPoem()	end
	end
	
	if event_type == 'faint_effect' then
		love.graphics.setColor(255,255,255,alpha)
		love.graphics.draw(bgch)
		drawNatsuki(n_Set.a,n_Set.b)
		drawYuri(y_Set.a,y_Set.b)
		drawMonika(m_Set.a,m_Set.b)
		love.graphics.setColor(128,0,0,eventvar1)
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	if event_type == 'yuri_glitch_head' then
		if eventvar1 == 2 then
			drawanimframe(220,10)
		else
			drawanimframe(180)
		end
	end
	
	if event_type == 'show_darkred' then
		love.graphics.setColor(255,255,255,alpha)
		love.graphics.draw(bgch)
		drawYuri(y_Set.a,y_Set.b)
		love.graphics.setColor(32,0,0,eventvar2)
		love.graphics.rectangle('fill',0,0,400,240)
		if eventvar4 == 'show_noise' then
			love.graphics.setColor(255,255,255,eventvar2/8)
			drawanimframe()
		end
		love.graphics.setColor(255,255,255,alpha)
		drawMonika(m_Set.a,m_Set.b)
	end
	
	if event_type == 'yuri_ch23' then
		if event_timer >= 5.5 then
			love.graphics.draw(bg_glitch)
			drawanimframe(80)
		elseif event_timer >= 4.5 then
			love.graphics.draw(bgch)
			love.graphics.draw(eyes1,-13)
		end
	end
	
	if event_type == 'yuri_ch23_2' then
		love.graphics.draw(bgch,eventvar1)
		drawYuri(y_Set.a,y_Set.b)
		love.graphics.setColor(0,0,0,128+(eventvar1*4))
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	if event_type == 'm_ch23ex' then
		if event_timer > 1 then
			love.graphics.draw(ex3top)
		end
		if event_timer > 4 then
			drawMonika(m_Set.a,m_Set.b)
		end
	end
	
	if event_type == 'just_monika' then
		love.graphics.setBackgroundColor(255,255,255)
		if event_timer < 3.75 then
			love.graphics.setColor(255,255,255,alpha)
			love.graphics.draw(splash)
		else
			love.graphics.setColor(0,0,0,alpha)
			love.graphics.print('Just Monika.', 170, 100)
		end
	end
	
	if event_type == 'natsuki_ch22' then
		love.graphics.draw(bgch)
		if cl < 726 then
			drawNatsuki(n_Set.a,n_Set.b)
			if cl < 725 then
				love.graphics.setColor(255,255,255,eventvar3)
				love.graphics.draw(ghost_blood,80)
				love.graphics.setColor(0,0,0,eventvar2)
				love.graphics.rectangle('fill',math.random(176,180),math.random(80,84),math.random(6,10),math.random(6,10))
				love.graphics.rectangle('fill',math.random(176,180),math.random(80,84),math.random(6,10),math.random(6,10))
				love.graphics.rectangle('fill',math.random(196,200),math.random(80,84),math.random(6,10),math.random(6,10))
				love.graphics.rectangle('fill',math.random(196,200),math.random(80,84),math.random(6,10),math.random(6,10))
				love.graphics.rectangle('fill',math.random(186,190),math.random(100,104),math.random(5,9),math.random(5,9))
				love.graphics.rectangle('fill',math.random(186,190),math.random(100,104),math.random(5,9),math.random(5,9))
			end
		end
		love.graphics.setColor(32,0,0,eventvar1)
		love.graphics.rectangle('fill',0,0,400,240)
		love.graphics.setColor(255,255,255)
		if cl == 726 then
			if event_timer < 1 then
				love.graphics.draw(nl,80)
			elseif event_timer < 1.5 then
				love.graphics.draw(ghost3,80)
			elseif event_timer < 1.5625 then
				love.graphics.draw(ghost3_1,80)
			elseif event_timer < 1.625 then
				love.graphics.draw(ghost3_2,80)
			elseif event_timer < 1.6875 then
				love.graphics.draw(ghost3_3,80)
			end
		end
	end
	
	if event_type == 'yuri_kill' then
		if event_timer < 9.5 then
			love.graphics.draw(bgch)
			if event_timer < 1.43 then
				drawYuri(y_Set.a,y_Set.b)
			else
				love.graphics.draw(eventvar1,80,eventvar2)
			end
		end
	end
	
	if event_type == 'ch23-30' then
		if bgch then love.graphics.draw(bgch) end
		if xaload > 0 then
			if cg1 ~= '' then love.graphics.draw(cgch,0,0) end
			drawSayori(s_Set.a,s_Set.b)
			drawYuri(y_Set.a,y_Set.b)
			drawNatsuki(n_Set.a,n_Set.b)
			drawMonika(m_Set.a,m_Set.b)
		end
		
		if console_enabled and console_font then
			love.graphics.setColor(51,51,51,191)
			love.graphics.rectangle('fill',0,0,320,60)
			love.graphics.setColor(255,255,255)
			love.graphics.setFont(console_font)
			love.graphics.print('> '..console_text1,0,0)
			love.graphics.print(console_text2,5,15)
			love.graphics.print(console_text3,5,30)
		end
		
		if poem_enabled then drawPoem()	end
		
		if menu_enabled and menu_type ~= 'choice' then
			love.graphics.setColor(255,255,255,128)
			love.graphics.rectangle('fill',0,0,400,240)
		end
	end
	
	drawBottomScreen()
	love.graphics.setColor(255,255,255,255)
	
	if event_type == 'm_ch23ex' and event_timer > 1 then
		love.graphics.draw(ex3bottom)
	end
	
	if bgimg_disabled ~= true then
		love.graphics.draw(background_Image, posX, posY)
		love.graphics.setColor(0,0,0)
	end
	
	love.graphics.setFont(font)
	if textbox_enabled then
		drawNumbers()
		drawTextBox()	
	end
	--love.graphics.print(event_timer,2,220)
	
	if event_type == 'm_onlayer_front' or event_type == 'ny_argument2' then
		love.graphics.setColor(255,255,255)
		drawMonika(m_Set.a,m_Set.b)
		textbox_enabled = true
	elseif event_type == 'yuri_ch23_2' then
		drawTopScreen()
		love.graphics.setColor(255,255,255,eventvar2)
		drawMonika(m_Set.a,m_Set.b)
		drawBottomScreen()
	end
	
	if settings.dtym == 1 and event_type == 'ch23-30' then drawdatetime() end
	if menu_enabled then menu_draw() end
end

function drawanimframe(x,y)
	if x == nil then x = 0 end
	if y == nil then y = 0 end
	if animframe then
		love.graphics.draw(animframe,x,y)
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

function updateConsole(text,text2,text3)
	if console_font == nil then console_font = love.graphics.newFont('fonts/F25_Bank_Printer') end
	if console_enabled ~= true then console_enabled = true end
	console_text1 = dripText(text,30,myTextStartTime)
	if text2 then console_text2 = text2 else console_text2 = '' end
	if text3 then console_text3 = text3 else console_text3 = '' end
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
		
		if event_timer >= 21.11 then
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
		if cl >= 1439 then
			if xaload > 125 and cl == 1442 then
				event_end('yuri_eyes')
			elseif xaload > 450 then
				textbox_enabled = true
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
		if unitimer < uniduration then event_timer = 0 end
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
		if cl == 1764 then eventvar2 = 6.375
		elseif cl == 1768 then eventvar2 = 9.5625
		elseif cl == 1769 then eventvar2 = 12.75
		elseif cl == 1770 then eventvar2 = 15.9375
		elseif cl == 1771 then eventvar2 = 19.125
		elseif cl == 1772 then eventvar2 = 22.3125
		elseif cl == 1773 then eventvar2 = 25.5
		elseif cl == 1774 then eventvar2 = 28.6875
		elseif cl == 1775 then eventvar2 = 31.875
		elseif cl == 1776 then eventvar2 = 38.25
		elseif cl == 1777 then eventvar2 = 44.625
		elseif cl == 1778 then eventvar2 = 51
		elseif cl == 1779 then eventvar2 = 57.375
		elseif cl == 1780 then eventvar2 = 63.75
		elseif cl == 1781 then eventvar2 = 70.125
		elseif cl == 1782 then eventvar2 = 76.5
		elseif cl == 1783 then eventvar2 = 82.875
		elseif cl == 1784 then eventvar2 = 89.25
		elseif cl == 1785 then eventvar2 = 95.625
		elseif cl == 1786 then eventvar2 = 102
		elseif cl == 1787 then eventvar2 = 108.375
		elseif cl == 1788 then eventvar2 = 114.75
		elseif cl == 1789 then eventvar2 = 121.125
		elseif cl == 1790 then eventvar2 = 127.5
		elseif cl == 1791 then eventvar2 = 133.875
		elseif cl == 1792 then eventvar2 = 141
		elseif cl == 1793 then eventvar2 = 147
		elseif cl == 1794 then eventvar2 = 155
		elseif cl == 1795 then eventvar2 = 160
		elseif cl == 1796 then eventvar2 = 172
		elseif cl == 1797 then eventvar2 = 185
		elseif cl == 1798 then eventvar2 = 198
		elseif cl == 1799 then eventvar2 = 210
		elseif cl == 1800 then eventvar2 = 223
		elseif cl == 1801 then eventvar2 = 235
		elseif cl == 1802 then eventvar2 = 255
		end
	end
	
	if event_type == 'm_ch23ex' and textbox_enabled == false then
		if event_timer >= 4 then 
			textbox_enabled = true
			newgame_keypressed('a')
		end
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
	
	if event_type == 'ch23-30' then
		if persistent.chr.m == 0 and cl < 1001 then
			scriptJump(1001)
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
	unitimer = 0
	collectgarbage()
	collectgarbage()
end

function event_keypressed(key)
	if ((textbox_enabled and event_type ~= 'show_vignette') or (event_type == 'yuri_eyes' and cl < 700)) and (key == 'a' or key == 'lbutton') then
		newgame_keypressed('a')
	elseif key == 'y' and event_type == 'ch23-30' then
		menu_enable('pause2')
	end
end

function event_end(arg1)
	event_enabled = false
	event_timer = 0
	textbox_enabled = true
	bgimg_disabled = false
	
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
	elseif arg1 == 'yuri_ch23' then
		eyes1 = nil
		bg_glitch = nil
		unloadanimframe()
	elseif arg1 == 'm_ch23ex' then
		ex3top = nil
		ex3bottom = nil
	elseif arg1 == 'natsuki_ch22' then
		ghost3 = nil
		ghost3_1 = nil
		ghost3_2 = nil
		ghost3_3 = nil
		ghost_blood = nil
		event_endnext()
	elseif arg1 == 'yuri_kill' then
		stab1 = nil
		stab2 = nil
		stab3 = nil
		stab4 = nil
		stab5 = nil
		stab6 = nil
		stab6f = nil
		event_endnext()
	end
end