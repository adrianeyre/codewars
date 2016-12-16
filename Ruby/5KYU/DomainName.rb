=begin

Write a function that when given a URL as a string, parses out just the domain
name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

=end

# My Solution
def domain_name(url)
  url = url.gsub("http://","").gsub("https://","").gsub("www.","")
  len = url.length
  url.split("").each_with_index {|x,i| (len = i ; break) if x == "/"}
  url = url[0...len]
  url.split("").each_with_index {|x,i| (len = i ; break) if x == "."}
  url = url[0...len]
end

# Better Solution
def domain_name(url)
  URI.parse(url).host.split('.').last(2)[0]
end

# Another Solution
def domain_name(url)
  regex = /(http|https):\/\/(?:www\.)?(?<domain_name>.*?)\./
  url.match(regex)[:domain_name]
end
