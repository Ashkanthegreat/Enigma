require_relative 'test_helper'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new('05143')
  end

  def test_key_exists
    assert_instance_of Key, @key
  end

  def test_key_attributes
    assert_equal "05143", @key.numbers
  end

  def test_random_keys
    @key.stubs(:rand).returns('7652')
    assert_equal '07652', @key.random_keys
  end
end
