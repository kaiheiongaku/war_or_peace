require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/war_or_peace_runner'
require 'pry'

class Turn
  attr_reader :player1, :player2, :spoils_of_war, :type

  def initialize(player1, player2, spoils_of_war = [], type = :basic)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = spoils_of_war
    @type = type
  end

  def start
    p "Welcome to War (or Peace). This game will be played with 52 cards."
    p "The players today are #{player1.name} and #{player2.name}."
    p "Type 'GO' to start the game!"
    start_command = gets.chomp
    if gets.chomp == 'GO'
      p "YAYY! LET'S PLAY!!"
      #Could do more inputs here to customize for user.
      player1 = Player.new("Megan", deck1)
      player2 = Player.new("Aurora", deck2)
      turn = Turn.new(player1, player2)
    else
      p "Come on...input 'GO' so we can play."
    end
  end


  def winner
    if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
      @type = :basic
      if player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
        winner = player1
      elsif player2.deck.rank_of_card_at(0) > player1.deck.rank_of_card_at(0)
        winner = player2
      end
    elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
      @type = :war
      if player1.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
        winner = player1
      elsif player2.deck.rank_of_card_at(2) > player1.rank_of_card_at(2)
        winner = player2
      else
        @type = :mutually_assured_destruction
        return "No winner"
      end
    end
  end

  def pile_cards
    if @type == :basic
      @spoils_of_war << player1.deck.remove_card
      @spoils_of_war << player2.deck.remove_card
    elsif @type == :war
      @spoils_of_war << player1.deck.remove_card.remove_card.remove_card
      @spoils_of_war << player2.deck.remove_card.remove_card.remove_card
    elsif @type == :mutually_assured_destruction
      player1.deck.remove_card.remove_card.remove_card
      player2.deck.remove_card.remove_card.remove_card
    end
  end
  #not functional, suspect I need to use flatten to eliminate nested arrays
  def award_spoils(winner)
    winner.deck.add_card(spoils_of_war).flatten
  end

end
