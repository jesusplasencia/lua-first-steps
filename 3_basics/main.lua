local user = {
    name = "",
    age =  20,
}

function user.hello()
    print("My name is " .. user.name .. " and I'm " .. user.age)
end

io.write("Name: ")
user.name = io.read()

io.write("Age: ")
user.age = io.read()

if #user.name > 0 and user.age then
    user.hello()
end