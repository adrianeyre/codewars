=begin

You start working for a fancy new startup hoping to revolutionize social
networking! GASP! They had this great idea that users should be able to
specify relevant keywords to their posts using an ingenious idea by
prefixing those keywords with the pound sign (#). Your job is to extract
those keywords so that they can be used later on for whatever purposes.

Note:

Pound signs alone do not count, for example: the string "#" would return
an empty array.
If a word is preceded by more than one hashtag, only the last hashtag
counts (e.g. "##alot" would return ["alot"])
Hashtags cannot be within the middle of a word (e.g. "in#line hashtag"
returns an empty array)
Hashtags must precede alphabetical characters
(e.g. "#120398" or "#?" are invalid)
Input: String of words, where some words may contain a hashtag.

Output: Array of strings that were prefixed with the hashtag,
but do not contain the hashtag.

=end

# My Solution
def get_hashtags(post)
  post = " " + post
  result = []
  started = -1
  word = ""
  0.upto(post.length) do |x|
    if started != -1
      if post[x] =~ /[a-zA-Z0-9]/
        if started == 1 && post[x] =~ /[0-9]/
          started = -1
        else
          started += 1
          word += post[x]
        end
      else
        if started == 1
          started = -1
        else
          if post[x] == " " || x == post.length
            result << word
          end
          started = -1
        end
      end
    end
    if post[x] == "#" && (post[x-1] == " " || post[x-1] == "#")
      started = 1
      word = ""
    end
  end
  result
end

# Better Solution
def get_hashtags(post)
  post.split.grep(/^#+(\w+)$/) { $1 }
end

# Another Solution
def get_hashtags(post)
  post.scan(/\B\#[\#]*([a-z]+)(?=\s|$)/im).flatten
end
