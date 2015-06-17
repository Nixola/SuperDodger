world = {}

function world.load()
	world.loadData()
end

function world.update( dt )
	--segment11x = segment11x - 10 * dt
	segmentNo = love.math.random( 0, 0	)
	
	for i, v in ipairs(worldData) do
		v.segmentx = v.segmentx - 100 * dt
	end
end

function world.draw()
	for i, v in ipairs(worldData) do
		love.graphics.setColor(0, 0, 255)
		if v.segmentx < love.graphics.getWidth() and 0 < v.segmentx then
			if v.C1 == true then
				love.graphics.rectangle("fill", v.segmentx, 0, 100, love.graphics.getHeight()/6)
			end
			if v.C2 == true then
				love.graphics.rectangle("fill", v.segmentx, love.graphics.getHeight()/6, 100, love.graphics.getHeight()/6)
			end
			if v.C3 == true then
				love.graphics.rectangle("fill", v.segmentx, 2*love.graphics.getHeight()/6, 100, love.graphics.getHeight()/6)
			end
			if v.C4 == true then
				love.graphics.rectangle("fill", v.segmentx, 3*love.graphics.getHeight()/6, 100, love.graphics.getHeight()/6)
			end
			if v.C5 == true then
				love.graphics.rectangle("fill", v.segmentx, 4*love.graphics.getHeight()/6, 100, love.graphics.getHeight()/6)
			end
			if v.C6 == true then
				love.graphics.rectangle("fill", v.segmentx, 5*love.graphics.getHeight()/6, 100, love.graphics.getHeight()/6)
			end
		end
	end
end

worldData = {}

function world.loadData()
	
	segment11x = love.graphics.getWidth()
	
	
	
	
end

function worldData.spawn(segment, position, C1, C2, C3, C4, C5, C6, segmentx) --what segment number it is, position in the segment, column 1-6, length of that position in the segment
	table.insert(worldData, {segment = segment, position = position, C1 = C1, C2 = C2, C3 = C3, C4 = C4, C5 = C5, C6 = C6, segmentx = segmentx})
end