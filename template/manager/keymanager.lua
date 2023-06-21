KeyManager={}

local keys= {}
keys["up"]={}
keys["down"]={}
keys["left"]={}
keys["right"]={}


function KeyManager:update(dt)
  
    local result = {}


    for id, keys in pairs(keys) do        
        if love.keyboard.isDown(key) then
            table[id] = true
        end
    end

    return false
end

function KeyManager:addKey(id,key)
    table.insert(keys[id],key)
end

function KeyManager:removeKey(id,key)
    keys[id] = {} 
end

return KeyManager