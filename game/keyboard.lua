
function keyboard_load()
	key_root = './images/'																					
	key_img_bg_b = love.graphics.newImage(key_root .. 'img/background_title_b.png')									-- load keyboard images
	key_img_key = love.graphics.newImage(key_root .. 'img/v_keyboard_b.png')
	key_imkey_g_select = love.graphics.newImage(key_root .. 'img/v_key_select.png')
	key_imkey_g_select_l = love.graphics.newImage(key_root .. 'img/v_key_select_l.png')
	key_imkey_g_select_m = love.graphics.newImage(key_root .. 'img/v_key_select_m.png')
	key_r, key_g, key_b = 150, 150, 255																				-- default background colors
	key_reverse_bg_color = false																					-- controls the background colors
	key_preview_text = true																						-- set if text preview will be showed
	key_speed_bg_color = 25																						-- set the speed of colors in change (background)
	key_click_wait = 0																								-- controls the preesed click
	key_x_sel, key_y_sel = 50, 50																					-- controls the selected keys
	key_x_sel_l, key_y_sel_l = 50, 50																				--  //	
	key_x_sel_m, key_y_sel_m = 50, 50																				--  //																				
	key_typed_text = ""																							-- store the typed text aqui
	key_red_light = 0																								-- controls the red color in the click
	key_speed_red_light = 25																					-- set the speed of red color to black in click

	key_keys = {}																								-- set the keyboard characters 
	key_keys[1] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O'}
	key_keys[2] = {'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd'}
	key_keys[3] = {'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's'}
	key_keys[4] = {'t', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7'}
	key_keys[5] = {'8', '9', '?', '!', '@', '#', '$', '%', '&', '*', '.', ',', ':', '+', '-'}

end

function keyboard_close()
	-- set your close actions here
	player = key_typed_text
	audioUpdate('2')
	bgCheck()
	charCheck()
	state = "game"
end

function keyboard_update(dt)

	-- controls the click_wait
	if key_click_wait > 0 then
		key_click_wait = key_click_wait - dt * 5000
	end


	-- change the background colors (adjust key_speed_bg_color for your like)
	if not key_reverse_bg_color then
		if key_b > 50 then
			key_b = key_b - dt * key_speed_bg_color
		else
			if key_r > 50 then
				key_r = key_r - dt * key_speed_bg_color
			else
				if key_g > 150 then
					key_g = key_g - dt * key_speed_bg_color
				else
					key_reverse_bg_color = not key_reverse_bg_color
				end
			end
		end
	else
		if key_g < 200 then
			key_g = key_g + dt * key_speed_bg_color
		else
			if key_r < 200 then
				key_r = key_r + dt * key_speed_bg_color
			else
				if key_b < 240 then
					key_b = key_b + dt * key_speed_bg_color
				else
					key_reverse_bg_color = not key_reverse_bg_color
				end
			end
		end
	end


	-- make the "red selected key" (adjust key_speed_red_light for your like)
	if key_red_light > 0 then
		key_red_light = key_red_light - dt * key_speed_red_light
	end


	-- controls the keys down
	if love.mouse.isDown(1) then
		p_x, p_y = love.mouse.getPosition()
		if p_x >= 10 and p_x <= 310 and p_y >= 110 and p_y <= 209 and key_click_wait <= 0 then
			c_x = -10
			c_y = 90
			i = 1
			j = 1
			while (i <= 15) do
				if p_x >= c_x + 20 * i and p_x + 1 <= c_x + 20 * (i+1) then
					while (j <= 5) do
						if p_y >= c_y + 20 * j and p_y + 1 <= c_y + 20 * (j+1) then
							key_x_sel_l, key_y_sel_l = 50, 50
							key_x_sel_m, key_y_sel_m = 50, 50
							key_x_sel = c_x + 20 * i
							key_y_sel = c_y + 20 * j
							key_typed_text = key_typed_text .. key_keys[j][i]
							i = 15
							j = 5
						end
						j = j + 1
					end
				end
				i = i + 1
			end
		elseif p_x >= 10 and p_x + 1 <= 269 and p_y >= 210 and p_y + 1 <= 230 and key_click_wait <= 0 then
			key_x_sel, key_y_sel = 50, 50
			key_x_sel_m, key_y_sel_m = 50, 50
			key_x_sel_l = 10
			key_y_sel_l = 210
			key_typed_text = key_typed_text .. ' '
		elseif p_x >= 270 and p_x + 1 <= 310 and p_y >= 210 and p_y + 1 <= 230 and key_typed_text ~= '' and key_click_wait <= 0 then
			key_x_sel, key_y_sel = 50, 50
			key_x_sel_l, key_y_sel_l = 50, 50
			key_x_sel_m = 270
			key_y_sel_m = 210
			key_typed_text = key_typed_text:sub(1, -2)
		elseif p_x >= 290 and p_x + 1 <= 310 and p_y >= 10 and p_y + 1 <= 30 and key_click_wait <= 0 then
			key_x_sel_l, key_y_sel_l = 50, 50
			key_x_sel_m, key_y_sel_m = 50, 50
			key_x_sel = 290
			key_y_sel = 10
			keyboard_close()			
		end
		key_red_light = 255
		key_click_wait = 100
   end

end



function keyboard_draw()
	love.graphics.setScreen('bottom')
	love.graphics.setColor(key_r,key_g,key_b)
	love.graphics.draw(key_img_bg_b, 0, 0)

	love.graphics.setColor(key_red_light,0,0)
	love.graphics.draw(key_imkey_g_select, key_x_sel, key_y_sel)
	love.graphics.draw(key_imkey_g_select_l, key_x_sel_l, key_y_sel_l)
	love.graphics.draw(key_imkey_g_select_m, key_x_sel_m, key_y_sel_m)

	love.graphics.setColor(255,255,255)
	love.graphics.draw(key_img_key, 0, 0)

	if key_preview_text then
		love.graphics.setColor(0,0,0)
		love.graphics.print(key_typed_text, 10, 12)
	end
end
