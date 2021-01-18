using Documenter, LabView0mqJlExamples

makedocs(
    modules = [LabView0mqJlExamples],
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    authors = "Eben60",
    sitename = "LabView0mqJlExamples.jl",
    pages = Any["index.md"]
    # strict = true,
    # clean = true,
    # checkdocs = :exports,
)

deploydocs(
    repo = "github.com/Eben60/LabView0mqJlExamples.jl.git",
    push_preview = true
)
