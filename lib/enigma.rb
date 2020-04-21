require_relative 'shift'
require_relative 'randomizer'

class Enigma

  include Randomizer

  def encrypt(message, key = random_keys, date = todays_date )
    shifts = Shift.new(key.to_i, date)
    encrypt_shift = shifts.combine_shifts_with_direction(1)
    require "pry"; binding.pry
    {
      encryption: encrypt_shift.transform_message(message, shifts),
      key: key,
      date: date
    }
  end

end
