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

  def test_can_shift_forward
    expected = {:A=>13, :B=>55, :C=>18, :D=>44}
    assert_equal expected, @shift.shift_forward
  end

  def test_can_shift_backward
    expected = {:A=>-13, :B=>-55, :C=>-18, :D=>-44}
    assert_equal expected, @shift.shift_backward
  end

  def test_it_can_index_message
    expected = [8, 5, 12, 12, 15]

    assert_equal expected, @shift.index_message("hello")
  end

  def test_cypher_forward
    assert_equal [], @shift.cypher_forward("hello")
    
  end
end
