module MakiePublicationTheme

using Makie

include("publication_theme.jl")
export publication_theme

include("figure_sizes.jl")
export size_vectorgraphic, size_pixelgraphic

end
