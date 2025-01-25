input = io.read()
n = tonumber(input)

if n == nil then
    error(line .. " is not a valid number")
else
    print(n * 2)
end

-- tostring(k) -> string
print(tostring(10) == "10")     -- true
print(10 .. "" == "10")         -- true