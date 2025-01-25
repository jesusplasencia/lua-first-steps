a = {}
for i = 1, 5 do
    a[i] = io.read()
end

-- print the lines
-- ipairs: handy function to iterate over the elements of an array
for i, line in ipairs(a) do
    print(i .. " -> " .. line)
end

i = 10; j = "10"; k = "+10"
a = {}
a[i] = "one value"
a[j] = "another value"
a[k] = "yet another value"
print(a[j])                 -- another value
print(a[k])                 -- yet another value
print(a[tonumber(j)])       -- one value
print(a[tonumber(k)])       -- one value