=begin



=end

# My Solution
def personalise campaign, person={}
  person[:favourite_products] = person[:favourite_product]
  t = campaign.scan /(<\w{1,}>)|(<\w{1,} \w{1,}>)/
  t.flatten.each do |x|
    #x = "<FAVOURITE_PRODUCT>" if x == "<FAVOURITE PRODUCTS>"
    #p person[:favourite_product]
    campaign = campaign.gsub!(/#{x}/,person[x.tr("<>","").split(" ").join("_").downcase.to_sym]) if x != nil
  end
  campaign
end


person = {:name=>"Scott", :city=>"Fort William", :age=>32, :favourite_product=>"hiking boots"}

longer_string = "Hello <NAME>, how is the weather in <CITY> today? We wanted to let you know that <FAVOURITE PRODUCTS> are on sale today only!"
longer_string_answer = "Hello Scott, how is the weather in Fort William today? We wanted to let you know that hiking boots are on sale today only!"

p personalise(longer_string, person)
