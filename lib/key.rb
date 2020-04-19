require_relative 'randomizer'

class Key
  include Randomizer
  attr_reader :numbers

  def initialize(numbers = random_keys)
    @numbers = numbers
  end


end
