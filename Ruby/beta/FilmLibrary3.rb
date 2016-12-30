=begin

The last task, after this your mentor shouldbe very happy.

The preloaded variable is @film_library. Here is a extract from the structure
@film_library = {
  spaceballs: {
    tags: ['hilarious', 'parody', 'cult', 'classic', 'science fiction']
  },
  starship_troopers: {
    tags: ['satire', 'science fiction', 'cult' ]
  },
Create 1 instance methods:
search_movies_by_tags(str) Search movies by tag. Example: 'ugly' or 'ugly, crime'
Each method should be not longer than five lines of code. If you have more than
five, think about your approach. You can put some stuff beneath the protected
line (... methods to get all tags or movies or some presenter ).
The search_movies_by_tags(str) method has actually two functions:

It takes one or more tags (seperated by coma) to find movies based on tags. A
movie is selected if the tag(s) are present in the tags property of the movie.
Example: If you search for sciFfi and cult, than starshiptroopers and spaceballs
should be returned.
If one tag from search query is not present in the tag list, than it returns
suggested tag(s) and not movies. Example: If the search is ult, then the
suggested tag is cult

Use the test to get a clue.

=end

# My Solution
# *** Not Working Fully ***
class FilmLibrary

  def initialize films
    @films = films
  end

  def search_movies_by_tags2(str=" ")
    search = str.split(", ")
    result = [] ; tag_result = []
    @films.each do |title,tag|
      tag[:tags].each do |tags|
        found = true ; tag_found = true
        search.each do |x|
          x.downcase == tags.downcase ? found = true : found = false
          (tags.downcase.match /#{x.downcase}/) || (x.downcase == tags.downcase) ? tag_found = true : tag_found = false
        end
        result << title.to_s.split("_").each.map {|v| v.capitalize}.join(" ") if found || str == " "
        tag_result << tags if tag_found
      end
    end
    return result.sort.join(", ") if result != []
    return "Suggested tags for #{str} is #{tag_result.flatten.uniq.sort!.join(", ")}" if tag_result != []
    "No suggestions for #{str}"
  end

  protected

end

@film_library = {:spaceballs=>{:tags=>["hilarious", "parody", "cult", "classic", "science fiction"]}, :starship_troopers=>{:tags=>["satire", "science fiction", "cult", "science fiction"]}, :reservoir_dogs=>{:tags=>["cult", "neo noir", "crime", "classic", "earworm"]}, :man_bites_dog=>{:tags=>["satire", "crime", "black comedy", "foreign", "mockumentary"]}, :killing_zoe=>{:tags=>["crime", "ugly", "french"]}, :baise_moi=>{:tags=>["foreign", "crime", "french", "violence"]}, :matrix_2=>{:tags=>["cult", "dystopia", "century", "keanu reeves", "classic"]}}

test = FilmLibrary.new(@film_library)
p test.search_movies_by_tags()
