=begin

You started your new job as Junior Rails Developer 2 weeks ago. And your Mentor
is very pleased with your progress, because of this he entrust you with one of
his private projects.

He wants a film library with some functions. He tells you that he already
finished the annoying part of this project, the data is present and the tests
are ready. He also wrote some code and now it is your turn to impress your
mentor, finish his work. Use heavily the test to accomplish your goal.

The preloaded variable is @film_library. Here is a extract from the structure
@film_library = {
  spaceballs: {
    tags: ['hilarious', 'parody', 'cult', 'classic', 'science fiction']
  },
  starship_troopers: {
    tags: ['satire', 'science fiction', 'cult' ]
  },
Create 2 instance methods:
list_all_movies Returns all available movies in a humanised form. (Use the test
to get the clue)
list_all_tags Returns all available tags in a humanised form.
Try to reduce code duplication to a minimum.
Each method should be not longer than five lines of code. If you have more than
five, think about your approach. You can put some stuff beneath the protected
line (... methods to get all tags or movies or some presenter ).

=end

# My Solution
class FilmLibrary

  def initialize films
    @films = films
  end

  def list_all_movies
    result = []
    @films.each {|key,value| result << key.to_s.split("_").each.map {|x| x.capitalize}.join(" ")}
    result.sort.join(", ")
  end

  def list_all_tags
    result = []
    @films.each {|key,value| result << value[:tags]}
    result.flatten.uniq.sort!.join(", ")
  end

  protected

end
