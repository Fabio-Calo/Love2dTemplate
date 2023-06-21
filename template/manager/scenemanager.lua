
local SceneManager = {}
local Scene = {}
function SceneManager:getScene(sceneFile)
    return Scene
end

function SceneManager:setScene(sceneFile)
    love.graphics.setDefaultFilter("nearest","nearest")
    sceneFile = sceneFile or "menu"
    Scene = require("scenes/"..sceneFile)
    Scene:load()
end

function SceneManager:load()
    SceneManager:setScene()
end

function SceneManager:update(dt)
    Scene:update(dt)
end

function SceneManager:draw()
    Scene:draw()
end


return SceneManager