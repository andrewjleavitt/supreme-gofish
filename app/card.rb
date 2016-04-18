class Card

  SUIT_MAP = {
    0 => 'Clubs',
    1 => 'Diamonds',
    2 => 'Hearts',
    3 => 'Spades',
  }

  CARD_MAP = {
    0  => '1',
    1  => '2',
    2  => '3',
    3  => '4',
    4  => '5',
    5  => '6',
    6  => '7',
    7  => '8',
    8  => '9',
    9 => 'Jack',
    10 => 'Queen',
    11 => 'King',
    12  => 'Ace',
  }

  attr_accessor :suit, :card, :rank
  def initialize(id)
    @suit = SUIT_MAP[(id / 13)]
    @card = CARD_MAP[(id % 13)]
    @rank = (id % 13)
  end

  def to_s
    "#{@card} of #{@rank}"
  end
end