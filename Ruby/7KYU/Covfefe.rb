def covfefe(tweet)
  tweet.include?("coverage") ? tweet.gsub("coverage","covfefe") : tweet +" covfefe"
end