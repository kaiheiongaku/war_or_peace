
require './lib/card'
require 'pry'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end

  def add_card(card)
    @cards << card
  end
end
