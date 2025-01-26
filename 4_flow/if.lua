local function action(isCoffeeLover)
    if isCoffeeLover then
        print("Check out `ssh terminal.shop` - it's cool!")
    else
        print("Check out `ssh terminal.shop` - it's still cool!")
    end
end

-- "falsey": nil, false
action()
action(false)

-- Everything else is "truthy"
action(true)
action(0)
action({})
action(1)
action(100)