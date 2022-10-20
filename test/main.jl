using Test

a = 1
b = 1.0
c = 1//1
d = Inf/Inf

@testset "sample test" begin
    @test a == b
    @test a == c
    @test isequal(NaN, d)
end

@testset "another sample test" begin
    @test b == c
    @test c === b
end