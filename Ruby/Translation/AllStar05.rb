=begin

Create a function, called randomMovies, that takes in an array of movie strings
and returns one of those movies randomly

movies = ["Rocky", "Rocky II", "Rocky III", "Rocky IV"]
randomMovies(movies) # => "Rocky"

=end

# My Solution
def randomMovies(movies)
  movies[rand(movies.length)]
end

(1..200).each do |rtest|
  Test.assert_equals(randomMovies(movies), true)
end
