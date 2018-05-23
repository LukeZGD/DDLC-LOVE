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

	elseif poemname == 'poem_y2' then
		poemtext = [[
The Raccoon

It happened in the dead of night while I was slicing bread for a guilty snack.
My attention was caught by the scuttering of a raccoon outside my window.
That was, I believe, the first time I noticed my strange tendencies as an unordinary human.
I gave the raccoon a piece of bread, my subconscious well aware of the consequences.
Well aware that a raccoon that is fed will always come back for more.
The enticing beauty of my cutting knife was the symptom.
The bread, my hungry curiosity.
The raccoon, an urge.]]
	elseif poemname == 'poem_y2a' then
		poemtext = [[
The moon increments its phase and reflects that much more light off of my cutting knife.
The very same light that glistens in the eyes of my raccoon friend.
I slice the bread, fresh and soft. The raccoon becomes excited.
Or perhaps I'm merely projecting my emotions onto the newly-satisfied animal.

The raccoon has taken to following me.
You could say that we've gotten quite used to each other.
The raccoon becomes hungry more and more frequently, so my bread is always handy.
Every time I brandish my cutting knife, the raccoon shows me its excitement.
A rush of blood. Classic Pavlovian conditioning. I slice the bread.
And I feed myself again.]]

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
	
	elseif poemname == 'poem_n2' then
		poemtext = [[
Amy Likes Spiders

You know what I heard about Amy?
Amy likes spiders.
Icky, wriggly, hairy, ugly spiders!
That's why I'm not friends with her.

Amy has a cute singing voice.
I heard her singing my favorite love song.
Every time she sang the chorus, my heart would pound to the rhythm of the words.
But she likes spiders.
That's why I'm not friends with her.]]
	elseif poemname == 'poem_n2a' then
		poemtext = [[
One time, I hurt my leg really bad.
Amy helped me up and took me to the nurse.
I tried not to let her touch me.
She likes spiders, so her hands are probably gross.
That's why I'm not friends with her.

Amy has a lot of friends.
I always see her talking to people.
She probably talks about spiders.
What if her friends start to like spiders too?
That's why I'm not friends with her.]]
	elseif poemname == 'poem_n2b' then
		poemtext = [[
It doesn't matter if she has other hobbies.
It doesn't matter if she keeps it private.
It doesn't matter if it doesn't hurt anyone.

It's gross.
She's gross.
The world is better off without spider lovers.

And I'm gonna tell everyone.]]
	
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
It's a secret, but I trust you too.]]
	elseif poemname == 'poem_s1a' then
		poemtext = [[
If it wasn't for you, I could sleep forever.
But I'm not mad.

I want breakfast.]]
	
	elseif poemname == 'poem_s2' then
		poemtext = [[
Bottles

I pop off my scalp like the lid of a cookie jar.
It's the secret place where I keep all my dreams.
Little balls of sunshine, all rubbing together like a bundle of kittens.
I reach inside with my thumb and forefinger and pluck one out.
It's warm and tingly.
But there's no time to waste! I put it in a bottle to keep it safe.
And I put the bottle on the shelf with all of the other bottles.
Happy thoughts, happy thoughts, happy thoughts in bottles, all in a row.]]
	elseif poemname == 'poem_s2a' then
		poemtext = [[
My collection makes me lots of friends.
Each bottle a starlight to make amends.
Sometimes my friend feels a certain way.
Down comes a bottle to save the day.

Night after night, more dreams.
Friend after friend, more bottles.
Deeper and deeper my fingers go.
Like exploring a dark cave, discovering the secrets hiding in the nooks and crannies.
Digging and digging.
Scraping and scraping.]]
	elseif poemname == 'poem_s2b' then
		poemtext = [[
I blow dust off my bottle caps.
It doesn't feel like time elapsed.
My empty shelf could use some more.
My friends look through my locked front door.

Finally, all done. I open up, and in come my friends.
In they come, in such a hurry. Do they want my bottles that much?
I frantically pull them from the shelf, one after the other.
Holding them out to each and every friend.
Each and every bottle.
But every time I let one go, it shatters against the tile between my feet.
Happy thoughts, happy thoughts, happy thoughts in shards, all over the floor.]]
	elseif poemname == 'poem_s2c' then
		poemtext = [[
They were supposed to be for my friends, my friends who aren't smiling.
They're all shouting, pleading. Something.
But all I hear is echo, echo, echo, echo, echo
Inside my head.]]
	
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
It's just a little hole. It wasn't too bright.]]
	elseif poemname == 'poem_m1a' then
		poemtext = [[
It was too deep.
Stretching forever into everything.
A hole of infinite choices.
I realize now, that I wasn't looking in.
I was looking out.
And he, on the other side, was looking in.]]

	end

	if xaload == 0 and continue ~= 1 then
		poembg = love.graphics.newImage('images/bg/poem.png')
		sfxpageflip:play()
		
		if author == 'yuri' then
			y1 = love.graphics.newFont('images/gui/fonts/y1')
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
			s1 = love.graphics.newFont('images/gui/fonts/s1')
			if chapter == 5 then
				audioUpdate('0')
			else
				audioUpdate('5_sayori')
			end
		elseif author == 'natsuki' then
			n1 = love.graphics.newFont('images/gui/fonts/n1')
			audioUpdate('5_natsuki')
		elseif author == 'monika' then
			m1 = love.graphics.newFont('images/gui/fonts/m1')
			audioUpdate('5_monika')
		end
	elseif xaload > 0 then
		if author == 'yuri' and yuri_3 ~= true then
			love.graphics.setFont(y1)
		elseif author == 'sayori' then
			love.graphics.setFont(s1)
		elseif author == 'natsuki' then
			love.graphics.setFont(n1)
		elseif author == 'monika' then
			love.graphics.setFont(m1)
		end
	end
end