module AoC2020

greet() = print("Hello World!!!")
include("day01.jl")

get_input(number::String) = read(joinpath(@__DIR__, "..", "input", "day$(number).txt"), String)

function main()
    @show solve_day01_part1(get_input("01"));
    @show solve_day01_part2(get_input("01"));
end


# Run from CLI: julia --project=. scripts/run_day.jl 1
if abspath(PROGRAM_FILE) == @__FILE__
    day = parse(Int, ARGS[1])
    main(day)
end

end # module AoC2020
