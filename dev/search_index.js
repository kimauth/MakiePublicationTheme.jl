var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = MakiePublicationTheme","category":"page"},{"location":"#MakiePublicationTheme","page":"Home","title":"MakiePublicationTheme","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for MakiePublicationTheme.","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [MakiePublicationTheme]","category":"page"},{"location":"#MakiePublicationTheme.size_pixelgraphic-Tuple{Any, Any}","page":"Home","title":"MakiePublicationTheme.size_pixelgraphic","text":"size_pixelgraphic(size, dpi; unit=:cm)\n\nCompute the required figure size and px_per_unit at a resolution of dpi dots-per-inch and for a given physical size in :cm or :inch. The (physical) font size will be the same as set in the theme, i.e. the default is 10 pt.\n\nExample:\n\nusing MakiePublicationTheme\nusing CairoMakie\n\nsize_cm = (12.0, 8.0)\ndpi = 600\nsize, px_per_unit = size_pixelgraphic(size_cm, dpi)\n\nf = Figure(; size)\n# lots of plotting here\nsave(\"my_12x8cm_figure.png\", f; px_per_unit)\n\nMore information about matching figure and font sizes can be found in the Makie documentation. \n\n\n\n\n\n","category":"method"},{"location":"#MakiePublicationTheme.size_vectorgraphic-Tuple{Any}","page":"Home","title":"MakiePublicationTheme.size_vectorgraphic","text":"size_vectorgraphic(size; unit=:cm)\n\nCompute the required figure size and pt_per_unit for a given physical size in :cm or :inch. The (physical) font size will be the same as set in the theme, i.e. the default is 10 pt.\n\nExample:\n\nusing MakiePublicationTheme\nusing CairoMakie\n\nsize_cm = (12.0, 8.0)\nsize, pt_per_unit = size_vectorgraphic(size_cm)\n\nf = Figure(; size)\n# lots of plotting here\nsave(\"my_12x8cm_figure.pdf\", f; pt_per_unit)\n\nMore information about matching figure and font sizes can be found in the Makie documentation. \n\n\n\n\n\n","category":"method"}]
}