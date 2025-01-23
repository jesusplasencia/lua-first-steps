Vector = {}

function Vector.new (v)
    local vector = {}
    for _, l in ipairs(v) do vector[l] = true end
    return vector
end

function Vector.tostring (vector)
    local s = "{"
    local sep = ""
    for e in pairs(vector) do
      s = s .. sep .. e
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
    setmetatable(vector, Vector.mt)
    for _, l in ipairs(v) do vector[l] = true end
    return vector
end

function Vector.addition (l, r)
    local res = Vector.new{}
    for idx = 1, #l do
        res[l[idx] + r[idx]] = true 
    end
    return res 
end

Vector.mt.__add = Vector.addition

local v1 = Vector.new{10, 20, 30, 50}
local v2 = Vector.new{29, 48, 62, 47}
print(getmetatable(v1))
print(getmetatable(v2))

local v3 = v1 + v2
Vector.print(v3)