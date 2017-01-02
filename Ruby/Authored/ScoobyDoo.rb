=begin

Description:

Good one Shaggy! We all love to watch Scooby Doo, Shaggy Rogers, Fred Jones,
Daphne Blake and Velma Dinkley solve the clues and figure out who was the villian.
The story plot rarely differed from one episode to the next. Scooby and his team
followed the clue then unmasked the villian at the end.

Scooby Doo
Your task is to initially solve the clues and then use those clues to unmask the
villian. You will be given a string of letters that you must manipulate in a way
that the clues guide you. You must then output the villian.

You will be given an Array of potential bad guys and you must only return the
correct masked villain.

Potential Villians
------------------
Black Knights
Puppet Master
Ghost Clowner
Witch Doctors
Waxed Phantom
Manor Phantom
Ghost Bigfoot
Haunted Horse
Davy Crockett
Captain Injun
Greens Gloobs
Ghostly Manor
Netty Crabbes
King Katazuma
Gators Ghouls
Headless Jack
Mambas Wambas
Medicines Man
Demon Sharker
Kelpy Monster
Gramps Vamper
Phantom Racer
Skeletons Men
Moon Monsters

Clue 1: The first clue is in a 'house' on 'String Class' Avenue.

Good luck!

=end

# Preloaded data
class String
  def house
    "Step 1: Rotate all letters to the right by 5\nClue: You are close to the monster so you may need to create a 'Disguise'"
  end
end

class Disguise
  def initialize
    puts "Step 2: Reverse the whole string\nClue: What is the length of Scooby Doo's favourite snack?\nTry using the Integer Array"
  end
end

class Integer
  def eleven
    "Step 3: Add 5 letters onto every even letter in the Villans Name ie a=>f\nMake sure after the letter z it goes round to a"
  end
end

villians = ["Black Knights","Puppet Master","Ghost Clowner","Witch Doctors","Waxed Phantom","Manor Phantom","Ghost Bigfoot","Haunted Horse","Davy Crockett","Captain Injun","Greens Gloobs",
"Ghostly Manor","Netty Crabbes","King Katazuma","Gators Ghouls","Headless Jack","Mambas Wambas","Medicines Man","Demon Sharker","Kelpy Monster","Gramps Vamper","Phantom Racer","Skeletons Men","Moon Monsters"]


# My Solution
def scoobydoo(villian, villians)
  villian = villian.to_s.split(" ").join("").downcase

  # Step 1 - Rotate Right by 5
  villian = villian.split("").rotate(-5).join

  # Step 2 - Reverse
  villian.reverse!

  # Step 3 - Change even letters by 5
  badguy = ""
  villian.split("").each_with_index.map {|z,i| badguy += i.odd? ? z.tr!("abcdefghijklmnopqrstuvwxyz","fghijklmnopqrstuvwxyzabcde") : z}

  villians.each do |z|
    return z if z.to_s.split(" ").join.downcase == badguy
  end
end

# Solution to make the mask names
def scoobydooreverse(villian)
  villian = villian.split(" ").join.downcase

  # Step 3 - Change even letters by 5
  badguy = ""
  villian.split("").each_with_index.map {|z,i| badguy += i.odd? ? z.tr!("abcdefghijklmnopqrstuvwxyz","vwxyzabcdefghijklmnopqrstu") : z}
  villian = badguy

  # Step 2 - Reverse
  villian.reverse!

  # Step 1 - Rotate Right by 5
  villian = villian.split("").rotate(5).join
  villian
end

=begin

Random tests for codewars
villians = ["Black Knights","Puppet Master","Ghost Clowner","Witch Doctors",
"Waxed Phantom","Manor Phantom","Ghost Bigfoot","Haunted Horse","Davy Crockett",
"Captain Injun","Greens Gloobs","Ghostly Manor","Netty Crabbes","King Katazuma",
"Gators Ghouls","Headless Jack","Mambas Wambas","Medicines Man","Demon Sharker",
"Kelpy Monster","Gramps Vamper","Phantom Racer","Skeletons Men","Moon Monsters"]

mask = ["nfkxagbntcgd","moekpppmeosv","lxtnocgmeiwj","oyhxtdwnrjtx","hkdzxvwhoonv",
"hkrjnvmhoonv","iwtnocgoojfb","dztiuvhzsmoc","omctvvdotzkx","ndaopvciuend",
"gnnzemgnbjog","ygtnocgmoiah","rxyotznnewbv","tvkbndkvmpzv","gnrjtvgnlpoc",
"szlyazhfcvjn","wnawmvmnawmv","ndcddzmiahsz","hnnjmzdmefrv","ohyklzkmeosi",
"vnphamgmekmv","mjtiacpmexam","ooegefsiehsi","njmiojmnrztn"]

# Random Tests
(0..99).each do |rtest|
  b = rand(villians.length)

  Test.it("should work for random tests") do
    Test.assert_equals(scoobydoo(mask[b],villians), villians[b])
  end
end
=end
