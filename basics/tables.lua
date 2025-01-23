-- Variables: Tables (aka list)

local list = { "Hotel", 1976, false, function() print("California!") end };
print("Yup, 1-indexed   :", list[1]);
print("Fourth is 4      : ", list[4]());

local fn_key = function() 
    return 10;
end

local t = {
    literal_key = "a string",
    ["a certain key"] = "also works",
    [fn_key] = "Tricked"
}

print("literal_key      : ", t.literal_key);
print("a certain key    : ", t["a certain key"]);
print("function() end   : ", t[fn_key]);