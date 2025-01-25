a = "one string"
b = string.gsub(a, "one", "another")
-- lua can handle 100K or 1M characters in a single string
print(a)
print(b)
--
print("one line\nnext line\n\"in quotes\", 'in quotes'")
print('a backslash inside quotes: \'\\\'')
print("a simpler way: '\\'")

-- coercion
print(10 .. 20)