function poem(poemname, author, continue)
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

	elseif poemname == 'poem_n1' then
		poemtext = [[
Eagles Can Fly

Monkeys can climb
Crickets can leap
Horses can race
Owls can seek
Cheetahs can run
Eagles can fly
People can try
But that's about it.]]
	
	elseif poemname == 'poem_s1' then
		poemtext = [[
Dear Sunshine

The way you glow through my blinds in the morning
It makes me feel like you missed me.
Kissing my forehead to help me out of bed.
Making me rub the sleepy from my eyes.

Are you asking me to come out and play?
Are you trusting me to wish away a rainy day?
I look above. The sky is blue.
It's a secret, but I trust you too.

If it wasn't for you, I could sleep forever.
But I'm not mad.

I want breakfast.]]
	
	elseif poemname == 'poem_m1' then
		poemtext = [[
Hole in Wall

It couldn't have been me.
See, the direction the spackle protrudes.
A noisy neighbor? An angry boyfriend? I'll never know. I wasn't home.
I peer inside for a clue.
No! I can't see. I reel, blind, like a film left out in the sun.
But it's too late. My retinas.
Already scorched with a permanent copy of the meaningless image.
It's just a little hole. It wasn't too bright.
It was too deep.
Stretching forever into everything.
A hole of infinite choices.
I realize now, that I wasn't looking in.
I was looking out.
And he, on the other side, was looking in.]]
	
	end
	
	--update font
	if author == 'yuri' and yuri_3 ~= true then
		love.graphics.setFont(y1)
	elseif author == 'sayori' then
		love.graphics.setFont(s1)
	elseif author == 'natsuki' then
		love.graphics.setFont(n1)
	elseif author == 'monika' then
		love.graphics.setFont(m1)
	end
	
	--update audio
	if xaload == 0 and continue ~= 1 then
		poembg = love.graphics.newImage('images/bg/poem.png')
		sfxpageflip:play()
		
		if author == 'yuri' then
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
			if chapter == 5 then
				audioUpdate('0')
			else
				audioUpdate('5_sayori')
			end
		elseif author == 'natsuki' then
			audioUpdate('5_natsuki')
		elseif author == 'monika' then
			audioUpdate('5_monika')
		end
	end
end