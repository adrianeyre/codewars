=begin

Here is your next task! Use the test to solve your task.

Create 1 instance methods:

search_movies_by_title(str) Search for movies based on title. Example 'ma'
returns Batman and Supeman
Try to reduce code duplication to a minimum.
Each method should be not longer than five lines of code. If you have more than
five, think about your approach. You can put some stuff beneath the protected
line (... methods to get all tags or movies or some presenter ).
The preloaded variable is @film_library. Here is a extract from the structure
@film_library = {
  spaceballs: {
    tags: ['hilarious', 'parody', 'cult', 'classic', 'science fiction']
  },
  starship_troopers: {
    tags: ['satire', 'science fiction', 'cult' ]
  },

=end

# My Solution
class FilmLibrary

  def initialize films
    @films = films
  end

  def search_movies_by_title(title="")
    title = title.to_s.strip
    result = []
    @films.each {|key,value| result << key.to_s.split("_").each.map {|x| x.capitalize}.join(" ") if key.match /#{title}/}
    result == [] ? "No result for #{title}" : result.sort.join(", ")
  end

  protected

end
