require './lib/card'
require './lib/deck'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test

  def test_it_exists_and_has_attributes
    player = Player.new('Clarissa', [])

    assert_instance_of Player, player
    assert_equal [], player.deck
    assert_equal 'Clarissa', player.name
  end

  def test_has_lost?
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    deck1 = Deck.new([card1, card2, card3])
    player1 = Player.new('Clarissa', deck1)

    assert_equal false, player1.has_lost?
  end



end


# card1 = Card.new(:diamond, 'Queen', 12)
# card2 = Card.new(:spade, '3', 3)
# card3 = Card.new(:heart, 'Ace', 14)
# deck = Deck.new([card1, card2, card3])