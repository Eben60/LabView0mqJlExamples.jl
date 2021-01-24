module LabView0mqJlExamples

# using LabView0mqJl
using JSON3
using Colors, TestImages, ImageIO, ImageShow, FileIO
using Statistics
include("./user_functions.jl")
include("./simple_examples.jl")
include("./image_examples.jl")

export show_img, myf1, myf2, myf3, test_bin2nums,numarr_loopback, numarrs_lpbk, test_rgbimg

# from simple_examples
export arr_amplitude, arr_length, arr_mean, arr_median

# from image_examples
export get2d_images, send_testimage

end
