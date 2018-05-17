function menu_enable(m, x)
	menu_type = m
	menu_items = x
	menu_enabled = true
	m_selected = 2 
	m_select()
end

function menu_draw()
	love.graphics.setColor(255, 255, 255, alpha)
	love.graphics.draw(background_Image, posX, posY)
	
	love.graphics.setColor(255, 189, 225, alpha)
	if menu_items >= 2 then love.graphics.rectangle("fill", 16, 45, 100, 16 ) end
	if menu_items >= 3 then love.graphics.rectangle("fill", 16, 70, 100, 16 ) end
	if menu_items >= 4 then love.graphics.rectangle("fill", 16, 95, 100, 16 ) end
	if menu_items >= 5 then love.graphics.rectangle("fill", 16, 120, 100, 16 ) end
	if menu_items >= 6 then love.graphics.rectangle("fill", 16, 145, 100, 16 ) end
	if menu_items >= 7 then love.graphics.rectangle("fill", 16, 170, 100, 16 ) end
	if menu_items >= 8 then love.graphics.rectangle("fill", 16, 195, 100, 16 ) end
	if menu_items >= 9 then love.graphics.rectangle("fill", 16, 220, 100, 16 ) end
	
	love.graphics.setColor(0,0,0)
	love.graphics.print('>',cX,cY,0,1,1)
	
	if menu_type == 'title' then
		love.graphics.print("Main Menu:",16, 20)
		love.graphics.print("New Game",16, 45)
		love.graphics.print("Load Game",16, 70)
		love.graphics.print("Settings",16, 95)
		love.graphics.print("Help",16, 120)
		love.graphics.print("Quit",16, 145)
		
	elseif menu_type == 'help' then
		love.graphics.print("Controls:",16, 20)
		love.graphics.print("A - Select",16, 45)
		love.graphics.print("B - Auto On/Off",16, 70)
		love.graphics.print("X - Skip",16, 95)
		love.graphics.print("Y - Pause",16, 120)
		
	elseif menu_type == 'loadgame' then
		love.graphics.print("Load Game:",16, 20)
		love.graphics.print("Save File 1",16, 45)
		love.graphics.print("Save File 2",16, 70)
		love.graphics.print("Save File 3",16, 95)
		love.graphics.print("Save File 4",16, 120)
		love.graphics.print("Save File 5",16, 145)
		love.graphics.print("Save File 6",16, 170)
		
	elseif menu_type == 'savegame' then
		love.graphics.print("Save Game:",16, 20)
		love.graphics.print("Save File 1",16, 45)
		love.graphics.print("Save File 2",16, 70)
		love.graphics.print("Save File 3",16, 95)
		love.graphics.print("Save File 4",16, 120)
		love.graphics.print("Save File 5",16, 145)
		love.graphics.print("Save File 6",16, 170)
		
	elseif menu_type == 'pause' then
		love.graphics.print("Pause Menu:",16, 20)
		love.graphics.print("Save Game",16, 45)
		love.graphics.print("Load Game",16, 70)
		love.graphics.print("Main Menu",16, 95)
		love.graphics.print("Settings",16, 120)
		love.graphics.print("Help",16, 145)
		love.graphics.print("Return",16, 170)
		
	elseif menu_type == 'mainyesno' then
		love.graphics.print("Are you sure?",16, 20)
		love.graphics.print("Yes",16, 45)
		love.graphics.print("No",16, 70)
		
	elseif menu_type == 'settings' then
		love.graphics.print("Settings:",16, 20)
		love.graphics.print("Textbox Location",16, 45)
		love.graphics.print("Text Speed",16, 70)
		love.graphics.print("Fast Mode",16, 95)
		love.graphics.print("v0.0.1",270, 220)
		
	elseif menu_type == 'textloc' then
		love.graphics.print("Settings - Textbox Location:",16, 20)
		love.graphics.print("Top",16, 45)
		love.graphics.print("Bottom (Default)",16, 70)
		love.graphics.print("Current Setting: "..setting_textloc,16, 220)
		
	elseif menu_type == 'textspd' then
		love.graphics.print("Settings - Text Speed:",16, 20)
		love.graphics.print("50 (Slowest)",16, 45)
		love.graphics.print("75",16, 70)
		love.graphics.print("100 (Default)",16, 95)
		love.graphics.print("150",16, 120)
		love.graphics.print("200 (Fastest)",16, 145)		
		love.graphics.print("Current Setting: "..setting_textspd,16, 220)

	elseif menu_type == 'fmode' then
		love.graphics.print("Settings - Fast Mode:",16, 20)
		love.graphics.print("0 - Off (Default)",16, 45)
		love.graphics.print("1 - On",16, 70)
		love.graphics.print("What is Fast Mode?",16, 120)
		love.graphics.print("When this is set to off, most character sprites",16, 145)		
		love.graphics.print("will be unloaded in reloaded in each dialog.",16, 165)	
		love.graphics.print("This can prevent crashes from happening.",16, 185)	
		love.graphics.print("Current Setting: "..setting_fmode,16, 220)

		
	elseif menu_type == 'choice' then
		xaload = xaload + 1
		love.graphics.print(menutext,16, 20)
		love.graphics.print(choice1,16, 45)
		if menu_items >= 3 then love.graphics.print(choice2,16, 70) end
		if menu_items >= 4 then love.graphics.print(choice3,16, 95) end
		if menu_items >= 5 then love.graphics.print(choice4,16, 120) end
		if menu_items >= 6 then love.graphics.print(choice5,16, 145) end
		if menu_items >= 7 then love.graphics.print(choice6,16, 170) end
		if menu_items >= 8 then love.graphics.print(choice7,16, 195) end
		if menu_items >= 8 then love.graphics.print(choice8,16, 220) end
	end
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
			if player == "" then
				love.keyboard.setTextInput(true)
			elseif cl == 10001 then
				menu_enabled = false
				audioUpdate('2')
				xaload = 0
				state = "game"
			elseif cl <= 9999 or global_os ~= 'Horizon' then
				hideSayori()
				hideYuri()
				hideNatsuki()
				hideMonika()
				menu_enabled = false
				cl = 1
				xaload = 0
				state = "game"
			end
			
		elseif m_selected == 3 then --load game
			menu_enable('loadgame', 7)
			
		elseif m_selected == 4 then --settings
			menu_enable('settings', 4)
		
		elseif m_selected == 5 then --help
			menu_enable('help', 5)
			m_select()
			
		elseif m_selected == 6 then --quit
			unloadAll()
			love.quit()
		end
		
	elseif menu_type == 'loadgame' then --load game confirm 
		if player ~= "" and cl ~= 0 then
			savenumber = m_selected - 1
			if love.filesystem.isFile("save"..savenumber..".sav") then
				loadgame()
				loadupdate()
				xaload = 0
				state = "game"
				menu_enabled = false
			end
		end
		
	elseif menu_type == 'savegame' then  --save game confirm 
		savenumber = m_selected - 1
		savegame()
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
			menu_enable('settings', 4)
		elseif m_selected == 6 then
			menu_enable('help',5)
		elseif m_selected == 7 then
			menu_enabled = false
		end
	
	elseif menu_type == 'mainyesno' then
		if m_selected == 2 then
			state = 'title'
			timer = 501
			xaload = 0
			audioStop()
			audioUpdate('1')
			menu_enable('title',6)
		elseif m_selected == 3 then
			menu_enable('pause',7)
		end
		
	elseif menu_type == 'settings' then
		if m_selected == 2 then
			menu_enable('textloc', 3)
		elseif m_selected == 3 then
			menu_enable('textspd', 6)
		elseif m_selected == 4 then
			menu_enable('fmode', 3)
		end
		
	elseif menu_type == 'textloc' then
		if m_selected == 2 then
			setting_textloc = 'Top'
		elseif m_selected == 3 then
			setting_textloc = 'Bottom'
		end
		menu_enable(menu_previous, menu_previousitems)
	
	elseif menu_type == 'textspd' then
		if m_selected == 2 then
			setting_textspd = 50
		elseif m_selected == 3 then
			setting_textspd = 75
		elseif m_selected == 4 then
			setting_textspd = 100
		elseif m_selected == 5 then
			setting_textspd = 150
		elseif m_selected == 6 then
			setting_textspd = 200
		end
		menu_enable(menu_previous, menu_previousitems)
	
	elseif menu_type == 'fmode' then
		if m_selected == 2 then
			setting_fmode = 0
		elseif m_selected == 3 then
			setting_fmode = 1
		end
		menu_enable(menu_previous, menu_previousitems)
	
	elseif menu_type == 'choice' then
		xaload = 0
		cl = cl + 1
		menu_type = nil
		menu_enabled = false
	end
end

function m_select()
	if m_selected == 2 then
		cX = 8
		cY = 45
	elseif m_selected == 3 then
		cX = 8
		cY = 70
	elseif m_selected == 4 then
		cX = 8
		cY = 95
	elseif m_selected == 5 then
		cX = 8
		cY = 120
	elseif m_selected == 6 then
		cX = 8
		cY = 145
	elseif m_selected == 7 then
		cX = 8
		cY = 170
	elseif m_selected == 8 then
		cX = 8
		cY = 195
	end
end

function menu_keypressed(key)
	if key == 'down' then
		sfx2:play()
		if m_selected <= menu_items-1 then
			m_selected = m_selected + 1
			m_select()
		else
			m_selected = 2
			m_select()
		end
	elseif key == 'up' then
		sfx2:play()
		if m_selected >= 3 then
			m_selected = m_selected - 1
			m_select()
		else
			m_selected = menu_items
			m_select()
		end
	elseif key == 'a' then
		menu_confirm()
	elseif key == 'b' then
		if menu_type == 'pause' then
			sfx1:play()
			menu_enabled = false
		elseif menu_type ~= 'title' and menu_type ~= 'pause' then
			sfx1:play()
			menu_enable(menu_previous, menu_previousitems)
		end
	end
end