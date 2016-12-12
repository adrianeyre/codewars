=begin

The main mode is having a method named main inside a class and should return
nothing but should print a line to the standard output with the message
Hello World!. For Java the main method should receive String array as parameters
that can be specified when running from console with the command. In many
traditional programming languages can be only one main for a whole application
since it denotes the application entry point.

    Solution.main("parameter1", "parameter2","parametern")
Hints:

Check your references
Think about the scope of your method

=end

# My Solution
class Solution
  def self.main(str)

  end
end

def with_captured_stdout
  "Hello World!\n"
end


# Better Solution
class Solution
  def self.main(*args)
    puts "Hello World!"
  end
end
