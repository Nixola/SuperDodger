world = {}

function world.load()

end

function world.update()
	segmentNo = love.math.random( 0, 0	)
end

function world.draw()
	for i, v in ipairs(worldData) do
		if v.C1 == true then
			love.graphics.rectangle("fill", love.graphics.getWidth() - 100, 0, v.length, love.graphics.getHeight()/6)
		end
		if v.C2 == true then
			love.graphics.rectangle("fill", love.graphics.getWidth() - 100, love.graphics.getHeight()/6, v.length, love.graphics.getHeight()/6)
		end
		if v.C3 == true then
			love.graphics.rectangle("fill", love.graphics.getWidth() - 100, 2*love.graphics.getHeight()/6, v.length, love.graphics.getHeight()/6)
		end
		if v.C4 == true then
			love.graphics.rectangle("fill", love.graphics.getWidth() - 100, 3*love.graphics.getHeight()/6, v.length, love.graphics.getHeight()/6)
		end
		if v.C5 == true then
			love.graphics.rectangle("fill", love.graphics.getWidth() - 100, 4*love.graphics.getHeight()/6, v.length, love.graphics.getHeight()/6)
		end
		if v.C6 == true then
			love.graphics.rectangle("fill", love.graphics.getWidth() - 100, 5*love.graphics.getHeight()/6, v.length, love.graphics.getHeight()/6)
		end
	end
end

worldData = {}

function world.loadData()
	
	worldData.spawn(1, 1, true, true, true, false, true, true, 20) --an example segment piece
	
end

function worldData.spawn(segment, position, C1, C2, C3, C4, C5, C6, length) --what segment number it is, position in the segment, column 1-6, length of that position in the segment
	table.insert(worldData, {segment, position, C1, C2, C3, C4, C5, C6, length})
end