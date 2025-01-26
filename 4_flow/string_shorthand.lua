-- String shorthand in functions

local single_string = function(s)
    return s.. " - WOW!"
end

local append_string = function(m)
    return "GOODBYE " ..m
end

local x = single_string("hi")
local y = single_string "hi"


local z = append_string("Lennon")