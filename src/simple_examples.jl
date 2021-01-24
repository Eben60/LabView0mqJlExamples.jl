using Statistics

function trim_arr(arr; trim_at_begin, trim_at_end)
    if (trim_at_begin + trim_at_end) > 1
        error("you are trying to remove more than you have")
    elseif (trim_at_begin < 0) | (trim_at_end < 0)
        error("you are trying to remove less than zero")
    end
    l = length(arr)
    trim_b = round(Int, float(l*trim_at_begin), RoundDown)
    trim_e = round(Int, float(l*trim_at_end), RoundDown)
    return arr[begin+trim_b:end-trim_e]
end

function arr_amplitude(;testarr, trim_at_begin=0, trim_at_end=0)
    ar = trim_arr(testarr; trim_at_begin, trim_at_end)
    return (;y=(maximum(ar)-minimum(ar)))
end

function arr_length(;testarr, trim_at_begin=0, trim_at_end=0)
    ar = trim_arr(testarr; trim_at_begin, trim_at_end)
    return (;y=length(ar))
end

function arr_mean(;testarr, trim_at_begin=0, trim_at_end=0)
    ar = trim_arr(testarr; trim_at_begin, trim_at_end)
    return (;y=mean(ar))
end

function arr_median(;testarr, trim_at_begin=0, trim_at_end=0)
    ar = trim_arr(testarr; trim_at_begin, trim_at_end)
    return (;y=median(ar))
end

function arr_std(;testarr, trim_at_begin=0, trim_at_end=0)
    ar = trim_arr(testarr; trim_at_begin, trim_at_end)
    return (;y=std(ar))
end
