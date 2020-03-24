lang_names = {'English', 'Español', 'Italiano'}
lang_codes = {'eng', 'esp', 'ita'}
local lang_state = 0
local lang_select = 1

function lang_draw()
	lg.setColor(255,255,255,menu_alpha)
	lg.draw(background_Image,posX,posY)
	if menu_enabled then
		menu_draw()
	end
end
