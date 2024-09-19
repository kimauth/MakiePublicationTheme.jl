using MakiePublicationTheme
using Documenter

DocMeta.setdocmeta!(MakiePublicationTheme, :DocTestSetup, :(using MakiePublicationTheme); recursive=true)

makedocs(;
    modules=[MakiePublicationTheme],
    authors="Kim Louisa Auth <auth@chalmers.se> and contributors",
    sitename="MakiePublicationTheme.jl",
    format=Documenter.HTML(;
        canonical="https://kimauth.github.io/MakiePublicationTheme.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/kimauth/MakiePublicationTheme.jl",
    devbranch="main",
)
