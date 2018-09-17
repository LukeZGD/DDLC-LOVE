--timer stuff for update dt
tmr = timer.new()
stmr = timer.new()
tmr:start()
stmr:start()
dt = 0

function love.timer.getTime()
	return stmr:time() / 1000
end

function love.timer.getDelta()
	return dt
end