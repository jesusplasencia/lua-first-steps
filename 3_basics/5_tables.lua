-- Variables: Tables (aka list)

local list = { "Hotel", 1976, false, function() print("California!") end };
-- print("Yup, 1-indexed   :", list[1]);
-- print("Fourth is 4      : ", list[4]());

local fn_key = function() 
    return 10;
end

local t = {
    literal_key = "a string",
    ["a certain key"] = "also works",
    [fn_key] = "Tricked"
}

-- print("literal_key      : ", t.literal_key);
-- print("a certain key    : ", t["a certain key"]);
-- print("function() end   : ", t[fn_key]);

a = {}
k = "x"
a[k] = 10
a[10] = "great"

-- print(a["x"] .. " is a " .. type(a["x"]))       -- 10 is a number
k = 10
-- print(a[k] .. " is a " .. type(a[k]))           -- great is a string

-- Reassignment the value of the key x in table a
a["x"] = a["x"] + 1
-- print(a["x"] .. " is a " .. type(a["x"]))       -- 11 is a number

-- table is always anonymous
a = {}
a["x"] = 10
b = a               -- 'b' refers to the same table as 'a'
-- print(b["x"])       -- 10
b["x"] = 20
-- print(a["x"])       -- 20
a = nil
b = nil             -- when a table has no associated references, it will delete the table and reuse its memory


a = {}
-- create 1000 new entries
for i = 1, 1000 do a[i] = i * 2 end
-- print(a[9])          -- 18
a["x"] = 10
-- print(a["x"])        -- 10
-- print(a["y"])        -- nil

print(a[9])
a.x = 10                -- a.name = syntactic sugar for a["name"]
print(a.x)              -- 10
print(a.y)              -- nil

a = {}
x = "y"
a[x] = 10
print(a[x])             -- 10
print(a.x)              -- nil
print(a.y)              -- 10