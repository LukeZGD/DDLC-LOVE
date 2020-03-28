--Character draw functions in 1.0.3

function updateCharacter(set,a,b,px,py,chset)
	if not b then b = '' end
	set.a = a
	set.b = b
	
	if px and xaload == 0 then
		chset.x = set.x
		chset.y = px*3.2
		if chset.x < chset.y then
			chset.z = chset.y - chset.x
		elseif chset.x > chset.y then
			chset.z = chset.x - chset.y
		else
			chset.z = 0
		end
	end
	if py then set.y = py end
end

function updateSayori(a,b,px,py)
	updateCharacter(s_Set,a,b,px,py,changeX.s)
	if xaload == 0 then loadSayori() end
end

function updateYuri(a,b,px,py)
	updateCharacter(y_Set,a,b,px,py,changeX.y)
	if xaload == 0 then loadYuri() end
end

function updateNatsuki(a,b,px,py)
	updateCharacter(n_Set,a,b,px,py,changeX.n)
	if xaload == 0 then loadNatsuki() end
end

function updateMonika(a,b,px,py)
	updateCharacter(m_Set,a,b,px,py,changeX.m)
	if xaload == 0 then loadMonika() end
end

function hideCharacter(set,chset)
	if xaload == 0 then
		chset.x = set.x
		if chset.x >= 300 then
			chset.y = 1955
			chset.z = chset.y - chset.x
		else
			chset.y = -675
			chset.z = chset.x - chset.y
		end
	end
end

function hideSayori()
	hideCharacter(s_Set,changeX.s)
end

function hideYuri()
	hideCharacter(y_Set,changeX.y)
end

function hideNatsuki()
	hideCharacter(n_Set,changeX.n)
end

function hideMonika()
	hideCharacter(m_Set,changeX.m)
end

function hideAll()
    s_Set = {a='',b='',x=-675,y=s_Set.y}
    y_Set = {a='',b='',x=-675,y=y_Set.y}
    n_Set = {a='',b='',x=-675,y=n_Set.y}
    m_Set = {a='',b='',x=-675,y=m_Set.y}
	unloadAll()
end

function drawCharacter(asset,set,chset)
	if set.b~='' then
		if set == n_Set and n_Set.a=='5' or n_Set.a=='5b' then --set natsuki's head x and y pos
			xh = set.x + 7
			yh = set.y + 18
		else
			xh = set.x
			yh = set.y
		end
		if asset[set.b] and set == n_Set then lg.draw(asset[set.b],xh,yh)
		elseif asset[set.b] then lg.draw(asset[set.b],set.x,set.y) end
	end
	
	if asset[asset.lr[1]] then
		lg.draw(asset[asset.lr[1]], set.x, set.y)
	elseif asset[set.a] then
		lg.draw(asset[set.a], set.x, set.y)
	end
    
    local with_set = with_r
	if set == y_Set then
		with_set = with_yr
	end
	for i = 1, #with_set do
		if set.a == with_set[i] then
			lg.draw(asset[asset.lr[2]], set.x, set.y)
		end
	end
	
	if set.x < chset.y and not nearest(set.x,chset.y) and autoskip < 1 then
		set.x = math.ceil(chset.x + easeQuadInOut(unitimer,0,chset.z,uniduration))
	elseif set.x > chset.y and not nearest(set.x,chset.y) and autoskip < 1 then
		set.x = math.floor(chset.x - easeQuadInOut(unitimer,0,chset.z,uniduration))
	elseif set.x ~= chset.y then
		set.x = chset.y
	end
end

function drawSayori()
	drawCharacter(s_Asset,s_Set,changeX.s)
end

function drawYuri()
	drawCharacter(y_Asset,y_Set,changeX.y)
end

function drawNatsuki()
	drawCharacter(n_Asset,n_Set,changeX.n)
end

function drawMonika()
	drawCharacter(m_Asset,m_Set,changeX.m)
end