local menu_items
local cX
local cY
local getcompare = {}
local pagenum = 1
local savenum = {}
local itemnames = {}
local chch
local cpick
local menu_fadeout
local menu_mtimer = 0
local save_oset = {x={366,652,938},y={250,485}}
local save_date = {}
local save_bpic = {}
local save_hoverpos = {}
local sxp = 0
local history_scr = -39
menu_alpha = 0

function savepicLoad(i)
	save_bpic[i] = lg.newImage('assets/images/bg/save/'..loadstring('return save'..chch..'.bg1')()..'.png')
end

function savepicFree()
	for i = 1, #save_bpic do
		if save_bpic[i] then save_bpic[i] = nil end
	end
end

function menu_enable(m)
	menu_enabled = true
	menu_type = m
	
	if menu_type == 'savegame' or menu_type == 'loadgame' or menu_type == 'title' then
		save_bpic = {}
		for i = 1, 6 do
			if pagenum > 1 then	
				chch = ((pagenum-1)*6)+i
			else
				chch = i
			end
			if chch < 10 then
				chch = '0'..chch
			end
			savenum[i] = chch
			if love.filesystem.getInfo('save'..chch..'-'..persistent.ptr..'.sav') then
				loaddatainfo(chch)
				save_date[i] = loadstring('return save'..chch..'.date')()
				if menu_type ~= 'title' then savepicLoad(i) end
			else
				save_date[i] = 'empty slot'
			end
			
		end
	end
	
	menutext = ''
	if menu_type == 'mainyesno' then
		menutext = tr.menuhelp[9]
		itemnames = {tr.menuitem[1],tr.menuitem[2]}
		
	elseif menu_type == 'quityesno' then
		menutext = tr.menuhelp[10]
		itemnames = {tr.menuitem[1],tr.menuitem[2]}
	
	elseif menu_type == 'title' then
		itemnames = {'','','','',''}
		
	elseif menu_type == 'settings' then
		itemnames = {'Text Speed','Auto-Forward Time','Characters','Language','Master Volume','Music Volume','Sound Volume'}
	
	elseif menu_type == 'characters' then
		itemnames = {tr.menuitem[3]..'monika.chr',tr.menuitem[3]..'natsuki.chr',tr.menuitem[3]..'sayori.chr',tr.menuitem[3]..'yuri.chr',tr.menuitem[4]}
	
	elseif menu_type == 'pause' then
		itemnames = {'','','','','','','',''}
		
	elseif menu_type == 'dialog' then 
		itemnames = {''}
		
	elseif menu_type == 'savegame' or menu_type == 'loadgame' then
		itemnames = {'','','','','',''}
		
	elseif menu_type == 'help' or menu_type == 'history' then
		itemnames = {}
		
	elseif menu_type == 'language' then
		itemnames = lang_names
		menutext = tr.selectlang
	end
	
	if menu_type == 'choice' then
		menu_items = #choices + 1
	else
		menu_items = #itemnames + 1
	end
	
	sxp = 0
	for i = 1, #save_date do
		if save_date[i] ~= 'empty slot' then
			sxp = sxp + 1
		end
	end
	
	if sxp > 0 and menu_type == 'title' then
		m_select(3)
	else
		m_select(2)
	end
end

function menu_drawstuff(a)
	if a == 'dialog' then
		lg.setColor(255,189,225,255)
		lg.rectangle('fill',400,180,480,360)
		lg.setColor(255,230,244,255)
		lg.rectangle('fill',410,190,460,340)
		lg.setColor(255,189,225,255)
	elseif a == 'overlay' then
		lg.setColor(255,255,255,menu_alpha)
		lg.draw(background_Image,posX,posY)
		lg.draw(gui.mmenu)
		if menu_previous == 'pause' then
			lg.draw(gui.gamebuttons)
		elseif menu_previous == 'title' then
			lg.draw(gui.mainbuttons)
			lg.draw(gui.newgame)
		end
	end
end

function menu_draw()
	lg.setColor(255,255,255,menu_alpha)
	
	if menu_type == 'title' then
		lg.draw(gui.check,-670+titlebg_ypos,(cY/1.2)+280)
		
	elseif menu_type == 'choice' or menu_type == 'mainyesno' or menu_type == 'quityesno' or menu_type == 'language' then
		if menu_type == 'choice' then
			lg.setColor(255,255,255,255)
			lg.draw(textbox,230,565)
			outlineText(menutext,250,590)
		else
			lg.setColor(255,255,255,128)
			lg.rectangle('fill',0,0,1280,725)
			menu_drawstuff('dialog')
			lg.setColor(0,0,0)
			lg.print(menutext,440,195)
		end
		for i = 1, 8 do
			if menu_items >= i+1 then
				lg.setColor(255,189,255,menu_alpha)
				lg.rectangle('fill',435, 195+(50*i),410,42)
				lg.setColor(255,230,244,menu_alpha)
				lg.rectangle('fill',440, 200+(50*i),400,32)
			end
		end
		lg.setColor(0,0,0,menu_alpha)
		for i = 1, 8 do
			if menu_items >= i+1 and menu_type == 'choice' and choices[i] then
				lg.print(choices[i],440,200+(50*i))
			elseif menu_items >= i+1 and itemnames[i] then
				lg.print(itemnames[i],440,200+(50*i))
			end
		end
		lg.setColor(255,255,255,menu_alpha/1.3)
		lg.rectangle('fill',435,195+(50*(m_selected-1)),410,42)
		
	elseif menu_type == 'dialog' then
		lg.setColor(255,255,255,128)
		lg.rectangle('fill',0,0,1280,725)
		menu_drawstuff('dialog')
		lg.setColor(255,189,255,255)
		lg.rectangle('fill',435,245,410,42)
		lg.setColor(255,230,244,255)
		lg.rectangle('fill',440,250,400,32)
		lg.setColor(0,0,0,255)
		lg.print(menutext,440,195)
		lg.print('OK',440,250)
		
		
	elseif menu_type == 'pause' then
		lg.draw(gui.gmenu)
		lg.draw(gui.gamebuttons)
		lg.draw(gui.gamemenu)
		lg.draw(gui.check,50,(cY/1.2)+240)
		
	elseif menu_type == 'help' then
		lg.setColor(255,255,255,menu_alpha)
		lg.draw(background_Image,posX,posY)
		lg.setColor(255,189,225,menu_alpha)
		lg.rectangle('fill',100,50,1080,620)
		lg.setColor(255,230,244,menu_alpha)
		lg.rectangle('fill',120,70,1040,580)
		lg.setColor(0,0,0,menu_alpha)
		lg.print(menutext,140,90)
		local keys = {}
		if global_os == 'LOVE-WrapLua' then
			keys = {'Cross, L','Circle','Square','Triangle','R','Select'}
		else
			keys = {'A','B','X','Y','Plus','Minus'}
		end
		lg.setColor(0,0,0)
		lg.print('Key Bindings:',160,120)
		lg.print(keys[1]..tr.menuhelp[1],160,160)
		lg.print(keys[2]..tr.menuhelp[2],160,190)
		lg.print(keys[3]..tr.menuhelp[3],160,220)
		lg.print(keys[4]..tr.menuhelp[4],160,250)
		lg.print(keys[5]..tr.menuhelp[5],160,280)
		lg.print(keys[6]..tr.menuhelp[12],160,310)
		lg.print(tr.menuhelp[6],160,360)
		lg.print(tr.menuhelp[7],160,390)
		
	elseif menu_type == 'savegame' or menu_type == 'loadgame' then
		menu_drawstuff('overlay')
		if menu_type == 'loadgame' then
			lg.draw(gui.load)
		elseif menu_type == 'savegame' then
			lg.draw(gui.save)
		end
		if m_selected >= 2 and m_selected <= 4 then
			save_hoverpos.x = save_oset.x[m_selected-1]
			save_hoverpos.y = save_oset.y[1]
		else
			save_hoverpos.x = save_oset.x[m_selected-4]
			save_hoverpos.y = save_oset.y[2]
		end
		lg.draw(gui.slothover,save_hoverpos.x,save_hoverpos.y-50)
		
		for i = 1, 6 do
			local apx={x=0,y=0}
			if i >= 1 and i <= 3 then
				apx.x = save_oset.x[i]
				apx.y = save_oset.y[1]
			else
				apx.x = save_oset.x[i-3]
				apx.y = save_oset.y[2]
			end
			lg.setColor(255,255,255,menu_alpha)
			lg.draw(gui.slotidle,apx.x,apx.y-50)
			lg.draw(save_bpic[i],apx.x+10,apx.y-40)
			lg.setColor(0,0,0,menu_alpha)
			lg.print(savenum[i]..': '..save_date[i],(apx.x+10),(apx.y+110))
		end
		if savenumber == 61 then
			lg.print(menutext,366,138)
		else
			lg.print('Page '..pagenum,751,138)
		end
		
	elseif menu_type == 'settings' then
		menu_drawstuff('overlay')
		lg.setColor(255,255,255)
		lg.draw(gui.settings)
		lg.draw(gui.setbuttons)
		local hv = {x=0,y=0}
		if m_selected <= 5 then
			hv.x = 340
		else
			hv.x = 790
		end
		if m_selected == 2 or m_selected == 6 then
			hv.y = 344
		elseif m_selected == 3 or m_selected == 7 then
			hv.y = 412
		elseif m_selected == 4 or m_selected == 8 then
			hv.y = 480
		elseif m_selected == 5 then
			hv.y = 548
		end
		lg.draw(gui.scrbarh,368,378,0,0.5,1)
		lg.draw(gui.scrbarh,368,446,0,0.5,1)
		lg.draw(gui.scrbarh,818,378,0,0.5,1)
		lg.draw(gui.scrbarh,818,446,0,0.5,1)
		lg.draw(gui.scrbarh,818,514,0,0.5,1)
		lg.draw(gui.scrhover,((settings.textspd-50)*1.7)+368,378)
		lg.draw(gui.scrhover,((settings.autospd-1)*24.29)+368,446)
		lg.draw(gui.scrhover,(settings.masvol*3.4)+818,378)
		lg.draw(gui.scrhover,(settings.bgmvol*3.4)+818,446)
		lg.draw(gui.scrhover,(settings.sfxvol*3.4)+818,514)
		lg.draw(gui.check,hv.x,hv.y)
		lg.setColor(0,0,0)
		lg.print(settings.textspd,525,340)
		lg.print(settings.autospd..' sec',625,410)
		lg.print(settings.masvol..'%',1020,340)
		lg.print(settings.bgmvol..'%',1005,410)
		lg.print(settings.sfxvol..'%',1010,480)
		lg.print(dversion..'\n'..dvertype,1200,660)
		
	elseif menu_type == 'history' then
		menu_drawstuff('overlay')
		lg.draw(gui.history)
		lg.setColor(0,0,0)
		
		local ca1 = {70,140,210}
		local ypsc = {35,65,95,125}
		
		if chapter == 23 and cl >= 2001 then
			outlineText(tr.menuhelp[11],375,120+(history_scr*75))
		else
			for i = 1, #history do
				local temptext = wrap(history[i],70)
				local ypos = 3600+(history_scr*75)-(i*120)
				
				if global_os == 'LOVE-WrapLua' and g_system == 'PS3' then
					local cdisp = wrap_old(history[i],ca1)
					for j = 1, #cdisp do
						if cdisp[j] then
							lg.print(cdisp[j],400,ypos+ypsc[j])
						end
					end
					
				elseif global_os == 'LOVE-WrapLua' then
					lg.print(temptext,400,ypos)
				else
					outlineText(temptext,400,ypos,'c_disp')
				end
			end
		end
		
	else
		menu_drawstuff('overlay')
		lg.setColor(255,189,225,menu_alpha)
		for i = 1, 8 do
			if menu_items >= i+1 then lg.rectangle('fill',360, 110+(50*i),200,32) end
		end
		lg.setColor(0,0,0,menu_alpha)
		lg.draw(gui.check,cX+200,cY)
		lg.print(menutext,340,90)
	end
	
	lg.setColor(0,0,0,menu_alpha)
	if menu_type == 'characters' then
		for i = 1, 8 do
			if menu_items >= i+1 and itemnames[i] then
				lg.print(itemnames[i],360,110+(50*i))
			end
		end
	end
	
	if persistent.act2[2] < 1 and menu_mchance == 50 and persistent.ptr == 2 then
		lg.setColor(255,255,255,255)
		lg.draw(menu_bg_m)
	end
end

function menu_update()
	if menu_fadeout then
		menu_alpha = math.max(menu_alpha - 15, 0)
		if menu_alpha == 0 then
			menu_enabled = false
			menu_previous = nil
			menu_fadeout = false
		end
	else
		menu_alpha = math.min(menu_alpha + 15, 255)
	end
	
	if persistent.act2[2] < 1 and menu_mchance == 50 and persistent.ptr == 2 then
		menu_mtimer = menu_mtimer + dt
		if menu_mtimer > 0.5 then
			persistent.act2[2] = 1
			savepersistent()
		end
	end
	
	if menu_type == 'history' then
		if g_system == 'Switch' then
			if joystick:isGamepadDown('dpdown') and history_scr > -39 then
				history_scr = history_scr - 0.2
			elseif joystick:isGamepadDown('dpup') and history_scr < 0 then
				history_scr = history_scr + 0.2
			end
		else
			if love.keyboard.isDown('down') and history_scr > -39 then
				history_scr = history_scr - 0.2
			elseif love.keyboard.isDown('up') and history_scr < 0 then
				history_scr = history_scr + 0.2
			end
		end
	end
end

function menu_confirm()
	sfx1:play()
	
	if menu_type == 'title' then --title screen options
		menu_previous = 'title'
		
		if m_selected == 2 then --new game
			if player ~= '' or dvertype == 'Test' then --go straight to new game
				changeState('game',1)
			elseif player == '' then --keyboard input for player name
				if (global_os == 'LOVE-WrapLua' and g_system ~= 'PS3') or g_system == 'Switch' then
					local input = {}
					input["type"] = "standard"
					input["header"] = "Enter Player Name"
					input["subheader"] = ""
					input["hint"] = "Enter Player Name"
					input["isPassword"] = false
					love.keyboard.showTextInput(input)
				else
					require('ddlclove/ingamekeys')
					ingamekeys = true
				end
			end
			menu_previous = nil
		
		elseif m_selected == 3 then --load game
			pagenum = 1
			menu_enable('loadgame')
			
		elseif m_selected == 4 then --settings
			pagenum = 1
			menu_enable('settings')
		
		elseif m_selected == 5 then --help
			menu_enable('help')
			
		elseif m_selected == 6 then --quit
			love.event.quit()
		end
		
	elseif menu_type == 'loadgame' and persistent.chr.m ~= 2 then --load game confirm
		savenumber = savenum[m_selected-1]
		if love.filesystem.getInfo('save'..savenumber..'-'..persistent.ptr..'.sav') then
			changeState('game',2)
		end
	elseif menu_type == 'savegame' and persistent.chr.m == 2 and chapter == 30 then
		menutext = tr.menuhelp[8]
		savenumber = 61
		
	elseif menu_type == 'savegame' and persistent.chr.m ~= 2 then  --save game confirm 
		savenumber = savenum[m_selected-1]
		savegame()
		savedatainfo(savenumber)
		menu_enable('savegame')
	
	elseif menu_type == 'pause' then --pause menu options
		menu_previous = menu_type
		if m_selected == 2 then
			menu_enable('history')
		elseif m_selected == 3 then
			pagenum = 1
			menu_enable('savegame')
		elseif m_selected == 4 then
			pagenum = 1
			menu_enable('loadgame')
		elseif m_selected == 5 and persistent.chr.m ~= 2 then
			menu_enable('mainyesno')
		elseif m_selected == 6 then
			pagenum = 1
			menu_enable('settings')
		elseif m_selected == 7 then
			menu_enable('help')
		elseif m_selected == 8 then
			menu_enable('quityesno')
		elseif m_selected == 9 then
			menu_fadeout = true
		end
		
	elseif menu_type == 'mainyesno' then
		if m_selected == 2 then
			changeState('title')
		elseif m_selected == 3 then
			menu_enable('pause')
		end
		
	elseif menu_type == 'quityesno' then
		if m_selected == 2 then
			love.event.quit()
		elseif m_selected == 3 then
			menu_enable(menu_previous)
		end
		
	elseif menu_type == 'settings' then
		if m_selected <= 3 and m_selected >= 6 then
			menu_keypressed('left')
		elseif m_selected == 4 then
			menu_enable('characters')
		elseif m_selected == 5 then
			menu_previous =
			changeState('language')
		end
		
	elseif menu_type == 'characters' then
		if m_selected == 2 then
			if persistent.chr.m < 2 or (persistent.chr.m == 2 and chapter == 30) then
				persistent.chr.m = 0
			end
		elseif m_selected == 4 then
			if persistent.ptr == 0 then
				persistent.chr.s = 0
			end
		elseif m_selected == 6 then
			if persistent.ptr == 0 then
				persistent.chr.s = 1
			end
			if persistent.chr.m < 2 then
				persistent.chr.m = 1
			end
		end
		savepersistent()
		menu_enable(menu_previous)
		
	elseif menu_type == 'choice' then
		if choicepick ~= '' then
			scriptJump(cl+1)
			menu_fadeout = true
		end
		
	elseif menu_type == 'dialog' then
		scriptJump(cl+1)
		menu_fadeout = true
		
	elseif menu_type == 'language' then
		settings.lang = lang_codes[m_selected-1]
		savesettings()
		require('scripts/'..settings.lang..'/text')
		loaderAssets(101)
		l_timer = 97
		changeState('load')
	end
end

function m_select(arg)
	if arg then m_selected = arg end
	if m_selected <= 5 and menu_type == 'choice' then 
		choicepick = choices[m_selected-1]
	elseif menu_type ~= 'choice' then cpick = itemnames[m_selected-1] end
	cX = 135
	cY = 110+(50*(m_selected-1))
end

function sfx2play()
	if global_os ~= 'LOVE-WrapLua' then
		sfx2:play()
	end
end

function menu_keypressed(key)
	if key == 'down' then
		sfx2play()
		if menu_type == 'savegame' or menu_type == 'loadgame' then
			if m_selected <= 4 then
				m_selected = m_selected + 3
			else
				m_selected = m_selected - 3
			end
		elseif m_selected <= menu_items-1 then
			m_selected = m_selected + 1
		else
			m_selected = 2
		end
		m_select()
		
	elseif key == 'up' then
		sfx2play()
		if menu_type == 'savegame' or menu_type == 'loadgame' then
			if m_selected >= 5 and m_selected <= 7 then
				m_selected = m_selected - 3
			else
				m_selected = m_selected + 3
			end
		elseif m_selected >= 3 then
			m_selected = m_selected - 1
		else
			m_selected = menu_items
		end
		m_select()
		
	elseif key == 'a' then
		menu_confirm()
		
	elseif key == 'b' then
		if menu_type == 'history' then
			history_scr = -39
		elseif menu_type == 'settings' then
			savesettings()
		end
		if menu_type == 'pause' then
			menu_fadeout = true
		elseif menu_type ~= 'title' and menu_type ~= 'pause' and menu_type ~= 'choice' and menu_type ~= 'language' then
			menu_enable(menu_previous)
		end
		savepicFree()
		menu_previous = nil
		
	elseif key == 'left' then
		if menu_type == 'savegame' or menu_type == 'loadgame' then
			sfx2play()
			if m_selected == 2 or m_selected == 5 then
				m_selected = m_selected + 2
			elseif m_selected > 2 then
				m_selected = m_selected - 1
			end
			m_select()
		elseif menu_type == 'settings' then
			if cpick == 'Text Speed' then
				if settings.textspd > 250 then
					settings.textspd = 250
				elseif settings.textspd > 50 then
					settings.textspd = settings.textspd - 25
				end
			elseif cpick == 'Auto-Forward Time' and settings.autospd > 1 then
				settings.autospd = settings.autospd - 1
			elseif cpick == 'Master Volume' and settings.masvol > 0 then
				settings.masvol = settings.masvol - 10
			elseif cpick == 'Music Volume' and settings.bgmvol > 0 then
				settings.bgmvol = settings.bgmvol - 10
			elseif cpick == 'Sound Volume' and settings.sfxvol > 0 then
				settings.sfxvol = settings.sfxvol - 10
			end
		end
		game_setvolume()
		
	elseif key == 'right' then
		if menu_type == 'savegame' or menu_type == 'loadgame' then
			sfx2play()
			if m_selected == 4 or m_selected == 7 then
				m_selected = m_selected - 2
			elseif m_selected < 7 then
				m_selected = m_selected + 1
			end
			m_select()
		elseif menu_type == 'settings' then
			if cpick == 'Text Speed' and settings.textspd < 250 then
				settings.textspd = settings.textspd + 25
			elseif cpick == 'Auto-Forward Time' and settings.autospd < 15 then
				settings.autospd = settings.autospd + 1
			elseif cpick == 'Master Volume' and settings.masvol < 100 then
				settings.masvol = settings.masvol + 10
			elseif cpick == 'Music Volume' and settings.bgmvol < 100 then
				settings.bgmvol = settings.bgmvol + 10
			elseif cpick == 'Sound Volume' and settings.sfxvol < 100 then
				settings.sfxvol = settings.sfxvol + 10
			end
		end
		game_setvolume()
	
	elseif key == 'x' then
		if (menu_type == 'savegame' or menu_type == 'loadgame' or menu_type == 'settings') and pagenum > 1 then
			pagenum = pagenum - 1
			menu_enable(menu_type)
		end
		
	elseif key == 'y' then
		if ((menu_type == 'savegame' or menu_type == 'loadgame') and pagenum < 10) or (menu_type == 'settings' and pagenum < 2) then
			pagenum = pagenum + 1
			menu_enable(menu_type)
		end
	end
end
