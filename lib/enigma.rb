require 'date'

class Enigma
  attr_reader :charset

  def initialize
    @charset = ("a".."z").to_a << " "
  end

end
