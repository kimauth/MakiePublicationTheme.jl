using CairoMakie
using Random

function demofigure()
    Random.seed!(2)
    
    size = (600, 450) # use Makie default figure size instead of theme figure size
    f = Figure(; size)
    ax = Axis(f[1, 1],
        title = "measurements",
        xlabel = "time (s)",
        ylabel = "amplitude")

    labels = ["alpha", "beta", "gamma", "delta", "epsilon", "zeta"]
    for i in 1:6
        y = cumsum(randn(10)) .* (isodd(i) ? 1 : -1)
        lines!(y, label = labels[i])
        scatter!(y, label = labels[i])
    end

    Legend(f[1, 2], ax, "legend", merge = true)

    Axis3(f[1, 3],
        viewmode = :stretch,
        # zlabeloffset = 40, # why would this be part of a an example showning off themes?
        title = "sinusoid")

    s = surface!(0:0.5:10, 0:0.5:10, (x, y) -> sqrt(x * y) + sin(1.5x))

    Colorbar(f[1, 4], s, label = "intensity")

    ax = Axis(f[2, 1:2],
        title = "different species",
        xlabel = "height (m)",
        ylabel = "density",)
    for i in 1:6
        y = randn(200) .+ 2i
        density!(y)
    end
    tightlimits!(ax, Bottom())
    xlims!(ax, -1, 15)

    Axis(f[2, 3:4],
        title = "stock performance",
        xticks = (1:6, labels),
        xlabel = "company",
        ylabel = "gain (\$)",
        xticklabelrotation = pi/6)
    for i in 1:6
        data = randn(1)
        barplot!([i], data)
        rangebars!([i], data .- 0.2, data .+ 0.2)
    end

    f
end

with_theme(publication_theme()) do
    f = demofigure()
    save("../assets/makie_demofigure.png", f)
end
