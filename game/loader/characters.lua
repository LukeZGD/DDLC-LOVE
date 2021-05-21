function loadCharacter(set)
	local chr
	local lr = {'',''}
	local asset1
	local asset2
	local asset3
	
	if set == s_Set then
		chr = 'sayori'
	elseif set == y_Set then
		chr = 'yuri'
	elseif set == n_Set then
		chr = 'natsuki'
	elseif set == m_Set then
		chr = 'monika'
	end
	
	if set.a == '1' then
		lr = {'1l','1r'}
	elseif set.a == '2' then
		lr = {'1l','2r'}
	elseif set.a == '3' and set ~= y_Set then
		lr = {'2l','1r'}
	elseif (set.a == '3' and set == y_Set) or (set.a == '4' and set ~= y_Set) then
		lr = {'2l','2r'}
	elseif set.a == '1b' then
		lr = {'1bl','1br'}
	elseif set.a == '2b' then
		lr = {'1bl','2br'}
	elseif set.a == '3b' and set ~= y_Set then
		lr = {'2bl','1br'}
	elseif (set.a == '3b' and set == y_Set) or (set.a == '4b' and set ~= y_Set) then
		lr = {'2bl','2br'}
	elseif (set.a == '4' and set == y_Set) or set.a == '5' then
		lr = {'3',''}
	elseif set.a == '5a' then
		lr = {'3a',''}
	elseif (set.a == '4b' and set == y_Set) or set.a == '5b' then
		lr = {'3b',''}
	elseif set.a == '5c' then
		lr = {'3c',''}
	elseif set.a == '5d' then
		lr = {'3d',''}
	elseif set.a then
		lr = {set.a,''}
	end
	
	asset1 = lgnewImage('assets/images/'..chr..'/'..lr[1]..'.png')
	if lr[2] ~= '' then
		asset2 = lgnewImage('assets/images/'..chr..'/'..lr[2]..'.png')
	end
	if set.b ~= '' then
		asset3 = lgnewImage('assets/images/'..chr..'/'..set.b..'.png')
	end
	
	return asset1, asset2, asset3
end

function loadSayori()
	unloadSayori()
	sl, sr, s_a = loadCharacter(s_Set)
end

function unloadSayori()
	if sl then Graphics.freeImage(sl) end
	if sr then Graphics.freeImage(sr) end
	if s_a then Graphics.freeImage(s_a) end
	sl, sr, s_a = nil
end

function loadYuri()	
	unloadYuri()
	yl, yr, y_a = loadCharacter(y_Set)
end

function unloadYuri()
	if yl then Graphics.freeImage(yl) end
	if yr then Graphics.freeImage(yr) end
	if y_a then Graphics.freeImage(y_a) end
	yl, yr, y_a = nil
end

function loadNatsuki()
	unloadNatsuki()
	nl, nr, n_a = loadCharacter(n_Set)
end

function unloadNatsuki()
	if nl then Graphics.freeImage(nl) end
	if nr then Graphics.freeImage(nr) end
	if n_a then Graphics.freeImage(n_a) end
	nl, nr, n_a = nil
end

function loadMonika()
	unloadMonika()
	ml, mr, m_a = loadCharacter(m_Set)
end

function unloadMonika()
	if ml then Graphics.freeImage(ml) end
	if mr then Graphics.freeImage(mr) end
	if m_a then Graphics.freeImage(m_a) end
	ml, mr, m_a = nil
end

function loadAll()
	loadSayori()
	loadNatsuki()
	loadYuri()
	loadMonika()
end

function unloadAll(x)
	if x == 'poemgame' then
		if type(s_sticker_1) == "number" then Graphics.freeImage(s_sticker_1) end
		if type(s_sticker_2) == "number" then Graphics.freeImage(s_sticker_2) end
		if type(y_sticker_1) == "number" then Graphics.freeImage(y_sticker_1) end
		if type(y_sticker_2) == "number" then Graphics.freeImage(y_sticker_2) end
		if type(n_sticker_1) == "number" then Graphics.freeImage(n_sticker_1) end
		if type(n_sticker_2) == "number" then Graphics.freeImage(n_sticker_2) end
		if type(eyes) == "number" then Graphics.freeImage(eyes) end
		s_sticker_1 = nil
		s_sticker_2 = nil
		y_sticker_1 = nil
		y_sticker_2 = nil
		n_sticker_1 = nil
		n_sticker_2 = nil
		eyes = nil
		collectgarbage()
		collectgarbage()
	else
		unloadSayori()
		unloadYuri()
		unloadNatsuki()
		unloadMonika()
	end
end
