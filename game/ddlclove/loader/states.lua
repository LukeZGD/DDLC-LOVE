function changeState(cstate,x)
	menu_alpha = 0
	menu_previous = nil
	history = {}
	
	if cstate ~= 's_kill_early' and cstate ~= 'ghostmenu' and cstate ~= 'newgame' and cstate ~= 'title' then
		require('ddlclove/states/'..cstate)
	end
	
	if cstate == 'game' then
		hideAll()
	end
	
	if cstate == 'splash' then
		splash = nil
		splash = lg.newImage('assets/images/bg/splash.png')
		alpha = 0
		audioUpdate('1')
	elseif cstate == 'title' then
		alpha = 0
		
		--sayori
		if (persistent.ptr == 1 or persistent.ptr == 2) and not menu_art_s_break then
			menu_art_s_break = lg.newImage("assets/images/gui/menu_art_s_break.png")
		elseif not menu_art_s then
			menu_art_s = lg.newImage("assets/images/gui/menu_art_s.png")
		end
		
		--new game gui image
		if persistent.ptr == 1 and not gui.newgame1 then
			gui.newgame1 = lg.newImage("assets/images/gui/overlay/"..settings.lang.."/newgame1.png")
		elseif not gui.newgame1 then
			gui.newgame = lg.newImage("assets/images/gui/overlay/"..settings.lang.."/newgame.png")
		end
		
		--monika
		if persistent.ptr == 4 and not menu_art_m then
			menu_art_m = lg.newImage("assets/images/cg/blank.png")
		elseif not menu_art_m then
			menu_art_m = lg.newImage("assets/images/gui/menu_art_m.png")
		end
		
		--natsuki and yuri image
		if not menu_art_n then menu_art_n = lg.newImage("assets/images/gui/menu_art_n.png") end
		if not menu_art_y then menu_art_y = lg.newImage("assets/images/gui/menu_art_y.png") end
		
		poem_enabled = false
		audioUpdate('1')
		menu_enable('title')
		y_timer = 0
		titlebg_ypos = -240
		tlp = {yx=525,nx=670,sx=470,mx=680,yy=850,ny=850,sy=850,my=850,scale=0.75}
		z_timer = {0,0}
		
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
		require('ddlclove/states/game')
		cl = 10016
	elseif cstate == 'poemgame' then --load poemgame assets and state
		
		if persistent.ptr <= 2 then --acts 1 and 2
			audioUpdate('4',true)
			bg1 = 'notebook'
			if not notebook then notebook = lg.newImage('assets/images/bg/notebook.png') end
		elseif persistent.ptr == 3 then --act 3
			audioUpdate('ghostmenu')
			notebook_glitch = lg.newImage('assets/images/bg/notebook-glitch.png')
		end
		
		if poemstate == 0 and not poemtime then --first time poemgame
			poemtime = lg.newImage('assets/images/gui/poemgame/poemtime.png')
			poemtime2 = lg.newImage('assets/images/gui/poemgame/poemtime2.png')
		end
		
		if persistent.ptr <= 2 then
			if persistent.ptr == 0 and not s_sticker_1 then --sayori stickers
				s_sticker_1 = lg.newImage('assets/images/gui/poemgame/s_sticker_1.png')
				s_sticker_2 = lg.newImage('assets/images/gui/poemgame/s_sticker_2.png')
			elseif not eyes then --act 2 only stickers
				eyes = lg.newImage('assets/images/bg/eyes.png')
				m_sticker_2 = lg.newImage('assets/images/gui/poemgame/m_sticker_2.png')
				y_sticker_1_broken = lg.newImage('assets/images/gui/poemgame/y_sticker_1_broken.png')
				y_sticker_2g = lg.newImage('assets/images/gui/poemgame/y_sticker_2g.png')
			end
			
			if chapter == 22 then --yuri stickers with cuts
				y_sticker_1 = lg.newImage('assets/images/gui/poemgame/y_sticker_cut_1.png')
				y_sticker_2 = lg.newImage('assets/images/gui/poemgame/y_sticker_cut_2.png')
			elseif not y_sticker_1 then --yuri stickers normal
				y_sticker_1 = lg.newImage('assets/images/gui/poemgame/y_sticker_1.png')
				y_sticker_2 = lg.newImage('assets/images/gui/poemgame/y_sticker_2.png')
			end
			
			if not n_sticker_1 then --natsuki stickers
				n_sticker_1 = lg.newImage('assets/images/gui/poemgame/n_sticker_1.png')
				n_sticker_2 = lg.newImage('assets/images/gui/poemgame/n_sticker_2.png')
			end
			
		elseif not m_sticker_1 then --monika sticker
			m_sticker_1 = lg.newImage('assets/images/gui/poemgame/m_sticker_1.png')
		end
		poemgame()
		alpha = 255
	elseif cstate == 's_kill_early' then --set up very early act 1 end
		require('ddlclove/states/splash')
		require('scripts/event')
		loadNoise()
		endbg = lg.newImage('assets/images/gui/end.png')
		s_killearly = lg.newImage('assets/images/cg/s_kill/s_kill_early.png')
		audioUpdate('s_kill_early')
		y_timer = 0
		alpha = 0
	elseif cstate == 'ghostmenu' then
		require('ddlclove/states/splash')
		endbg = lg.newImage('assets/images/gui/end.png')
		menu_art_m = lg.newImage("assets/images/gui/menu_art_m_ghost.png")
		menu_art_s = lg.newImage("assets/images/gui/menu_art_s_ghost.png")
		menu_art_n = lg.newImage("assets/images/gui/menu_art_n_ghost.png")
		menu_art_y = lg.newImage("assets/images/gui/menu_art_y_ghost.png")
		y_timer = 0.7
		tlp = {yx=525,nx=670,sx=470,mx=680,yy=850,ny=850,sy=850,my=850,scale=0.75}
		z_timer = {0,0}
		audioUpdate('ghostmenu')
		alpha = 0
	elseif cstate == 'poem_special' then
		poem_special_i(x)
	elseif cstate == 'credits' then
		loadCredits(x)
	elseif cstate == 'language' then
		menu_enable('language')
	end
	
	--load game state and scripts
	if cstate == 'game' or cstate == 'newgame' then
		if audio1 == '4' and x == 2 then
			alpha = 20
		else
			alpha = 255
			loadSayori()
			loadNatsuki()
			loadYuri()
			loadMonika()
			changeX.s.y = s_Set.x
			changeX.y.y = y_Set.x
			changeX.n.y = n_Set.x
			changeX.m.y = m_Set.x
			bgUpdate(bg1, true)
			audioUpdate(audio1, true)
			cgUpdate(cg1, true)
		end
		poem_enabled = false
		menu_enabled = false
		xaload = -1
		require('scripts/'..settings.lang..'/script-ch'..chapter)
		if persistent.ptr == 0 then
			if poemwinner[chapter] == 'Sayori' then
				require('scripts/'..settings.lang..'/script-exclusives-sayori')
			elseif poemwinner[chapter] == 'Natsuki' then
				require('scripts/'..settings.lang..'/script-exclusives-natsuki')
			elseif poemwinner[chapter] == 'Yuri' then
				require('scripts/'..settings.lang..'/script-exclusives-yuri')
			end
		elseif persistent.ptr == 2 and chapter > 20 then
			if poemwinner[chapter-20] == 'Natsuki' and chapter == 21 then
				require('scripts/'..settings.lang..'/script-exclusives2-natsuki')
			elseif poemwinner[chapter-20] == 'Yuri' or chapter > 21 then
				require('scripts/'..settings.lang..'/script-exclusives2-yuri')
			end
		end
	end
	
	state = cstate
end
