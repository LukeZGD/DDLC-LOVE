s_Asset = {lr = {'',''}}
y_Asset = {lr = {'',''}}
n_Asset = {lr = {'',''}}
m_Asset = {lr = {'',''}}

function loadSayori()
	if s_Set ~= s_Set_old then
		unloadSayori()
	end
	
	s_Asset.lr = {'',''}
	if s_Set.a=='1' then
		s_Asset.lr = {'1l','1r'}
	elseif s_Set.a=='2' then
		s_Asset.lr = {'1l','2r'}
	elseif s_Set.a=='3' then
		s_Asset.lr = {'2l','1r'}
	elseif s_Set.a=='4' then
		s_Asset.lr = {'2l','2r'}
	elseif s_Set.a=='1b' then
		s_Asset.lr = {'1bl','1br'}
	elseif s_Set.a=='2b' then
		s_Asset.lr = {'1bl','2br'}
	elseif s_Set.a=='3b' then
		s_Asset.lr = {'2bl','1br'}
	elseif s_Set.a=='4b' then
		s_Asset.lr = {'2bl','2br'}
	elseif s_Set.a=='5a' then
		s_Asset.lr = {'3a',''}
	elseif s_Set.a=='5b' then
		s_Asset.lr = {'3b',''}
	elseif s_Set.a=='5c' then
		s_Asset.lr = {'3c',''}
	elseif s_Set.a=='5d' then
		s_Asset.lr = {'3d',''}
	elseif s_Set.a~='' then
		s_Asset.lr = {s_Set.a,''}
	end
	
	for i = 1, 2 do
		if s_Asset.lr[i] ~= '' and not s_Asset[s_Asset.lr[i]] then
			s_Asset[s_Asset.lr[i]] = lg.newImage('assets/images/sayori/'..s_Asset.lr[i]..'.png')
		end
	end
	
	if s_Set.b~='' and not s_Asset[s_Set.b] then
		s_Asset[s_Set.b] = lg.newImage('assets/images/sayori/'..s_Set.b..'.png')
	end
	
	s_Set_old = s_Set
end

function unloadSayori()
	for i = 1, 2 do
		--s_Asset[s_Asset.lr[i]] = nil
	end
	--s_Asset[s_Set.a] = nil
	--s_Asset[s_Set.b] = nil
	--collectgarbage()
end

function loadYuri()	
	if y_Set ~= y_Set_old then
		unloadYuri()
	end
	
	y_Asset.lr = {'',''}
	if y_Set.a=='1' then
		y_Asset.lr = {'1l','1r'}
	elseif y_Set.a=='2' then
		y_Asset.lr = {'1l','2r'}
	elseif y_Set.a=='3' then
		y_Asset.lr = {'2l','2r'}		
	elseif y_Set.a=='1b' then
		y_Asset.lr = {'1bl','1br'}
	elseif y_Set.a=='2b' then
		y_Asset.lr = {'1bl','2br'}
	elseif y_Set.a=='3b' then
		y_Asset.lr = {'2bl','2br'}	
	elseif y_Set.a=='4' then
		y_Asset.lr = {'3',''} 
	elseif y_Set.a=='4b' then
		y_Asset.lr = {'3b',''}
	elseif y_Set.a~='' then
		y_Asset.lr = {y_Set.a,''}
	end
	
	for i = 1, 2 do
		if y_Asset.lr[i] ~= '' and not y_Asset[y_Asset.lr[i]] then
			y_Asset[y_Asset.lr[i]] = lg.newImage('assets/images/yuri/'..y_Asset.lr[i]..'.png')
		end
	end
	
	if y_Set.b ~= '' and not y_Asset[y_Set.b] then
		y_Asset[y_Set.b] = lg.newImage('assets/images/yuri/'..y_Set.b..'.png')
	end		
	
	y_Set_old = y_Set
end

function unloadYuri()
	for i = 1, 2 do
		--y_Asset[y_Asset.lr[i]] = nil
	end
	--y_Asset[y_Set.a] = nil
	--y_Asset[y_Set.b] = nil
	--collectgarbage()
end

function loadNatsuki()
	if n_Set ~= n_Set_old then
		unloadNatsuki()
	end
	
	if n_Set.b ~= '' and not n_Asset[n_Set.b] then
		n_Asset[n_Set.b] = lg.newImage('assets/images/natsuki/'..n_Set.b..'.png')
	end	
	
	n_Asset.lr = {'',''}
	if n_Set.a=='1' then
		n_Asset.lr = {'1l','1r'}
	elseif n_Set.a=='2' then
		n_Asset.lr = {'1l','2r'}
	elseif n_Set.a=='3' then
		n_Asset.lr = {'2l','1r'}
	elseif n_Set.a=='4' then
		n_Asset.lr = {'2l','2r'}
	elseif n_Set.a=='1b' then
		n_Asset.lr = {'1bl','1br'}
	elseif n_Set.a=='2b' then
		n_Asset.lr = {'1bl','2br'}
	elseif n_Set.a=='3b' then
		n_Asset.lr = {'2bl','1br'}
	elseif n_Set.a=='4b' then
		n_Asset.lr = {'2bl','2br'}		
	elseif n_Set.a=='5' then
		n_Asset.lr = {'3',''}
	elseif n_Set.a=='5b' then
		n_Asset.lr = {'3b',''}
	elseif n_Set.a~='' then
		n_Asset.lr = {n_Set.a,''}
	end
	
	for i = 1, 2 do
		if n_Asset.lr[i] ~= '' and not n_Asset[n_Asset.lr[i]] then
			n_Asset[n_Asset.lr[i]] = lg.newImage('assets/images/natsuki/'..n_Asset.lr[i]..'.png')
		end
	end
	
	n_Set_old = n_Set
end

function unloadNatsuki()
	for i = 1, 2 do
		--n_Asset[n_Asset.lr[i]] = nil
	end
	--n_Asset[n_Set.a] = nil
	--n_Asset[n_Set.b] = nil
	--collectgarbage()
end

function loadMonika()
	if m_Set_old ~= m_Set then
		unloadMonika()
	end
	
	m_Asset.lr = {'',''}
	if m_Set.a=='1' then
		m_Asset.lr = {'1l','1r'}
	elseif m_Set.a=='2' then
		m_Asset.lr = {'1l','2r'}
	elseif m_Set.a=='3' then
		m_Asset.lr = {'2l','1r'}
	elseif m_Set.a=='4' then
		m_Asset.lr = {'2l','2r'}	
	elseif m_Set.a=='5a' then
		m_Asset.lr = {'3a',''}
	elseif m_Set.a=='5b' then
		m_Asset.lr = {'3b',''}
	elseif m_Set.a~='' then
		m_Asset.lr = {m_Set.a,''} 
	end
	
	for i = 1, 2 do
		if m_Asset.lr[i] ~= '' and not m_Asset[m_Asset.lr[i]] then
			m_Asset[m_Asset.lr[i]] = lg.newImage('assets/images/monika/'..m_Asset.lr[i]..'.png')
		end
	end
	
	if m_Set.b ~= '' and not m_Asset[m_Set.b] then
		m_Asset[m_Set.b] = lg.newImage('assets/images/monika/'..m_Set.b..'.png')
	end
	
	m_Set_old = m_Set
end

function unloadMonika()
	for i = 1, 2 do
		--m_Asset[m_Asset.lr[i]] = nil
	end
	--m_Asset[m_Set.a] = nil
	--m_Asset[m_Set.b] = nil
	--collectgarbage()
end

function unloadAll(x)
	unloadSayori()
	unloadYuri()
	unloadNatsuki()
	unloadMonika()
end