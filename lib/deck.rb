
require './lib/card'
require 'pry'

class Deck
  attr_reader :cards

  def initialize(cards = [])
    @cards = cards
  end

  def rank_of_card_at(number)
    cards[number].rank
  end

  def high_ranking_cards
    array_of_high_ranked = []

    cards.each do |card|

      if card.value == 'Jack'
        array_of_high_ranked.append(card)
      elsif card.value == 'Queen'
        array_of_high_ranked.append(card)
      elsif card.value == 'King'
        array_of_high_ranked.append(card)
      elsif card.value == 'Ace'
        array_of_high_ranked.append(card)
        return array_of_high_ranked

      #return high_ranked = array_of_high_ranked
      end
    end
  end

  def percent_high_ranking
    high_ranking_cards.length / cards.length.to_f
  end


  def remove_card
    cards.shift
    
  end

  def add_card(card)
    cards << card
  end

  # def cards
  #   @cards
  # end

  # def add_card(card)
  #   @cards << card
  # end
end
