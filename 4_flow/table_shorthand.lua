local setup = function(opts)
    if opts.default == nil then
        opts.default = 23
    end

    print(opts.default, opts.other)
end

setup { default = 12, other = false }
setup { other = true }