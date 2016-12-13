=begin

Yet another staple for the functional programmer. You have a sequence of values
and some predicate for those values. You want to remove the longest prefix of
elements such that the predicate is true for each element. We'll call this the
dropWhile function. It accepts two arguments. The first is the sequence of
values, and the second is the predicate function. The function does not change
the value of the original sequence.

Your task is to implement the dropWhile function. If you've got a span function
lying around, this is a one-liner! Alternatively, if you have a takeWhile
function on your hands, then combined with the dropWhile function, you can
implement the span function in one line. This is the beauty of functional
programming: there are a whole host of useful functions, many of which can be
implemented in terms of each other.

=end

# My Solution
def drop_while(arr, pred)
  result = []
  is_done = false
  arr.each do |x|
    if pred.call(x) == false
      is_done = true
    end
    if is_done
      result << x
    end
  end
  result
end


# Better Solution
def drop_while(arr, pred)
  arr.drop_while{ |s| pred[s] }
end
