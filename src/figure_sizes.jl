"""
    size_vectorgraphic(size; unit=:cm)

Compute the required figure size and `pt_per_unit` for a given physical size in `:cm` or
`:inch`. The (physical) font size will be the same as set in the theme, i.e. the default is
10 pt.

Example:
```@example
using MakiePublicationTheme
using CairoMakie

size_cm = (12.0, 8.0)
size, pt_per_unit = size_vectorgraphic(size_cm)

f = Figure(; size)
# lots of plotting here
save("my_12x8cm_figure.pdf", f; pt_per_unit)
```

More information about matching figure and font sizes can be found in the
[Makie documentation](https://docs.makie.org/v0.21/explanations/figure#Matching-figure-and-font-sizes-to-documents). 
"""
function size_vectorgraphic(size; unit=:cm)
    if unit == :cm
        size_pt = size ./ 2.54 .* 72.0
    elseif unit == :inch
        size_pt = size .* 72.0
    else
        error("Unknown unit $unit.")
    end
    pt_per_unit = 1
    
    return size_pt, pt_per_unit
end

"""
    size_pixelgraphic(size, dpi; unit=:cm)

Compute the required figure size and `px_per_unit` at a resolution of `dpi` dots-per-inch
and for a given physical size in `:cm` or `:inch`. The (physical) font size will be the same
as set in the theme, i.e. the default is 10 pt.

Example:
```@example
using MakiePublicationTheme
using CairoMakie

size_cm = (12.0, 8.0)
dpi = 600
size, px_per_unit = size_pixelgraphic(size_cm, dpi)

f = Figure(; size)
# lots of plotting here
save("my_12x8cm_figure.png", f; px_per_unit)
```

More information about matching figure and font sizes can be found in the
[Makie documentation](https://docs.makie.org/v0.21/explanations/figure#Matching-figure-and-font-sizes-to-documents). 
"""
function size_pixelgraphic(size, dpi; unit=:cm)
    if unit == :cm
        size_inch = size ./ 2.54
    elseif unit == :inch
        size_inch = size
    else
        error("Unknown unit $unit.")
    end
    size_pt = size_inch .* 72.0
    px_per_unit = first(size_inch) * dpi / first(size_pt)

    return size_pt, px_per_unit
end
