

module Randomizer

  def random_keys
  end

  def todays_date
    Date.today.strftime("%d%m%Y")
  end

  def character_set
    ("a".."z").to_a << " "
  end
end
