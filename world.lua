world = {}

function world.load()

end

function world.update()
	segmentNo = love.math.random( 0, 0	)
end

function world.draw()

end

worldData = {}

function world.loadData()
	
	worldData.spawn(1, 1, true, true, true, false, true, true, 20) --an example segment piece
	
end

function worldData.spawn(segment, position, C1, C2, C3, C4, C5, C6, length) --what segment number it is, position in the segment, column 1-6, length of that position in the segment
	table.insert(worldData, {segment, position, C1, C2, C3, C4, C5, C6, length})
end