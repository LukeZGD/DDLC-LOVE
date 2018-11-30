local menu_items
local cX
local cY
local getcompare = {}
local pagenum = 1
local savenum = {}
local itemnames = {}
local saveindicator = {}
local chch
local cpick
local menu_fadeout
local menu_mtimer = 0
menu_alpha = 0

function menu_enable(m)
	menu_enabled = true
	menu_type = m
	
	if menu_type == 'savegame' or menu_type == 'loadgame' then
		itemnames = {}
		for i = 1, 6 do
			if pagenum > 1 then	
				chch = ((pagenum-1)*6)+i
			else
				chch = i
			end
			savenum[i] = chch
			itemnames[i] = 'Save File '..chch
			if love.filesystem.getInfo('save'..chch..'-'..persistent.ptr..'.sav') then
				saveindicator[i] = 1
			else
				saveindicator[i] = 0
			end
		end
	end
	
	if menu_type == 'mainyesno' then
		menutext = 'Are you sure you want to return to the main menu? This will lose unsaved progress.'
		itemnames = {'Yes','No'}
		
	elseif menu_type == 'quityesno' then
		menutext = 'Are you sure you want to quit the game?'
		itemnames = {'Yes','No'}
		
	elseif menu_type == 'help' then
		menutext = 'Help'
		itemnames = {}
	
	elseif menu_type == 'title' then
		menutext = ''
		itemnames = {'','','','',''}
		
	elseif menu_type == 'settings' then
		menutext = 'Settings'
		itemnames = {'Text Speed','Auto-Forward Time','Characters','Save Settings'}
		
	elseif menu_type == 'settings2' then
		menutext = 'Settings'
		itemnames = {'Characters','Save Settings'}
	
	elseif menu_type == 'characters' then
		menutext = 'Characters'
		itemnames = {'Delete monika.chr','Delete natsuki.chr','Delete sayori.chr','Delete yuri.chr','Restore all'}
	
	elseif menu_type == 'pause' or menu_type == 'pause2' then
		menutext = 'Game Menu'
		itemnames = {'History','Save Game','Load Game','Main Menu','Settings','Help','Quit','Return'}
	
	elseif menu_type == 'savegame' then
		menutext = 'Save Game'
	
	elseif menu_type == 'loadgame' then
		menutext = 'Load Game'
		
	elseif menu_type == 'dialog' then
		itemnames = {''}
		
	elseif menu_type == 'history' then
		menutext = 'History'
		itemnames = {}
	end
	
	if menu_type == 'choice' then
		menu_items = #choices + 1
	else
		menu_items = #itemnames + 1
	end
	
	m_select(2)
end

function menu_draw()
	lg.setColor(255,255,255,menu_alpha)
	
	if menu_type == 'title' then
		lg.setColor(0,0,0,alpha)
		lg.draw(guicheck,-670+titlebg_ypos,(cY/1.2)+280)
		
	elseif menu_type == 'choice' then
		lg.setColor(255,189,225,menu_alpha)
		lg.rectangle('fill',400,180,480,360)
		lg.setColor(255,230,244,menu_alpha)
		lg.rectangle('fill',410,190,460,340)
		lg.setColor(255,189,225,menu_alpha)
		for i = 1, 8 do
			if menu_items >= i+1 then lg.rectangle('fill',440, 200+(50*i),400,32) end
		end
		lg.setColor(0,0,0,menu_alpha)
		lg.draw(guicheck,410,200+(50*(m_selected-1)))
		lg.print(menutext,440,195)
		
	elseif menu_type == 'dialog' then
		lg.setColor(255,255,255,menu_alpha/2)
		lg.rectangle('fill',0,0,1280,725)
		lg.setColor(255,189,225,menu_alpha)
		lg.rectangle('fill',400,180,480,360)
		lg.setColor(255,230,244,menu_alpha)
		lg.rectangle('fill',410,190,460,340)
		lg.setColor(255,189,225,menu_alpha)
		lg.rectangle('fill',440,250,35,32)
		lg.setColor(0,0,0,menu_alpha)
		lg.draw(guicheck,410,250)
		lg.print(menutext,440,195)
		lg.print('OK',440,250)
		
	else
		lg.setColor(255,255,255,menu_alpha)
		lg.draw(background_Image,posX,posY)
		lg.setColor(255,189,225,menu_alpha)
		lg.rectangle('fill',100,50,1080,620)
		lg.setColor(255,230,244,menu_alpha)
		lg.rectangle('fill',120,70,1040,580)
		lg.setColor(255,189,225,menu_alpha)
		for i = 1, 8 do
			if menu_items >= i+1 then lg.rectangle('fill',160, 110+(50*i),200,32) end
		end
		lg.setColor(0,0,0,menu_alpha)
		lg.draw(guicheck,cX,cY)
		lg.print(menutext,140,90)
	end
	
	for i = 1, 8 do
		if menu_items >= i+1 and menu_type == 'choice' and choices[i] then lg.print(choices[i],440,200+(50*i))
		elseif menu_items >= i+1 and itemnames[i] then lg.print(itemnames[i],160,110+(50*i)) end
	end
	
	if menu_type == 'settings' or menu_type == 'settings2' then
		if menu_type == 'settings' then
			lg.print(settings.textspd, 410, 160)
			lg.print('(<)',380,160)
			lg.print('(>)',460,160)
			lg.print(settings.autospd..' sec.',410, 210)
			lg.print('(<)',380,210)
			lg.print('(>)',480,210)
		end
		lg.print('Press (<) and (>) to change settings.',140,580)
		lg.print('DDLC-LOVE '..dversion..' '..dvertype,140,610)
		
	elseif menu_type == 'savegame' or menu_type == 'loadgame' then
		lg.print('- Page '..pagenum..' of 10',257,90)
		for i = 1, 6 do
			if saveindicator[i] == 1 then
				lg.setColor(0,255,0)
			else
				lg.setColor(255,0,0)
			end
			lg.rectangle('fill',290,120+(50*i),9,9)
		end
		
	elseif menu_type == 'help' then
		local keys = {}
		if global_os == 'LOVE-OneLua' then
			keys = {'Cross','Circle','Square','Triangle'}
		else
			keys = {'A','B','X','Y'}
		end
		lg.setColor(0,0,0)
		lg.print('Key Bindings:',160,120)
		lg.print(keys[1]..', L Trigger - Advances through the game, activates menu choices',160,160)
		lg.print(keys[2]..' - Exit Menu, AutoForward On/Off',160,190)
		lg.print(keys[3]..' - (Menu) Previous Page, Skipping On/Off',160,220)
		lg.print(keys[4]..' - (Menu) Next Page, Enter Game Menu',160,250)
		lg.print('Managing files: Go to Settings > Characters',160,300)
		lg.print('Deleting save data: Delete save files and persistent in here:\nSwitch: sdmc:/switch/DDLC-LOVE/\nPS Vita: ux0:/data/DDLC-LOVE/savedata/\nPSP: ms0:/data/DDLC-LOVE/savedata/',160,330)
		
	elseif menu_type == 'history' then
		lg.setColor(0,0,0)
		lg.print(cl,160,120)
		local c_disp_y = {185,215,245,275}
		lg.print(ct,250,150)
		if c_disp and global_os == 'LOVE-OneLua' then
			for i = 1, 4 do
				lg.print(c_disp[i],250,c_disp_y[i])
			end
		else
			lg.printf(textx,250,185,775)
		end
	end
	
	if persistent.act2[2] < 1 and menu_mchance == 50 and persistent.ptr == 2 then
		lg.setColor(255,255,255,255)
		lg.draw(menu_bg_m)
	end
end

function menu_update(dt)
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
end

function menu_confirm()
	sfx1:play()
	
	if menu_type == 'title' then --title screen options
		menu_previous = 'title'
		
		if m_selected == 2 then --new game
			if player == '' then --keyboard input for player name
				if global_os == 'LOVE-OneLua' then
					love.keyboard.setTextInput(true)
				else
					require 'ingamekeys'
					ingamekeys = true
				end
			elseif player ~= '' then --go straight to new game
				changeState('game',1)
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
			game_quit()
		end
		
	elseif menu_type == 'loadgame' then --load game confirm
		savenumber = savenum[m_selected-1]
		if love.filesystem.getInfo('save'..savenumber..'-'..persistent.ptr..'.sav') then
			changeState('game',2)
		end
		
	elseif menu_type == 'savegame' then  --save game confirm 
		savenumber = savenum[m_selected-1]
		savegame()
		menu_enable(menu_previous)
	
	elseif menu_type == 'pause' or menu_type == 'pause2' then --pause menu options
		menu_previous = menu_type
		if m_selected <= 6 and menu_type == 'pause' then
			if m_selected == 2 then
				menu_history = {cl,ct}
				menu_enable('history')
			elseif m_selected == 3 then
				pagenum = 1
				menu_enable('savegame')
			elseif m_selected == 4 then
				pagenum = 1
				menu_enable('loadgame')
			elseif m_selected == 5 then
				menu_enable('mainyesno')
			elseif m_selected == 6 then
				pagenum = 1
				menu_enable('settings')
			end
		elseif m_selected <= 6 and menu_type == 'pause2' then
			if m_selected == 3 and chapter == 30 then
				menutext = "There's no point in saving anymore.\nDon't worry, I'm not going anywhere."
			elseif m_selected == 6 then
				menu_enable('settings2')
			end
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
			game_quit()
		elseif m_selected == 3 then
			menu_enable(menu_previous)
		end
		
	elseif menu_type == 'settings' then
		if m_selected <= 3 then
			menu_keypressed('left')
		elseif m_selected == 4 then
			menu_enable('characters')
		elseif m_selected == 5 then
			savesettings()
			menu_enable(menu_previous)
		end
		
	elseif menu_type == 'settings2' then
		if m_selected == 2 then
			menu_enable('characters')
		else
			savesettings()
			menu_enable(menu_previous)
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

function menu_keypressed(key)
	if key == 'down' or key == 'cpaddown' then
		sfx2:play()
		if m_selected <= menu_items-1 then
			m_selected = m_selected + 1
		else
			m_selected = 2
		end
		m_select()
		
	elseif key == 'up' or key == 'cpadup' then
		sfx2:play()
		if m_selected >= 3 then
			m_selected = m_selected - 1
		else
			m_selected = menu_items
		end
		m_select()
		
	elseif key == 'a' then
		menu_confirm()
		
	elseif key == 'b' then
		if menu_history then
			cl = menu_history[1]
			ct = menu_history[2]
			menu_history = nil
		end
		if menu_type == 'pause' or menu_type == 'pause2' then
			menu_fadeout = true
		elseif menu_type ~= 'title' and menu_type ~= 'pause' and menu_type ~= 'pause2' and menu_type ~= 'choice' then
			menu_enable(menu_previous)
		end
		menu_previous = nil
		
	elseif key == 'left' or key == 'cpadleft' then
		if menu_type == 'settings' and m_selected <= 3 then
			if cpick == 'Text Speed' then
				if settings.textspd > 250 then
					settings.textspd = 250
				elseif settings.textspd > 50 then
					settings.textspd = settings.textspd - 25
				end
			elseif cpick == 'Auto-Forward Time' then
				if settings.autospd > 1 then
					settings.autospd = settings.autospd - 1
				end
			end
		elseif menu_type == 'history' then
			if cl > 1 and cl >= (menu_history[1] - 50) then
				cl = cl - 1
			end
		end
		
	elseif key == 'right' or key == 'cpadright' then
		if menu_type == 'settings' and m_selected <= 3 then
			if cpick == 'Text Speed' then
				if settings.textspd < 250 then
					settings.textspd = settings.textspd + 25
				end
			elseif cpick == 'Auto-Forward Time' then
				if settings.autospd < 15 then
					settings.autospd = settings.autospd + 1
				end
			end
		elseif menu_type == 'history' then
			if cl < menu_history[1] then
				cl = cl + 1
			end
		end
	
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