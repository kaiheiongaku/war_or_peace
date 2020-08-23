require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test

  def test_it_exists
    deck = Deck.new([])
    assert_instance_of Deck, deck
  end

  def test_deck_has_a_card_attribute
    deck = Deck.new([])

    assert_equal [], deck.cards
  end

  def test_rank_of_card_at
    card1 = Card.new(:diamond, 'Queen', 12)
    deck1 = Deck.new([card1])
    assert_equal 12, deck1.rank_of_card_at(0)
  end


end
