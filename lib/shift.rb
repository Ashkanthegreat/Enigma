require_relative 'randomizer'
require_relative 'key'
require_relative 'offset'

class Shift
  include Randomizer


  def initialize(key, offset)
    @key = Key.new(random_keys)
    @offset = Offset.new(todays_date)
  end

end
