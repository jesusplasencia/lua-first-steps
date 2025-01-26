local fibo_mt = {
    __index = function(self, key)
        if key < 2 then return 1 end
        -- Update the table, to save the immediate results
        self[key] = self[key - 2] + self[key - 1]
        -- return result
        return self[key]
    end
}

local fib = setmetatable({}, fibo_mt)

print(fib[5])
print(fib[10])