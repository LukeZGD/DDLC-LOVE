function loaderCredits(c_timer)
	--load and unload images stuff
	if c_timer >= 60 and c_timer < 75 then
		if nats1 == nil then
			if persistent.clear[1] == 1 then nats1 = lg.newImage('assets/images/cg/credits/1.png')
			else nats1 = lg.newImage('assets/images/cg/credits/1b.png') end
		end
		if nats2 == nil then
			if persistent.clear[2] == 1 then nats2 = lg.newImage('assets/images/cg/credits/2.png')
			else nats2 = lg.newImage('assets/images/cg/credits/2b.png') end
		end
	elseif c_timer >= 75 and c_timer < 84 then
		imageFree(nats1)
		if yuri1 == nil then yuri1 = lg.newImage('assets/images/cg/credits/3.png') end
	elseif c_timer >= 84 and c_timer < 93 then
		imageFree(nats2)
		if yuri2 == nil then yuri2 = lg.newImage('assets/images/cg/credits/4.png') end
	elseif c_timer >= 93 and c_timer < 103 then
		imageFree(yuri1)
		if nats3 == nil then
			if persistent.clear[5] == 1 then nats3 = lg.newImage('assets/images/cg/credits/5.png')
			else nats3 = lg.newImage('assets/images/cg/credits/5b.png') end
		end
	elseif c_timer >= 103 and c_timer < 111 then
		imageFree(yuri2)
		if yuri3 == nil then
			if persistent.clear[6] == 1 then yuri3 = lg.newImage('assets/images/cg/credits/6.png')
			else yuri3 = lg.newImage('assets/images/cg/credits/6b.png') end
		end
	elseif c_timer >= 111 and c_timer < 120 then
		imageFree(nats3)
		if sayo1 == nil then
			if persistent.clear[7] == 1 then sayo1 = lg.newImage('assets/images/cg/credits/7.png')
			else sayo1 = lg.newImage('assets/images/cg/credits/7b.png') end
		end
	elseif c_timer >= 120 and c_timer < 130 then
		imageFree(yuri3)
		if sayo2 == nil then
			if persistent.clear[8] == 1 then sayo2 = lg.newImage('assets/images/cg/credits/8.png')
			else sayo2 = lg.newImage('assets/images/cg/credits/8b.png') end
		end
	elseif c_timer >= 130 and c_timer < 138 then
		imageFree(sayo1)
		if m_sticker_1 == nil then m_sticker_1 = lg.newImage('assets/images/gui/poemgame/m_sticker_1.png') end
		if n_sticker_1 == nil then n_sticker_1 = lg.newImage('assets/images/gui/poemgame/n_sticker_1.png') end
		if s_sticker_1 == nil then s_sticker_1 = lg.newImage('assets/images/gui/poemgame/s_sticker_1.png') end
		if y_sticker_1 == nil then y_sticker_1 = lg.newImage('assets/images/gui/poemgame/y_sticker_1.png') end
	elseif c_timer >= 138 and c_timer < 144 then
		imageFree(sayo2)
		if sayo3 == nil then
			if persistent.clear[9] == 1 then sayo3 = lg.newImage('assets/images/cg/credits/9.png')
			else sayo3 = lg.newImage('assets/images/cg/credits/9b.png') end
		end
	elseif c_timer >= 144 and c_timer < 164 then
		imageFree(m_sticker_1)
		imageFree(n_sticker_1)
		imageFree(s_sticker_1)
		imageFree(y_sticker_1)
		if moni1 == nil then moni1 = lg.newImage('assets/images/cg/credits/10.png') end
	elseif c_timer >= 164 then
		imageFree(sayo3)
		imageFree(moni1)
		if splashw == nil then splashw = lg.newImage('assets/images/cg/credits/splashw.png') end
	end
end