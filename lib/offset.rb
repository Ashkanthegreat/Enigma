require_relative 'randomizer'

class Offset
  include Randomizer
  attr_reader :date

  def initialize(date = todays_date)
    @date = date
  end

  def date_squared
    (@date.to_i**2).to_s
  end

  def offset_values
    date_squared[-4..-1]
  end

  def generate_offset
    offset = Hash.new
    offset[:A] = offset_values[0]
    offset[:B] = offset_values[1]
    offset[:C] = offset_values[2]
    offset[:D] = offset_values[3]
    offset
  end

end
