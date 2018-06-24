local menu_items
local getcompare = {}
local rectwidth
local pagenum
local savenum = {}
local itemnames = {}
local chch
local cpick

function menu_enable(m)
	menu_enabled = true
	menu_type = m
	
	if menu_type == 'savegame' or menu_type == 'loadgame' then
		for i = 1, 6 do
			if pagenum > 1 then	
				chch = ((pagenum-1)*6)+i
			else
				chch = i
			end
			savenum[i] = chch
			itemnames[i] = 'Save File '..chch
		end
	end
	
	if menu_type == 'mainyesno' then
		menutext = 'Are you sure?'
		itemnames = {'Yes','No'}
		
	elseif menu_type == 'help' then
		menutext = 'Help - Controls'
		itemnames = {'A - Select','B - Auto On/Off','X - Skip','Y - Pause'}
		
	elseif menu_type == 'title' then
		menutext = 'Main Menu'
		itemnames = {'New Game','Load Game','Settings','Help','Quit'}
		
	elseif menu_type == 'settings' then
		menutext = 'Settings'
		itemnames = {'Textbox Location','Text Speed','AutoForward Time','Char. Animations','Characters','Save Settings'}
	
	elseif menu_type == 'characters' then
		menutext = 'Characters'
		itemnames = {'Delete monika.chr','Delete sayori.chr','Delete natsuki.chr','Delete yuri.chr','Restore all'}
	
	elseif menu_type == 'pause' then
		menutext = 'Pause Menu'
		itemnames = {'Save Game','Load Game','Main Menu','Settings','Help','Return'}
	
	elseif menu_type == 'savegame' then
		menutext = 'Save Game'
	
	elseif menu_type == 'loadgame' then
		menutext = 'Load Game'
	end
	
	if menu_type == 'choice' then
		menu_items = #choices + 1
	else
		menu_items = #itemnames + 1
	end
	m_selected = 2 
	m_select()
end

function menu_draw()
	xaload = xaload + 1
	
	love.graphics.setColor(255, 255, 255, alpha)
	if bgimg_disabled ~= true then love.graphics.draw(background_Image, posX, posY) end
	if menu_type == 'choice' then
		for i = 1, #choices do
			getcompare[i] = font:getWidth(choices[i])
		end
	else
		for i = 1, #itemnames do
			getcompare[i] = font:getWidth(itemnames[i])
		end
	end
	rectwidth = math.max(unpack(getcompare)) + 5
	
	love.graphics.setColor(255, 189, 225, alpha)
	if menu_items >= 2 then love.graphics.rectangle('fill', 16, 45, rectwidth, 16) end
	if menu_items >= 3 then love.graphics.rectangle('fill', 16, 70, rectwidth, 16) end 
	if menu_items >= 4 then love.graphics.rectangle('fill', 16, 95, rectwidth, 16) end
	if menu_items >= 5 then love.graphics.rectangle('fill', 16, 120, rectwidth, 16) end
	if menu_items >= 6 then love.graphics.rectangle('fill', 16, 145, rectwidth, 16) end
	if menu_items >= 7 then love.graphics.rectangle('fill', 16, 170, rectwidth, 16) end
	if menu_items >= 8 then love.graphics.rectangle('fill', 16, 195, rectwidth, 16) end
	if menu_items >= 9 then love.graphics.rectangle('fill', 16, 220, rectwidth, 16) end
	if menu_previous then love.graphics.rectangle('fill', 16, 220, 30, 16) end
	
	if bgimg_disabled then
		love.graphics.setColor(255,255,255)
		love.graphics.draw(guicheckwhite,cX,cY)
	else
		love.graphics.setColor(0,0,0) 
		love.graphics.draw(guicheck,cX,cY)
	end
	love.graphics.print(menutext,16, 20)
	
	love.graphics.setColor(0,0,0)
	if menu_type == 'choice' then
		if menu_items >= 2 then love.graphics.print(choices[1],17, 45) end
		if menu_items >= 3 then love.graphics.print(choices[2],17, 70) end
		if menu_items >= 4 then love.graphics.print(choices[3],17, 95) end
		if menu_items >= 5 then love.graphics.print(choices[4],17, 120) end
		if menu_items >= 6 then love.graphics.print(choices[5],17, 145) end
		if menu_items >= 7 then love.graphics.print(choices[6],17, 170) end
		if menu_items >= 8 then love.graphics.print(choices[7],17, 195) end
		if menu_items >= 8 then love.graphics.print(choices[8],17, 220) end
	else
		if menu_items >= 2 then love.graphics.print(itemnames[1],17, 45) end
		if menu_items >= 3 then love.graphics.print(itemnames[2],17, 70) end
		if menu_items >= 4 then love.graphics.print(itemnames[3],17, 95) end
		if menu_items >= 5 then love.graphics.print(itemnames[4],17, 120) end
		if menu_items >= 6 then love.graphics.print(itemnames[5],17, 145) end
		if menu_items >= 7 then love.graphics.print(itemnames[6],17, 170) end
		if menu_items >= 8 then love.graphics.print(itemnames[7],17, 195) end
		if menu_items >= 8 then love.graphics.print(itemnames[8],17, 220) end
	end
	if menu_previous then love.graphics.print('Back',17, 220) end
	
	if menu_type == 'settings' then
		love.graphics.print(settings.textloc..' Screen',140, 45)
		love.graphics.print(settings.textspd, 140, 70)
		love.graphics.print(settings.autospd..' sec.',140, 95)
		love.graphics.print(settings.animh,140, 120)
		love.graphics.print('Press (<) and (>) to change settings.',16,200)
		love.graphics.print(dversion,270, 205)
		love.graphics.print(dvertype,270, 220)
	elseif menu_type == 'savegame' or menu_type == 'loadgame' then
		love.graphics.print('Page '..pagenum..' of 10',220,20)
	elseif menu_type == 'choice' then
		--drawdatetime()
	end	
end

function menu_confirm()
	sfx1:play()

	if menu_type == 'title' then --title screen options
		menu_previous = 'title'
		
		if global_os ~= 'Horizon' then
			player = 'MC'
		end
		
		if m_selected == 2 then --new game
			if persistent.mchr == 0 and persistent.playthrough == 0 then --set up early act 1 end
				menu_enabled = false
				cl = 10001
				changeState('game',1)
			elseif player == '' and global_os == 'Horizon' then --keyboard input for player name
				love.keyboard.setTextInput(true)
			elseif cl <= 9999 or global_os ~= 'Horizon' then --go straight to new game
				hideAll()
				cl = 1
				changeState('game',1)
			end
		
		elseif m_selected == 3 then --load game
			pagenum = 1
			menu_enable('loadgame')
			
		elseif m_selected == 4 then --settings
			menu_enable('settings')
		
		elseif m_selected == 5 then --help
			menu_enable('help')
			m_select()
			
		elseif m_selected == 6 then --quit
			game_quit()
		end
		
	elseif menu_type == 'loadgame' then --load game confirm 
		if player ~= '' then
			savenumber = savenum[m_selected-1]
			if love.filesystem.isFile('save'..savenumber..'.sav') then
				changeState('game',2)
			end
		end
		
	elseif menu_type == 'savegame' then  --save game confirm 
		savenumber = savenum[m_selected-1]
		savegame()
		menu_previous = nil
		menu_enabled = false
	
	elseif menu_type == 'pause' then --pause menu options
		menu_previous = 'pause'
		if m_selected == 2 then
			pagenum = 1
			menu_enable('savegame')
		elseif m_selected == 3 then
			pagenum = 1
			menu_enable('loadgame')
		elseif m_selected == 4 then
			menu_enable('mainyesno')
		elseif m_selected == 5 then
			menu_enable('settings')
		elseif m_selected == 6 then
			menu_enable('help')
		elseif m_selected == 7 then
			menu_enabled = false
			menu_previous = nil
		end
	
	elseif menu_type == 'mainyesno' then
		if m_selected == 2 then
			changeState('title')
		elseif m_selected == 3 then
			menu_enable('pause')
		end
		
	elseif menu_type == 'settings' then
		if m_selected == 6 then
			menu_enable('characters')
		elseif m_selected == 7 then
			savesettings()
			menu_enable(menu_previous)
		end
		
	elseif menu_type == 'characters' then
		if m_selected == 2 then
			persistent.mchr = 0
		elseif m_selected == 3 then
			persistent.schr = 0
		elseif m_selected == 4 then
			--persistent.nchr = 0
		elseif m_selected == 5 then
			--persistent.ychr = 0
		elseif m_selected == 6 then
			persistent.mchr = 1
			persistent.schr = 1
			persistent.nchr = 1
			persistent.ychr = 1
		end
		savepersistent()
		menu_enable(menu_previous)
		
	elseif menu_type == 'choice' then
		if choicepick ~= '' then
			scriptJump(cl+1)
			menu_type = nil
			menu_enabled = false
			menu_previous = nil
		end
	end
end

function m_select()
	if m_selected == 2 then
		if menu_type == 'choice' then 
			choicepick = choices[1] 
		else
			cpick = itemnames[1]
		end
		cX = 2
		cY = 45
	elseif m_selected == 3 then
		if menu_type == 'choice' then 
			choicepick = choices[2] 
		else
			cpick = itemnames[2]
		end
		cX = 2
		cY = 70
	elseif m_selected == 4 then
		if menu_type == 'choice' then 
			choicepick = choices[3] 
		else
			cpick = itemnames[3]
		end
		cX = 2
		cY = 95
	elseif m_selected == 5 then
		if menu_type == 'choice' then 
			choicepick = choices[4] 
		else
			cpick = itemnames[4]
		end
		cX = 2
		cY = 120
	elseif m_selected == 6 then
		cX = 2
		cY = 145
	elseif m_selected == 7 then
		cX = 2
		cY = 170
	elseif m_selected == 8 then
		cX = 2
		cY = 195
	elseif m_selected == 9 then
		cX = 2
		cY = 220
	end
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
		if alpha == 255 then menu_confirm() end
		
	elseif key == 'b' then
		sfx1:play()
		if menu_type == 'pause' then
			menu_enabled = false
		elseif menu_type ~= 'title' and menu_type ~= 'pause' and menu_type ~= 'choice' then
			menu_enable(menu_previous)
		end
		menu_previous = nil
		
	elseif key == 'left' or key == 'cpadleft' then
		if menu_type == 'settings' and m_selected <= 5 then
			if cpick == 'Textbox Location' then
				if settings.textloc == 'Bottom' then
					settings.textloc = 'Top'
				else
					settings.textloc = 'Bottom'
				end
			elseif cpick == 'Text Speed' then
				if settings.textspd > 50 then
					settings.textspd = settings.textspd - 10
				end
			elseif cpick == 'AutoForward Time' then
				if settings.autospd > 1 then
					settings.autospd = settings.autospd - 1
				end
			elseif cpick == 'Char. Animations' then
				if settings.animh == 0 then
					settings.animh = 1
				else
					settings.animh = 0
				end
			end
			
		elseif (menu_type == 'savegame' or menu_type == 'loadgame') and pagenum > 1 then
			pagenum = pagenum - 1
			menu_enable(menu_type)
		end
		
	elseif key == 'right' or key == 'cpadright' then
		if menu_type == 'settings' and m_selected <= 5 then
			if cpick == 'Textbox Location' then
				menu_keypressed('left')
			elseif cpick == 'Text Speed' then
				if settings.textspd >= 50 and settings.textspd < 300 then
					settings.textspd = settings.textspd + 10
				end
			elseif cpick == 'AutoForward Time' then
				if settings.autospd >= 1 and settings.autospd < 15 then
					settings.autospd = settings.autospd + 1
				end
			elseif cpick == 'Char. Animations' then
				menu_keypressed('left')
			end
		
		elseif (menu_type == 'savegame' or menu_type == 'loadgame') and pagenum < 10 then
			pagenum = pagenum + 1
			menu_enable(menu_type)
		end
	end
end

function menu_mousepressed()
	if menu_items >= 2 and mouseX>=16 and mouseX<=rectwidth+16 and mouseY>=45 and mouseY<=61 then
		m_selected = 2
	elseif menu_items >= 3 and mouseX>=16 and mouseX<=rectwidth+16 and mouseY>=70 and mouseY<=86 then
		m_selected = 3
	elseif menu_items >= 4 and mouseX>=16 and mouseX<=rectwidth+16 and mouseY>=95 and mouseY<=111 then
		m_selected = 4
	elseif menu_items >= 5 and mouseX>=16 and mouseX<=rectwidth+16 and mouseY>=120 and mouseY<=136 then
		m_selected = 5
	elseif menu_items >= 6 and mouseX>=16 and mouseX<=rectwidth+16 and mouseY>=145 and mouseY<=161 then
		m_selected = 6
	elseif menu_items >= 7 and mouseX>=16 and mouseX<=rectwidth+16 and mouseY>=170 and mouseY<=186 then
		m_selected = 7
	elseif menu_items >= 8 and mouseX>=16 and mouseX<=rectwidth+16 and mouseY>=195 and mouseY<=211 then
		m_selected = 8
	elseif menu_items >= 9 and mouseX>=16 and mouseX<=rectwidth+16 and mouseY>=220 and mouseY<=236 then
		m_selected = 9
	elseif menu_previous and mouseX>=16 and mouseX<=46 and mouseY>=220 and mouseY<=236 then
		menu_keypressed('b')
	end
	
	if mouseX <= rectwidth and mouseY <= 211 then
		m_select()
		menu_keypressed('a')
	end
end