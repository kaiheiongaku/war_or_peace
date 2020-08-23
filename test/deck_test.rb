require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test

  def test_it_exists
    deck = Deck.new
    assert_instance_of Deck, deck
  end

  def test_deck_has_a_card_attribute
    deck = Deck.new

    assert_equal [], deck.cards
  end
end
