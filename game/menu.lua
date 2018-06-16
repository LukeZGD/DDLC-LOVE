function menu_enable(m, x, ctype)
	menu_type = m
	menu_items = x
	choicetype = ctype
	menu_enabled = true
	m_selected = 2 
	if menu_type ~= 'choice' then m_select()
	else m_selectchoice() end
end

function menu_draw()
	love.graphics.setColor(255, 255, 255, alpha)
	if choicetype ~= 'spec' then love.graphics.draw(background_Image, posX, posY) end
	
	love.graphics.setColor(255, 189, 225, alpha)
	if menu_items >= 2 and choicetype ~= 'spec' then 
		love.graphics.rectangle('fill', 16, 45, 100, 16 ) 
	elseif menu_items >= 2 and choicetype == 'spec' then
		love.graphics.rectangle('fill', 16, 45, 160, 16 ) 
	end
	if menu_items >= 3 and choicetype ~= 'spec' then 
		love.graphics.rectangle('fill', 16, 70, 100, 16 ) 
	elseif menu_items >= 3 and choicetype == 'spec' then
		love.graphics.rectangle('fill', 16, 70, 160, 32 ) 
	end
	if menu_items >= 4 then love.graphics.rectangle('fill', 16, 95, 100, 16 ) end
	if menu_items >= 5 then love.graphics.rectangle('fill', 16, 120, 100, 16 ) end
	if menu_items >= 6 then love.graphics.rectangle('fill', 16, 145, 100, 16 ) end
	if menu_items >= 7 then love.graphics.rectangle('fill', 16, 170, 100, 16 ) end
	if menu_items >= 8 then love.graphics.rectangle('fill', 16, 195, 100, 16 ) end
	if menu_items >= 9 then love.graphics.rectangle('fill', 16, 220, 100, 16 ) end
	if menu_previous then love.graphics.rectangle('fill', 16, 220, 50, 16 ) end
	
	love.graphics.setColor(0,0,0)
	love.graphics.draw(guicheck,cX,cY)
	
	if menu_type == 'title' then
		love.graphics.print('Main Menu:',16, 20)
		love.graphics.print('New Game',16, 45)
		love.graphics.print('Load Game',16, 70)
		love.graphics.print('Settings',16, 95)
		love.graphics.print('Help',16, 120)
		love.graphics.print('Quit',16, 145)
		
	elseif menu_type == 'help' then
		love.graphics.print('Help - Controls:',16, 20)
		love.graphics.print('A - Select',16, 45)
		love.graphics.print('B - Auto On/Off',16, 70)
		love.graphics.print('X - Skip',16, 95)
		love.graphics.print('Y - Pause',16, 120)
		
	elseif menu_type == 'loadgame' then
		love.graphics.print('Load Game:',16, 20)
		love.graphics.print('Save File 1',16, 45)
		love.graphics.print('Save File 2',16, 70)
		love.graphics.print('Save File 3',16, 95)
		love.graphics.print('Save File 4',16, 120)
		love.graphics.print('Save File 5',16, 145)
		love.graphics.print('Save File 6',16, 170)
		
	elseif menu_type == 'savegame' then
		love.graphics.print('Save Game:',16, 20)
		love.graphics.print('Save File 1',16, 45)
		love.graphics.print('Save File 2',16, 70)
		love.graphics.print('Save File 3',16, 95)
		love.graphics.print('Save File 4',16, 120)
		love.graphics.print('Save File 5',16, 145)
		love.graphics.print('Save File 6',16, 170)
		
	elseif menu_type == 'pause' then
		love.graphics.print('Pause Menu:',16, 20)
		love.graphics.print('Save Game',16, 45)
		love.graphics.print('Load Game',16, 70)
		love.graphics.print('Main Menu',16, 95)
		love.graphics.print('Settings',16, 120)
		love.graphics.print('Help',16, 145)
		love.graphics.print('Return',16, 170)
		
	elseif menu_type == 'mainyesno' then
		love.graphics.print('Are you sure?',16, 20)
		love.graphics.print('Yes',16, 45)
		love.graphics.print('No',16, 70)
		
	elseif menu_type == 'settings' then
		love.graphics.print('Settings:',16, 20)
		love.graphics.print('Textbox Location',16, 45)
		love.graphics.print('Text Speed',16, 70)
		love.graphics.print('AutoForward Time',16, 95)
		love.graphics.print('Char. Animations',16, 120)
		love.graphics.print(dversion,270, 205)
		love.graphics.print(dvertype,270, 220)
		
	elseif menu_type == 'textloc' then
		love.graphics.print('Settings - Textbox Location:',16, 20)
		love.graphics.print('Top Screen',16, 45)
		love.graphics.print('Bottom Screen',16, 70)
		love.graphics.print('Current Setting: '..settings.textloc,16, 200)
		
	elseif menu_type == 'textspd' then
		love.graphics.print('Settings - Text Speed:',16, 20)
		love.graphics.print('50 (Slowest)',16, 45)
		love.graphics.print('75',16, 70)
		love.graphics.print('100',16, 95)
		love.graphics.print('150',16, 120)
		love.graphics.print('200 (Fastest)',16, 145)		
		love.graphics.print('Current Setting: '..settings.textspd,16, 200)
	
	elseif menu_type == 'autospd' then
		love.graphics.print('Settings - Auto-Forward Time:',16, 20)
		love.graphics.print('2 sec. (Fastest)',16, 45)
		love.graphics.print('4 sec.',16, 70)
		love.graphics.print('6 sec.',16, 95)
		love.graphics.print('8 sec.',16, 120)
		love.graphics.print('10 sec. (Slowest)',16, 145)
		love.graphics.print('Current Setting: '..settings.autospd,16, 200)
	
	elseif menu_type == 'animh' then
		love.graphics.print('Settings - Character Animations:',16, 20)
		love.graphics.print('0 - Off',16, 45)
		love.graphics.print('1 - On',16, 70)
		love.graphics.print('Current Setting: '..settings.animh,16, 200)
	
	elseif menu_type == 'choice' then
		xaload = xaload + 1
		love.graphics.print(cl,0,0)
		if choicetype == 'spec' then love.graphics.setColor(255,255,255) end
		love.graphics.print(menutext,16, 20)
		love.graphics.setColor(0,0,0)
		love.graphics.print(choice1,16, 45)
		if menu_items >= 3 and choicetype ~= 'spec' then 
			love.graphics.print(choice2,16, 70) 
		elseif menu_items >= 3 and choicetype == 'spec' then
			love.graphics.print(choice2,16, 70)
			love.graphics.print(choice2a,16, 86) 
		end
		if menu_items >= 4 then love.graphics.print(choice3,16, 95) end
		if menu_items >= 5 then love.graphics.print(choice4,16, 120) end
		if menu_items >= 6 then love.graphics.print(choice5,16, 145) end
		if menu_items >= 7 then love.graphics.print(choice6,16, 170) end
		if menu_items >= 8 then love.graphics.print(choice7,16, 195) end
		if menu_items >= 8 then love.graphics.print(choice8,16, 220) end
	end
	
	if menu_previous then love.graphics.print('Back',16, 220) end
end

function menu_confirm()
	
	sfx1:play()

	if menu_type == 'title' then --title screen options
		
		menu_previous = 'title'
		menu_previousitems = 6
		
		if global_os ~= 'Horizon' then
			player = 'MC'
		end
		
		if m_selected == 2 then --new game
			if monikachr == false and chapter < 5 then --set up early act 1 end
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
			menu_enable('loadgame', 7)
			
		elseif m_selected == 4 then --settings
			menu_enable('settings', 5)
		
		elseif m_selected == 5 then --help
			menu_enable('help', 5)
			m_select()
			
		elseif m_selected == 6 then --quit
			game_quit()
		end
		
	elseif menu_type == 'loadgame' then --load game confirm 
		if player ~= '' then
			savenumber = m_selected - 1
			if love.filesystem.isFile('save'..savenumber..'.sav') then
				changeState('game',2)
			end
		end
		
	elseif menu_type == 'savegame' then  --save game confirm 
		savenumber = m_selected - 1
		savegame()
		menu_previous = nil
		menu_enabled = false
	
	elseif menu_type == 'pause' then --pause menu options
		menu_previous = 'pause'
		menu_previousitems = 7
		if m_selected == 2 then
			menu_enable('savegame',7)
		elseif m_selected == 3 then
			menu_enable('loadgame',7)
		elseif m_selected == 4 then
			menu_enable('mainyesno',3)
		elseif m_selected == 5 then
			menu_enable('settings', 5)
		elseif m_selected == 6 then
			menu_enable('help',5)
		elseif m_selected == 7 then
			menu_enabled = false
			menu_previous = nil
		end
	
	elseif menu_type == 'mainyesno' then
		if m_selected == 2 then
			changeState('title')
		elseif m_selected == 3 then
			menu_enable('pause',7)
		end
		
	elseif menu_type == 'settings' then
		if m_selected == 2 then
			menu_enable('textloc', 3)
		elseif m_selected == 3 then
			menu_enable('textspd', 6)
		elseif m_selected == 4 then
			menu_enable('autospd', 6)
		elseif m_selected == 5 then
			menu_enable('animh', 3)
		end
		
	elseif menu_type == 'textloc' then
		if m_selected == 2 then
			settings.textloc = 'Top'
		elseif m_selected == 3 then
			settings.textloc = 'Bottom'
		end
		menu_enable(menu_previous, menu_previousitems)
		menu_previous = nil
	
	elseif menu_type == 'textspd' then
		if m_selected == 2 then
			settings.textspd = 50
		elseif m_selected == 3 then
			settings.textspd = 75
		elseif m_selected == 4 then
			settings.textspd = 100
		elseif m_selected == 5 then
			settings.textspd = 150
		elseif m_selected == 6 then
			settings.textspd = 200
		end
		menu_enable(menu_previous, menu_previousitems)
		menu_previous = nil
	
	elseif menu_type == 'animh' then
		if m_selected == 2 then
			settings.animh = 0
		elseif m_selected == 3 then
			settings.animh = 1
		end
		menu_enable(menu_previous, menu_previousitems)
		menu_previous = nil
	
	elseif menu_type == 'autospd' then
		if m_selected == 2 then
			settings.autospd = 2
		elseif m_selected == 3 then
			settings.autospd = 4
		elseif m_selected == 4 then
			settings.autospd = 6
		elseif m_selected == 5 then
			settings.autospd = 8
		elseif m_selected == 6 then
			settings.autospd = 10
		end
		menu_enable(menu_previous, menu_previousitems)
		menu_previous = nil
	
	elseif menu_type == 'choice' then
		if choicepick ~= '' then
			xaload = -1
			cl = cl + 1
			menu_type = nil
			menu_enabled = false
			menu_previous = nil
		end
	end
	
end

function m_select()
	if m_selected == 2 then
		cX = 2
		cY = 45
	elseif m_selected == 3 then
		cX = 2
		cY = 70
	elseif m_selected == 4 then
		cX = 2
		cY = 95
	elseif m_selected == 5 then
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
	end
end

function m_selectchoice()
	if m_selected == 2 then
		if choice1 ~= nil then choicepick = choice1 end
		cX = 2
		cY = 45
	elseif m_selected == 3 then
		if choice2 ~= nil then choicepick = choice2 end
		cX = 2
		cY = 70
	elseif m_selected == 4 then
		if choice3 ~= nil then choicepick = choice3 end
		cX = 2
		cY = 95
	elseif m_selected == 5 then
		if choice4 ~= nil then choicepick = choice4 end
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
		
		if menu_type ~= 'choice' then m_select()
		else m_selectchoice() end
		
	elseif key == 'up' or key == 'cpadup' then
		sfx2:play()
		if m_selected >= 3 then
			m_selected = m_selected - 1
		else
			m_selected = menu_items
		end
		if menu_type ~= 'choice' then m_select()
		else m_selectchoice() end
		
	elseif key == 'a' then
		if alpha == 255 then menu_confirm() end
		
	elseif key == 'b' then
		sfx1:play()
		if menu_type == 'pause' then
			menu_enabled = false
		elseif menu_type ~= 'title' and menu_type ~= 'pause' and menu_type ~= 'choice' then
			menu_enable(menu_previous, menu_previousitems)
		end
		menu_previous = nil
	end
end

function menu_mousepressed()
	if menu_items >= 2 and mouseX>=16 and mouseX<=116 and mouseY>=45 and mouseY<=61 then
		m_selected = 2
		menu_keypressed('a')
	elseif menu_items >= 3 and mouseX>=16 and mouseX<=116 and mouseY>=70 and mouseY<=86 then
		m_selected = 3
		menu_keypressed('a')
	elseif menu_items >= 4 and mouseX>=16 and mouseX<=116 and mouseY>=95 and mouseY<=111 then
		m_selected = 4
		menu_keypressed('a')
	elseif menu_items >= 5 and mouseX>=16 and mouseX<=116 and mouseY>=120 and mouseY<=136 then
		m_selected = 5
		menu_keypressed('a')
	elseif menu_items >= 6 and mouseX>=16 and mouseX<=116 and mouseY>=145 and mouseY<=161 then
		m_selected = 6
		menu_keypressed('a')
	elseif menu_items >= 7 and mouseX>=16 and mouseX<=116 and mouseY>=170 and mouseY<=186 then
		m_selected = 7
		menu_keypressed('a')
	elseif menu_items >= 8 and mouseX>=16 and mouseX<=116 and mouseY>=195 and mouseY<=211 then
		m_selected = 8
		menu_keypressed('a')
	elseif menu_items >= 9 and mouseX>=16 and mouseX<=116 and mouseY>=220 and mouseY<=236 then
		m_selected = 9
		menu_keypressed('a')
	elseif menu_previous and mouseX>=16 and mouseX<=66 and mouseY>=220 and mouseY<=236 then
		menu_keypressed('b')
	end
end