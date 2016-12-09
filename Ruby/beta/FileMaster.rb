=begin

This kata requires you to write an object that receives a file path and
does operations on it. NOTE FOR PYTHON USERS: You cannot use modules
os.path, glob, and re

Example of how the tests would work:

master = FileMaster.new('/Users/person1/Pictures/house.png')
master.extension
#--> png
master.filename
#--> house
master.dirpath
#--> /Users/person1/Pictures/

=end

# My solution
class FileMaster
  def initialize(filepath)
    @filepath = filepath
  end

  def extension
    pos = @filepath.split("").index(".")
    @filepath[pos+1..-1]
  end

  def filename
    pos = @filepath.split("").rindex("/")
    ext = @filepath.split("").index(".")
    ext = @filepath.length - ext + 1
    @filepath[pos+1..-ext]
  end

  def dirpath
    pos = []
    @filepath.split("").each_with_index {|x,i| pos << i if x == "/"}
    @filepath[0..pos[-1]]
  end
end

# Better Solution
class FileMaster
  def initialize(filepath)
    @fn = filepath
  end

  def extension
    @fn.split('.')[-1]
  end

  def filename
    ne = @fn.split('/')[-1]
    ne.split('.')[0]
  end

  def dirpath
    @fn[/\/.+\//]
  end
end

# Another Solution
class FileMaster
  def initialize(filepath)
    @filepath = filepath
  end

  def extension
    @filepath.scan(/.*\.(.*)/).join
  end

  def filename
    @filepath.scan(/.*\/(.*)\..*/).join
  end

  def dirpath
    @filepath.scan(/(.*\/).*/).join
  end
end
