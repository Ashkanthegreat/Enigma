require_relative 'test_helper'
require "./lib/enigma"
require 'date'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_attributes
    charset = ("a".."z").to_a << " "

    assert_equal charset, @enigma.alphabet
    Date.stubs(:today).returns('05091979')
    assert_equal '05091979', @enigma.date
  end


end
