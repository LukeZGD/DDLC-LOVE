--some info
lv1lua.isPSP = os.cfw
lv1lua.appmode = ""
lv1lua.appname = "DDLC-LOVE"
lv1lua.dataloc = ""
local lv1lua.keyconfset = "XB"

if lv1lua.appmode == "TEST" and not lv1lua.isPSP then
	lv1lua.dataloc = "ux0:/data/"..lv1lua.appname.."/"
end

if lv1lua.keyconfset == "PS" then
	lv1lua.keyconf = {"circle","cross","triangle","square","l","r"}
elseif lv1lua.keyconfset == "Nintendo" then
	lv1lua.keyconf = {"a","b","x","y","lbutton","rbutton"}
	--[[
	Nintendo Key Config
	a = circle
	b = cross
	x = triangle
	y = square
	lbutton = l trigger
	rbutton = r trigger
	]]
elseif lv1lua.keyconfset == "XB" then
	lv1lua.keyconf = {"b","a","y","x","lbutton","rbutton"}
	--[[
	Xbox Controller Key Config
	b = circle
	a = cross
	y = triangle
	x = square
	lbutton = l trigger
	rbutton = r trigger
	]]
end

love = {}
love.graphics = {}
love.timer = {}
love.audio = {}
love.event = {}
love.math = {}
love.system = {}
love.filesystem = {}
love.keyboard = {}

--modules and stuff
dofile(lv1lua.dataloc.."LOVE-OneLua/graphics.lua")
dofile(lv1lua.dataloc.."LOVE-OneLua/timer.lua")
dofile(lv1lua.dataloc.."LOVE-OneLua/audio.lua")
dofile(lv1lua.dataloc.."LOVE-OneLua/event.lua")
dofile(lv1lua.dataloc.."LOVE-OneLua/math.lua")
dofile(lv1lua.dataloc.."LOVE-OneLua/system.lua")
dofile(lv1lua.dataloc.."LOVE-OneLua/filesystem.lua")
dofile(lv1lua.dataloc.."LOVE-OneLua/keyboard.lua")

--return LOVE 0.10.2
function love.getVersion()
	return 0, 10, 2
end

--require replacement?
function require(param)
	if string.sub(param, -4) == ".lua" then
		param = lv1lua.dataloc.."game/"..param
	else
		param = lv1lua.dataloc.."game/"..param..".lua"
	end
	dofile(param)
end

--START!
love.math.setRandomSeed(os.time())
dofile(lv1lua.dataloc.."game/main.lua")
if love.load then
	love.load()
end

--gamepadpressed or keypressed stuff
local mask = {"up", "down", "left", "right", "cross", "circle", "square", "triangle", "r", "l", "start", "select"}

if not love.keypressed and love.gamepadpressed then
	function love.keypressed(key)
		love.gamepadpressed(joy,button)
	end
elseif not love.keypressed then
	love.keypressed = function() end
end

if not love.keyreleased and love.gamepadreleased then
	function love.keyreleased(key)
		love.gamepadreleased(joy,button)
	end
elseif not love.keyreleased then
	love.keyreleased = function() end
end

--Main loop
while true do
	--Draw
	if love.draw then
		love.draw()
	end
	screen.flip()
	
	--Update
	if tmr:time() >= 16 then
		dt = tmr:time() / 1000
		if love.update then
			love.update(dt)
		end
		tmr:reset(); tmr:start()
	end
	
	--Controls
	buttons.read()
	for i=1,#mask do
		if buttons[mask[i]] and mask[i] == "circle" then
			love.keypressed(lv1lua.keyconf[1])
		elseif buttons[mask[i]] and mask[i] == "cross" then
			love.keypressed(lv1lua.keyconf[2])
		elseif buttons[mask[i]] and mask[i] == "triangle" then
			love.keypressed(lv1lua.keyconf[3])
		elseif buttons[mask[i]] and mask[i] == "square" then
			love.keypressed(lv1lua.keyconf[4])
		elseif buttons[mask[i]] and mask[i] == "l" then
			love.keypressed(lv1lua.keyconf[5])
		elseif buttons[mask[i]] and mask[i] == "r" then
			love.keypressed(lv1lua.keyconf[6])
		elseif buttons[mask[i]] then
			love.keypressed(mask[i])
		end
		if buttons.released[mask[i]] and mask[i] == "circle" then
			love.keyreleased(lv1lua.keyconf[1])
		elseif buttons.released[mask[i]] and mask[i] == "cross" then
			love.keyreleased(lv1lua.keyconf[2])
		elseif buttons.released[mask[i]] and mask[i] == "triangle" then
			love.keyreleased(lv1lua.keyconf[3])
		elseif buttons.released[mask[i]] and mask[i] == "square" then
			love.keyreleased(lv1lua.keyconf[4])
		elseif buttons.released[mask[i]] and mask[i] == "l" then
			love.keyreleased(lv1lua.keyconf[5])
		elseif buttons.released[mask[i]] and mask[i] == "r" then
			love.keyreleased(lv1lua.keyconf[6])
		elseif buttons.released[mask[i]] then
			love.keyreleased(mask[i])
		end
	end
end