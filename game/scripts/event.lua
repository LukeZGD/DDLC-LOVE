event_timer = 0
eventvar1 = 0
eventvar2 = 0
eventvar3 = 0
eventvar4 = 0
eventvar5 = 0
sectimer = 0
local currentframe
require(branch..'/scripts/event')

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
			eventvar1 = 0
			eventvar2 = 0
		end
	elseif event_type == 'wipe' then
		if branch == 'ddlclove' then
			eventvar1 = 0
		end
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
	elseif event_type == 'monika_end' then
		eventvar1 = 200
		eventvar2 = math.random(1,8)*50
		eventvar3 = math.random(1,8)*50
		eventvar5 = 0
		bgimg_disabled = false
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
	elseif arg1 == '' then
		eventvar4 = ''
	end
end

function drawanimframe(x,y,s)
	if not x then x = 0 end
	if not y then y = 0 end
	if branch ~= 'ddlclove' or not s then s = 1 end
	if animframe[currentframe] then
		lg.draw(animframe[currentframe],x,y,0,s,s)
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

function event_next()
	print_full_text = true
	newgame_keypressed('a')
	event_timer = 0
end

function event_keypressed(key)
	if ((textbox_enabled and event_type ~= 'show_vignette') or (event_type == 'yuri_eyes' and cl < 700)) and (key == 'a' or key == 'leftshoulder') then
		newgame_keypressed('a')
	elseif key == 'y' and event_type == 'ch23-30' then
		menu_mchance = math.random(1,50)
		if branch == '3ds' then
			menu_enable('pause2')
		else
			menu_enable('pause')
		end
	elseif key == 'b' and event_type == 'ch23-30' and chapter == 30 then --auto
		sfx1:play()
		if autotimer == 0 then autotimer = 0.01 else autotimer = 0 end		
	elseif (key == '-' or key == 'back') and event_type == 'ch23-30' then
		if settings.o ~= 1 then settings.o = 1
		else settings.o = 0 end
	end
end
