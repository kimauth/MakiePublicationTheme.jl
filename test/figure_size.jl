@testset "figure sizes" begin 
    size_inch = (5, 4)
    size_cm = size_inch .* 2.54
    dpi = 600.0

    # vector graphics
    size_inchbased, pt_per_unit_inchbased = size_vectorgraphic(size_inch; unit=:inch)
    @test size_inchbased == (360.0, 288.0)
    @test pt_per_unit_inchbased == 1.0

    size_cmbased, pt_per_unit_cmbased = size_vectorgraphic(size_cm; unit=:cm)
    @test all(size_cmbased .≈ size_inchbased)
    @test pt_per_unit_inchbased == 1.0

    # pixel graphics
    size_inchbased, px_per_unit_inchbased = size_pixelgraphic(size_inch, dpi; unit=:inch)
    @test size_inchbased == (360.0, 288.0)
    @test px_per_unit_inchbased == 25/3

    size_cmbased, px_per_unit_cmbased = size_pixelgraphic(size_cm, dpi; unit=:cm)
    @test all(size_cmbased .≈ size_inchbased)
    @test px_per_unit_cmbased == 25/3
end
