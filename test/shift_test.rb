require_relative 'test_helper'

class ShiftTest < Minitest::Test

  def setup
    @key = Key.new("05143")
    @offset = Offset.new("050979")
    @shift = Shift.new(@key, @offset)
  end

  def test_key_exists
    assert_instance_of Shift, @shift
  end

  def test_it_can_combine_shifts
    expected = {:A=>13, :B=>55, :C=>18, :D=>44}

    assert_equal expected, @shift.combine_shifts
  end
end
