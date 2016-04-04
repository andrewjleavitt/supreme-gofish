require_relative 'deck'

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
      players << {i => player_name}
    end

    puts players
  end

end

GoFish.new
