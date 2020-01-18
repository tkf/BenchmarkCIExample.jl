using BenchmarkTools
using BenchmarkCIExample

SUITE = BenchmarkGroup()

setup_sum() = randn(10_000)

let suite = SUITE["sum(xs)"] = BenchmarkGroup()
    suite["base"] = @benchmarkable sum(xs) setup = (xs = setup_sum())
    suite["naive_sum"] = @benchmarkable naive_sum(xs) setup = (xs = setup_sum())
end
