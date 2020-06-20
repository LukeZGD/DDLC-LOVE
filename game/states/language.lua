lang_names = {'English', 'Español (España)'}
lang_codes = {'eng', 'spa'} --ISO 639-2 language code
local lang_state = 0
local lang_select = 1

function lang_draw()
	lgsetColor(255,255,255,menu_alpha)
	lg.draw(menu_bg,posX,posY)
	if menu_enabled then
		menu_draw()
	end
end
