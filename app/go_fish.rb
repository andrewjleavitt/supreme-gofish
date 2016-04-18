require 'yaml'
require_relative 'deck'
require_relative 'card'
require_relative 'player'

class GoFish
  attr_accessor :players

  def initialize
    deck = Deck.new
    players = []
    player_count = 0

    puts "How Many Players"
    player_count = gets.chomp.to_i
    player_count.times do |i|
      puts "Enter Name for player #{i}:"
      player_name = gets.chomp
      players << {
        i => player_name,
        'hand' => []
      }
    end

    puts 'Dealing a hand to each player...'

    7.times do |i|
      players.each do |player|
        player['hand'] << Card.new(deck.cards.pop)
      end
    end
    puts players
  end

end


GoFish.new
