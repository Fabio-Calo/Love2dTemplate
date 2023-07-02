


function love.load()

    --managers
    SceneManager = require "manager/scenemanager"
    ButtonManager = require "manager/buttonmanager"

    --libs
    inspect = require("libraries/inspect")
    wf = require "libraries/windfield"
    anim8 = require "Libraries/anim8"
    camera = require "Libraries/camera"
    cam = camera()
    SceneManager:load()
    ButtonManager:load()
end

function love.update(dt)
    SceneManager:update(dt)
    ButtonManager:update(dt)
end

function love.draw()
    SceneManager:draw()
    ButtonManager:draw()
end
