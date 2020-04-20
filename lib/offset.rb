require_relative 'randomizer'

class Offset
  include Randomizer
  attr_reader :date

  def initialize(date = todays_date)
    @date = date
  end

end
