module EEGIO

using Mmap

# TODO make a test to check if this value is updated
# with Pkg.TOML.parsefile(joinpath(pkgdir(EEGIO), "Project.toml"))["version"]
version = "0.1.0"

abstract type EEGData end
export EEGData

# BDF files
include("formats/BDF.jl")
include("load/load_bdf.jl")
include("save/save_bdf.jl")
export BDF, BDFHeader, read_bdf, write_bdf

# EEG files
include("formats/EEG.jl")
include("load/load_eeg.jl")
include("save/save_eeg.jl")
export EEG, EEGHeader, EEGMarkers, read_eeg, write_eeg

# Helper functions
include("utils/resize.jl")
export crop, select, split

end # module