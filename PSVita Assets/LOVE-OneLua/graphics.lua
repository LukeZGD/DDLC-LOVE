--default print font
local defaultfont
if not lv1lua.isPSP then
	defaultfont = {font=font.load(dataloc.."LOVE-OneLua/Vera.ttf"),size=12}
	font.setdefault(defaultfont.font)
else
	defaultfont = {font=font.load("oneFont.pgf"),size=12}
	font.setdefault(defaultfont.font)
end

--set up stuff
local current = {font=defaultfont,color=color.new(255,255,255,255)}

function love.graphics.newImage(filename)
	img = image.load(dataloc.."game/"..filename)
	
	--scale 1280x720 to 960x540 (vita)
	image.scale(img,75)
	
	return img
end

function love.graphics.draw(drawable,x,y,r,sx,sy)
	if not x then x = 0 end
	if not y then y = 0 end
	if not sx then sx = 1 end
	if not sy then sy = 1 end
	
	--scale 1280x720 to 960x540(vita) or 480x270(psp)
	x = x * 0.75; y = y * 0.75
	--x = x * 0.375; y = y * 0.375
	
	if r then
		image.rotate(drawable,(r/math.pi)*180) --radians to degrees
	end
	
	if sx or sy then
		image.resize(drawable,image.getrealw(drawable)*sx,image.getrealh(drawable)*sy)
	end
	
	if drawable then
		image.blit(drawable,x,y,color.a(current.color))
	end
end

function love.graphics.newFont(setfont, setsize)
	if not lv1lua.isPSP and setfont then
		setfont = font.load(dataloc.."game/"..setfont)
	else
		setfont = defaultfont
	end
	
	if not setsize then
		setsize = 12
	end
		
	local table = {
		font = setfont;
		size = setsize;
		}
	return table
end

function love.graphics.setFont(setfont,setsize)
	if not lv1lua.isPSP and setfont then
		current.font = setfont
	else
		current.font = defaultfont
	end
	
	if setsize then
		current.font.size = setsize
	end
end

function love.graphics.print(text,x,y)
	local fontsize = current.font.size/18.5
	if not x then x = 0 end
	if not y then y = 0 end
	
	--scale 1280x720 to 960x540(vita) or 480x270(psp)
	x = x * 0.75; y = y * 0.75
	fontsize = fontsize*0.75
	--x = x * 0.375; y = y * 0.375
	--fontsize = fontsize*0.6
	
	if text then
		screen.print(current.font.font,x,y,text,fontsize,current.color)
	end
end

function love.graphics.setColor(r,g,b,a)
	if not a then a = 255 end
	current.color = color.new(r,g,b,a)
end

function love.graphics.setBackgroundColor(r,g,b)
	screen.clear(color.new(r,g,b))
end

function love.graphics.rectangle(mode, x, y, w, h)
	--scale 1280x720 to 960x540(vita) or 480x270(psp)
	x = x * 0.75; y = y * 0.75; w = w * 0.75; h = h * 0.75
	--x = x * 0.375; y = y * 0.375; w = w * 0.375; h = h * 0.375
	
	if mode == "fill" then
		draw.fillrect(x, y, w, h, current.color)
	elseif mode == "line" then
		draw.rect(x, y, w, h, current.color)
	end
end

function love.graphics.line(x1,y1,x2,y2)
	draw.line(x1,y1,x2,y2,current.color)
end

function love.graphics.circle(x,y,radius)
	draw.circle(x,y,radius,current.color,30)
end
	