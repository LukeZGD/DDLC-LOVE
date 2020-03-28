local gtext = glitchtext(48)
local s_name = glitchtext(12)
local gs = math.random(0,2)

function ch10script()
	if cl > 150 then
		scriptJump(1)
	elseif cl == 1 then
	bgUpdate('residential')
	audioUpdate('2g')
	cw(s_name,gtext)
	elseif cl == 2 then
		cw('bl', "Veo a lo lejos corriendo hacia mí e intentando llamar mi atención a una chica muy pesada que está dando la nota agitando los brazos.")
	elseif cl == 3 then
		cw('bl', "Esa chica es "..s_name..", mi vecina y mi mejor amiga desde que éramos pequeños.")
	elseif cl == 4 then
		cw('bl', "Es la típica amiga con la que no te ves quedando, pero lo hacéis porque os conocéis desde hace tiempo.")
	elseif cl == 5 then
		cw('bl', "Solíamos caminar juntos hacia el colegio, pero desde que empezamos el instituto se queda dormida cada vez con más frecuencia y ya estoy muy cansado de esperarla.")
	elseif cl == 6 then
		cw('bl', "Pero para perseguirme así, casi mejor salgo corriendo.")
	elseif cl == 7 then
		cw('bl', "Sin embargo, me paro en el paso de peatones, suspiro y dejo que "..s_name.." me pille.")
	event_init('s_glitch')
	elseif cl == 8 then
	if gs == 0 then
		audioUpdate('2gs')
	elseif gs == 1 then
		audioUpdate('2gs2')
	else
		audioUpdate('2gs3')
	end
	event_start('s_glitch')
	end
end
