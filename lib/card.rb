
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    valid_suits = [:hearts, :spades, :clubs, :diamonds]
    valid_values = (1..13)

    raise ArgumentError unless valid_suits.include?(suit)

    raise ArgumentError unless valid_values.include?(value)

    @value = value
    @suit = suit
  end

  def to_s
    case
    when @value == 1
      value = 'Ace'
    when @value == 11
      value = 'Jack'
    when @value == 12
      value = 'Queen'
    when @value == 13
      value = 'King'
    else
      value = @value
    end
    return "#{value} of #{suit.to_s}"
  end
end
