Vector = {}

function Vector.tostring (vector)
    local s = "{"
    local sep = ""
    for key, val in pairs(vector) do
      s = s .. sep .. key .. " : " .. val
      sep = ", "
    end
    return s .. "}"
end

function Vector.print(v)
    print(Vector.tostring(v))
end

Vector.mt = {}

function Vector.new (v)
    local vector = {}
    if #v == 3 then
        vector.x = v[1]
        vector.y = v[2]
        vector.z = v[3]
    end
    setmetatable(vector, Vector.mt)
    return vector
end

function Vector.addition (l, r)
    local res = Vector.new{}
    res.x = l.x + r.x
    res.y = l.y + r.y
    res.z = l.z + r.z
    setmetatable(res, Vector.mt)
    return res
end

Vector.mt.__add = Vector.addition

local v1 = Vector.new{10, 20, 30}
local v2 = Vector.new{29, 48, 62}
print(getmetatable(v1))
print(getmetatable(v2))

local v3 = v1 + v2
print(getmetatable(v3))
Vector.print(v3)