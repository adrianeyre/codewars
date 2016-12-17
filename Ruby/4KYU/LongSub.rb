def lcs(x, y)
  x = x.split("")
  y = y.split("")
  num = 0
  result = ""
  b = 0
  0.upto(x.length-1) do |a|

    #0.upto(y.length-1) do |b|
      puts "x[a]=#{x[a]}  y[b]=#{y[b]}"
      if x[a] == y[b]
        result += x[a]
        puts "r   =#{result}"
        #y.shift
        b+=1
        puts "y[b]=#{y[b]}"
        #break
      end
    #end
  end


  p result
end

lcs( "132535365" , "123456789" )
