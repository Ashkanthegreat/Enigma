require_relative 'randomizer'
require_relative 'key'
require_relative 'offset'

class Shift
  include Randomizer

  def initialize(key, offset)
    @key = Key.new(key)
    @offset = Offset.new(offset)
  end

  def combine_shifts
    @key.numbers.key_set.merge(@offset.date.generate_offset) { |key, key_set_value, generate_offset_value| key_set_value.to_i + generate_offset_value.to_i }
  end


end
