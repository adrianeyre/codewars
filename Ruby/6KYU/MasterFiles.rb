class String

  def is_audio
    self.each_char {|x| return false if x == " "}
    file = self[0..self.index(".")]
    return false if file =~ /\d/
    4.times do |x|
        return true if  %w(.mp3 .flac .alac .aac)[x] == self[self.index(".")..-1]
    end
    false
  end

  def is_img
    self.each_char {|x| return false if x == " "}
    file = self[0..self.index(".")]
    return false if file.match(/\A[:alpha:]+\z/)
    5.times do |x|
        return true if  %w(.jpg .jpeg .png .bmp .gif)[x] == self[self.index(".")..-1]
    end
    false
  end
end

puts "icon.jpg".is_img
