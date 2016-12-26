=begin
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
=end
=begin
def lcs(x, y)
  (y.length-1).downto(0) do |z|
    check = "" ; result = ""
    0.upto(z) do |v|
      check += "[#{y[v]}].*"
      result += "#{y[v]}"
    end
    puts result
    return result if x =~ /.*#{check}.*/
  end
  ""
end
=end
def lcs(x, y)
  #num = 0
  #0.upto(x.length-1) do |z|
  #  puts x[0..z]
  #end
  puts x
  puts y
  y = y.gsub(/[notatest]/,"@")
  puts y
  "DONE"
end

p lcs("anothertest", "notatest")
