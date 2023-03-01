local gm = {}

gm.Name = "Gamemode"

function gm:PreStart()
    
end

function gm:Start()

end

function gm:Think()

end

function gm:End()

end

function gm:TraitorResults()

end

function gm:RoundSummary()
    local sb = Traitormod.StringBuilder:new()

    sb("Gamemode: %s\n", self.Name)

    for character, role in pairs(Traitormod.RoleManager.RoundRoles) do
        sb("\n%s\n", role:OtherGreet())
    end

    return sb:concat()
end

function gm:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self

    return o
end

return gm
