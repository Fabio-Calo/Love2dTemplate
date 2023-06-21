
local ButtonManager = {}

local ButtonsF = {}
local ButtonsD = {}

local Helper = require"Helper/helper"

function ButtonManager:load()
    
end

function ButtonManager:update(dt)
    for index, Button in ipairs(ButtonsF) do
       Button()
    end
end

function ButtonManager:draw()
    if ButtonsD ~= nil then
        for i, v in ipairs(ButtonsD) do
            xy = v.xy()
            if v.mode == "image" then
                love.graphics.draw(v.image, xy[1], xy[2])
            elseif v.mode == "rectangeLine" then

                love.graphics.rectangle("line",xy[1],xy[2],v.w,v.h)
            end
        end
    end
end

function ButtonManager:addButton(updatefunction,drawfunction)
    ButtonsF[#ButtonsF+1] = updatefunction
    ButtonsD[#ButtonsD+1] = drawfunction
 
    return #ButtonsF
end

function ButtonManager:deleteButton(index)
    ButtonsF = Helper:ArrayRemove(ButtonsF,{ButtonsF[index]})
    ButtonsD = Helper:ArrayRemove(ButtonsD,{ButtonsD[index]})
end

function ButtonManager:deleteButtons()
    ButtonsF = {}
    ButtonsD = {}
end

function ButtonManager:printButtons()
    print(inspect(ButtonsD))
end


return ButtonManager