require_relative 'randomizer'

class Key
  include Randomizer
  attr_reader :numbers

  def initialize(numbers = random_keys)
    @numbers = numbers
  end

  def key_set
    number_keys = Hash.new
    number_keys[:A] = numbers[0..1]
    number_keys[:B] = numbers[1..2]
    number_keys[:C] = numbers[2..3]
    number_keys[:D] = numbers[3..4]
    number_keys
  end

end
