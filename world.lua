world = {}

function world.load()
	world.loadData()
end

function world.update( dt )
  for i, block in ipairs(worldData) do
    block.segmentx = block.segmentx - love.graphics.getWidth()*0.1 * dt
    if block.segmentx - love.graphics.getWidth()/10 < 0 then
      block.segmentx = love.graphics.getWidth() -- the block can't reach the player, ever, and it gets back at the edge of screen when it's about to. Is this the intended behaviour?
    end
  end
end

function world.draw()
	for i, v in ipairs(worldData) do
		width = love.graphics.getWidth()
		love.graphics.setColor(0, 0, 255)
		if v.segmentx < width and -100 < v.segmentx then
			if v.C1 == true then
				love.graphics.rectangle("fill", v.segmentx, 0, 0.1 * width, love.graphics.getHeight()/6)
			end
			if v.C2 == true then
				love.graphics.rectangle("fill", v.segmentx, love.graphics.getHeight()/6, 0.1 * width, love.graphics.getHeight()/6)
			end
			if v.C3 == true then
				love.graphics.rectangle("fill", v.segmentx, 2*love.graphics.getHeight()/6, 0.1 * width, love.graphics.getHeight()/6)
			end
			if v.C4 == true then
				love.graphics.rectangle("fill", v.segmentx, 3*love.graphics.getHeight()/6, 0.1 * width, love.graphics.getHeight()/6)
			end
			if v.C5 == true then
				love.graphics.rectangle("fill", v.segmentx, 4*love.graphics.getHeight()/6, 0.1 * width, love.graphics.getHeight()/6)
			end
			if v.C6 == true then
				love.graphics.rectangle("fill", v.segmentx, 5*love.graphics.getHeight()/6, 0.1 * width, love.graphics.getHeight()/6)
			end
		end
	end
end

worldData = {}

function world.loadData()
	
	worldData.spawn(1, 1, true, true, true, false, true, true, love.graphics.getWidth()) --an example segment piece
	worldData.spawn(1, 2, false, true, false, false, false, false, love.graphics.getWidth() + 256) -- the issue was here. You were spawning the blocks in the exact same place, you need to differentiate this a bit.
	
end

function worldData.spawn(segment, position, C1, C2, C3, C4, C5, C6, segmentx) --what segment number it is, position in the segment, column 1-6, length of that position in the segment
	table.insert(worldData, {segment = segment, position = position, C1 = C1, C2 = C2, C3 = C3, C4 = C4, C5 = C5, C6 = C6, segmentx = segmentx})
end