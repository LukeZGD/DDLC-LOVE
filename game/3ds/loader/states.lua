function changeState(cstate,x)
	menu_alpha = 0
	menu_previous = nil
	history = {}
	
	if cstate ~= 's_kill_early' and cstate ~= 'ghostmenu' and cstate ~= 'newgame' and cstate ~= 'title' then
		require('3ds/states/'..cstate)
	end
	
	if cstate == 'game' then
		hideAll()
	end
	
	if cstate == 'splash' then
		splash = lg.newImage('assets/images/bg/splash.png')
		alpha = 0
		audioUpdate('1')
	elseif cstate == 'title' then
		alpha = 0
		if persistent.ptr == 0 then
			titlebg = lg.newImage('assets/images/gui/bg.png')
		elseif persistent.ptr <= 2 then
			titlebg = lg.newImage('assets/images/gui/bg2.png')
		elseif persistent.ptr == 4 then
			titlebg = lg.newImage('assets/images/gui/bg3.png')
		end
		poem_enabled = false
		audioUpdate('1')
		menu_enable('title')
		y_timer = 0
		titlebg_ypos = -240
	elseif cstate == 'game' and x == 1 then --new game
		cl = 1
		chapter = persistent.ptr * 10
		if persistent.ptr == 0 and persistent.chr.m == 0 then
			cl = 10001
		end
	elseif cstate == 'game' and x == 2 then --load game
		loadgame()
	elseif cstate == 'game' and x == 3 then --change state to game from poemgame
		cl = cl + 2
	elseif cstate == 'game' and x == 'autoload' then
		loadgame('autoload')
	elseif cstate == 'newgame' then --first time newgame
		require('3ds/states/game')
		cl = 10016
	elseif cstate == 'poemgame' then --load poemgame assets and state
		poemfont = lg.newFont('assets/fonts/Halogen',12)
		if persistent.ptr <= 2 then
			if persistent.ptr == 0 then
				s_sticker_1 = lg.newImage('assets/images/gui/poemgame/s_sticker_1.png')
				s_sticker_2 = lg.newImage('assets/images/gui/poemgame/s_sticker_2.png')
			else
				eyes = lg.newImage('assets/images/bg/eyes.png')
			end
			y_sticker_1 = lg.newImage('assets/images/gui/poemgame/y_sticker_1.png')
			y_sticker_2 = lg.newImage('assets/images/gui/poemgame/y_sticker_2.png')
			n_sticker_1 = lg.newImage('assets/images/gui/poemgame/n_sticker_1.png')
			n_sticker_2 = lg.newImage('assets/images/gui/poemgame/n_sticker_2.png')
		else
			m_sticker_1 = lg.newImage('assets/images/gui/poemgame/m_sticker_1.png')
		end
		poemgame()
		alpha = 255
	elseif cstate == 's_kill_early' then --set up very early act 1 end
		require('3ds/states/splash')
		endbg = lg.newImage('assets/images/gui/end.png')
		s_killearly = lg.newImage('assets/images/cg/s_kill/s_kill_early.png')
		audioUpdate('s_kill_early')
		alpha = 0
	elseif cstate == 'ghostmenu' then
		require('3ds/states/splash')
		endbg = lg.newImage('assets/images/gui/end.png')
		titlebg = lg.newImage('assets/images/gui/bg_ghost.png')
		audioUpdate('ghostmenu')
		alpha = 0
	elseif cstate == 'poem_special' then
		poem_special_i(x)
	elseif cstate == 'credits' then
		loadCredits(x)
	end
	
	--load game state and scripts
	if cstate == 'game' or cstate == 'newgame' then
		if audio1 == '4' and x == 2 then
			alpha = 20
		else
			alpha = 255
			loadAll()
			bgUpdate(bg1, true)
			audioUpdate(audio1, true)
			cgUpdate(cg1, true)
		end
		poem_enabled = false
		menu_enabled = false
		xaload = -1
		require('scripts/eng/script-ch'..chapter)
		if persistent.ptr == 0 then
			if poemwinner[chapter] == 'Sayori' then
				require('scripts/eng/script-exclusives-sayori')
			elseif poemwinner[chapter] == 'Natsuki' then
				require('scripts/eng/script-exclusives-natsuki')
			elseif poemwinner[chapter] == 'Yuri' then
				require('scripts/eng/script-exclusives-yuri')
			end
		elseif persistent.ptr == 2 and chapter > 20 then
			if poemwinner[chapter-20] == 'Natsuki' and chapter == 21 then
				require('scripts/eng/script-exclusives2-natsuki')
			elseif poemwinner[chapter-20] == 'Yuri' or chapter > 21 then
				require('scripts/eng/script-exclusives2-yuri')
			end
		end
		unloadAll('poemgame')
	end
	
	state = cstate
end
