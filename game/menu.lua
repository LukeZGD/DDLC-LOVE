function menu_enable(m, x)
	menu_type = m
	menu_items = x
	menu_enabled = true
	m_selected = 1
	m_select()
end

function menu_draw()
	love.graphics.setColor(255, 255, 255, alpha)
	love.graphics.draw(background_Image, posX, posY)
	love.graphics.setColor(0,0,0)
	love.graphics.print('>',cX,cY,0,1,1)
	if menu_type == 'title' then
		love.graphics.print("New Game",16, 20, 0, 1, 1)
		love.graphics.print("Load Game",16, 36, 0, 1, 1)
		love.graphics.print("Settings",16, 52, 0, 1, 1)
		love.graphics.print("Help",16, 68, 0, 1, 1)
	elseif menu_type == 'help' then
		love.graphics.print("Controls:",16, 16, 0, 1, 1)
		love.graphics.print("Y - Save Game",16, 32, 0, 1, 1)
		love.graphics.print("B - Auto On/Off",16, 48, 0, 1, 1)
		love.graphics.print("X - Skip",16, 64, 0, 1, 1)
		love.graphics.print("L+R+Start - Reset Game",16, 80, 0, 1, 1)
		love.graphics.print("L+R+Select - Quit",16, 96, 0, 1, 1)
		love.graphics.print("Up+X+B - Erase Save Data",16, 112, 0, 1, 1)
		love.graphics.print("L+R+Up - Poem Game Test",16, 128, 0, 1, 1)
	end
end

function m_select()
	if m_selected == 1 then
		cX = 16
		cY = 16
	elseif m_selected == 2 then
		cX = 16
		cY = 32
	elseif m_selected == 3 then
		cX = 16
		cY = 48
	elseif m_selected == 4 then
		cX = 16
		cY = 64
	end
end

function menu_keypressed(key)
	if key == 'down' then
		if m_selected <= menu_items-1 then
			m_selected = m_selected + 1
			m_select()
		end
	elseif key == 'up' then
		if m_selected >= 2 then
			m_selected = m_selected - 1
			m_select()
		end
	elseif key == 'a' then
		--menu_confirm()
	end
end