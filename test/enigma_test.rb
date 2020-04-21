require_relative 'test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_can_encrypt_message
    expected = {
            encryption: 'keder ohulw',
            key: "02715",
            date: "040895"
              }
    assert_equal expected, @enigma.encrypt('hello world', '02715', '040895')
  end

  def test_it_can_decrypt_message
    skip
    expected = {
            decryption: 'hello world',
            key: "02715",
            date: "040895"
              }
    assert_equal expected, @enigma.decrypt('keder ohulw', '02715', '040895')
  end

end
