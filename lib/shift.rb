require_relative 'randomizer'
require_relative 'key'
require_relative 'offset'

class Shift
  include Randomizer

  def initialize(key, offset, char_set = character_set)
    @key = Key.new(key)
    @offset = Offset.new(offset)
    @char_set = char_set
  end

  def combine_shifts_with_direction(direction)
    @key.numbers.key_set.merge(@offset.date.generate_offset) { |key, key_set_value, generate_offset_value| key_set_value.to_i + generate_offset_value.to_i }.transform_values{|value| value * direction}
  end

  def shift_character_set(index, shifts)
    return @char_set.rotate(shifts[:A]) if index % 4 == 0
    return @char_set.rotate(shifts[:B]) if index % 4 == 1
    return @char_set.rotate(shifts[:C]) if index % 4 == 2
    return @char_set.rotate(shifts[:D]) if index % 4 == 3
  end

  def formatted_message(message)
    message.downcase.chars
  end


end
