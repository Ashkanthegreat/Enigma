require 'date'

class Enigma
  attr_reader :alphabet, :date

  def initialize
    @alphabet = ("a".."z").to_a << " "
    @date = Date.today.strftime("%d%m%y")
  end

end
