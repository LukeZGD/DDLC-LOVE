local poemsp = {}
local p_alpha
local p_confirm
local p_number

function poem_special_i(poem)
	p_alpha = 1
	p_confirm = 0
	p_number = poem
	poemsp = {}
	if p_number == 1 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special1.png')
		poemsp.topX = 40
	elseif p_number == 2 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special2.png')
		poemsp.topX = 0
	elseif p_number == 3 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special3.png')
		poemsp.topX = 0
	elseif p_number == 4 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special4.png')
		poemsp.bottomimg = love.graphics.newImage('images/poem_special/poem_special4-2.png')
		poemsp.topX = 0
		poemsp.bottomX = 0
	elseif p_number == 5 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special5a.png')
		poemsp.topX = 0
	elseif p_number == 6 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special6.png')
		poemsp.topX = 0
	elseif p_number == 7 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special7a.png')
		poemsp.topX = 120
	elseif p_number == 8 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special8.png')
		poemsp.topX = 0
	elseif p_number == 9 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special9.png')
		poemsp.bottomimg = love.graphics.newImage('images/poem_special/poem_special9-2.png')
		poemsp.topX = 0
		poemsp.bottomX = -10
	elseif p_number == 10 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special10.png')
		poemsp.topX = 0
	elseif p_number == 11 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special11.png')
		poemsp.bottomimg = love.graphics.newImage('images/poem_special/poem_special11-2.png')
		poemsp.topX = 0
		poemsp.bottomX = -10
	elseif p_number == 12 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_end.png')
		poemsp.topX = 40
	elseif p_number == 13 then
		poemsp.topimg = love.graphics.newImage('images/poem_special/poem_end_clearall1.png')
		poemsp.bottomimg = love.graphics.newImage('images/poem_special/poem_end_clearall2.png')
		poemsp.topX = 40
		poemsp.bottomX = 0
	end
	state = 'poem_special'
	xaload = 0
	sfxplay('pageflip')
end

function drawpoem_special()
	drawTopScreen()
	love.graphics.setBackgroundColor(0,0,0)
	love.graphics.setColor(255,255,255,p_alpha)
	if poemsp.topimg then
		love.graphics.draw(poemsp.topimg, poemsp.topX)
	end
	if p_confirm == 1 and p_number >= 12 then
		love.graphics.setColor(255,255,255,128)
		love.graphics.rectangle('fill',0,0,400,240)
	end
	drawBottomScreen()
	if poemsp.bottomimg then
		love.graphics.draw(poemsp.bottomimg, poemsp.bottomX)
	end
	if p_confirm == 1 and p_number >= 12 then
		love.graphics.setColor(255,255,255,255)
		love.graphics.draw(background_Image, posX, posY)
		love.graphics.setColor(255,189,225,255)
		love.graphics.rectangle('fill', 16, 45, 30, 16)
		love.graphics.setColor(0,0,0,255)
		love.graphics.print("Error: Script file is missing or corrupt.\nPlease reinstall the game.",16, 12)
		love.graphics.print('OK',17,45)
	end
end

function updatepoem_special(dt)
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
			poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special5b.png')
		elseif p_number == 7 then
			poemsp.topimg = love.graphics.newImage('images/poem_special/poem_special7b.png')
		end
	end
end