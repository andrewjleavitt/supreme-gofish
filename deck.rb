class Deck
  attr_accessor :cards

  def initialize
    @cards = (1..52).to_a.shuffle
  end
end