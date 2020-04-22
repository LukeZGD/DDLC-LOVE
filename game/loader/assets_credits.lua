function loaderCredits(c_timer)
	--load and unload images stuff
	if c_timer >= 60 and c_timer < 75 then
		if not nats1 then
			if persistent.clear[1] == 1 then nats1 = lgnewImage('assets/images/cg/credits/1.png')
			else nats1 = lgnewImage('assets/images/cg/credits/1b.png') end
		end
		if not nats2 then
			if persistent.clear[2] == 1 then nats2 = lgnewImage('assets/images/cg/credits/2.png')
			else nats2 = lgnewImage('assets/images/cg/credits/2b.png') end
		end
	elseif c_timer >= 75 and c_timer < 84 then
		nats1 = nil
		if not yuri1 then yuri1 = lgnewImage('assets/images/cg/credits/3.png') end
	elseif c_timer >= 86 and c_timer < 93 then
		nats2 = nil
		if not yuri2 then yuri2 = lgnewImage('assets/images/cg/credits/4.png') end
	elseif c_timer >= 94 and c_timer < 103 then
		yuri1 = nil
		if not nats3 then
			if persistent.clear[5] == 1 then nats3 = lgnewImage('assets/images/cg/credits/5.png')
			else nats3 = lgnewImage('assets/images/cg/credits/5b.png') end
		end
	elseif c_timer >= 104 and c_timer < 111 then
		yuri2 = nil
		if not yuri3 then
			if persistent.clear[6] == 1 then yuri3 = lgnewImage('assets/images/cg/credits/6.png')
			else yuri3 = lgnewImage('assets/images/cg/credits/6b.png') end
		end
	elseif c_timer >= 112 and c_timer < 120 then
		nats3 = nil
		if not sayo1 then
			if persistent.clear[7] == 1 then sayo1 = lgnewImage('assets/images/cg/credits/7.png')
			else sayo1 = lgnewImage('assets/images/cg/credits/7b.png') end
		end
	elseif c_timer >= 120 and c_timer < 130 then
		yuri3 = nil
		if not sayo2 then
			if persistent.clear[8] == 1 then sayo2 = lgnewImage('assets/images/cg/credits/8.png')
			else sayo2 = lgnewImage('assets/images/cg/credits/8b.png') end
		end
	elseif c_timer >= 130 and c_timer < 138 then
		sayo1 = nil
		if not m_sticker_1 then m_sticker_1 = lgnewImage('assets/images/gui/poemgame/m_sticker_1.png') end
		if not n_sticker_1 then n_sticker_1 = lgnewImage('assets/images/gui/poemgame/n_sticker_1.png') end
		if not s_sticker_1 then s_sticker_1 = lgnewImage('assets/images/gui/poemgame/s_sticker_1.png') end
		if not y_sticker_1 then y_sticker_1 = lgnewImage('assets/images/gui/poemgame/y_sticker_1.png') end
	elseif c_timer >= 139 and c_timer < 144 then
		sayo2 = nil
		if not sayo3 then
			if persistent.clear[9] == 1 then sayo3 = lgnewImage('assets/images/cg/credits/9.png')
			else sayo3 = lgnewImage('assets/images/cg/credits/9b.png') end
		end
	elseif c_timer >= 145 and c_timer < 164 then
		m_sticker_1 = nil
		n_sticker_1 = nil
		s_sticker_1 = nil
		y_sticker_1 = nil
		if not moni1 then moni1 = lgnewImage('assets/images/cg/credits/10.png') end
	elseif c_timer >= 164 then
		sayo3 = nil
		moni1 = nil
		if not splashw then splashw = lgnewImage('assets/images/cg/credits/splashw.png') end
	end
end
