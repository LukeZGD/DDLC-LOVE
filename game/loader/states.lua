function changeState(cstate,x)
	print("loading state: "..cstate)
	menu_alpha = 0
	menu_previous = nil
	history = {}
	
	if cstate ~= 's_kill_early' and cstate ~= 'ghostmenu' and cstate ~= 'newgame' and cstate ~= 'title' then
		require(branch..'/states/'..cstate)
	elseif cstate == 'title' and not drawSplash then
		require(branch..'/states/splash')
	end
	
	if cstate == 'game' then
		hideAll()
	end
	
	if cstate == 'splash' then
		splash = lgnewImage('assets/images/bg/splash.png')
		alpha = 0
		audioUpdate('1')
	elseif cstate == 'title' and branch == 'ddlclove' then
		alpha = 0		
		--sayori
		if (persistent.ptr == 1 or persistent.ptr == 2) and not menu_art_s_break then
			menu_art_s_break = lgnewImage("assets/images/gui/menu_art_s_break.png")
		elseif not menu_art_s then
			menu_art_s = lgnewImage("assets/images/gui/menu_art_s.png")
		end		
		--new game gui image
		if g_system == 'PSP' then
			if persistent.ptr == 1 and not gui.newgame1 then
				gui.newgame1 = lgnewImage("assets/images/gui/overlay/newgame1.png")
			elseif not gui.newgame1 then
				gui.newgame = lgnewImage("assets/images/gui/overlay/newgame.png")
			end
		else
			if persistent.ptr == 1 and not gui.newgame1 then
				gui.newgame1 = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/newgame1.png")
			elseif not gui.newgame1 then
				gui.newgame = lgnewImage("assets/images/gui/overlay/"..settings.lang.."/newgame.png")
			end
		end		
		--monika
		if persistent.ptr == 4 and not menu_art_m then
			menu_art_m = lgnewImage("assets/images/cg/blank.png")
		elseif not menu_art_m then
			menu_art_m = lgnewImage("assets/images/gui/menu_art_m.png")
		end		
		--natsuki and yuri image
		if not menu_art_n then menu_art_n = lgnewImage("assets/images/gui/menu_art_n.png") end
		if not menu_art_y then menu_art_y = lgnewImage("assets/images/gui/menu_art_y.png") end
		--other stuff
		poem_enabled = false
		audioUpdate('1')
		menu_enable('title')
		y_timer = 0
		titlebg_ypos = -240
		tlp = {yx=525,nx=670,sx=470,mx=680,yy=850,ny=850,sy=850,my=850,scale=0.75}
		z_timer = {0,0}
	elseif cstate == 'title' and branch == '3ds' then
		alpha = 0
		if persistent.ptr == 0 then
			titlebg = lgnewImage('assets/images/gui/bg.png')
		elseif persistent.ptr <= 2 then
			titlebg = lgnewImage('assets/images/gui/bg2.png')
		elseif persistent.ptr == 4 then
			titlebg = lgnewImage('assets/images/gui/bg3.png')
		end
		poem_enabled = false
		audioUpdate('1')
		menu_enable('title')
		y_timer = 0
		titlebg_ypos = -240
	elseif cstate == 'game' and x == 1 then -- new game
		cl = 1
		chapter = persistent.ptr * 10
		if persistent.ptr == 0 and persistent.chr.m == 0 then
			cl = 10001
		end
	elseif cstate == 'game' and (x == 2 or x == 3) then 
		if x == 2 then -- load game
			loadgame()
		elseif x == 3 then -- poemgame to game
			cl = cl + 2
		end
		if global_os == 'LOVE-WrapLua' and g_system ~= 'PS3' and persistent.ptr <= 2 and chapter < 23 then
			if chapter <= 5 then
				persistent.chr.m = 2
			else
				savevalue = persistent.chr.m
				persistent.chr.m = 2
			end
			savegame('autoload')
			savepersistent()
			love.event.quit('restart')
		end
	elseif cstate == 'game' and x == 'autoload' then
		loadgame('autoload')
		if chapter <= 5 then
			persistent.chr.m = 1
			savepersistent()
		elseif chapter < 23 then
			persistent.chr.m = savevalue
			savepersistent()
		end
	elseif cstate == 'newgame' then -- first run
		require(branch..'/states/game')
		cl = 10016
	elseif cstate == 'poemgame' and branch == 'ddlclove' then --load poemgame assets and state
		if persistent.ptr <= 2 then --acts 1 and 2
			audioUpdate('4',true)
			bg1 = 'notebook'
			if not notebook then notebook = lgnewImage('assets/images/bg/notebook.png') end
		elseif persistent.ptr == 3 then --act 3
			audioUpdate('ghostmenu')
			notebook_glitch = lgnewImage('assets/images/bg/notebook-glitch.png')
		end
		
		if poemstate == 0 and not poemtime then --first time poemgame
			poemtime = lgnewImage('assets/images/gui/poemgame/poemtime.png')
			poemtime2 = lgnewImage('assets/images/gui/poemgame/poemtime2.png')
		end
		
		if persistent.ptr <= 2 then
			if persistent.ptr == 0 and not s_sticker_1 then --sayori stickers
				s_sticker_1 = lgnewImage('assets/images/gui/poemgame/s_sticker_1.png')
				s_sticker_2 = lgnewImage('assets/images/gui/poemgame/s_sticker_2.png')
			elseif not eyes then --act 2 only stickers
				eyes = lgnewImage('assets/images/bg/eyes.png')
				m_sticker_2 = lgnewImage('assets/images/gui/poemgame/m_sticker_2.png')
				y_sticker_1_broken = lgnewImage('assets/images/gui/poemgame/y_sticker_1_broken.png')
				y_sticker_2g = lgnewImage('assets/images/gui/poemgame/y_sticker_2g.png')
			end
			
			if chapter == 22 then --yuri stickers with cuts
				y_sticker_1 = lgnewImage('assets/images/gui/poemgame/y_sticker_cut_1.png')
				y_sticker_2 = lgnewImage('assets/images/gui/poemgame/y_sticker_cut_2.png')
			elseif not y_sticker_1 then --yuri stickers normal
				y_sticker_1 = lgnewImage('assets/images/gui/poemgame/y_sticker_1.png')
				y_sticker_2 = lgnewImage('assets/images/gui/poemgame/y_sticker_2.png')
			end
			
			if not n_sticker_1 then --natsuki stickers
				n_sticker_1 = lgnewImage('assets/images/gui/poemgame/n_sticker_1.png')
				n_sticker_2 = lgnewImage('assets/images/gui/poemgame/n_sticker_2.png')
			end
			
		elseif not m_sticker_1 then --monika sticker
			m_sticker_1 = lgnewImage('assets/images/gui/poemgame/m_sticker_1.png')
		end
		poemgame()
		alpha = 255
	elseif cstate == 'poemgame' and branch == '3ds' then
		if persistent.ptr <= 2 then
			if persistent.ptr == 0 then
				s_sticker_1 = lgnewImage('assets/images/gui/poemgame/s_sticker_1.png')
				s_sticker_2 = lgnewImage('assets/images/gui/poemgame/s_sticker_2.png')
			else
				eyes = lgnewImage('assets/images/bg/eyes.png')
			end
			y_sticker_1 = lgnewImage('assets/images/gui/poemgame/y_sticker_1.png')
			y_sticker_2 = lgnewImage('assets/images/gui/poemgame/y_sticker_2.png')
			n_sticker_1 = lgnewImage('assets/images/gui/poemgame/n_sticker_1.png')
			n_sticker_2 = lgnewImage('assets/images/gui/poemgame/n_sticker_2.png')
		else
			m_sticker_1 = lgnewImage('assets/images/gui/poemgame/m_sticker_1.png')
		end
		poemgame()
		alpha = 255
	elseif cstate == 's_kill_early' and branch == 'ddlclove' then
		require('ddlclove/states/splash')
		require('scripts/event')
		loadNoise()
		lg.setBackgroundColor(0,0,0)
		endbg = lgnewImage('assets/images/gui/'..settings.lang..'/end.png')
		s_killearly = lgnewImage('assets/images/cg/s_kill/s_kill_early.png')
		audioUpdate('s_kill_early')
		y_timer = 0
		alpha = 0
	elseif cstate == 's_kill_early' and branch == '3ds' then
		require('3ds/states/splash')
		endbg = lgnewImage('assets/images/gui/end.png')
		s_killearly = lgnewImage('assets/images/cg/s_kill/s_kill_early.png')
		audioUpdate('s_kill_early')
		alpha = 0
	elseif cstate == 'ghostmenu' and branch == 'ddlclove' then
		require('ddlclove/states/splash')
		endbg = lgnewImage('assets/images/gui/end.png')
		menu_art_m = lgnewImage("assets/images/gui/menu_art_m_ghost.png")
		menu_art_s = lgnewImage("assets/images/gui/menu_art_s_ghost.png")
		menu_art_n = lgnewImage("assets/images/gui/menu_art_n_ghost.png")
		menu_art_y = lgnewImage("assets/images/gui/menu_art_y_ghost.png")
		y_timer = 0.7
		tlp = {yx=525,nx=670,sx=470,mx=680,yy=850,ny=850,sy=850,my=850,scale=0.75}
		z_timer = {0,0}
		audioUpdate('ghostmenu')
		alpha = 0
	elseif cstate == 'ghostmenu' and branch == '3ds' then
		require('3ds/states/splash')
		endbg = lgnewImage('assets/images/gui/end.png')
		titlebg = lgnewImage('assets/images/gui/bg_ghost.png')
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
		if (bg1 == 'notebook' and (x == 2 or x == 'autoload')) or x == 0 then
			alpha = 20
		else
			alpha = 255
			loadAll()
			if branch == 'ddlclove' then
				changeX.s.y = s_Set.x
				changeX.y.y = y_Set.x
				changeX.n.y = n_Set.x
				changeX.m.y = m_Set.x
			else
				unloadAll('poemgame')
			end
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
	print("loaded state: "..cstate)
end
