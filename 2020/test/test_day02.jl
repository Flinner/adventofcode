@testset "Day 02" begin

    example_input = """
    1-3 a: abcde
    1-3 b: cdefg
    2-9 c: ccccccccc
    """

    @test AoC2020.solve_day02_part1(example_input) == 2
    @test AoC2020.solve_day02_part2(example_input) == 1
end
