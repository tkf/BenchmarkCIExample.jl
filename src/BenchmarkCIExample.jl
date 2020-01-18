module BenchmarkCIExample

export naive_sum

function naive_sum(xs)
    s = 0
    for x in xs
        s += x
    end
    return s
end

end # module
