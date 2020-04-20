require_relative 'test_helper'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new(@key, @offset)
  end

  def test_key_exists
    assert_instance_of Shift, @shift
  end
end
