@testset "Day 01" begin

    example_input = """
    1721
    979
    366
    299
    675
    1456
    """

    @test AoC2020.solve_day01_part1(example_input) == 514579
    @test AoC2020.solve_day01_part2(example_input) == 241861950
end
