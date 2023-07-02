
local Player = {}
local results = {}

function Player:load()

    

    Player.collider = world:newBSGRectangleCollider(400,200,16,10,3) --add to parent: world = wf.newWorld(0,0)
    Player.x =  Player.collider:getX()
    Player.y = Player.collider:getY()
    Player.collider:setFixedRotation(true)
    Player.speed = 10
    Player.sprites = nil
    Player.grid = nil --anim8.newGrid()
    Player.animations = {}
    Player.animations.move = nil --anim8.newAnimation(Player.grid("1-6",3), 0.2 )

    KeyManager:addKey("up","w")
    KeyManager:addKey("down","s")
    KeyManager:addKey("right","d")
    KeyManager:addKey("left","a")
    local results = {}

    cam:lookAt(Player.x,Player.y)
    cam:zoomTo(3)
end

function Player:update(dt)

    
    

    results = KeyManager:update(dt)

    playerMovement(dt)


end

function Player:draw()
    --TODO

end

function playerMovement()

    local moveY = keyIs("down") - keyIs("up")
    local moveX = keyIs("right") - keyIs("left")
    moveX = moveX*dt
    moveY = moveY*dt


    Player.collider:setLinearVelocity(moveX,moveY)
    Player.x =  Player.collider:getX()
    Player.y = Player.collider:getY()

    Player.animations.move:update(dt)

end

function keyIs(action2)

    
    print(action2)
    print(inspect(results))
    for _, action in pairs(results) do
        print(action)
        local counter = 1
        if action == action2  then
            return 1
        end
    end
    return 0
end

return Player
