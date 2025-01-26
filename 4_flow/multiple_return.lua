local unpack = table.unpack or unpack

local returns_four_values = function()
    return 1, 3, 5, 8
end

first, second, last = returns_four_values()

print("first : ", first)
print("second: ", second)
print("last  : ", last)
-- the No 4 is discarded

local variable_arguments = function(...)
    local argumts = { ... }
    for i, v in ipairs({...}) do print(i, v) end
    return unpack(argumts)
end

print("============================")
print("1: ", variable_arguments("hello", "world", "!"))
print("============================")
print("2: ", variable_arguments("hello", "world", "!"), "<lost>")