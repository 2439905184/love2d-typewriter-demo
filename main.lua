local text = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
local displayedText = ""
local index = 1
local delay = 0.1  -- 控制每个字符显示的时间间隔
function love.update(dt)
        if index <= #text then
            displayedText = displayedText.. string.sub(text, index, index)
            index = index + 1
            love.timer.sleep(delay)  -- 暂停一段时间
        end
end
function love.draw()
    love.graphics.print(displayedText)
end