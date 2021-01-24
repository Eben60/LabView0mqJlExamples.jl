using TestImages

function is2d_img(s)
    ! (occursin("_3d_", lowercase(s)) || occursin("series", lowercase(s)) || occursin("stack", lowercase(s)))
end

function get2d_images()
    rf = TestImages.remotefiles
    rf = filter(is2d_img, rf)
    return (;img_list=rf,)
end

function send_testimage(;img_name)
    img = testimage(img_name)
    img_type = string(typeof(img))
    return (;img_type, bigarrs=(;img))
end
