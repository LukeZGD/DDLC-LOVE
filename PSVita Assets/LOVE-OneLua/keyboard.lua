function love.keyboard.isDown(key)
	if key == keyconfig[1] then
		key = "circle"
	elseif key == keyconfig[2] then
		key = "cross"
	elseif key == keyconfig[3] then
		key = "triangle"
	elseif key == keyconfig[4] then
		key = "square"
	elseif key == keyconfig[5] then
		key = "l"
	elseif key == keyconfig[6] then
		key = "r"
	end
	if buttons.held[key] then
		return true
	else
		return false
	end
end

function love.keyboard.setTextInput(boo)
	if boo then
		local text = osk.init("","")
		if text and love.textinput then love.textinput(text) end
	end
end