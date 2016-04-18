require 'minitest/autorun'
require_relative '../app/card'

class CardTest < Minitest::Test

  def test_card_has_attributes
    ace_of_clubs = Card.new(12)
    assert_equal 'Clubs', ace_of_clubs.suit
    assert_equal 'Ace', ace_of_clubs.card
    assert_equal 12, ace_of_clubs.rank
  end

  def test_card_can_be_mapped_by_id
    queen_of_spades = Card.new(49)
    assert_equal 'Spades', queen_of_spades.suit
    assert_equal 'Queen', queen_of_spades.card
    assert_equal 10, queen_of_spades.rank

    five_of_hearts = Card.new(30)
    assert_equal 'Hearts', five_of_hearts.suit
    assert_equal '5', five_of_hearts.card
    assert_equal 4, five_of_hearts.rank

    jack_of_diamonds = Card.new(22)
    assert_equal 'Diamonds', jack_of_diamonds.suit
    assert_equal 'Jack', jack_of_diamonds.card
    assert_equal 9, jack_of_diamonds.rank

  end
end