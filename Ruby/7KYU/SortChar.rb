def sortMe(arr)
    arr.sort_by {|x| x.to_s[-1]}
end