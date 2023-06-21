
Helper = {}


-------
--Possitions
-------
function Helper:relativeCenter(x,y)
    local width = love.graphics.getWidth()
    local height = love.graphics.getHeight()
    local xc = width/2-x
    local yc = height/2-y

    return {xc,yc}
end

--x = distance from border
--y = distance form center
function Helper:relativeRight(x,y)
    local xr = love.graphics.getWidth()-x
    local yc = love.graphics.getHeight()/2-x
    return {xr,yc}
end

--y = distance from border
--x = distance form center
function Helper:relativeBottom(x,y)
    local xc = love.graphics.getWidth()/2-x
    local yb = love.graphics.getHeight()-y
    return {xc,yb}
end

function Helper:procentualWidht(x)
    return love.graphics.getWidth()/100*x
end

function Helper:procentualHeight(y)
    y = love.graphics.getHeight()/100*y
    print(y)
    return y

end

function Helper:insideRectangle(x,y,w,h,myx,myy)
    return myx >= x and myx <= x+w and myy >= y and myy <= y+h 
end

function Helper:distance ( x1, y1, x2, y2 )
    local dx = x1 - x2
    local dy = y1 - y2
    return {dx,dy}
end

function Helper:relativeImageCenter ( image,x,y )

    wh=Helper:getCenter(image) 
    return Helper:distance ( x, y, wh[1], wh[2] )
end

--only Images
function Helper:getCenter(image) 

    local h = image:getHeight()
    local w = image:getWidth()

    return {w,h}
end

return Helper