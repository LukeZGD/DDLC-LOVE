function poem(poemname, author)
	poem_enabled = true

	if poemname == 'poem_y1' then
		poemtext = [[
Ghost Under the Light

The tendrils of my hair illuminate beneath the amber glow.
Bathing.
It must be this one.
The last remaining streetlight to have withstood the test of time.
the last yet to be replaced by the sickening blue-green hue of the future.
I bathe. Calm; breathing air of the present but living in the past.
The light flickers.
I flicker back.]]
	end
	
	if xaload == 0 then
		poembg = love.graphics.newImage('images/bg/poem.png')
		if author == 'yuri' then
			love.graphics.setFont(y1)
			if yuri_2 then
				poembg = love.graphics.newImage('images/bg/poem_y1.png')
				audioUpdate('0')
			elseif yuri_3 then
				poembg = love.graphics.newImage('images/bg/poem_y2.png')
				audioUpdate('5_yuri2')
			else
				audioUpdate('5_yuri')
			end
		elseif author == 'sayori' then
			love.graphics.setFont(s1)
			if chapter == 5 then
				audioUpdate('0')
			else
				audioUpdate('5_sayori')
			end
		elseif author == 'natsuki' then
			love.graphics.setFont(n1)
			audioUpdate('5_natsuki')
		elseif author == 'monika' then
			love.graphics.setFont(m1)
			audioUpdate('5_monika')
		end
	end
end