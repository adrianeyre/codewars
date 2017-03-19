class Uno

  def initialize(cards, pile)
    p @cards = cards
    p @pile = pile
  end
end

class UnoMaster

  def initialize()
    @cards = ["Y1","Y2","Y3","Y4","Y5","Y6","Y7","Y8","Y9",
              "Y1","Y2","Y3","Y4","Y5","Y6","Y7","Y8","Y9",
              "R1","R2","R3","R4","R5","R6","R7","R8","R9",
              "R1","R2","R3","R4","R5","R6","R7","R8","R9",
              "G1","G2","G3","G4","G5","G6","G7","G8","G9",
              "G1","G2","G3","G4","G5","G6","G7","G8","G9",
              "B1","B2","B3","B4","B5","B6","B7","B8","B9",
              "B1","B2","B3","B4","B5","B6","B7","B8","B9",
              "Y+2","Y+2","R+2","R+2","G+2","G+2","B+2","B+2",
              "YR","YR","RR","RR","GR","GR","BR","BR",
              "YS","YS","RS","RS","GS","GS","BS","BS",
              "C","C","C","C","+4","+4","+4","+4"].shuffle
    @pcardsarray = [[],[]]
    p1 = [] ; p2 = []
    srand
    (0..6).each do |card|
      (0..1).each do |player|
        card = rand(@cards.length)
        @pcardsarray[player] << @cards[card]
        @cards.delete_at(card)
      end
    end
    topofpack
    @game = Uno.new(@pcardsarray[1], @topofpack)
  end

  private

  def topofpack
    card = rand(@cards.length)
    @topofpack = @cards[card]
  end
end

game = UnoMaster.new
