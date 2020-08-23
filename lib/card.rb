class Card
  attr_reader :suit, :rank, :value

  def initialize(suit, value, rank)
    @suit = suit
    @value = value
    @rank = rank

  end

  # def setup
  #   card = Card.new(:diamond, 'Queen', 12)
  # end
end
