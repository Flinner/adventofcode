function read_numbers(input::String)::Vector{Number}
    input |>
    split |>
    ss ->
        map(s -> parse(Int64, s), ss)
end


function solve_day01_part1(input::String)
    needle = 2020
    numbers::Vector{Int64} = read_numbers(input)

    for n in numbers
        if needle - n in numbers
            return (needle - n) * n
        end
    end
    return nothing
end

function solve_day01_part2(input::String)
    numbers::Vector{Int64} = read_numbers(input)

    for n₁ in numbers, n₂ in numbers
        if 2020 - n₁ - n₂ in numbers
            return (2020 - n₁ - n₂) * n₁ * n₂
        end
    end
    return nothing
end
