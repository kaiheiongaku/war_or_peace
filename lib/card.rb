class Card
  attr_reader :suit, :rank, :value

  def initialize(suit, rank, value)
    @suit = suit
    @rank = rank
    @value = value
  end

  # def setup
  #   card = Card.new(:diamond, 'Queen', 12)
  # end
end