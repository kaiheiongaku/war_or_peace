require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require 'pry'
#Note to self: there's a way to iterate over the attributes.
main_deck = Deck.new([
card1 = Card.new("A", "Spades", 1),
card2 = Card.new("2", "Spades", 2),
card3 = Card.new("3", "Spades", 3),
card4 = Card.new("4", "Spades", 4),
card5 = Card.new("5", "Spades", 5),
card6 = Card.new("6", "Spades", 6),
card7 = Card.new("7", "Spades", 7),
card8 = Card.new("8", "Spades", 8),
card9 = Card.new("9", "Spades", 9),
card10 = Card.new("10", "Spades", 10),
card11 = Card.new("J", "Spades", 11),
card12 = Card.new("Q", "Spades", 12),
card13 = Card.new("K", "Spades", 13),

card14 = Card.new("A", "Hearts", 1),
card15 = Card.new("2", "Hearts", 2),
card16 = Card.new("3", "Hearts", 3),
card17 = Card.new("4", "Hearts", 4),
card18 = Card.new("5", "Hearts", 5),
card19 = Card.new("6", "Hearts", 6),
card20 = Card.new("7", "Hearts", 7),
card21 = Card.new("8", "Hearts", 8),
card22 = Card.new("9", "Hearts", 9),
card23 = Card.new("10", "Hearts", 10),
card24 = Card.new("J", "Hearts", 11),
card25 = Card.new("Q", "Hearts", 12),
card26 =Card.new("K", "Hearts", 13),

card27 = Card.new("A", "Diamonds", 1),
card28 = Card.new("2", "Diamonds", 2),
card29 = Card.new("3", "Diamonds", 3),
card30 = Card.new("4", "Diamonds", 4),
card31 = Card.new("5", "Diamonds", 5),
card32 = Card.new("6", "Diamonds", 6),
card33 = Card.new("7", "Diamonds", 7),
card34 = Card.new("8", "Diamonds", 8),
card35 = Card.new("9", "Diamonds", 9),
card36 = Card.new("10", "Diamonds", 10),
card37 = Card.new("J", "Diamonds", 11),
card38 = Card.new("Q", "Diamonds", 12),
card39 = Card.new("K", "Diamonds", 13),

card40 = Card.new("A", "Clubs", 1),
card41 = Card.new("2", "Clubs", 2),
card42 = Card.new("3", "Clubs", 3),
card43 = Card.new("4", "Clubs", 4),
card44 = Card.new("5", "Clubs", 5),
card45 = Card.new("6", "Clubs", 6),
card46 = Card.new("7", "Clubs", 7),
card47 = Card.new("8", "Clubs", 8),
card48 = Card.new("9", "Clubs", 9),
card49 = Card.new("10", "Clubs", 10),
card50 = Card.new("J", "Clubs", 11),
card51 = Card.new("Q", "Clubs", 12),
card52 = Card.new("K", "Clubs", 13)])

main_deck = main_deck.shuffle

deck1 = main_deck[0..26]
deck2 = main_deck[27..52]
