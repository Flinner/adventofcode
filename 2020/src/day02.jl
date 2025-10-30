#! format:off
"""
    read_passwords(input::String)

Output:
    N×3 Matrix{Any}:
     1:3  'a'  "abcde"
     1:3  'b'  "cdefg"
     2:9  'c'  "ccccccccc"
"""
function read_passwords(input::String)
    dlm_in = @pipe input   |>
          split(_)         |>
          reshape(_, 3, :)

    ranges = @pipe split.(dlm_in[1,:], "-") |>
        map(n -> parse.(Int64, n),       _)
        

    chars = (first.(dlm_in[2,:]))

    hcat(ranges, chars, dlm_in[3,:])
end
#! format:on

function solve_day02_part1(input::String)
    password_matrix = read_passwords(input)

    acceptable_range = map(n -> range(n...), password_matrix[:, 1])

    char_count = @pipe password_matrix |>
                       eachrow |>
                       map(row -> count(row[2], row[3]), _)

    sum(in.(char_count, acceptable_range))
end


function solve_day02_part2(input::String)
    password_matrix = read_passwords(input)


    indices = password_matrix[:, 1]
    char = password_matrix[:, 2]
    chars = hcat(getindex.(split.(password_matrix[:, 3], ""), indices)...)

    sum(xor.(chars[2, :] .== string.(char),
        chars[1, :] .== string.(char)))

    # indices, char, chars
    # sum(in.(chars, acceptable_range))
end
