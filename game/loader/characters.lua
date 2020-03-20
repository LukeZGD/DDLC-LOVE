function loadSayori()
	if s_Set.a=='1' then
		sl = lg.newImage('assets/images/sayori/1l.png') 
		sr = lg.newImage('assets/images/sayori/1r.png') 
	elseif s_Set.a=='2' then
		sl = lg.newImage('assets/images/sayori/1l.png') 
		sr = lg.newImage('assets/images/sayori/2r.png') 
	elseif s_Set.a=='3' then
		sl = lg.newImage('assets/images/sayori/2l.png') 
		sr = lg.newImage('assets/images/sayori/1r.png') 
	elseif s_Set.a=='4' then
		sl = lg.newImage('assets/images/sayori/2l.png') 
		sr = lg.newImage('assets/images/sayori/2r.png') 
	
	elseif s_Set.a=='1b' then
		sl = lg.newImage('assets/images/sayori/1bl.png')
		sr = lg.newImage('assets/images/sayori/1br.png')
	elseif s_Set.a=='2b' then
		sl = lg.newImage('assets/images/sayori/1bl.png') 
		sr = lg.newImage('assets/images/sayori/2br.png') 
	elseif s_Set.a=='3b' then
		sr = lg.newImage('assets/images/sayori/2bl.png') 
		sr = lg.newImage('assets/images/sayori/1br.png') 
	elseif s_Set.a=='4b' then
		sl = lg.newImage('assets/images/sayori/2bl.png') 
		sr = lg.newImage('assets/images/sayori/2br.png') 
	
	elseif s_Set.a=='5a' then
		sl = lg.newImage('assets/images/sayori/3a.png') 
	elseif s_Set.a=='5b' then
		sl = lg.newImage('assets/images/sayori/3b.png') 
	elseif s_Set.a=='5c' then
		sl = lg.newImage('assets/images/sayori/3c.png')  
	elseif s_Set.a=='5d' then
		sl = lg.newImage('assets/images/sayori/3d.png') 
	elseif s_Set.a~='' then
		sl = lg.newImage('assets/images/sayori/'..s_Set.a..'.png')
	end
	
	if s_Set.b~='' then s_a = lg.newImage('assets/images/sayori/'..s_Set.b..'.png') end
end

function unloadSayori()
	sl = nil
	sr = nil
	s_a = nil
end

function loadYuri()	
	if y_Set.a=='1' then
		yl = lg.newImage('assets/images/yuri/1l.png') 
		yr = lg.newImage('assets/images/yuri/1r.png') 
	elseif y_Set.a=='2' then
		yl = lg.newImage('assets/images/yuri/1l.png') 
		yr = lg.newImage('assets/images/yuri/2r.png') 
	elseif y_Set.a=='3' then
		yl = lg.newImage('assets/images/yuri/2l.png') 
		yr = lg.newImage('assets/images/yuri/2r.png') 
		
	elseif y_Set.a=='1b' then
		yl = lg.newImage('assets/images/yuri/1bl.png') 
		yr = lg.newImage('assets/images/yuri/1br.png') 
	elseif y_Set.a=='2b' then
		yl = lg.newImage('assets/images/yuri/1bl.png')
		yr = lg.newImage('assets/images/yuri/2br.png') 
	elseif y_Set.a=='3b' then
		yl = lg.newImage('assets/images/yuri/2bl.png') 
		yr = lg.newImage('assets/images/yuri/2br.png') 
	
	elseif y_Set.a=='4' then
		yl = lg.newImage('assets/images/yuri/3.png') 
	elseif y_Set.a=='4b' then
		yl = lg.newImage('assets/images/yuri/3b.png')
	elseif y_Set.a~='' then
		yl = lg.newImage('assets/images/yuri/'..y_Set.a..'.png')
	end
	
	if y_Set.b ~= '' then y_a = lg.newImage('assets/images/yuri/'..y_Set.b..'.png') end
end

function unloadYuri()
	yl = nil
	yr = nil
	y_a = nil
end

function loadNatsuki()
	if n_Set.b~='' then
		n_a = lg.newImage('assets/images/natsuki/'..n_Set.b..'.png')
	end
	
	if n_Set.a=='1' then
		nl = lg.newImage('assets/images/natsuki/1l.png') 
		nr = lg.newImage('assets/images/natsuki/1r.png') 
	elseif n_Set.a=='2' then
		nl = lg.newImage('assets/images/natsuki/1l.png') 
		nr = lg.newImage('assets/images/natsuki/2r.png') 
	elseif n_Set.a=='3' then
		nl = lg.newImage('assets/images/natsuki/2l.png') 
		nr = lg.newImage('assets/images/natsuki/1r.png') 
	elseif n_Set.a=='4' then
		nl = lg.newImage('assets/images/natsuki/2l.png') 
		nr = lg.newImage('assets/images/natsuki/2r.png') 
		
	elseif n_Set.a=='1b' then
		nl = lg.newImage('assets/images/natsuki/1bl.png') 
		nr = lg.newImage('assets/images/natsuki/1br.png') 
	elseif n_Set.a=='2b' then
		nl = lg.newImage('assets/images/natsuki/1bl.png') 
		nr = lg.newImage('assets/images/natsuki/2br.png') 
	elseif n_Set.a=='3b' then
		nl = lg.newImage('assets/images/natsuki/2bl.png') 
		nr = lg.newImage('assets/images/natsuki/1br.png') 
	elseif n_Set.a=='4b' then
		nl = lg.newImage('assets/images/natsuki/2bl.png') 
		nr = lg.newImage('assets/images/natsuki/2br.png') 
		
	elseif n_Set.a=='5' then
		nl = lg.newImage('assets/images/natsuki/3.png') 
	elseif n_Set.a=='5b' then
		nl = lg.newImage('assets/images/natsuki/3b.png') 
	elseif n_Set.a~='' then
		nl = lg.newImage('assets/images/natsuki/'..n_Set.a..'.png')   
	end
end

function unloadNatsuki()
	nl = nil
	nr = nil
	n_a = nil
end

function loadMonika()
	if m_Set.a=='5a' then
		ml = lg.newImage('assets/images/monika/3a.png') 
	elseif m_Set.a=='5b' then
		ml = lg.newImage('assets/images/monika/3b.png') 
	elseif m_Set.a=='1' then
		ml = lg.newImage('assets/images/monika/1l.png')
		mr = lg.newImage('assets/images/monika/1r.png')
	elseif m_Set.a=='2' then
		ml = lg.newImage('assets/images/monika/1l.png')
		mr = lg.newImage('assets/images/monika/2r.png')
	elseif m_Set.a=='3' then
		ml = lg.newImage('assets/images/monika/2l.png')
		mr = lg.newImage('assets/images/monika/1r.png')
	elseif m_Set.a=='4' then
		ml = lg.newImage('assets/images/monika/2l.png')
		mr = lg.newImage('assets/images/monika/2r.png')
	elseif m_Set.a~='' then
		ml = lg.newImage('assets/images/monika/'..m_Set.a..'.png')
	end
	
	if m_Set.b~='' then
		m_a = lg.newImage('assets/images/monika/'..m_Set.b..'.png') 
	end
end

function unloadMonika()
	ml = nil
	mr = nil
	m_a = nil
end

function loadAll()
	loadSayori()
	loadNatsuki()
	loadYuri()
	loadMonika()
end

function unloadAll(x)
	if not x or x == 'characters' then
		sl = nil
		sr = nil
		yl = nil
		yr = nil
		nl = nil
		nr = nil
		ml = nil
		mr = nil
		s_a = nil
		y_a = nil
		n_a = nil
		m_a = nil
	elseif x == 'poemgame' then
		poemfont = nil
		sayoristicker1 = nil
		sayoristicker2 = nil
		yuristicker1 = nil
		yuristicker2 = nil
		natsukisticker1 = nil
		natsukisticker2 = nil
		eyes = nil
	end
end
