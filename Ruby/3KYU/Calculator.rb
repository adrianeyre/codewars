=begin

Create a simple calculator that given a string of operators (+ - * and /) and
numbers separated by spaces returns the value of that expression

Example:

Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7
Remember about the order of operations! Multiplications and divisions have a
higher priority and should be performed left-to-right. Additions and
subtractions have a lower priority and should also be performed left-to-right.

=end

# My Solution
class Calculator
  def evaluate(string)
    string = string.split(" ")
    return string[0].to_i if string.length == 1

    i = 0
    0.upto(100) do |a|
      if string[i] == "*"
        string[i] = string[i-1].to_i * string[i+1].to_i
        string.delete_at(i-1)
        string.delete_at(i)
        i = 0
      end
      if string[i] == "/"
        string[i] = string[i-1].to_i / string[i+1].to_i
        string.delete_at(i-1)
        string.delete_at(i)
        i = 0
      end
      i += 1
    end

    i = 0
    0.upto(100) do |a|
      if string[i] == "+"
        string[i] = string[i-1].to_i + string[i+1].to_i
        string.delete_at(i-1)
        string.delete_at(i)
        i = 0
      end
      if string[i] == "-"
        string[i] = string[i-1].to_i - string[i+1].to_i
        string.delete_at(i-1)
        string.delete_at(i)
        i = 0
      end
      i += 1
    end
    string[0]
  end
end


# Better Solution
class Calculator
  def evaluate(string)
    instance_eval string
  end
end

# Another Solution
class Calculator
  def evaluate(string)
    [' + ', ' - ', ' * ', ' / '].each do |op|
      if string.include?(op)
        return string.split(op).map { |s| evaluate(s) }.inject(op.strip)
      end
    end
    string.to_f
  end
end
