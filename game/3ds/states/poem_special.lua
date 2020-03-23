local poemsp = {}
local p_alpha
local p_confirm
local p_number

function poem_special_i(poem)
	p_alpha = 1
	p_confirm = 0
	p_number = poem
	poemsp = {}
	poemsp.topX = 0
	poemsp.bottomX = 0
	if p_number == 1 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special1.png')
		poemsp.topX = 40
	elseif p_number == 2 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special2.png')
	elseif p_number == 3 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special3.png')
	elseif p_number == 4 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special4.png')
		poemsp.bottomimg = lg.newImage('assets/images/poem_special/poem_special4-2.png')
	elseif p_number == 5 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special5a.png')
	elseif p_number == 6 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special6.png')
	elseif p_number == 7 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special7a.png')
		poemsp.topX = 120
	elseif p_number == 8 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special8.png')
	elseif p_number == 9 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special9.png')
		poemsp.bottomimg = lg.newImage('assets/images/poem_special/poem_special9-2.png')
		poemsp.bottomX = -10
	elseif p_number == 10 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special10.png')
	elseif p_number == 11 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special11.png')
		poemsp.bottomimg = lg.newImage('assets/images/poem_special/poem_special11-2.png')
		poemsp.bottomX = -10
	elseif p_number == 12 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_end.png')
		poemsp.topX = 40
	elseif p_number == 13 then
		poemsp.topimg = lg.newImage('assets/images/poem_special/poem_end_clearall1.png')
		poemsp.bottomimg = lg.newImage('assets/images/poem_special/poem_end_clearall2.png')
		poemsp.topX = 40
	end
	state = 'poem_special'
	xaload = 0
	sfxplay('pageflip')
end

function drawpoem_special()
	drawTopScreen()
	lg.setBackgroundColor(0,0,0)
	lg.setColor(255,255,255,p_alpha)
	lg.draw(poemsp.topimg, poemsp.topX)
	if p_confirm == 1 and p_number >= 12 then
		lg.setColor(255,255,255,128)
		lg.rectangle('fill',0,0,400,240)
	end
	drawBottomScreen()
	lg.draw(poemsp.bottomimg, poemsp.bottomX)
	if p_confirm == 1 and p_number >= 12 then
		lg.setColor(255,255,255,255)
		lg.draw(background_Image, posX, posY)
		lg.setColor(255,189,225,255)
		lg.rectangle('fill', 16, 45, 30, 16)
		lg.setColor(0,0,0,255)
		lg.print("Error: Script file is missing or corrupt.\nPlease reinstall the game.",16, 12)
		lg.print('OK',17,45)
	end
end

function updatepoem_special()
	xaload = xaload + 1
	if p_confirm >= 1 and p_number <= 11 then
		if p_alpha <= 0 then
			poemsp.topimg = nil
			poemsp.bottomimg = nil
			cl = cl + 1
			xaload = 0
			changeState('game',0)
		else
			p_alpha = math.max(p_alpha - 3, 0)
		end
	elseif p_confirm >= 2 and p_number >= 12 then
		game_quit()
	else
		p_alpha = math.min(p_alpha + 5, 255)
	end
	if xaload == 500 then audioUpdate('0') end
end

function poem_special_keypressed(key)
	if key == 'a' then
		p_confirm = p_confirm + 1
		if p_number == 2 then
			xaload = 0
			sfxplay('giggle')
		elseif p_number == 5 then
			poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special5b.png')
		elseif p_number == 7 then
			poemsp.topimg = lg.newImage('assets/images/poem_special/poem_special7b.png')
		end
	end
end
