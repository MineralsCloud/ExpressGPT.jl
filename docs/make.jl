using ExpressGPT
using Documenter

DocMeta.setdocmeta!(ExpressGPT, :DocTestSetup, :(using ExpressGPT); recursive=true)

makedocs(;
    modules=[ExpressGPT],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/MineralsCloud/ExpressGPT.jl/blob/{commit}{path}#{line}",
    sitename="ExpressGPT.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MineralsCloud.github.io/ExpressGPT.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MineralsCloud/ExpressGPT.jl",
    devbranch="main",
)
