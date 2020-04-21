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

  def shift_forward
    combine_shifts.transform_values { |value| value * 1 }
  end

  def shift_backward
    combine_shifts.transform_values { |value| value * -1 }
  end


  def index_message(message)
    message.each_char.map{|letter| letter.ord - ?a.ord + 1}
  end

  def cypher_forward(message)
    
  end

end
