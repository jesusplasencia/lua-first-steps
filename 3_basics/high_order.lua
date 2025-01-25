-- High Order Functions

local higher_order = function(value)
    return function(partie)
        return value + partie;
    end;
end;

local add_one = higher_order(1);
print("add_one(2) -> " ..add_one(2).. "");
-- print("add_one(2) -> ", add_one(2));