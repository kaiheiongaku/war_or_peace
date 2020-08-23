
require './lib/card'
require 'pry'

class Deck
  attr_reader :cards

  def initialize(cards = [])
    @cards = cards
  end

  def rank_of_card_at(number)
    card = cards[number]
    card.rank
  end

# high_ranked_cards = []
#
#   def high_ranking_cards
#
#     card.each do |high_ranking|
#       high_ranking = []
#       if card.rank = 'Jack'
#         high_ranking << card
#       elsif card.rank = 'Queen'
#         high_ranking << card
#       elsif card.rank = 'King'
#         high_ranking << card
#       elsif cark.rank = 'Ace'
#         high_ranking << card
#       else
#         next
#       end
#       high_ranked_cards << high_ranking
#     end
#
#   def percent_high_ranking
#     high_ranked_cards.length / cards.length
#   end
#
#   def remove_card
#     cards = cards.shift
#   end
#
#   def add_card(card)
#     cards = cards << card
#   end

  # def cards
  #   @cards
  # end

  # def add_card(card)
  #   @cards << card
  # end
end
