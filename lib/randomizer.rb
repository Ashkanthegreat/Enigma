require 'date'

module Randomizer


  def random_keys
    rand(5 ** 5).to_s.rjust(5,'0')
  end

  def todays_date
    Date.today.strftime("%d%m%y")
  end

  def character_set
    ("a".."z").to_a << " "
  end

end
