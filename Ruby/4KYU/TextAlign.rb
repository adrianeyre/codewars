=begin

our task in this Kata is to emulate text justification in monospace font.
You will be given a single-lined text and the expected justification width.
The longest word will never be greater than this width.

Here are the rules:

Use spaces to fill in the gaps between words.
Each line should contain as many words as possible.
Use '\n' to separate lines.
Gap between words can't differ by more than one space.
Lines should end with a word not a space.
'\n' is not included in the length of a line.
Large gaps go first, then smaller ones: 'Lorem---ipsum---dolor--sit--amet'
(3, 3, 2, 2 spaces).
Last line should not be justified, use only one space between words.
Last line should not contain '\n'
Strings with one word do not need gaps ('somelongword\n').
Example with width=30:

Lorem  ipsum  dolor  sit amet,
consectetur  adipiscing  elit.
Vestibulum    sagittis   dolor
mauris,  at  elementum  ligula
tempor  eget.  In quis rhoncus
nunc,  at  aliquet orci. Fusce
at   dolor   sit   amet  felis
suscipit   tristique.   Nam  a
imperdiet   tellus.  Nulla  eu
vestibulum    urna.    Vivamus
tincidunt  suscipit  enim, nec
ultrices   nisi  volutpat  ac.
Maecenas   sit   amet  lacinia
arcu,  non dictum justo. Donec
sed  quam  vel  risus faucibus
euismod.  Suspendisse  rhoncus
rhoncus  felis  at  fermentum.
Donec lorem magna, ultricies a
nunc    sit    amet,   blandit
fringilla  nunc. In vestibulum
velit    ac    felis   rhoncus
pellentesque. Mauris at tellus
enim.  Aliquam eleifend tempus
dapibus. Pellentesque commodo,
nisi    sit   amet   hendrerit
fringilla,   ante  odio  porta
lacus,   ut   elementum  justo
nulla et dolor.

=end

# My Solution
def justify(text, width)
    text = text.split(" ")
    result = ""
    line = []
    sentance = []
    text.each_with_index do |x,i|
      if line.join.length + x.length + (line.length) <= width
        line << x
      else
        sentance << line
        line = []
        line << x
      end
      sentance << line if (i + 1) == text.length
    end
    sentance.each_with_index do |x,i|
      len = (width - x.join.length)
      if i+1 != sentance.length
        if x.length == 1
          result += x[0] + "\n"
        else
          num = 0
          0.upto(len-1) do |a|
            x[num] += " "
            num += 1
            num = 0 if num > (x.length - 2)
          end
          result += x.join + "\n"
        end
      else
        result += x.join(" ")
      end
    end
    result
end

# Better Solution
def justify(text, width)
  text.split.reduce([[]]) do |lines, word|
    line = lines.last
    if (spaces = width - line.join(' ').length) > word.length
      line << word
    else
      spaces.times { |i| line[i % (line.count - 1)] += ' ' } if line.count > 1
      lines << [word]
    end
    lines
  end.map { |line| line.join(' ') }.join("\n")
end
