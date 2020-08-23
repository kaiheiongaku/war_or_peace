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

  def test_high_ranking_cards
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    deck2 = Deck.new([card1, card2, card3])

    assert_equal [card1, card3], deck2.high_ranking_cards
  end

  def test_percent_high_ranking
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    deck2 = Deck.new([card1, card2, card3])

    assert_equal 2 / 3.to_f, deck2.percent_high_ranking
  end

  def test_remove_card
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    deck2 = Deck.new([card1, card2, card3])

    assert_equal [card2, card3], deck2.remove_card
  end

  def test_add_card
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:heart, '5', 5)
    deck2 = Deck.new([card1, card2, card3])

    assert_equal deck2.add_card(card4), [card1, card2, card3, card4]
  end

end
