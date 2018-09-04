
require_relative 'spec_helper'
require 'pry'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
        expect {Card.new(13, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      card = Card.new(2, :diamonds)
      card_string = card.to_s

      expect(card_string).must_be_instance_of String
      expect(card_string).must_equal "2 of diamonds"

    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do

      ace_of_diamonds = Card.new(1, :diamonds)
      ace_of_diamonds_string = ace_of_diamonds.to_s

      expect(ace_of_diamonds_string).must_be_instance_of String
      expect(ace_of_diamonds_string).must_equal "Ace of diamonds"

      queen_of_hearts = Card.new(12, :hearts)
      queen_of_hearts_string = queen_of_hearts.to_s

      expect(queen_of_hearts_string).must_be_instance_of String
      expect(queen_of_hearts_string).must_equal "Queen of hearts"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      ace_of_diamonds = Card.new(1, :diamonds)
      expect(ace_of_diamonds.value).must_equal 1
    end

    xit "Can retrieve the value of the card using a `.suit`." do
      ace_of_diamonds = Card.new(1, :diamonds)
      expect(ace_of_diamonds.suit).must_equal :diamonds

    end
  end

end
