local poemsp = {}
local p_alpha
local p_confirm
local p_number

function poem_special_i(poem)
	p_alpha = 1
	p_confirm = 0
	p_number = poem
	poemsp = {}
	poemsp.topX = 240
	if p_number == 5 then
		poemsp.topimg = lgnewImage('assets/images/poem_special/'..settings.lang..'/poem_special5a.png')
	elseif p_number == 7 then
		poemsp.topimg = lgnewImage('assets/images/poem_special/poem_special7a.png')
		poemsp.topX = 328
	elseif p_number == 12 then
		poemsp.topimg = lgnewImage('assets/images/poem_special/'..settings.lang..'/poem_end.png')
	elseif p_number == 13 then
		poemsp.topimg = lgnewImage('assets/images/poem_special/'..settings.lang..'/poem_end_clearall.png')
		poemsp.topX = 0
	else
		poemsp.topimg = lgnewImage('assets/images/poem_special/'..settings.lang..'/poem_special'..p_number..'.png')
	end
	state = 'poem_special'
	xaload = 0
	sfxplay('pageflip')
end

function drawpoem_special()
	lg.setBackgroundColor(0,0,0)
	lgsetColor(255,255,255,p_alpha)
	lg.draw(poemsp.topimg, poemsp.topX)
	if p_confirm == 1 and p_number >= 12 then
		lgsetColor(255,255,255,128)
		lg.rectangle('fill',0,0,1280,725)
		lgsetColor(255,189,225,255)
		lg.rectangle('fill',400,180,480,360)
		lgsetColor(255,230,244,255)
		lg.rectangle('fill',410,190,460,340)
		lgsetColor(255,189,255,255)
		lg.rectangle('fill',435,245,410,42)
		lgsetColor(255,230,244,255)
		lg.rectangle('fill',440,250,400,32)
		lgsetColor(255,255,255,102)
		lg.rectangle('fill',435,245,410,42)
		lgsetColor(0,0,0,255)
		lg.print(tr.missing[1],430,190)
		outlineText(tr.missing[2],440,250)
		lg.draw(gui.check,408,250)
	end
end

function updatepoem_special()
	xaload = xaload + 1
	if p_confirm >= 1 and p_number <= 11 then
		if p_alpha <= 0 then
			cl = cl + 1
			xaload = 0
			changeState('game',0)
		else
			p_alpha = math.max(p_alpha - 3, 0)
		end
	elseif p_confirm >= 2 and p_number >= 12 then
		love.event.quit()
	else
		p_alpha = math.min(p_alpha + 5, 255)
	end
end

function poem_special_keypressed(key)
	if key == 'a' then
		p_confirm = p_confirm + 1
		if p_number == 2 then
			xaload = 0
			sfxplay('giggle')
		elseif p_number == 5 then
			poemsp.topimg = lgnewImage('assets/images/poem_special/'..settings.lang..'/poem_special5b.png')
		elseif p_number == 7 then
			poemsp.topimg = lgnewImage('assets/images/poem_special/poem_special7b.png')
		end
	end
end
