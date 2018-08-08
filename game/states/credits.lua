local c_timer = 0
local c_timer2
local ra1 = 100
local ra2 = 92
local ra3 = 120
local ra4 = 98
local ra5 = 126
local ra6 = 110

function loadCredits()
	logo = love.graphics.newImage('images/gui/logo.png')
	m_sticker_1 = love.graphics.newImage('images/gui/poemgame/m_sticker_1.png')
	n_sticker_1 = love.graphics.newImage('images/gui/poemgame/n_sticker_1.png')
	s_sticker_1 = love.graphics.newImage('images/gui/poemgame/s_sticker_1.png')
	y_sticker_1 = love.graphics.newImage('images/gui/poemgame/y_sticker_1.png')
	splashw = love.graphics.newImage('images/cg/credits/splashw.png')
	halogenfont = love.graphics.newFont('fonts/Halogen',12)
	
	nats1 = love.graphics.newImage('images/cg/credits/1.png')
	nats2 = love.graphics.newImage('images/cg/credits/2.png')
	yuri1 = love.graphics.newImage('images/cg/credits/3.png')
	yuri2 = love.graphics.newImage('images/cg/credits/4.png')
	nats3 = love.graphics.newImage('images/cg/credits/5.png')
	yuri3 = love.graphics.newImage('images/cg/credits/6.png')
	sayo1 = love.graphics.newImage('images/cg/credits/7.png')
	sayo2 = love.graphics.newImage('images/cg/credits/8.png')
	sayo3 = love.graphics.newImage('images/cg/credits/9.png')
	moni1 = love.graphics.newImage('images/cg/credits/10.png')
	
	alpha = 255
	state = 'credits'
	audioUpdate('credits')
end

function drawCredits()
	drawTopScreen()
	love.graphics.setColor(255,255,255,alpha)
	
	if c_timer < 51 then
		love.graphics.setFont(m1)
		love.graphics.print("Every day, I imagine a future where I can be with you",100,55)
		love.graphics.print("In my hand is a pen that will write a poem of me and you",92,75)
		love.graphics.print("The ink flows down into a dark puddle",120,95)
		love.graphics.print("Just move your hand - write the way into his heart!",98,115)
		love.graphics.print("But in this world of infinite choices",126,135)
		love.graphics.print("What will it take just to find that special day?",110,155)
		love.graphics.setColor(0,0,0)
		love.graphics.rectangle('fill',ra1,55,300,20)
		love.graphics.rectangle('fill',ra2,75,300,20)
		love.graphics.rectangle('fill',ra3,95,300,20)
		love.graphics.rectangle('fill',ra4,115,300,20)
		love.graphics.rectangle('fill',ra5,135,300,20)
		love.graphics.rectangle('fill',ra6,155,300,20)
	elseif c_timer < 60 then
		love.graphics.draw(logo,145,70)
	elseif c_timer < 165 then
		love.graphics.draw(nats1, 180, 250 - c_timer2)
		love.graphics.draw(nats2, 20, 480 - c_timer2)
		love.graphics.draw(yuri1, 180, 710 - c_timer2)
		love.graphics.draw(yuri2, 20, 940 - c_timer2)
		love.graphics.draw(nats3, 180, 1170 - c_timer2)
		love.graphics.draw(yuri3, 20, 1400 - c_timer2)
		love.graphics.draw(sayo1, 180, 1630 - c_timer2)
		love.graphics.draw(sayo2, 20, 1860 - c_timer2)
		love.graphics.draw(s_sticker_1, 45, 2060 - c_timer2)
		love.graphics.draw(n_sticker_1, 115, 2060 - c_timer2)
		love.graphics.draw(y_sticker_1, 200, 2060 - c_timer2)
		love.graphics.draw(m_sticker_1, 275, 2060 - c_timer2)
		love.graphics.draw(sayo3, 180, 2270 - c_timer2)
		love.graphics.draw(moni1, 20, 2500 - c_timer2)
	else
		love.graphics.draw(splashw)
		love.graphics.setFont(font)
		love.graphics.print('DDLC-3DS',2,205)
		love.graphics.print('Unofficial port by LukeeGD',2,220)
	end
	
	drawBottomScreen()
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle('fill',-40,0,400,240)
end

function updateCredits(dt)
	c_timer = c_timer + dt
	c_timer2 = (c_timer - 60) * 25
	
	if c_timer >= 10.3 and c_timer <= 11.4 then
		ra1 = math.min(ra1 + 1.25, 135)
	elseif c_timer >= 11.7 and c_timer <= 13.55 then
		ra1 = math.min(ra1 + 1.25, 220)
	elseif c_timer >= 13.7 and c_timer <= 16 then
		ra1 = math.min(ra1 + 1.25, 400)
	elseif c_timer >= 19.4 and c_timer <= 20.65 then
		ra2 = math.min(ra2 + 1.25, 132)
	elseif c_timer >= 20.8 and c_timer <= 23 then
		ra2 = math.min(ra2 + 1.25, 245)
	elseif c_timer >= 23.2 and c_timer <= 26 then
		ra2 = math.min(ra2 + 1.25, 400)
	elseif c_timer >= 28.3 and c_timer <= 30 then
		ra3 = math.min(ra3 + 1.25, 185)
	elseif c_timer >= 30.1 and c_timer <= 32.4 then
		ra3 = math.min(ra3 + 1.25, 400)
	elseif c_timer >= 32.8 and c_timer <= 34.2 then
		ra4 = math.min(ra4 + 1.25, 175)
	elseif c_timer >= 34.3 and c_timer <= 37 then
		ra4 = math.min(ra4 + 1.25, 400)
	elseif c_timer >= 37.5 and c_timer <= 39.1 then
		ra5 = math.min(ra5 + 1.25, 188)
	elseif c_timer >= 39.2 and c_timer <= 41.7 then
		ra5 = math.min(ra5 + 1.25, 400)
	elseif c_timer >= 42 and c_timer < 43.3 then
		ra6 = math.min(ra6 + 1.25, 170)
	elseif c_timer >= 43.4 and c_timer < 50 then
		ra6 = math.min(ra6 + 1.25, 400)
	end
	
	if c_timer >= 48.5 and c_timer < 51 then
		alpha = math.max(alpha - 3, 0)
	elseif c_timer >= 51 and c_timer < 55 then
		alpha = math.min(alpha + 3, 255)
	elseif c_timer >= 57 and c_timer < 60 then
		alpha = math.max(alpha - 3, 0)
	elseif c_timer >= 60 and c_timer < 61 then
		alpha = 255
	elseif c_timer >= 165 and c_timer < 165.75 then
		alpha = 0
	elseif c_timer >= 165.75 and c_timer < 170 then
		alpha = math.min(alpha + 3, 255)
	elseif c_timer >= 172 and c_timer < 175 then
		alpha = math.max(alpha - 3, 0)
	elseif c_timer >= 175.5 then
		changeState('poem_special',13)
	end
end